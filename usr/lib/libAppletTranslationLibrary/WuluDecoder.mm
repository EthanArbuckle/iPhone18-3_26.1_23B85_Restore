@interface WuluDecoder
+ (id)getInstance;
- (BOOL)isMetroEntry:(id)entry cityCode:(id)code setting:(id)setting error:(id *)error;
- (WuluDecoder)init;
- (id)DecodeEndE1TLV:(id *)v error:(id *)error;
- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)adjustHistory:(id)history;
- (id)findNextCappPuchaseEntry:(id)entry history:(id)history;
- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (id)getAppletStateAndHistory:(id)history withError:(id *)error;
- (id)getHistory:(id)history state:(id)state error:(id *)error;
- (id)getState:(id)state;
- (id)getStationCode:(id)code codeSetting:(id)setting swapByteOrdering:(id)ordering convertFormat:(id)format cityCode:(id)cityCode;
- (id)parseEndEvent:(id)event withApplet:(id)applet withError:(id *)error;
- (id)parseFile18:(id)file18;
- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)parseStartEvent:(id)event withApplet:(id)applet withError:(id *)error;
- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (id)resolveTransitModality:(unsigned __int8)modality;
- (id)setTimer:(id)timer history:(id)history;
- (void)addFakeBusTxnGuangdong:(id)guangdong history:(id)history cityCode:(id)code;
- (void)adjustState:(id)state history:(id)history ctx:(id)ctx;
- (void)parseTransit:(id)transit file1E:(id)e file1A:(id)a ctx:(id)ctx state:(id)state into:(id)into;
- (void)parseTransitApollo:(id)apollo file1E:(id)e file1A:(id)a into:(id)into;
- (void)parseTransitGalileo:(id)galileo file1E:(id)e file1A:(id)a ctx:(id)ctx state:(id)state into:(id)into;
- (void)parseTransitKepler:(id)kepler file1E:(id)e file1A:(id)a into:(id)into;
- (void)parseTransitNoLocal:(id)local file1E:(id)e file1A:(id)a into:(id)into;
- (void)parseTransitPioneer:(id)pioneer file1E:(id)e file1A:(id)a into:(id)into;
- (void)parseTransitSettingBased:(id)based file1E:(id)e file1A:(id)a ctx:(id)ctx into:(id)into;
- (void)parseUnreliable1ECities:(id)cities file1E:(id)e file1A:(id)a ctx:(id)ctx state:(id)state into:(id)into;
- (void)removeDoubleMetroTapGuangdong:(id)guangdong history:(id)history cityCode:(id)code;
- (void)removeEnRouteForSingleTapBusGuangdong:(id)guangdong transaction:(id)transaction cityCode:(id)code;
- (void)removeUnreliable1EEntryFlag:(id)flag ctx:(id)ctx;
- (void)setGalileoJinshanMaglevNonlocal:(id)nonlocal ctx:(id)ctx;
- (void)setMetroEntryWithLocalLog:(id)log ctx:(id)ctx;
@end

@implementation WuluDecoder

+ (id)getInstance
{
  if (getInstance_onceToken != -1)
  {
    +[WuluDecoder getInstance];
  }

  v3 = getInstance_inst;

  return v3;
}

uint64_t __26__WuluDecoder_getInstance__block_invoke()
{
  getInstance_inst = objc_alloc_init(WuluDecoder);

  return MEMORY[0x2821F96F8]();
}

- (WuluDecoder)init
{
  v6.receiver = self;
  v6.super_class = WuluDecoder;
  v2 = [(WuluDecoder *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->decoderState = 0;
    if ((+[AppletTranslator isInternalBuild]& 1) != 0)
    {
      v4 = +[AppletTranslator userDefaults];
      v3->debug = [v4 BOOLForKey:@"debug.wulu"];
    }

    else
    {
      v3->debug = 0;
    }
  }

  return v3;
}

- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"Supported";
  v10[1] = @"DelayExpressReentry";
  v11[0] = MEMORY[0x277CBEC38];
  v11[1] = &unk_2843C63E0;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:{2, transceiver, error}];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  historyCopy = history;
  packageCopy = package;
  v13 = [MEMORY[0x277CBEA90] dataWithHexString:applet];
  v14 = SelectByNameCmd(v13);

  v15 = [historyCopy transceiveAndCheckSW:v14 error:error];
  if (v15)
  {
    v16 = [WuluReaderContext readAllFiles:historyCopy appletPID:packageCopy debug:self->debug error:error];
    if (v16)
    {
      v17 = [(WuluDecoder *)self getAppletStateAndHistory:v16 withError:error];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 objectForKeyedSubscript:@"TransactionHistory"];
        v20 = [(WuluDecoder *)self setTimer:historyCopy history:v19];
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)getAppletStateAndHistory:(id)history withError:(id *)error
{
  v15[3] = *MEMORY[0x277D85DE8];
  historyCopy = history;
  v7 = [(WuluDecoder *)self getState:historyCopy];
  v8 = [(WuluDecoder *)self getHistory:historyCopy state:v7 error:error];
  if (v8)
  {
    v9 = v8;
    v10 = [(WuluDecoder *)self adjustHistory:v8];

    [(WuluDecoder *)self adjustState:v7 history:v10 ctx:historyCopy];
    v14[0] = @"State";
    v14[1] = @"TransactionHistory";
    v15[0] = v7;
    v15[1] = v10;
    v14[2] = @"ATLInternal";
    v15[2] = historyCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)getState:(id)state
{
  v44[9] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v4 = MEMORY[0x277CBEAB8];
  file15 = [stateCopy file15];
  v6 = DecodeBCD([file15 bytes], 24, 2);
  file152 = [stateCopy file15];
  v8 = DecodeBCD([file152 bytes], 26, 1);
  file153 = [stateCopy file15];
  v42 = [v4 dateWithYear:v6 month:v8 day:{DecodeBCD(objc_msgSend(file153, "bytes"), 27, 1)}];

  v10 = MEMORY[0x277CCABB0];
  file17 = [stateCopy file17];
  v12 = [v10 numberWithUnsignedShort:{bswap32(*(objc_msgSend(file17, "bytes") + 6)) >> 16}];

  file154 = [stateCopy file15];
  v14 = [file154 subdataWithRange:{10, 10}];

  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  file1A = [stateCopy file1A];
  v17 = [file1A firstWhere:&__block_literal_global_708];

  if (v17)
  {
    data = [v17 data];
    if (*([data bytes] + 14) == 1)
    {

LABEL_5:
      [v15 addObject:@"TransitMetro"];
      goto LABEL_6;
    }

    data2 = [v17 data];
    v20 = *([data2 bytes] + 14);

    if (v20 == 3)
    {
      goto LABEL_5;
    }
  }

LABEL_6:
  file1A2 = [stateCopy file1A];
  v22 = [file1A2 firstWhere:&__block_literal_global_710];

  if (v22 && ([v22 data], v23 = objc_claimAutoreleasedReturnValue(), v24 = *(objc_msgSend(v23, "bytes") + 14), v23, v24 == 1))
  {
    [v15 addObject:@"TransitBus"];
  }

  else
  {
    file1E = [stateCopy file1E];
    v26 = [file1E firstWhere:&__block_literal_global_712];

    if (v26)
    {
      data3 = [v26 data];
      if (*[data3 bytes] == 3)
      {
        data4 = [v26 data];
        v29 = [data4 u8:9];

        if (v29 == 2)
        {
          [v15 addObject:@"TransitBus"];
        }
      }

      else
      {
      }
    }
  }

  file1A3 = [stateCopy file1A];
  v31 = [file1A3 firstWhere:&__block_literal_global_714];

  if (v31)
  {
    data5 = [v31 data];
    v33 = *([data5 bytes] + 14);

    if (v33 == 1)
    {
      [v15 addObject:@"TransitTrain"];
    }
  }

  overdraft = [stateCopy overdraft];
  unsignedIntValue = [overdraft unsignedIntValue];

  v36 = MEMORY[0x277CCA980];
  if (unsignedIntValue)
  {
    [stateCopy overdraft];
  }

  else
  {
    [stateCopy balance];
  }
  v37 = ;
  v38 = [v36 decimalNumberWithMantissa:objc_msgSend(v37 exponent:"unsignedIntegerValue") isNegative:{4294967294, unsignedIntValue != 0}];

  v43[0] = @"Balance";
  v43[1] = @"SP";
  v44[0] = v38;
  v44[1] = @"UNKNOWN";
  v43[2] = @"SPRaw";
  v43[3] = @"CardExpirationDate";
  v44[2] = v12;
  v44[3] = v42;
  v43[4] = @"CardIdentifier";
  v43[5] = @"CardCurrency";
  v44[4] = v14;
  v44[5] = @"CNY";
  v43[6] = @"CardCurrencyCode";
  v43[7] = @"CardCurrencyExponent";
  v44[6] = &unk_2843C63F8;
  v44[7] = &unk_2843C6410;
  v43[8] = @"TransactionInProgress";
  v44[8] = v15;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:9];

  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

- (id)getHistory:(id)history state:(id)state error:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  stateCopy = state;
  v8 = MEMORY[0x277CBEB18];
  file18 = [historyCopy file18];
  v10 = [v8 arrayWithCapacity:{objc_msgSend(file18, "count")}];

  v11 = historyCopy;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = [historyCopy file18];
  v12 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v47;
    *&v13 = 67109120;
    v34 = v13;
    v38 = v10;
    v39 = historyCopy;
    v37 = *v47;
    selfCopy = self;
    do
    {
      v16 = 0;
      v40 = v14;
      do
      {
        if (*v47 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v46 + 1) + 8 * v16);
        data = [v17 data];
        v19 = [(WuluDecoder *)self parseFile18:data];

        if (v19)
        {
          v20 = [v19 objectForKeyedSubscript:@"TypeDetailRaw"];
          if ([v20 unsignedIntegerValue] == 2)
          {
            [v19 setObject:@"TopUp" forKeyedSubscript:@"TypeDetail"];
          }

          else
          {
            data2 = [v17 data];
            v22 = bswap32(*[data2 bytes]) >> 16;

            file1E = [v11 file1E];
            v44[0] = MEMORY[0x277D85DD0];
            v44[1] = 3221225472;
            v44[2] = __38__WuluDecoder_getHistory_state_error___block_invoke;
            v44[3] = &__block_descriptor_34_e20_B16__0__WuluRecord_8l;
            v45 = v22;
            v24 = [file1E firstWhere:v44];

            [v11 file1A];
            v26 = v25 = v11;
            v42[0] = MEMORY[0x277D85DD0];
            v42[1] = 3221225472;
            v42[2] = __38__WuluDecoder_getHistory_state_error___block_invoke_2;
            v42[3] = &__block_descriptor_34_e20_B16__0__WuluRecord_8l;
            v43 = v22;
            v27 = [v26 firstWhere:v42];

            if (v24)
            {
              v28 = v25;
              self = selfCopy;
              [(WuluDecoder *)selfCopy parseTransit:v17 file1E:v24 file1A:v27 ctx:v28 state:stateCopy into:v19];
            }

            else
            {
              v29 = ATLLogObject();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&dword_22EEF5000, v29, OS_LOG_TYPE_DEBUG, "No matching 0x1E entry found, parsing as basic", buf, 2u);
              }

              self = selfCopy;
            }

            v30 = [v19 objectForKeyedSubscript:@"TypeDetail"];

            v15 = v37;
            if (!v30)
            {
              v31 = ATLLogObject();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v34;
                v51 = v22;
                _os_log_impl(&dword_22EEF5000, v31, OS_LOG_TYPE_DEFAULT, "Transit details were incomplete for SN 0x%x", buf, 8u);
              }

              [v19 setObject:@"Purchase" forKeyedSubscript:@"TypeDetail"];
            }

            v10 = v38;
            v11 = v39;
            v14 = v40;
          }

          [v10 addObject:v19];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v14);
  }

  v32 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)parseFile18:(id)file18
{
  v4 = MEMORY[0x277CBEB38];
  file18Copy = file18;
  dictionary = [v4 dictionary];
  v7 = MEMORY[0x277CBEAB8];
  v8 = DecodeBCD(([file18Copy bytes] + 16), 2);
  v9 = DecodeBCD(([file18Copy bytes] + 18), 1);
  v10 = DecodeBCD(([file18Copy bytes] + 19), 1);
  v11 = DecodeBCD(([file18Copy bytes] + 20), 1);
  v12 = DecodeBCD(([file18Copy bytes] + 21), 1);
  v13 = [v7 dateWithYear:v8 month:v9 day:v10 hour:v11 minute:v12 second:{DecodeBCD((objc_msgSend(file18Copy, "bytes") + 22), 1)}];
  [dictionary setObject:v13 forKeyedSubscript:@"TransactionTime"];

  v14 = *([file18Copy bytes] + 9);
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v14];
  [dictionary setObject:v15 forKeyedSubscript:@"TypeDetailRaw"];

  v16 = *([file18Copy bytes] + 5);
  v17 = bswap32(v16);
  v19 = v14 == 2 && v16 != 0;
  v20 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:v17 exponent:4294967294 isNegative:v19];
  [dictionary setObject:v20 forKeyedSubscript:@"Amount"];

  v21 = [file18Copy subdataWithRange:{10, 6}];
  [dictionary setObject:v21 forKeyedSubscript:@"TerminalIdentifier"];

  v22 = MEMORY[0x277CCABB0];
  bytes = [file18Copy bytes];

  v24 = [v22 numberWithUnsignedInt:{-[WuluDecoder convertAppletSNtoWalletSN:txnTypeIdentifier:](self, "convertAppletSNtoWalletSN:txnTypeIdentifier:", bswap32(*bytes) >> 16, v14)}];
  [dictionary setObject:v24 forKeyedSubscript:@"SerialNumber"];

  return dictionary;
}

- (void)parseTransit:(id)transit file1E:(id)e file1A:(id)a ctx:(id)ctx state:(id)state into:(id)into
{
  v49 = *MEMORY[0x277D85DE8];
  transitCopy = transit;
  eCopy = e;
  aCopy = a;
  ctxCopy = ctx;
  stateCopy = state;
  intoCopy = into;
  data = [eCopy data];
  v18 = [data subdataWithOffset:32 length:2];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v18, "u16BE:", 0)}];
  [intoCopy setObject:v19 forKeyedSubscript:@"CityCode"];

  data2 = [eCopy data];
  v21 = bswap32(*([data2 bytes] + 21));

  v22 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:v21 exponent:4294967294 isNegative:0];
  [intoCopy setObject:v22 forKeyedSubscript:@"FinalBalance"];

  data3 = [eCopy data];
  v24 = [data3 u8:9];

  v25 = [(WuluDecoder *)self resolveTransitModality:v24];
  [intoCopy setObject:v25 forKeyedSubscript:@"TypeDetail"];

  data4 = [eCopy data];
  v27 = *[data4 bytes];

  if (v27 == 3)
  {
    [intoCopy setObject:@"EnRoute" forKeyedSubscript:@"IgnoreReason"];
  }

  v28 = MEMORY[0x277CCABB0];
  v29 = [intoCopy objectForKeyedSubscript:@"TypeDetailRaw"];
  v30 = [v28 numberWithInt:{objc_msgSend(v29, "intValue") | (v27 << 8)}];
  [intoCopy setObject:v30 forKeyedSubscript:@"TypeDetailRaw"];

  v31 = +[AppletConfigurationData getWuluSettings];
  v32 = [v31 objectForKeyedSubscript:@"cityRules"];
  asHexString = [v18 asHexString];
  v34 = [v32 objectForKeyedSubscript:asHexString];

  if (!v34)
  {
    v36 = ATLLogObject();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
LABEL_12:

      v40 = transitCopy;
      goto LABEL_13;
    }

    *buf = 138412290;
    v48 = v18;
    v37 = "Configuration does not define city rules for city code %@";
    v38 = v36;
    v39 = OS_LOG_TYPE_DEFAULT;
LABEL_11:
    _os_log_impl(&dword_22EEF5000, v38, v39, v37, buf, 0xCu);
    goto LABEL_12;
  }

  unsignedIntValue = [v34 unsignedIntValue];
  if (unsignedIntValue <= 5)
  {
    if (unsignedIntValue > 2)
    {
      if (unsignedIntValue != 3)
      {
        if (unsignedIntValue == 4)
        {
          v41 = ctxCopy;
          v40 = transitCopy;
          v42 = stateCopy;
          [(WuluDecoder *)self parseTransitGalileo:transitCopy file1E:eCopy file1A:aCopy ctx:ctxCopy state:stateCopy into:intoCopy];
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      v40 = transitCopy;
      [(WuluDecoder *)self parseTransitPioneer:transitCopy file1E:eCopy file1A:aCopy into:intoCopy];
LABEL_13:
      v41 = ctxCopy;
LABEL_19:
      v42 = stateCopy;
      goto LABEL_20;
    }

    if (unsignedIntValue == 1)
    {
      v40 = transitCopy;
      [(WuluDecoder *)self parseTransitKepler:transitCopy file1E:eCopy file1A:aCopy into:intoCopy];
      goto LABEL_13;
    }

    if (unsignedIntValue == 2)
    {
      v40 = transitCopy;
      [(WuluDecoder *)self parseTransitApollo:transitCopy file1E:eCopy file1A:aCopy into:intoCopy];
      goto LABEL_13;
    }

    goto LABEL_28;
  }

  if ((unsignedIntValue - 7) < 2)
  {
LABEL_18:
    v41 = ctxCopy;
    v40 = transitCopy;
    [(WuluDecoder *)self parseTransitSettingBased:transitCopy file1E:eCopy file1A:aCopy ctx:ctxCopy into:intoCopy];
    goto LABEL_19;
  }

  if (unsignedIntValue == 6)
  {
    v40 = transitCopy;
    [(WuluDecoder *)self parseTransitNoLocal:transitCopy file1E:eCopy file1A:aCopy into:intoCopy];
    goto LABEL_13;
  }

  if (unsignedIntValue != 99)
  {
LABEL_28:
    v36 = ATLLogObject();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 138412290;
    v48 = v34;
    v37 = "Configuration gave us unknown rule type %@";
    v38 = v36;
    v39 = OS_LOG_TYPE_ERROR;
    goto LABEL_11;
  }

  v41 = ctxCopy;
  v40 = transitCopy;
  v42 = stateCopy;
  [(WuluDecoder *)self parseUnreliable1ECities:transitCopy file1E:eCopy file1A:aCopy ctx:ctxCopy state:stateCopy into:intoCopy];
LABEL_20:

  v43 = *MEMORY[0x277D85DE8];
}

- (void)parseTransitApollo:(id)apollo file1E:(id)e file1A:(id)a into:(id)into
{
  v39 = *MEMORY[0x277D85DE8];
  eCopy = e;
  aCopy = a;
  intoCopy = into;
  data = [eCopy data];
  v12 = [data u8:9];

  data2 = [eCopy data];
  v14 = *[data2 bytes];

  if (v12 == 2)
  {
    data3 = [eCopy data];
    data6 = data3;
    v17 = 10;
    v18 = 2;
LABEL_3:
    v19 = [data3 subdataWithOffset:v17 length:v18];
    v20 = @"StartStation";
LABEL_4:
    [intoCopy setObject:v19 forKeyedSubscript:v20];

LABEL_5:
    goto LABEL_6;
  }

  if (aCopy && v12 == 1)
  {
    if ([aCopy number] == 1)
    {
      data4 = [aCopy data];
      v23 = *([data4 bytes] + 14);

      v25 = v14 == 8 && v23 == 2;
      if (v14 == 6 && v23 == 1)
      {
        [intoCopy setObject:@"EnRoute" forKeyedSubscript:@"IgnoreReason"];
LABEL_23:
        data3 = [aCopy data];
        data6 = data3;
        v17 = 38;
        v18 = 5;
        goto LABEL_3;
      }

      if (v14 == 3)
      {
        goto LABEL_23;
      }

      if (v14 == 4 || v25)
      {
        data5 = [aCopy data];
        v30 = [data5 subdataWithOffset:38 length:5];
        [intoCopy setObject:v30 forKeyedSubscript:@"StartStation"];

        data6 = [aCopy data];
        v19 = [data6 subdataWithOffset:46 length:5];
        v20 = @"EndStation";
        goto LABEL_4;
      }

      if (v14 == 8)
      {
        data7 = [aCopy data];
        v32 = [data7 u8:99];

        if (v32)
        {
          [intoCopy setObject:@"TransitMetroUpgrade" forKeyedSubscript:@"TypeDetail"];
          [intoCopy removeObjectForKey:@"IgnoreReason"];
        }

        goto LABEL_6;
      }

      data6 = ATLLogObject();
      if (!os_log_type_enabled(data6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      v33 = 67109632;
      associatedSerialNumber = [aCopy associatedSerialNumber];
      v35 = 1024;
      v36 = v14;
      v37 = 1024;
      number = 1;
      v26 = "SN 0x%x with type %d but modality %d";
      v27 = data6;
      v28 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      data6 = ATLLogObject();
      if (!os_log_type_enabled(data6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

      v33 = 67109632;
      associatedSerialNumber = [aCopy associatedSerialNumber];
      v35 = 1024;
      v36 = 1;
      v37 = 1024;
      number = [aCopy number];
      v26 = "Inconsistency in SN 0x%x b/t modality %d in 0x1E and file 0x1A record %d";
      v27 = data6;
      v28 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_22EEF5000, v27, v28, v26, &v33, 0x14u);
    goto LABEL_5;
  }

LABEL_6:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)parseTransitKepler:(id)kepler file1E:(id)e file1A:(id)a into:(id)into
{
  v44 = *MEMORY[0x277D85DE8];
  aCopy = a;
  intoCopy = into;
  eCopy = e;
  data = [eCopy data];
  v12 = [data u8:9];

  data2 = [eCopy data];

  v14 = *[data2 bytes];
  if (aCopy && v12 == 1)
  {
    if ([aCopy number] == 1)
    {
      data3 = [aCopy data];
      v16 = *([data3 bytes] + 14);

      v17 = v14 == 8;
      if (v16 != 4)
      {
        v17 = 0;
      }

      if (v14 == 8 && v16 == 3)
      {
        [intoCopy setObject:@"EnRoute" forKeyedSubscript:@"IgnoreReason"];
LABEL_14:
        data4 = [aCopy data];
        v23 = [data4 subdataWithOffset:85 length:1];
        v24 = [v23 mutableCopy];

        data5 = [aCopy data];
        v26 = [data5 subdataWithOffset:35 length:8];
        [v24 appendData:v26];

        [intoCopy setObject:v24 forKeyedSubscript:@"StartStation"];
        goto LABEL_15;
      }

      if (v14 == 3)
      {
        goto LABEL_14;
      }

      if (v14 == 4 || v17)
      {
        data6 = [aCopy data];
        v29 = [data6 subdataWithOffset:85 length:1];
        v30 = [v29 mutableCopy];

        data7 = [aCopy data];
        v32 = [data7 subdataWithOffset:35 length:8];
        [v30 appendData:v32];

        [intoCopy setObject:v30 forKeyedSubscript:@"StartStation"];
        data8 = [aCopy data];
        v34 = [data8 subdataWithOffset:86 length:1];
        v35 = [v34 mutableCopy];

        data9 = [aCopy data];
        v37 = [data9 subdataWithOffset:43 length:8];
        [v35 appendData:v37];

        [intoCopy setObject:v35 forKeyedSubscript:@"EndStation"];
        goto LABEL_15;
      }

      v18 = ATLLogObject();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v38 = 67109632;
      associatedSerialNumber = [aCopy associatedSerialNumber];
      v40 = 1024;
      v41 = v14;
      v42 = 1024;
      number = 1;
      v19 = "SN 0x%x with type %d but modality %d";
      v20 = v18;
      v21 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v18 = ATLLogObject();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
LABEL_12:

        goto LABEL_15;
      }

      v38 = 67109632;
      associatedSerialNumber = [aCopy associatedSerialNumber];
      v40 = 1024;
      v41 = 1;
      v42 = 1024;
      number = [aCopy number];
      v19 = "Inconsistency in SN 0x%x b/t modality %d in 0x1E and file 0x1A record %d";
      v20 = v18;
      v21 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_22EEF5000, v20, v21, v19, &v38, 0x14u);
    goto LABEL_12;
  }

LABEL_15:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)parseTransitPioneer:(id)pioneer file1E:(id)e file1A:(id)a into:(id)into
{
  v45 = *MEMORY[0x277D85DE8];
  aCopy = a;
  intoCopy = into;
  eCopy = e;
  data = [eCopy data];
  v12 = [data u8:9];

  data2 = [eCopy data];

  v14 = *[data2 bytes];
  if (!aCopy || v12 != 14 && v12 != 1)
  {
    goto LABEL_23;
  }

  if ([aCopy number] != 1 && objc_msgSend(aCopy, "number") != 14)
  {
    v24 = ATLLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v39 = 67109632;
      associatedSerialNumber = [aCopy associatedSerialNumber];
      v41 = 1024;
      v42 = v12;
      v43 = 1024;
      number = [aCopy number];
      v25 = "Inconsistency in SN 0x%x b/t modality %d in 0x1E and file 0x1A record %d";
      v26 = v24;
      v27 = OS_LOG_TYPE_ERROR;
LABEL_21:
      _os_log_impl(&dword_22EEF5000, v26, v27, v25, &v39, 0x14u);
    }

LABEL_22:

    goto LABEL_23;
  }

  data3 = [aCopy data];
  v16 = *([data3 bytes] + 14);

  v17 = v14 == 8;
  if (v16 != 4)
  {
    v17 = 0;
  }

  if (v14 != 8 || v16 != 3)
  {
    if (v14 == 3)
    {
      goto LABEL_12;
    }

    if (v14 == 4 || v17)
    {
      data4 = [aCopy data];
      v29 = [data4 subdataWithOffset:85 length:1];
      v30 = [v29 mutableCopy];

      data5 = [aCopy data];
      v32 = [data5 subdataWithOffset:35 length:8];
      [v30 appendData:v32];

      [intoCopy setObject:v30 forKeyedSubscript:@"StartStation"];
      data6 = [aCopy data];
      v34 = [data6 subdataWithOffset:86 length:1];
      v35 = [v34 mutableCopy];

      data7 = [aCopy data];
      v37 = [data7 subdataWithOffset:43 length:8];
      [v35 appendData:v37];

      [intoCopy setObject:v35 forKeyedSubscript:@"EndStation"];
      goto LABEL_23;
    }

    v24 = ATLLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 67109632;
      associatedSerialNumber = [aCopy associatedSerialNumber];
      v41 = 1024;
      v42 = v14;
      v43 = 1024;
      number = v12;
      v25 = "SN 0x%x with type %d but modality %d";
      v26 = v24;
      v27 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  [intoCopy setObject:@"EnRoute" forKeyedSubscript:@"IgnoreReason"];
LABEL_12:
  data8 = [aCopy data];
  v19 = [data8 subdataWithOffset:85 length:1];
  v20 = [v19 mutableCopy];

  data9 = [aCopy data];
  v22 = [data9 subdataWithOffset:35 length:8];
  [v20 appendData:v22];

  [intoCopy setObject:v20 forKeyedSubscript:@"StartStation"];
  data10 = [aCopy data];
  LODWORD(v22) = [data10 u8:100];

  if (v22 == 11)
  {
    [intoCopy setObject:@"TransitMetroUpgrade" forKeyedSubscript:@"TypeDetail"];
    [intoCopy removeObjectForKey:@"IgnoreReason"];
  }

LABEL_23:
  v38 = *MEMORY[0x277D85DE8];
}

- (void)parseTransitGalileo:(id)galileo file1E:(id)e file1A:(id)a ctx:(id)ctx state:(id)state into:(id)into
{
  v106 = *MEMORY[0x277D85DE8];
  galileoCopy = galileo;
  aCopy = a;
  ctxCopy = ctx;
  stateCopy = state;
  intoCopy = into;
  eCopy = e;
  v19 = [stateCopy objectForKeyedSubscript:@"SPRaw"];
  data = [eCopy data];
  v21 = [data u8:9];

  data2 = [eCopy data];

  v23 = *[data2 bytes];
  if (v21 == 1)
  {
    data9 = [intoCopy objectForKeyedSubscript:@"CityCode"];
    v25 = [v19 isEqualToNumber:data9];

    if (v25)
    {
      if ([ctxCopy localRecordFormat] == 1)
      {
        v92 = galileoCopy;
        data3 = [galileoCopy data];
        v27 = bswap32(*[data3 bytes]) >> 16;

        localRecords = [ctxCopy localRecords];
        v100[0] = MEMORY[0x277D85DD0];
        v100[1] = 3221225472;
        v100[2] = __64__WuluDecoder_parseTransitGalileo_file1E_file1A_ctx_state_into___block_invoke;
        v100[3] = &__block_descriptor_34_e20_B16__0__WuluRecord_8l;
        v101 = v27;
        v29 = [localRecords firstWhere:v100];

        localRecords2 = [ctxCopy localRecords];
        v98[0] = MEMORY[0x277D85DD0];
        v98[1] = 3221225472;
        v98[2] = __64__WuluDecoder_parseTransitGalileo_file1E_file1A_ctx_state_into___block_invoke_2;
        v98[3] = &unk_278874AD0;
        v31 = v29;
        v99 = v31;
        v32 = [localRecords2 firstWhere:v98];

        localRecords3 = [ctxCopy localRecords];
        v96[0] = MEMORY[0x277D85DD0];
        v96[1] = 3221225472;
        v96[2] = __64__WuluDecoder_parseTransitGalileo_file1E_file1A_ctx_state_into___block_invoke_3;
        v96[3] = &unk_278874AD0;
        v34 = v31;
        v97 = v34;
        v35 = [localRecords3 firstWhere:v96];

        if (!v34 || !(v32 | v35))
        {
          v36 = ATLLogObject();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_22EEF5000, v36, OS_LOG_TYPE_ERROR, "Missing mandatory records.", buf, 2u);
          }

          galileoCopy = v92;
          goto LABEL_70;
        }

        v91 = v35;
        v51 = [v34 sfi];
        if (v51 == 20)
        {
          [intoCopy setObject:@"TransitTrain" forKeyedSubscript:@"TypeDetail"];
          galileoCopy = v92;
        }

        else
        {
          galileoCopy = v92;
          if (v51 == 19)
          {
            v52 = @"TransitTrainMaglev";
          }

          else
          {
            if (v51 != 17)
            {
              v76 = ATLLogObject();
              if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
              {
                v77 = [v34 sfi];
                *buf = 67109120;
                *v103 = v77;
                _os_log_impl(&dword_22EEF5000, v76, OS_LOG_TYPE_ERROR, "Metro in 1E but local SFI %d not in the list.", buf, 8u);
              }

              goto LABEL_62;
            }

            v52 = @"TransitMetro";
          }

          [intoCopy setObject:v52 forKeyedSubscript:@"TypeDetail"];
        }

LABEL_62:
        v95 = v32;
        data4 = [v32 data];
        v79 = [data4 subdataWithOffset:6 length:2];
        v80 = [v79 copy];

        v89 = v80;
        [intoCopy setObject:v80 forKeyedSubscript:@"StartStation"];
        v81 = MEMORY[0x277CCABB0];
        data5 = [v34 data];
        v83 = [v81 numberWithUnsignedChar:{objc_msgSend(data5, "u8:", 0)}];
        LODWORD(v80) = [&unk_2843C7250 containsObject:v83];

        if (v80)
        {
          [intoCopy setObject:@"EnRoute" forKeyedSubscript:@"IgnoreReason"];
          v85 = v89;
          v84 = v91;
        }

        else
        {
          v84 = v91;
          data6 = [v91 data];
          v86 = [data6 subdataWithOffset:6 length:2];
          v85 = [v86 copy];

          [intoCopy setObject:v85 forKeyedSubscript:@"EndStation"];
        }

        goto LABEL_70;
      }

      v34 = ATLLogObject();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v47 = "Galileo Metro: The local file format is not extended format with associated SN.";
        v48 = v34;
        v49 = OS_LOG_TYPE_ERROR;
        v50 = 2;
LABEL_30:
        _os_log_impl(&dword_22EEF5000, v48, v49, v47, buf, v50);
        goto LABEL_70;
      }

      goto LABEL_70;
    }

    if (!aCopy)
    {
      v34 = ATLLogObject();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v103 = [galileoCopy number];
        v47 = "No 1A associated with this metro transaction, an old transaction, pass. %d";
        v48 = v34;
        v49 = OS_LOG_TYPE_DEFAULT;
        v50 = 8;
        goto LABEL_30;
      }

LABEL_70:

      goto LABEL_71;
    }

    number = [aCopy number];
    if (number != 1)
    {
      if (number != 2)
      {
        v34 = ATLLogObject();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109632;
          *v103 = [aCopy associatedSerialNumber];
          *&v103[4] = 1024;
          *&v103[6] = 1;
          v104 = 1024;
          number2 = [aCopy number];
          v47 = "Inconsistency in SN 0x%x b/t modality %d in 0x1E and file 0x1A record %d";
          v48 = v34;
          v49 = OS_LOG_TYPE_ERROR;
          v50 = 20;
          goto LABEL_30;
        }

        goto LABEL_70;
      }

      v38 = [stateCopy objectForKeyedSubscript:@"TransactionInProgress"];
      [v38 removeObject:@"TransitBus"];

      data7 = [aCopy data];
      v40 = [data7 subdataWithOffset:26 length:1];
      v41 = [v40 u8:0];

      v42 = @"TransitMetro";
      if (v41 == 34)
      {
        v42 = @"TransitTrain";
      }

      if (v41 == 144)
      {
        v43 = @"TransitTrainMaglev";
      }

      else
      {
        v43 = v42;
      }

      [intoCopy setObject:v43 forKeyedSubscript:@"TypeDetail"];
      data9 = ATLLogObject();
      if (os_log_type_enabled(data9, OS_LOG_TYPE_DEFAULT))
      {
        data8 = [aCopy data];
        v45 = [data8 subdataWithOffset:26 length:1];
        *buf = 138412290;
        *v103 = v45;
        _os_log_impl(&dword_22EEF5000, data9, OS_LOG_TYPE_DEFAULT, "1A-02 associated with this metro transaction, special type. %@", buf, 0xCu);
      }
    }

    if (v23 == 8 || v23 == 3)
    {
      data9 = [aCopy data];
      if (*([data9 bytes]+ 14) == 1)
      {
        v46 = 1;
      }

      else
      {
        data10 = [aCopy data];
        v54 = *([data10 bytes] + 14) == 3;

        v46 = v54;
      }
    }

    else
    {
      v46 = 0;
    }

    switch(v23)
    {
      case 8:
        goto LABEL_40;
      case 4:
        goto LABEL_41;
      case 3:
LABEL_40:

        if (v23 == 8)
        {
LABEL_41:
          data9 = [aCopy data];
          if (*([data9 bytes]+ 14) == 2)
          {
            v55 = 1;
          }

          else
          {
            [aCopy data];
            v56 = v93 = v46;
            v55 = *([v56 bytes] + 14) == 4;

            v46 = v93;
          }

          goto LABEL_45;
        }

        break;
    }

    v55 = 0;
LABEL_45:
    if (v23 == 8 || v23 == 4)
    {
    }

    if (v46)
    {
      data11 = [aCopy data];
      v58 = [data11 subdataWithOffset:26 length:1];
      v34 = [v58 mutableCopy];

      data12 = [aCopy data];
      v60 = [data12 subdataWithOffset:42 length:1];
      [v34 appendData:v60];

      [intoCopy setObject:v34 forKeyedSubscript:@"StartStation"];
      v61 = @"EnRoute";
      v62 = @"IgnoreReason";
      v63 = intoCopy;
    }

    else
    {
      if (!v55)
      {
        v34 = ATLLogObject();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          associatedSerialNumber = [aCopy associatedSerialNumber];
          data13 = [aCopy data];
          v74 = *([data13 bytes] + 14);
          if (v74 == 1)
          {
            v75 = 1;
          }

          else
          {
            data14 = [aCopy data];
            v75 = *([data14 bytes] + 14) == 3;
          }

          *buf = 67109632;
          *v103 = associatedSerialNumber;
          *&v103[4] = 1024;
          *&v103[6] = v23;
          v104 = 1024;
          number2 = v75;
          _os_log_impl(&dword_22EEF5000, v34, OS_LOG_TYPE_ERROR, "Galileo Metro: SN 0x%x with type %d, 1A entry type %d", buf, 0x14u);
          if (v74 != 1)
          {
          }
        }

        goto LABEL_70;
      }

      data15 = [aCopy data];
      v65 = [data15 subdataWithOffset:26 length:1];
      v66 = [v65 mutableCopy];

      data16 = [aCopy data];
      v68 = [data16 subdataWithOffset:42 length:1];
      [v66 appendData:v68];

      [intoCopy setObject:v66 forKeyedSubscript:@"StartStation"];
      data17 = [aCopy data];
      v70 = [data17 subdataWithOffset:34 length:1];
      v34 = [v70 mutableCopy];

      data18 = [aCopy data];
      v72 = [data18 subdataWithOffset:50 length:1];
      [v34 appendData:v72];

      v62 = @"EndStation";
      v63 = intoCopy;
      v61 = v34;
    }

    [v63 setObject:v61 forKeyedSubscript:v62];
    goto LABEL_70;
  }

LABEL_71:

  v87 = *MEMORY[0x277D85DE8];
}

BOOL __64__WuluDecoder_parseTransitGalileo_file1E_file1A_ctx_state_into___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 associatedSerialNumber] == *(a1 + 32))
  {
    v4 = [v3 number] == 3 || objc_msgSend(v3, "number") == 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL __64__WuluDecoder_parseTransitGalileo_file1E_file1A_ctx_state_into___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 number] == 1 || objc_msgSend(v3, "number") == 4)
  {
    v4 = [v3 sfi];
    v5 = v4 == [*(a1 + 32) sfi];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL __64__WuluDecoder_parseTransitGalileo_file1E_file1A_ctx_state_into___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 number] == 2 || objc_msgSend(v3, "number") == 5)
  {
    v4 = [v3 sfi];
    v5 = v4 == [*(a1 + 32) sfi];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)parseTransitSettingBased:(id)based file1E:(id)e file1A:(id)a ctx:(id)ctx into:(id)into
{
  v101 = *MEMORY[0x277D85DE8];
  basedCopy = based;
  eCopy = e;
  aCopy = a;
  ctxCopy = ctx;
  intoCopy = into;
  data = [eCopy data];
  v18 = [data u8:9];

  data2 = [eCopy data];
  v20 = *[data2 bytes];

  if (v18 == 1)
  {
    if (aCopy)
    {
      if ([aCopy number] != 1)
      {
        firstObject = ATLLogObject();
        if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109632;
          *v98 = [aCopy associatedSerialNumber];
          *&v98[4] = 1024;
          *&v98[6] = 1;
          v99 = 1024;
          number = [aCopy number];
          _os_log_impl(&dword_22EEF5000, firstObject, OS_LOG_TYPE_ERROR, "Inconsistency in SN 0x%x b/t modality %d in 0x1E and file 0x1A record %d", buf, 0x14u);
        }

        goto LABEL_66;
      }

      v90 = ctxCopy;
      v21 = intoCopy;
      v94 = basedCopy;
      data3 = [eCopy data];
      firstObject = [data3 subdataWithOffset:32 length:2];

      v24 = +[AppletConfigurationData getWuluSettings];
      v25 = [v24 objectForKeyedSubscript:@"defaultLogSettings"];
      asHexString = [firstObject asHexString];
      v27 = [v25 objectForKeyedSubscript:asHexString];

      v28 = MEMORY[0x277CBEA90];
      v93 = v27;
      v29 = [v27 objectForKeyedSubscript:@"metroEntryStationCode"];
      v30 = [v28 dataWithHexString:v29];

      selfCopy = self;
      v88 = v30;
      v31 = [(WuluDecoder *)self getStationCode:aCopy codeSetting:v30 swapByteOrdering:@"00" convertFormat:@"00" cityCode:firstObject];
      data4 = [aCopy data];
      if (*([data4 bytes] + 14) == 1)
      {

        intoCopy = v21;
LABEL_19:
        if (v31)
        {
          v46 = v31;
          [intoCopy setObject:v31 forKeyedSubscript:@"StartStation"];
          basedCopy = v94;
          ctxCopy = v90;
        }

        else
        {
          v46 = 0;
          v51 = ATLLogObject();
          basedCopy = v94;
          ctxCopy = v90;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_22EEF5000, v51, OS_LOG_TYPE_ERROR, "Failed to get start station code", buf, 2u);
          }
        }

        v52 = [intoCopy objectForKeyedSubscript:@"Amount"];
        intValue = [v52 intValue];

        if (!intValue)
        {
          [intoCopy setObject:@"EnRoute" forKeyedSubscript:@"IgnoreReason"];
        }

        v44 = v88;
        goto LABEL_65;
      }

      data5 = [aCopy data];
      v50 = *([data5 bytes] + 14);

      intoCopy = v21;
      if (v50 == 3)
      {
        goto LABEL_19;
      }

      data6 = [aCopy data];
      if (*([data6 bytes] + 14) == 2)
      {
      }

      else
      {
        data7 = [aCopy data];
        v58 = *([data7 bytes] + 14);

        if (v58 != 4)
        {
          v75 = v31;
          v76 = ATLLogObject();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109632;
            *v98 = [aCopy associatedSerialNumber];
            *&v98[4] = 1024;
            *&v98[6] = v20;
            v99 = 1024;
            number = 1;
            _os_log_impl(&dword_22EEF5000, v76, OS_LOG_TYPE_DEFAULT, "SN 0x%x with type %d but modality %d", buf, 0x14u);
          }

          v44 = v88;
          ctxCopy = v90;
          basedCopy = v94;
          v46 = v75;
          goto LABEL_65;
        }
      }

      if (v31)
      {
        [v21 setObject:v31 forKeyedSubscript:@"StartStation"];
      }

      else
      {
        v69 = ATLLogObject();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22EEF5000, v69, OS_LOG_TYPE_ERROR, "Failed to get start station code", buf, 2u);
        }
      }

      basedCopy = v94;
      v70 = v31;
      v71 = MEMORY[0x277CBEA90];
      v72 = [v93 objectForKeyedSubscript:@"metroExitStationCode"];
      v44 = [v71 dataWithHexString:v72];

      v73 = [(WuluDecoder *)selfCopy getStationCode:aCopy codeSetting:v44 swapByteOrdering:@"00" convertFormat:@"00" cityCode:firstObject];

      if (v73)
      {
        [intoCopy setObject:v73 forKeyedSubscript:@"EndStation"];
        v46 = v73;
        ctxCopy = v90;
      }

      else
      {
        v74 = ATLLogObject();
        ctxCopy = v90;
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22EEF5000, v74, OS_LOG_TYPE_ERROR, "Failed to get end station code", buf, 2u);
        }

        v46 = 0;
      }

LABEL_65:

      goto LABEL_66;
    }

    localRecords = [ctxCopy localRecords];
    v34 = [localRecords count];

    if (v34 != 3)
    {
      firstObject = ATLLogObject();
      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
      {
        localRecords2 = [ctxCopy localRecords];
        *buf = 134217984;
        *v98 = [localRecords2 count];
        _os_log_impl(&dword_22EEF5000, firstObject, OS_LOG_TYPE_DEFAULT, "Only %lu records retrived, expecting 3.", buf, 0xCu);
      }

      goto LABEL_66;
    }

    localRecords3 = [ctxCopy localRecords];
    firstObject = [localRecords3 firstObject];

    if (firstObject)
    {
      if ([ctxCopy localRecordFormat] != 1 || (objc_msgSend(basedCopy, "data"), v36 = objc_claimAutoreleasedReturnValue(), v37 = bswap32(*objc_msgSend(v36, "bytes")), v36, -[NSObject associatedSerialNumber](firstObject, "associatedSerialNumber") == HIWORD(v37)))
      {
        v91 = firstObject;
        v95 = basedCopy;
        file17 = [ctxCopy file17];
        v39 = [file17 subdataWithRange:{6, 2}];

        v40 = +[AppletConfigurationData getWuluSettings];
        v41 = [v40 objectForKeyedSubscript:@"localLogSettings"];
        asHexString2 = [v39 asHexString];
        v43 = [v41 objectForKeyedSubscript:asHexString2];

        v44 = v43;
        v96 = 0;
        v93 = v39;
        v45 = [(WuluDecoder *)self isMetroEntry:ctxCopy cityCode:v39 setting:v43 error:&v96];
        v46 = v96;
        if (v46)
        {
          v47 = ATLLogObject();
          firstObject = v91;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v98 = v93;
            _os_log_impl(&dword_22EEF5000, v47, OS_LOG_TYPE_ERROR, "Entry information is not obtained correctly for city %@.", buf, 0xCu);
          }

          basedCopy = v95;
          goto LABEL_64;
        }

        v59 = [v43 objectForKeyedSubscript:@"stationCodeSwapByteOrdering"];
        v60 = [v43 objectForKeyedSubscript:@"stationCodeConvertFormat"];
        v61 = MEMORY[0x277CBEA90];
        v86 = v44;
        v62 = [v44 objectForKeyedSubscript:@"metroEntryStationCode"];
        v89 = [v61 dataWithHexString:v62];

        localRecords4 = [ctxCopy localRecords];
        v64 = [localRecords4 objectAtIndexedSubscript:1];

        v85 = v60;
        if (v64)
        {
          v92 = v59;
          v65 = [(WuluDecoder *)self getStationCode:v64 codeSetting:v89 swapByteOrdering:v59 convertFormat:v60 cityCode:v93];
          [intoCopy setObject:v65 forKeyedSubscript:@"StartStation"];
          if (v45)
          {
            v66 = v89;
            v67 = [intoCopy objectForKeyedSubscript:@"Amount"];
            intValue2 = [v67 intValue];

            if (!intValue2)
            {
              [intoCopy setObject:@"EnRoute" forKeyedSubscript:@"IgnoreReason"];
            }

LABEL_62:
            basedCopy = v95;
            v46 = 0;
            v47 = v92;
            goto LABEL_63;
          }

          v77 = MEMORY[0x277CBEA90];
          v78 = [v86 objectForKeyedSubscript:@"metroExitStationCode"];
          v66 = [v77 dataWithHexString:v78];

          localRecords5 = [ctxCopy localRecords];
          v80 = [localRecords5 objectAtIndexedSubscript:2];

          if (!v80)
          {
            v83 = ATLLogObject();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_22EEF5000, v83, OS_LOG_TYPE_DEFAULT, "No local exit log retrived.", buf, 2u);
            }

            v64 = 0;
            goto LABEL_62;
          }

          selfCopy2 = self;
          v47 = v92;
          v82 = [(WuluDecoder *)selfCopy2 getStationCode:v80 codeSetting:v66 swapByteOrdering:v92 convertFormat:v85 cityCode:v93];

          [intoCopy setObject:v82 forKeyedSubscript:@"EndStation"];
          v65 = v82;
          v64 = v80;
        }

        else
        {
          v47 = v59;
          v65 = ATLLogObject();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_22EEF5000, v65, OS_LOG_TYPE_DEFAULT, "No local entry log retrived.", buf, 2u);
          }

          v64 = 0;
          v66 = v89;
        }

        basedCopy = v95;
        v46 = 0;
LABEL_63:

        firstObject = v64;
        v44 = v86;
LABEL_64:

        goto LABEL_65;
      }

      v55 = ATLLogObject();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v56 = "Local log is not updated in the latest transaction.";
        goto LABEL_40;
      }
    }

    else
    {
      v55 = ATLLogObject();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v56 = "No local log retrived.";
LABEL_40:
        _os_log_impl(&dword_22EEF5000, v55, OS_LOG_TYPE_DEFAULT, v56, buf, 2u);
      }
    }

LABEL_66:
  }

  v84 = *MEMORY[0x277D85DE8];
}

- (void)parseTransitNoLocal:(id)local file1E:(id)e file1A:(id)a into:(id)into
{
  v55 = *MEMORY[0x277D85DE8];
  eCopy = e;
  aCopy = a;
  intoCopy = into;
  data = [eCopy data];
  v13 = [data u8:9];

  data2 = [eCopy data];
  v15 = *[data2 bytes];

  if (aCopy && v13 == 1)
  {
    if ([aCopy number] != 1)
    {
      v17 = ATLLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109632;
        associatedSerialNumber = [aCopy associatedSerialNumber];
        v51 = 1024;
        v52 = 1;
        v53 = 1024;
        number = [aCopy number];
        _os_log_impl(&dword_22EEF5000, v17, OS_LOG_TYPE_ERROR, "Inconsistency in SN 0x%x b/t modality %d in 0x1E and file 0x1A record %d", buf, 0x14u);
      }

      goto LABEL_19;
    }

    data3 = [eCopy data];
    v17 = [data3 subdataWithOffset:32 length:2];

    v18 = +[AppletConfigurationData getWuluSettings];
    v19 = [v18 objectForKeyedSubscript:@"defaultLogSettings"];
    asHexString = [v17 asHexString];
    v21 = [v19 objectForKeyedSubscript:asHexString];

    v22 = MEMORY[0x277CBEA90];
    v23 = [v21 objectForKeyedSubscript:@"metroEntryStationCode"];
    v24 = [v22 dataWithHexString:v23];

    v48 = v24;
    v25 = [(WuluDecoder *)self getStationCode:aCopy codeSetting:v24 swapByteOrdering:@"00" convertFormat:@"00" cityCode:v17];
    data4 = [aCopy data];
    if (*([data4 bytes] + 14) == 1)
    {
    }

    else
    {
      selfCopy = self;
      data5 = [aCopy data];
      v28 = v21;
      v29 = *([data5 bytes] + 14);

      v30 = v29 == 3;
      v21 = v28;
      if (!v30)
      {
        data6 = [aCopy data];
        if (*([data6 bytes] + 14) == 2)
        {

          v37 = 0x277CBE000;
        }

        else
        {
          data7 = [aCopy data];
          v39 = *([data7 bytes] + 14);

          v30 = v39 == 4;
          v21 = v28;
          v37 = 0x277CBE000uLL;
          if (!v30)
          {
            v45 = ATLLogObject();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109632;
              associatedSerialNumber = [aCopy associatedSerialNumber];
              v51 = 1024;
              v52 = v15;
              v53 = 1024;
              number = 1;
              _os_log_impl(&dword_22EEF5000, v45, OS_LOG_TYPE_DEFAULT, "SN 0x%x with type %d but modality %d", buf, 0x14u);
            }

            goto LABEL_17;
          }
        }

        if (v25)
        {
          [intoCopy setObject:v25 forKeyedSubscript:@"StartStation"];
        }

        else
        {
          v40 = ATLLogObject();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_22EEF5000, v40, OS_LOG_TYPE_ERROR, "Failed to get start station code", buf, 2u);
          }
        }

        v41 = *(v37 + 2704);
        v42 = [v21 objectForKeyedSubscript:@"metroExitStationCode"];
        v34 = [v41 dataWithHexString:v42];

        v43 = [(WuluDecoder *)selfCopy getStationCode:aCopy codeSetting:v34 swapByteOrdering:@"00" convertFormat:@"00" cityCode:v17];

        if (v43)
        {
          [intoCopy setObject:v43 forKeyedSubscript:@"EndStation"];
          v25 = v43;
        }

        else
        {
          v44 = ATLLogObject();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_22EEF5000, v44, OS_LOG_TYPE_ERROR, "Failed to get end station code", buf, 2u);
          }

          v25 = 0;
        }

        goto LABEL_18;
      }
    }

    if (v25)
    {
      [intoCopy setObject:v25 forKeyedSubscript:@"StartStation"];
    }

    else
    {
      v31 = ATLLogObject();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22EEF5000, v31, OS_LOG_TYPE_ERROR, "Failed to get start station code", buf, 2u);
      }
    }

    v32 = [intoCopy objectForKeyedSubscript:@"Amount"];
    intValue = [v32 intValue];

    if (!intValue)
    {
      [intoCopy setObject:@"EnRoute" forKeyedSubscript:@"IgnoreReason"];
    }

LABEL_17:
    v34 = v48;
LABEL_18:

LABEL_19:
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)parseUnreliable1ECities:(id)cities file1E:(id)e file1A:(id)a ctx:(id)ctx state:(id)state into:(id)into
{
  intoCopy = into;
  [intoCopy setObject:@"Purchase" forKeyedSubscript:@"TypeDetail"];
  [intoCopy removeObjectForKey:@"IgnoreReason"];
}

- (id)getStationCode:(id)code codeSetting:(id)setting swapByteOrdering:(id)ordering convertFormat:(id)format cityCode:(id)cityCode
{
  v74 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  settingCopy = setting;
  orderingCopy = ordering;
  formatCopy = format;
  cityCodeCopy = cityCode;
  v14 = +[AppletConfigurationData getWuluSettings];
  v15 = [v14 objectForKeyedSubscript:@"cityRules"];
  asHexString = [cityCodeCopy asHexString];
  v17 = [v15 objectForKeyedSubscript:asHexString];

  if (!v17)
  {
    v23 = ATLLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v73 = cityCodeCopy;
      _os_log_impl(&dword_22EEF5000, v23, OS_LOG_TYPE_DEFAULT, "Configuration does not define city rules for city code %@", buf, 0xCu);
    }

    goto LABEL_16;
  }

  unsignedIntValue = [v17 unsignedIntValue];
  v19 = [settingCopy u8:0];
  v20 = [settingCopy u8:1];
  if (unsignedIntValue == 8)
  {
    LODWORD(v68) = [settingCopy u8:2];
    v21 = [settingCopy u8:3];
    data = [codeCopy data];
    if ([data length] < v20 + v19)
    {

LABEL_13:
      v36 = ATLLogObject();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v73 = cityCodeCopy;
        _os_log_impl(&dword_22EEF5000, v36, OS_LOG_TYPE_ERROR, "City %@ local log's station code offset too big.", buf, 0xCu);
      }

LABEL_16:
      v28 = 0;
      goto LABEL_17;
    }

    v69 = v20;
    [codeCopy data];
    v30 = v29 = codeCopy;
    v67 = formatCopy;
    v31 = [v30 length];
    v66 = v21;
    v32 = v21;
    v33 = cityCodeCopy;
    v65 = v32;
    v34 = v32 + v68;

    codeCopy = v29;
    v35 = v31 >= v34;
    cityCodeCopy = v33;
    formatCopy = v67;
    if (!v35)
    {
      goto LABEL_13;
    }

    v40 = v19;
    data2 = [v29 data];
    data6 = [data2 subdataWithRange:{v40, v20}];

    data3 = [v29 data];
    formatCopy = v67;
    v43 = [data3 subdataWithRange:{v68, v65}];

    data4 = [MEMORY[0x277CBEB28] data];
    [data4 appendData:data6];
    [data4 appendData:v43];
    v28 = [data4 copy];
    v69 = v66 + v69;
  }

  else
  {
    data5 = [codeCopy data];
    v25 = [data5 length];
    v26 = v20;

    if (v25 < v20 + v19)
    {
      v27 = ATLLogObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v73 = cityCodeCopy;
        _os_log_impl(&dword_22EEF5000, v27, OS_LOG_TYPE_ERROR, "City %@ local log's station code offset too big.", buf, 0xCu);
      }

      v28 = 0;
      goto LABEL_17;
    }

    v69 = v20;
    data6 = [codeCopy data];
    v28 = [data6 subdataWithRange:{v19, v26}];
  }

  if ([orderingCopy isEqualToString:@"01"])
  {
    v45 = [MEMORY[0x277CBEA90] dataWithReversedBytes:objc_msgSend(v28 length:{"bytes"), v69}];

    v28 = v45;
  }

  if ([formatCopy isEqualToString:@"01"])
  {
    v68 = cityCodeCopy;
    v46 = formatCopy;
    v47 = codeCopy;
    v48 = v69;
    MEMORY[0x28223BE20]();
    v50 = &v64 - v49;
    if (v51)
    {
      v52 = 0;
      do
      {
        v53 = [v28 encodeBCDAtOffset:v52 length:1];
        v50[v52] = [v53 unsignedCharValue];

        ++v52;
      }

      while (v48 != v52);
    }

LABEL_28:
    v54 = [MEMORY[0x277CBEA90] dataWithBytes:v50 length:v48];

    v28 = v54;
    codeCopy = v47;
    formatCopy = v46;
    cityCodeCopy = v68;
    goto LABEL_17;
  }

  if ([formatCopy isEqualToString:@"03"])
  {
    encodeBCD = [v28 encodeBCD];
LABEL_31:
    v56 = encodeBCD;
    unsignedLongValue = [encodeBCD unsignedLongValue];

    v58 = [MEMORY[0x277CBEA90] dataWithLongBE:unsignedLongValue];
    v59 = [v58 subdataWithOffset:8 - v69 length:v69];

    v28 = v59;
    goto LABEL_17;
  }

  if ([formatCopy isEqualToString:@"02"])
  {
    v68 = cityCodeCopy;
    v46 = formatCopy;
    v47 = codeCopy;
    v48 = v69;
    MEMORY[0x28223BE20]();
    v50 = &v64 - v60;
    if (v61)
    {
      v62 = 0;
      do
      {
        v63 = [v28 decodeBCDAtOffset:v62 length:1];
        v50[v62] = [v63 unsignedCharValue];

        ++v62;
      }

      while (v48 != v62);
    }

    goto LABEL_28;
  }

  if ([formatCopy isEqualToString:@"04"])
  {
    encodeBCD = [v28 decodeBCD];
    goto LABEL_31;
  }

LABEL_17:

  v37 = *MEMORY[0x277D85DE8];

  return v28;
}

- (void)adjustState:(id)state history:(id)history ctx:(id)ctx
{
  stateCopy = state;
  historyCopy = history;
  ctxCopy = ctx;
  if ([historyCopy count])
  {
    v10 = [historyCopy objectAtIndexedSubscript:0];
    v11 = MEMORY[0x277CBEA90];
    v12 = [v10 objectForKeyedSubscript:@"CityCode"];
    v13 = [v11 dataWithShortBE:{objc_msgSend(v12, "unsignedShortValue")}];
    asHexString = [v13 asHexString];

    v15 = +[AppletConfigurationData getWuluSettings];
    v16 = [v15 objectForKeyedSubscript:@"cityRules"];
    v17 = [v16 objectForKeyedSubscript:asHexString];

    [(WuluDecoder *)self removeEnRouteForSingleTapBusGuangdong:stateCopy transaction:v10 cityCode:v17];
  }

  [(WuluDecoder *)self removeUnreliable1EEntryFlag:stateCopy ctx:ctxCopy];
  [(WuluDecoder *)self setMetroEntryWithLocalLog:stateCopy ctx:ctxCopy];
  [(WuluDecoder *)self setGalileoJinshanMaglevNonlocal:stateCopy ctx:ctxCopy];
}

- (void)removeEnRouteForSingleTapBusGuangdong:(id)guangdong transaction:(id)transaction cityCode:(id)code
{
  guangdongCopy = guangdong;
  transactionCopy = transaction;
  codeCopy = code;
  v9 = codeCopy;
  if (codeCopy)
  {
    if ([codeCopy unsignedIntValue] == 1)
    {
      v10 = [transactionCopy objectForKeyedSubscript:@"TypeDetail"];

      if (v10 == @"TransitBus")
      {
        v11 = [transactionCopy objectForKeyedSubscript:@"IgnoreReason"];

        if (!v11)
        {
          v12 = [guangdongCopy objectForKeyedSubscript:@"TransactionInProgress"];
          [v12 removeObject:@"TransitBus"];
        }
      }
    }
  }
}

- (void)setMetroEntryWithLocalLog:(id)log ctx:(id)ctx
{
  v40 = *MEMORY[0x277D85DE8];
  logCopy = log;
  ctxCopy = ctx;
  v8 = [logCopy objectForKeyedSubscript:@"TransactionInProgress"];
  if (([v8 containsObject:@"TransitMetro"] & 1) == 0)
  {
    v9 = [logCopy objectForKeyedSubscript:@"SPRaw"];
    v10 = [MEMORY[0x277CBEA90] dataWithShortBE:{objc_msgSend(v9, "unsignedShortValue")}];
    v11 = [MEMORY[0x277CBEA90] dataWithHexString:@"2900"];
    v12 = [v10 isEqualToData:v11];

    if (v12)
    {
      localRecords = [ctxCopy localRecords];
      v14 = [localRecords filter:&__block_literal_global_755];

      if (v14 && [v14 count])
      {
        v31 = v10;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v33 objects:v39 count:16];
        if (!v16)
        {
          goto LABEL_19;
        }

        v17 = v16;
        v18 = *v34;
        while (1)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v34 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [*(*(&v33 + 1) + 8 * i) sfi];
            switch(v20)
            {
              case 17:
                v21 = @"TransitMetro";
                break;
              case 20:
                v21 = @"TransitTrain";
                break;
              case 19:
                v21 = @"TransitTrainMaglev";
                break;
              default:
                continue;
            }

            [v8 addObject:v21];
          }

          v17 = [v15 countByEnumeratingWithState:&v33 objects:v39 count:16];
          if (!v17)
          {
LABEL_19:

            v10 = v31;
            goto LABEL_28;
          }
        }
      }
    }

    else
    {
      v22 = v9;
      v23 = +[AppletConfigurationData getWuluSettings];
      v24 = [v23 objectForKeyedSubscript:@"localLogSettings"];
      asHexString = [v10 asHexString];
      v26 = [v24 objectForKeyedSubscript:asHexString];

      v32 = 0;
      v27 = [(WuluDecoder *)self isMetroEntry:ctxCopy cityCode:v10 setting:v26 error:&v32];
      v28 = v32;
      if (v28)
      {
        v29 = ATLLogObject();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v38 = v10;
          _os_log_impl(&dword_22EEF5000, v29, OS_LOG_TYPE_ERROR, "Entry information is not obtained correctly for city %@.", buf, 0xCu);
        }

        v9 = v22;
      }

      else
      {
        v9 = v22;
        if (v27)
        {
          [v8 addObject:@"TransitMetro"];
        }
      }
    }

LABEL_28:
  }

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __45__WuluDecoder_setMetroEntryWithLocalLog_ctx___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 number] == 3 || objc_msgSend(v2, "number") == 6)
  {
    v3 = MEMORY[0x277CCABB0];
    v4 = [v2 data];
    v5 = [v3 numberWithUnsignedChar:{objc_msgSend(v4, "u8:", 0)}];
    v6 = [&unk_2843C7268 containsObject:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setGalileoJinshanMaglevNonlocal:(id)nonlocal ctx:(id)ctx
{
  nonlocalCopy = nonlocal;
  file1A = [ctx file1A];
  v6 = [file1A firstWhere:&__block_literal_global_760];

  data = [v6 data];
  v8 = [data subdataWithOffset:15 length:2];
  asHexString = [v8 asHexString];
  v10 = [asHexString isEqualToString:@"2900"];

  if (v10)
  {
    data2 = [v6 data];
    if (*([data2 bytes] + 14) == 1)
    {
    }

    else
    {
      data3 = [v6 data];
      v13 = *([data3 bytes] + 14);

      if (v13 != 3)
      {
        goto LABEL_11;
      }
    }

    v14 = [nonlocalCopy objectForKeyedSubscript:@"TransactionInProgress"];
    [v14 removeObject:@"TransitBus"];

    data4 = [v6 data];
    v16 = [data4 subdataWithOffset:26 length:1];
    v17 = [v16 u8:0];

    v18 = [nonlocalCopy objectForKeyedSubscript:@"TransactionInProgress"];
    v19 = v18;
    v20 = @"TransitMetro";
    if (v17 == 34)
    {
      v20 = @"TransitTrain";
    }

    if (v17 == 144)
    {
      v21 = @"TransitTrainMaglev";
    }

    else
    {
      v21 = v20;
    }

    [v18 addObject:v21];
  }

LABEL_11:
}

- (void)removeUnreliable1EEntryFlag:(id)flag ctx:(id)ctx
{
  v59 = *MEMORY[0x277D85DE8];
  flagCopy = flag;
  ctxCopy = ctx;
  file1E = [ctxCopy file1E];
  v41 = [file1E firstWhere:&__block_literal_global_762];

  v40 = flagCopy;
  v43 = [flagCopy objectForKeyedSubscript:@"TransactionInProgress"];
  v8 = [MEMORY[0x277CBEA60] arrayWithArray:?];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v9)
  {
    v10 = v9;
    v45 = *v51;
    v42 = v8;
    do
    {
      v11 = 0;
      v44 = v10;
      do
      {
        if (*v51 != v45)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v50 + 1) + 8 * v11);
        if ([v12 isEqualToString:@"TransitMetro"])
        {
          v13 = 1;
        }

        else
        {
          if (([v12 isEqualToString:@"TransitBus"] & 1) == 0)
          {
            v15 = ATLLogObject();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v55 = v12;
              _os_log_impl(&dword_22EEF5000, v15, OS_LOG_TYPE_DEFAULT, "Unreliable city only has bus and metro, skip processing for type %@.", buf, 0xCu);
            }

            goto LABEL_35;
          }

          v13 = 2;
        }

        file1A = [ctxCopy file1A];
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __47__WuluDecoder_removeUnreliable1EEntryFlag_ctx___block_invoke_764;
        v48[3] = &__block_descriptor_36_e20_B16__0__WuluRecord_8l;
        v49 = v13;
        v15 = [file1A firstWhere:v48];

        if (!v15)
        {
          goto LABEL_30;
        }

        data = [v15 data];
        if (*([data bytes] + 14) != 1)
        {
          data2 = [v15 data];
          if (*([data2 bytes] + 14) != 3)
          {
            data3 = [v15 data];
            v36 = *([data3 bytes] + 14);

            if (v36 != 1)
            {
LABEL_30:
              if ([v12 isEqualToString:@"TransitMetro"])
              {
                goto LABEL_35;
              }

              v19 = v41;
              if (v19)
              {
LABEL_17:
                v20 = ctxCopy;
                data4 = [v19 data];
                v22 = [data4 subdataWithOffset:32 length:2];

                v23 = +[AppletConfigurationData getWuluSettings];
                v24 = [v23 objectForKeyedSubscript:@"cityRules"];
                asHexString = [v22 asHexString];
                v26 = [v24 objectForKeyedSubscript:asHexString];

                if ([v26 intValue] == 99)
                {
                  v27 = ATLLogObject();
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v55 = v12;
                    v56 = 2112;
                    v57 = v22;
                    _os_log_impl(&dword_22EEF5000, v27, OS_LOG_TYPE_DEFAULT, "%@ entry flag removed as city code %@ in unreliable 1E city list.", buf, 0x16u);
                  }

                  [v43 removeObject:v12];
                }

                ctxCopy = v20;
                v8 = v42;
                v10 = v44;
                goto LABEL_35;
              }

              goto LABEL_32;
            }

            goto LABEL_15;
          }
        }

LABEL_15:
        if ([v15 associatedSerialNumber])
        {
          file1E2 = [ctxCopy file1E];
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __47__WuluDecoder_removeUnreliable1EEntryFlag_ctx___block_invoke_766;
          v46[3] = &unk_278874AD0;
          v47 = v15;
          v19 = [file1E2 firstWhere:v46];

          if (v19)
          {
            goto LABEL_17;
          }

LABEL_32:
          v37 = ATLLogObject();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            associatedSerialNumber = [v15 associatedSerialNumber];
            *buf = 138412546;
            v55 = v12;
            v56 = 1024;
            LODWORD(v57) = associatedSerialNumber;
            _os_log_impl(&dword_22EEF5000, v37, OS_LOG_TYPE_DEFAULT, "Associated 1E record for %@ with associated SN = %u cannot be found, remove the entry flag.", buf, 0x12u);
          }

          [v43 removeObject:v12];
          goto LABEL_35;
        }

        data5 = [v15 data];
        v29 = [data5 subdataWithOffset:15 length:2];

        v30 = +[AppletConfigurationData getWuluSettings];
        v31 = [v30 objectForKeyedSubscript:@"cityRules"];
        asHexString2 = [v29 asHexString];
        v33 = [v31 objectForKeyedSubscript:asHexString2];

        if ([v33 intValue] == 99)
        {
          v34 = ATLLogObject();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v55 = v12;
            v56 = 2112;
            v57 = v29;
            _os_log_impl(&dword_22EEF5000, v34, OS_LOG_TYPE_DEFAULT, "%@ entry flag removed as city code %@ in unreliable city list and 1A's associated SN is 0.", buf, 0x16u);
          }

          [v43 removeObject:v12];
        }

        v10 = v44;
LABEL_35:

        ++v11;
      }

      while (v10 != v11);
      v10 = [v8 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v10);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (id)adjustHistory:(id)history
{
  v26 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  v5 = [historyCopy mutableCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = historyCopy;
  v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = MEMORY[0x277CBEA90];
        v12 = [v10 objectForKeyedSubscript:@"CityCode"];
        v13 = [v11 dataWithShortBE:{objc_msgSend(v12, "unsignedShortValue")}];
        asHexString = [v13 asHexString];

        v15 = +[AppletConfigurationData getWuluSettings];
        v16 = [v15 objectForKeyedSubscript:@"cityRules"];
        v17 = [v16 objectForKeyedSubscript:asHexString];

        [(WuluDecoder *)self removeDoubleMetroTapGuangdong:v10 history:v5 cityCode:v17];
        [(WuluDecoder *)self addFakeBusTxnGuangdong:v10 history:v5 cityCode:v17];
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)removeDoubleMetroTapGuangdong:(id)guangdong history:(id)history cityCode:(id)code
{
  v34 = *MEMORY[0x277D85DE8];
  guangdongCopy = guangdong;
  historyCopy = history;
  codeCopy = code;
  v11 = codeCopy;
  if (codeCopy && [codeCopy unsignedIntValue] == 1)
  {
    v12 = [guangdongCopy objectForKeyedSubscript:@"Amount"];
    if ([v12 intValue])
    {
    }

    else
    {
      v13 = [guangdongCopy objectForKeyedSubscript:@"TypeDetail"];

      if (v13 == @"TransitMetro")
      {
        v14 = [guangdongCopy objectForKeyedSubscript:@"TypeDetailRaw"];
        v15 = [v14 intValue] >> 8;

        v16 = [(WuluDecoder *)self findNextCappPuchaseEntry:guangdongCopy history:historyCopy];
        v17 = v16;
        if (v16)
        {
          v18 = [v16 objectForKeyedSubscript:@"TypeDetailRaw"];
          intValue = [v18 intValue];

          v20 = [v17 objectForKeyedSubscript:@"TypeDetail"];
          if (v20 == @"TransitMetro" && (intValue & 0xFF00) == 0x300 && ((v21 = v15, v15 == 3) || v15 == 6))
          {
            v22 = [guangdongCopy objectForKeyedSubscript:@"CityCode"];
            v23 = [v17 objectForKeyedSubscript:@"CityCode"];
            v24 = [v22 isEqualToNumber:v23];

            if (v24)
            {
              [historyCopy removeObject:guangdongCopy];
              v25 = ATLLogObject();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                v26 = [guangdongCopy objectForKeyedSubscript:@"SerialNumber"];
                v28 = 138412802;
                v29 = v26;
                v30 = 1024;
                v31 = v21;
                v32 = 1024;
                v33 = 3;
                _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_DEFAULT, "SN %@ with type=%d, next transaction type=%d, both modality are metro, remove this transaction.", &v28, 0x18u);
              }
            }
          }

          else
          {
          }
        }
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)addFakeBusTxnGuangdong:(id)guangdong history:(id)history cityCode:(id)code
{
  v32 = *MEMORY[0x277D85DE8];
  guangdongCopy = guangdong;
  historyCopy = history;
  codeCopy = code;
  v11 = codeCopy;
  if (codeCopy)
  {
    if ([codeCopy unsignedIntValue] == 1)
    {
      v12 = [guangdongCopy objectForKeyedSubscript:@"TypeDetailRaw"];
      intValue = [v12 intValue];

      if ((intValue & 0xFF00) == 0x300)
      {
        v14 = [guangdongCopy objectForKeyedSubscript:@"TypeDetail"];

        if (v14 == @"TransitBus")
        {
          v15 = [(WuluDecoder *)self findNextCappPuchaseEntry:guangdongCopy history:historyCopy];
          v16 = v15;
          if (v15)
          {
            v17 = [v15 objectForKeyedSubscript:@"TypeDetailRaw"];
            intValue2 = [v17 intValue];

            v19 = [v16 objectForKeyedSubscript:@"TypeDetail"];

            if (v19 != @"TransitBus" || (intValue2 & 0xFF00) == 0x300)
            {
              v20 = [guangdongCopy mutableCopy];
              [v20 removeObjectForKey:@"IgnoreReason"];
              v21 = MEMORY[0x277CCABB0];
              v22 = [v20 objectForKeyedSubscript:@"SerialNumber"];
              v23 = [v21 numberWithInt:{objc_msgSend(v22, "intValue") + 1}];
              [v20 setObject:v23 forKeyedSubscript:@"SerialNumber"];

              [historyCopy insertObject:v20 atIndex:{objc_msgSend(historyCopy, "indexOfObject:", guangdongCopy)}];
              v24 = ATLLogObject();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v25 = [guangdongCopy objectForKeyedSubscript:@"SerialNumber"];
                v26 = [v16 objectForKeyedSubscript:@"SerialNumber"];
                v28 = 138412546;
                v29 = v25;
                v30 = 2112;
                v31 = v26;
                _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_DEFAULT, "SN %@, previous transaction != bus or is an entry at %@, add a fake tap-out.", &v28, 0x16u);
              }
            }
          }
        }
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)findNextCappPuchaseEntry:(id)entry history:(id)history
{
  historyCopy = history;
  v7 = [entry objectForKeyedSubscript:@"SerialNumber"];
  v8 = [(WuluDecoder *)self convertWalletSNtoAppletSN:v7]+ 1;

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__WuluDecoder_findNextCappPuchaseEntry_history___block_invoke;
  v11[3] = &unk_278874B18;
  v11[4] = self;
  v12 = v8;
  v9 = [historyCopy firstWhere:v11];

  return v9;
}

BOOL __48__WuluDecoder_findNextCappPuchaseEntry_history___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"SerialNumber"];
  v4 = [v3 intValue];
  v5 = v4 == [*(a1 + 32) convertAppletSNtoWalletSN:*(a1 + 40) txnTypeIdentifier:9];

  return v5;
}

- (id)resolveTransitModality:(unsigned __int8)modality
{
  if ((modality - 1) > 0xD)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_278874B38 + (modality - 1));
  }
}

- (BOOL)isMetroEntry:(id)entry cityCode:(id)code setting:(id)setting error:(id *)error
{
  v102[1] = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  codeCopy = code;
  settingCopy = setting;
  v12 = settingCopy;
  if (settingCopy)
  {
    v77 = entryCopy;
    v13 = MEMORY[0x277CBEA90];
    v14 = [settingCopy objectForKeyedSubscript:@"localRecordSfi"];
    v15 = [v13 dataWithHexString:v14];
    v16 = [v15 u8:0];

    v17 = MEMORY[0x277CBEA90];
    v18 = [v12 objectForKeyedSubscript:@"localRecordId"];
    v19 = [v17 dataWithHexString:v18];
    v20 = [v19 u8:0];

    v21 = MEMORY[0x277CBEA90];
    v22 = [v12 objectForKeyedSubscript:@"metroInStationOffset"];
    v23 = [v21 dataWithHexString:v22];
    v24 = [v23 u8:0];

    v25 = MEMORY[0x277CBEA90];
    v26 = [v12 objectForKeyedSubscript:@"metroInStationValue"];
    v27 = [v25 dataWithHexString:v26];
    v28 = [v27 u8:0];

    v29 = ATLLogObject();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v83 = codeCopy;
      v84 = 1024;
      v85 = v16;
      v86 = 1024;
      v87 = v20;
      _os_log_impl(&dword_22EEF5000, v29, OS_LOG_TYPE_DEFAULT, "City %@ local record %02X(%02X) is being checked for enroute.", buf, 0x18u);
    }

    localRecords = [entryCopy localRecords];
    firstObject = [localRecords firstObject];

    if (firstObject)
    {
      if ([firstObject sfi] == v16 && objc_msgSend(firstObject, "number") == v20)
      {
        data = [firstObject data];
        v33 = [data length];

        if (v33 >= v24)
        {
          data2 = [firstObject data];
          v73 = [data2 u8:v24] == v28;
        }

        else
        {
          v34 = ATLLogObject();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            data3 = [firstObject data];
            v36 = [data3 length];
            *buf = 138413314;
            v83 = codeCopy;
            v84 = 1024;
            v85 = v16;
            v86 = 1024;
            v87 = v20;
            v88 = 2048;
            *v89 = v36;
            *&v89[8] = 1024;
            v90 = v24;
            _os_log_impl(&dword_22EEF5000, v34, OS_LOG_TYPE_ERROR, "City %@ local record %02X(%02X) was expected but not enough data provided. (actual length = %lu, expected minimum %u).", buf, 0x28u);
          }

          v37 = objc_alloc(MEMORY[0x277CCACA8]);
          data4 = [firstObject data];
          data2 = [v37 initWithFormat:@"City %@ local record %02X(%02X) was expected but not enough data provided. (actual length = %lu, expected minimum %u).", codeCopy, v16, v20, objc_msgSend(data4, "length"), v24];

          if (error)
          {
            v40 = *error;
            v41 = MEMORY[0x277CCA9B8];
            v42 = *MEMORY[0x277CCA450];
            if (*error)
            {
              v43 = *MEMORY[0x277CCA7E8];
              v78[0] = *MEMORY[0x277CCA450];
              v78[1] = v43;
              v79[0] = data2;
              v79[1] = v40;
              v44 = MEMORY[0x277CBEAC0];
              v45 = v79;
              v46 = v78;
              v47 = 2;
            }

            else
            {
              v80 = *MEMORY[0x277CCA450];
              v81 = data2;
              v44 = MEMORY[0x277CBEAC0];
              v45 = &v81;
              v46 = &v80;
              v47 = 1;
            }

            v74 = [v44 dictionaryWithObjects:v45 forKeys:v46 count:v47];
            entryCopy = v77;
            goto LABEL_36;
          }

          v73 = 0;
        }

        entryCopy = v77;
        goto LABEL_38;
      }

      v58 = ATLLogObject();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v59 = [firstObject sfi];
        number = [firstObject number];
        *buf = 138413314;
        v83 = codeCopy;
        v84 = 1024;
        v85 = v16;
        v86 = 1024;
        v87 = v20;
        v88 = 1024;
        *v89 = v59;
        *&v89[4] = 1024;
        *&v89[6] = number;
        _os_log_impl(&dword_22EEF5000, v58, OS_LOG_TYPE_ERROR, "City %@ local record %02X(%02X) was expected but got %02X(%02X)", buf, 0x24u);
      }

      v61 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"City %@ local record %02X(%02X) was expected but got %02X(%02X)", codeCopy, v16, v20, objc_msgSend(firstObject, "sfi"), objc_msgSend(firstObject, "number")];
      data2 = v61;
      if (!error)
      {
        goto LABEL_37;
      }

      v62 = *error;
      v41 = MEMORY[0x277CCA9B8];
      v63 = *MEMORY[0x277CCA450];
      if (*error)
      {
        v64 = *MEMORY[0x277CCA7E8];
        v91[0] = *MEMORY[0x277CCA450];
        v91[1] = v64;
        v92[0] = v61;
        v92[1] = v62;
        v65 = MEMORY[0x277CBEAC0];
        v66 = v92;
        v67 = v91;
LABEL_28:
        v72 = 2;
LABEL_35:
        v74 = [v65 dictionaryWithObjects:v66 forKeys:v67 count:v72];
LABEL_36:
        *error = [v41 errorWithDomain:@"ATL" code:8 userInfo:v74];

LABEL_37:
        v73 = 0;
LABEL_38:

        goto LABEL_39;
      }

      v93 = *MEMORY[0x277CCA450];
      v94 = v61;
      v65 = MEMORY[0x277CBEAC0];
      v66 = &v94;
      v67 = &v93;
    }

    else
    {
      v68 = ATLLogObject();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v83 = codeCopy;
        _os_log_impl(&dword_22EEF5000, v68, OS_LOG_TYPE_ERROR, "City %@ local record is missing.", buf, 0xCu);
      }

      codeCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"City %@ local record is missing.", codeCopy];
      data2 = codeCopy;
      if (!error)
      {
        goto LABEL_37;
      }

      v70 = *error;
      v41 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v71 = *MEMORY[0x277CCA7E8];
        v95[0] = *MEMORY[0x277CCA450];
        v95[1] = v71;
        v96[0] = codeCopy;
        v96[1] = v70;
        v65 = MEMORY[0x277CBEAC0];
        v66 = v96;
        v67 = v95;
        goto LABEL_28;
      }

      v97 = *MEMORY[0x277CCA450];
      v98 = codeCopy;
      v65 = MEMORY[0x277CBEAC0];
      v66 = &v98;
      v67 = &v97;
    }

    v72 = 1;
    goto LABEL_35;
  }

  v48 = ATLLogObject();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v48, OS_LOG_TYPE_ERROR, "No setting.", buf, 2u);
  }

  v49 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No setting."];
  firstObject = v49;
  if (error)
  {
    v50 = *error;
    v51 = MEMORY[0x277CCA9B8];
    v52 = *MEMORY[0x277CCA450];
    if (*error)
    {
      v53 = *MEMORY[0x277CCA7E8];
      v99[0] = *MEMORY[0x277CCA450];
      v99[1] = v53;
      v100[0] = v49;
      v100[1] = v50;
      v54 = MEMORY[0x277CBEAC0];
      v55 = v100;
      v56 = v99;
      v57 = 2;
    }

    else
    {
      v101 = *MEMORY[0x277CCA450];
      v102[0] = v49;
      v54 = MEMORY[0x277CBEAC0];
      v55 = v102;
      v56 = &v101;
      v57 = 1;
    }

    data2 = [v54 dictionaryWithObjects:v55 forKeys:v56 count:v57];
    [v51 errorWithDomain:@"ATL" code:8 userInfo:data2];
    *error = v73 = 0;
    goto LABEL_38;
  }

  v73 = 0;
LABEL_39:

  v75 = *MEMORY[0x277D85DE8];
  return v73;
}

- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  if ([eventCopy length] > 1)
  {
    v23 = *[eventCopy bytes];
    switch(v23)
    {
      case 0x12:
        v26 = ATLLogObject();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22EEF5000, v26, OS_LOG_TYPE_DEFAULT, "Deselect event, nothing to do here", buf, 2u);
        }

        goto LABEL_26;
      case 2:
        v24 = [(WuluDecoder *)self parseEndEvent:eventCopy withApplet:appletCopy withError:error];
        break;
      case 1:
        v24 = [(WuluDecoder *)self parseStartEvent:eventCopy withApplet:appletCopy withError:error];
        break;
      default:
        v27 = ATLLogObject();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v44 = v23;
          _os_log_impl(&dword_22EEF5000, v27, OS_LOG_TYPE_ERROR, "Unknown event type %u", buf, 8u);
        }

        v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown event type %u", v23];
        v15 = v28;
        if (!error)
        {
          goto LABEL_25;
        }

        v29 = *error;
        v17 = MEMORY[0x277CCA9B8];
        v30 = *MEMORY[0x277CCA450];
        if (*error)
        {
          v31 = *MEMORY[0x277CCA7E8];
          v35[0] = *MEMORY[0x277CCA450];
          v35[1] = v31;
          v36[0] = v28;
          v36[1] = v29;
          v19 = MEMORY[0x277CBEAC0];
          v20 = v36;
          v21 = v35;
          goto LABEL_7;
        }

        v37 = *MEMORY[0x277CCA450];
        v38 = v28;
        v19 = MEMORY[0x277CBEAC0];
        v20 = &v38;
        v21 = &v37;
LABEL_23:
        v22 = 1;
        goto LABEL_24;
    }

    v25 = v24;
    goto LABEL_27;
  }

  v13 = ATLLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v44 = [eventCopy length];
    _os_log_impl(&dword_22EEF5000, v13, OS_LOG_TYPE_ERROR, "Short eventData? %u", buf, 8u);
  }

  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Short eventData? %u", objc_msgSend(eventCopy, "length")];
  v15 = v14;
  if (!error)
  {
    goto LABEL_25;
  }

  v16 = *error;
  v17 = MEMORY[0x277CCA9B8];
  if (!*error)
  {
    v41 = *MEMORY[0x277CCA450];
    v42 = v14;
    v19 = MEMORY[0x277CBEAC0];
    v20 = &v42;
    v21 = &v41;
    goto LABEL_23;
  }

  v18 = *MEMORY[0x277CCA7E8];
  v39[0] = *MEMORY[0x277CCA450];
  v39[1] = v18;
  v40[0] = v14;
  v40[1] = v16;
  v19 = MEMORY[0x277CBEAC0];
  v20 = v40;
  v21 = v39;
LABEL_7:
  v22 = 2;
LABEL_24:
  v32 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:v22];
  *error = [v17 errorWithDomain:@"ATL" code:6 userInfo:v32];

LABEL_25:
LABEL_26:
  v25 = 0;
LABEL_27:

  v33 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)parseStartEvent:(id)event withApplet:(id)applet withError:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  if ([eventCopy length] != 5)
  {
    v16 = ATLLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v48 = [eventCopy length];
      v49 = 2048;
      v50 = 5;
      _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_ERROR, "Start event length %u expected %lu", buf, 0x12u);
    }

    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start event length %u expected %lu", objc_msgSend(eventCopy, "length"), 5];
    v14 = v17;
    if (!error)
    {
      goto LABEL_28;
    }

    v18 = *error;
    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA450];
    if (*error)
    {
      v21 = *MEMORY[0x277CCA7E8];
      v43[0] = *MEMORY[0x277CCA450];
      v43[1] = v21;
      v44[0] = v17;
      v44[1] = v18;
      v22 = MEMORY[0x277CBEAC0];
      v23 = v44;
      v24 = v43;
LABEL_17:
      v30 = 2;
LABEL_27:
      v34 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:v30];
      *error = [v19 errorWithDomain:@"ATL" code:6 userInfo:v34];

      goto LABEL_28;
    }

    v45 = *MEMORY[0x277CCA450];
    v46 = v17;
    v22 = MEMORY[0x277CBEAC0];
    v23 = &v46;
    v24 = &v45;
LABEL_26:
    v30 = 1;
    goto LABEL_27;
  }

  bytes = [eventCopy bytes];
  v11 = bytes;
  if (*(bytes + 1) != 8)
  {
    v25 = ATLLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = *(v11 + 1);
      *buf = 67109120;
      v48 = v26;
      _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_ERROR, "Start event got unexpected version 0x%x", buf, 8u);
    }

    v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start event got unexpected version 0x%x", *(v11 + 1)];
    v14 = v27;
    if (!error)
    {
      goto LABEL_28;
    }

    v28 = *error;
    v19 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v29 = *MEMORY[0x277CCA7E8];
      v39[0] = *MEMORY[0x277CCA450];
      v39[1] = v29;
      v40[0] = v27;
      v40[1] = v28;
      v22 = MEMORY[0x277CBEAC0];
      v23 = v40;
      v24 = v39;
      goto LABEL_17;
    }

    v41 = *MEMORY[0x277CCA450];
    v42 = v27;
    v22 = MEMORY[0x277CBEAC0];
    v23 = &v42;
    v24 = &v41;
    goto LABEL_26;
  }

  if (!*(bytes + 2))
  {
    v14 = ATLLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "Dropping Start event over contact";
      goto LABEL_21;
    }

LABEL_28:
    v33 = 0;
    goto LABEL_29;
  }

  decoderState = self->decoderState;
  v13 = ATLLogObject();
  v14 = v13;
  if (decoderState == 1)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "Dropping Start event because already started";
LABEL_21:
      _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
      goto LABEL_28;
    }

    goto LABEL_28;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_INFO, "Got CL Start Event, setting state to Active", buf, 2u);
  }

  self->decoderState = 1;
  [AppletTranslator registerForCleanup:?];
  v37[0] = @"EventType";
  v37[1] = @"appletIdentifier";
  v38[0] = @"StartEvent";
  v38[1] = appletCopy;
  v37[2] = @"Version";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v11 + 1)];
  v38[2] = v14;
  v37[3] = @"Interface";
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v11 + 2)];
  v38[3] = v31;
  v37[4] = @"selectStatus";
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(v11 + 3)) >> 16];
  v37[5] = @"IgnoreRFEvents";
  v37[6] = @"DontWaitForEOT";
  v38[4] = v32;
  v38[5] = MEMORY[0x277CBEC38];
  v38[6] = MEMORY[0x277CBEC38];
  v38[7] = MEMORY[0x277CBEC28];
  v37[7] = @"RequiresPowerCycle";
  v37[8] = @"DelayExpressReentry";
  v38[8] = &unk_2843C63E0;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:9];

LABEL_29:
  v35 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)parseEndEvent:(id)event withApplet:(id)applet withError:(id *)error
{
  v64[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  if ([eventCopy length] <= 8)
  {
    v10 = ATLLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [eventCopy length];
      _os_log_impl(&dword_22EEF5000, v10, OS_LOG_TYPE_ERROR, "End event length %zu", &buf, 0xCu);
    }

    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End event length %zu", objc_msgSend(eventCopy, "length")];
    v12 = v11;
    if (!error)
    {
      goto LABEL_29;
    }

    v13 = *error;
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA450];
    if (*error)
    {
      v16 = *MEMORY[0x277CCA7E8];
      v61[0] = *MEMORY[0x277CCA450];
      v61[1] = v16;
      v62[0] = v11;
      v62[1] = v13;
      v17 = MEMORY[0x277CBEAC0];
      v18 = v62;
      v19 = v61;
      v20 = 2;
    }

    else
    {
      v63 = *MEMORY[0x277CCA450];
      v64[0] = v11;
      v17 = MEMORY[0x277CBEAC0];
      v18 = v64;
      v19 = &v63;
      v20 = 1;
    }

    v37 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v20];
    v38 = v14;
    v39 = 3;
LABEL_28:
    *error = [v38 errorWithDomain:@"ATL" code:v39 userInfo:v37];

LABEL_29:
    v43 = 0;
    goto LABEL_32;
  }

  bytes = [eventCopy bytes];
  v22 = bytes;
  if (*(bytes + 1) != 8)
  {
    v26 = ATLLogObject();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = *(v22 + 1);
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v27;
      _os_log_impl(&dword_22EEF5000, v26, OS_LOG_TYPE_ERROR, "End event got unexpected version 0x%x", &buf, 8u);
    }

    v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End event got unexpected version 0x%x", *(v22 + 1)];
    v12 = v28;
    if (!error)
    {
      goto LABEL_29;
    }

    v29 = *error;
    v30 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    if (*error)
    {
      v32 = *MEMORY[0x277CCA7E8];
      v57[0] = *MEMORY[0x277CCA450];
      v57[1] = v32;
      v58[0] = v28;
      v58[1] = v29;
      v33 = MEMORY[0x277CBEAC0];
      v34 = v58;
      v35 = v57;
      v36 = 2;
    }

    else
    {
      v59 = *MEMORY[0x277CCA450];
      v60 = v28;
      v33 = MEMORY[0x277CBEAC0];
      v34 = &v60;
      v35 = &v59;
      v36 = 1;
    }

    v37 = [v33 dictionaryWithObjects:v34 forKeys:v35 count:v36];
    v38 = v30;
    v39 = 6;
    goto LABEL_28;
  }

  if (*(bytes + 2) == 1)
  {
    decoderState = self->decoderState;
    v24 = ATLLogObject();
    v25 = v24;
    if (decoderState == 1)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_DEFAULT, "Got CL End Event, setting state to Idle", &buf, 2u);
      }

      self->decoderState = 0;
      [AppletTranslator deregisterForCleanup:?];
    }

    else
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_ERROR, "End event in IDLE state?!", &buf, 2u);
      }
    }
  }

  v40 = *(v22 + 5);
  v41 = *(v22 + 3);
  v12 = [eventCopy subdataWithRange:{9, objc_msgSend(eventCopy, "length") - 9}];
  *&buf = [v12 bytes];
  *(&buf + 1) = [v12 length];
  v42 = [(WuluDecoder *)self DecodeEndE1TLV:&buf error:error];
  if (v42 && !*error)
  {
    v54[0] = @"EventType";
    v54[1] = @"appletIdentifier";
    v55[0] = @"EndEvent";
    v55[1] = appletCopy;
    v54[2] = @"Version";
    v53 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v22 + 1)];
    v55[2] = v53;
    v54[3] = @"Interface";
    v52 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v22 + 2)];
    v55[3] = v52;
    v54[4] = @"didError";
    v51 = [MEMORY[0x277CCABB0] numberWithBool:v41 != 144];
    v55[4] = v51;
    v54[5] = @"command";
    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(v40)];
    v55[5] = v44;
    v54[6] = @"status";
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:__rev16(v41)];
    v55[6] = v45;
    v54[7] = @"result";
    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:(v41 == 144) << 6];
    v55[7] = v46;
    v55[8] = &unk_2843C64A0;
    v54[8] = @"informative";
    v54[9] = @"type";
    v55[9] = &unk_2843C64B8;
    v54[10] = @"ReadOperationInfo";
    v47 = [v42 objectForKeyedSubscript:?];
    v55[10] = v47;
    v54[11] = @"WriteOperationInfo";
    v48 = [v42 objectForKeyedSubscript:?];
    v55[11] = v48;
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:12];
  }

  else
  {
    v43 = 0;
  }

LABEL_32:
  v49 = *MEMORY[0x277D85DE8];

  return v43;
}

- (id)DecodeEndE1TLV:(id *)v error:(id *)error
{
  v69[1] = *MEMORY[0x277D85DE8];
  v52 = 0;
  v53[0] = 0;
  v53[1] = 0;
  v6 = DERDecodeItemCtx(v, &v52);
  if (v6)
  {
    v7 = v6;
    v8 = ATLLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v7;
      _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Failed to decode End Event E1 %d", buf, 8u);
    }

    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode End Event E1 %d", v7];
    v10 = v9;
    if (error)
    {
      v11 = *error;
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCA450];
      if (*error)
      {
        v14 = *MEMORY[0x277CCA7E8];
        v66[0] = *MEMORY[0x277CCA450];
        v66[1] = v14;
        v67[0] = v9;
        v67[1] = v11;
        v15 = MEMORY[0x277CBEAC0];
        v16 = v67;
        v17 = v66;
        v18 = 2;
      }

      else
      {
        v68 = *MEMORY[0x277CCA450];
        v69[0] = v9;
        v15 = MEMORY[0x277CBEAC0];
        v16 = v69;
        v17 = &v68;
        v18 = 1;
      }

      v43 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v18];
      *error = [v12 errorWithDomain:@"ATL" code:3 userInfo:v43];
    }

LABEL_27:
    error = 0;
    goto LABEL_28;
  }

  if (v52 != 0xE000000000000001)
  {
    v32 = ATLLogObject();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v52;
      _os_log_impl(&dword_22EEF5000, v32, OS_LOG_TYPE_ERROR, "Unexpected tag 0x%llx", buf, 0xCu);
    }

    v33 = objc_alloc(MEMORY[0x277CCACA8]);
    v51 = v52;
    v34 = [v33 initWithFormat:@"Unexpected tag 0x%llx"];
    v35 = v34;
    if (error)
    {
      v36 = *error;
      v37 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v38 = *MEMORY[0x277CCA7E8];
        v62[0] = *MEMORY[0x277CCA450];
        v62[1] = v38;
        v63[0] = v34;
        v63[1] = v36;
        v39 = MEMORY[0x277CBEAC0];
        v40 = v63;
        v41 = v62;
        v42 = 2;
      }

      else
      {
        v64 = *MEMORY[0x277CCA450];
        v65 = v34;
        v39 = MEMORY[0x277CBEAC0];
        v40 = &v65;
        v41 = &v64;
        v42 = 1;
      }

      v45 = [v39 dictionaryWithObjects:v40 forKeys:v41 count:v42];
      *error = [v37 errorWithDomain:@"ATL" code:3 userInfo:v45];
    }

    LogBinary(OS_LOG_TYPE_ERROR, "[WuluDecoder DecodeEndE1TLV:error:]", 1416, v->var0, v->var1, @"E1 TLV data", v46, v47, v51);
    goto LABEL_27;
  }

  *buf = 0u;
  v61 = 0;
  v19 = DERParseSequenceSpec(v53, &EndEventE1ContentSpec, buf, 0x20uLL);
  if (v19)
  {
    v20 = v19;
    v21 = ATLLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *v58 = 67109120;
      v59 = v20;
      _os_log_impl(&dword_22EEF5000, v21, OS_LOG_TYPE_ERROR, "Failed to decode E1 contents %d", v58, 8u);
    }

    v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode E1 contents %d", v20];
    v23 = v22;
    if (error)
    {
      v24 = *error;
      v25 = MEMORY[0x277CCA9B8];
      v26 = *MEMORY[0x277CCA450];
      if (*error)
      {
        v27 = *MEMORY[0x277CCA7E8];
        v54[0] = *MEMORY[0x277CCA450];
        v54[1] = v27;
        v55[0] = v22;
        v55[1] = v24;
        v28 = MEMORY[0x277CBEAC0];
        v29 = v55;
        v30 = v54;
        v31 = 2;
      }

      else
      {
        v56 = *MEMORY[0x277CCA450];
        v57 = v22;
        v28 = MEMORY[0x277CBEAC0];
        v29 = &v57;
        v30 = &v56;
        v31 = 1;
      }

      v50 = [v28 dictionaryWithObjects:v29 forKeys:v30 count:v31];
      *error = [v25 errorWithDomain:@"ATL" code:3 userInfo:v50];

      error = 0;
    }
  }

  else
  {
    error = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    if (!*&buf[8])
    {
      goto LABEL_28;
    }

    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:ReadS32BE(buf)];
    [error setObject:v44 forKeyedSubscript:@"ReadOperationInfo"];

    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:ReadS32BE(&v61)];
    [error setObject:v23 forKeyedSubscript:@"WriteOperationInfo"];
  }

LABEL_28:
  v48 = *MEMORY[0x277D85DE8];

  return error;
}

- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v22 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Wulu decoder doesn't expect processEndOfTransaction", v22, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Wulu decoder doesn't expect processEndOfTransaction"];
  v10 = v9;
  if (error)
  {
    v11 = *error;
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    if (*error)
    {
      v14 = *MEMORY[0x277CCA7E8];
      v23[0] = *MEMORY[0x277CCA450];
      v23[1] = v14;
      v24[0] = v9;
      v24[1] = v11;
      v15 = MEMORY[0x277CBEAC0];
      v16 = v24;
      v17 = v23;
      v18 = 2;
    }

    else
    {
      v25 = *MEMORY[0x277CCA450];
      v26[0] = v9;
      v15 = MEMORY[0x277CBEAC0];
      v16 = v26;
      v17 = &v25;
      v18 = 1;
    }

    v19 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v18];
    *error = [v12 errorWithDomain:@"ATL" code:7 userInfo:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)setTimer:(id)timer history:(id)history
{
  v37 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  historyCopy = history;
  v7 = historyCopy;
  if (!historyCopy)
  {
    v25 = 0;
    goto LABEL_35;
  }

  v8 = [historyCopy count];
  if (!v8)
  {
    v11 = ATLLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_DEFAULT, "No history found.", buf, 2u);
    }

    v25 = 0;
    goto LABEL_34;
  }

  v9 = v8;
  v10 = [v7 objectAtIndexedSubscript:0];
  v11 = [v10 objectForKeyedSubscript:@"CityCode"];

  if (!v11)
  {
    v13 = ATLLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v13, OS_LOG_TYPE_DEFAULT, "No city code in the last history record.", buf, 2u);
    }

    v25 = 0;
    goto LABEL_33;
  }

  v12 = [v7 objectAtIndexedSubscript:0];
  v13 = [v12 objectForKeyedSubscript:@"TerminalIdentifier"];

  if (v9 == 1)
  {
LABEL_9:
    v15 = [MEMORY[0x277CBEA90] dataWithShortBE:{-[NSObject intValue](v11, "intValue")}];
    v18 = +[AppletConfigurationData getWuluSettings];
    v19 = [v18 objectForKeyedSubscript:@"timerScript"];
    asHexString = [v15 asHexString];
    v17 = [v19 objectForKeyedSubscript:asHexString];

    if (v17)
    {
      goto LABEL_13;
    }

    v21 = ATLLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v36) = [v11 intValue];
      _os_log_impl(&dword_22EEF5000, v21, OS_LOG_TYPE_DEFAULT, "No available timer for %02X, use the default one.", buf, 8u);
    }

    v22 = +[AppletConfigurationData getWuluSettings];
    v23 = [v22 objectForKeyedSubscript:@"timerScript"];
    v17 = [v23 objectForKeyedSubscript:@"default"];

    if (v17)
    {
LABEL_13:
      if ([v17 count] == 3)
      {
        v24 = ATLLogObject();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = v11;
          _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_DEFAULT, "Set timer for city code = %@.", buf, 0xCu);
        }

        v34 = 0;
        [timerCopy applyScript:v17 error:&v34];
        v25 = v34;
        goto LABEL_32;
      }
    }

    v26 = ATLLogObject();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [v17 count];
      *buf = 67109120;
      LODWORD(v36) = v27;
      v28 = "No available timer or timers count %u != 3";
      v29 = v26;
      v30 = OS_LOG_TYPE_ERROR;
      v31 = 8;
LABEL_30:
      _os_log_impl(&dword_22EEF5000, v29, v30, v28, buf, v31);
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  v14 = [v7 objectAtIndexedSubscript:1];
  v15 = [v14 objectForKeyedSubscript:@"CityCode"];

  v16 = [v7 objectAtIndexedSubscript:1];
  v17 = [v16 objectForKeyedSubscript:@"TerminalIdentifier"];

  if (v17)
  {
    if ([v15 isEqualToNumber:v11] && (-[NSObject isEqualToData:](v13, "isEqualToData:", v17) & 1) == 0)
    {
      v26 = ATLLogObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v11;
        v28 = "Same city city code = %@ and same on terminal, ignore the timer set.";
        v29 = v26;
        v30 = OS_LOG_TYPE_DEFAULT;
        v31 = 12;
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    goto LABEL_9;
  }

  v26 = ATLLogObject();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v28 = "No terminal id in transaction.";
    v29 = v26;
    v30 = OS_LOG_TYPE_ERROR;
    v31 = 2;
    goto LABEL_30;
  }

LABEL_31:

  v25 = 0;
LABEL_32:

LABEL_33:
LABEL_34:

LABEL_35:
  v32 = *MEMORY[0x277D85DE8];

  return v25;
}

@end