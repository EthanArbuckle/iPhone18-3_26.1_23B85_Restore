@interface DreamworksDecoder
+ (id)getInstance;
- (DreamworksDecoder)init;
- (id)DecodeEndE1TLV:(id *)a3 error:(id *)a4;
- (id)GetAppletProperties:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)a7;
- (id)getAppletStateAndHistory:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7;
- (id)getAppletStateAndHistory:(id)a3 withError:(id *)a4;
- (id)getHistory:(id)a3 state:(id)a4 error:(id *)a5;
- (id)getServiceProviderData:(id)a3 withPackage:(id)a4 withModule:(id)a5 withPublicKey:(id)a6 withEncryptionScheme:(id)a7 withTransceiver:(id)a8 withError:(id *)a9;
- (id)getState:(id)a3;
- (id)parseEndEvent:(id)a3 withApplet:(id)a4 withError:(id *)a5;
- (id)parseHCIEvent:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withTransceiver:(id)a7 withError:(id *)a8;
- (id)parseStartEvent:(id)a3 withApplet:(id)a4 withError:(id *)a5;
- (id)processEndOfTransaction:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7;
- (void)adjustSN:(id)a3;
- (void)cleanup;
- (void)parseTransit:(id)a3 fileTrans:(id)a4 into:(id)a5;
@end

@implementation DreamworksDecoder

+ (id)getInstance
{
  if (getInstance_onceToken_4 != -1)
  {
    +[DreamworksDecoder getInstance];
  }

  v3 = getInstance_inst_3;

  return v3;
}

uint64_t __32__DreamworksDecoder_getInstance__block_invoke()
{
  getInstance_inst_3 = objc_alloc_init(DreamworksDecoder);

  return MEMORY[0x2821F96F8]();
}

- (DreamworksDecoder)init
{
  v6.receiver = self;
  v6.super_class = DreamworksDecoder;
  v2 = [(DreamworksDecoder *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->decoderState = 0;
    if ((+[AppletTranslator isInternalBuild]& 1) != 0)
    {
      v4 = +[AppletTranslator userDefaults];
      v3->debug = [v4 BOOLForKey:@"debug.dreamworks"];
    }

    else
    {
      v3->debug = 0;
    }
  }

  return v3;
}

- (id)GetAppletProperties:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)a7
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"Supported";
  v10[1] = @"DelayExpressReentry";
  v11[0] = MEMORY[0x277CBEC38];
  v11[1] = &unk_2843C71C0;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:{2, a6, a7}];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)getAppletStateAndHistory:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7
{
  v10 = a3;
  v11 = [MEMORY[0x277CBEA90] dataWithHexString:a4];
  v12 = SelectByNameCmd(v11);

  v13 = [v10 transceiveAndCheckSW:v12 error:a7];
  if (v13)
  {
    v14 = [DreamworksReaderContext readAllFiles:v10 debug:self->debug error:a7];
    if (v14)
    {
      v15 = [(DreamworksDecoder *)self getAppletStateAndHistory:v14 withError:a7];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)getAppletStateAndHistory:(id)a3 withError:(id *)a4
{
  v14[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(DreamworksDecoder *)self getState:v6];
  v8 = [(DreamworksDecoder *)self getHistory:v6 state:v7 error:a4];
  v9 = v8;
  if (v8)
  {
    v13[0] = @"State";
    v13[1] = @"TransactionHistory";
    v14[0] = v7;
    v14[1] = v8;
    v13[2] = @"ATLInternal";
    v14[2] = v6;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)getState:(id)a3
{
  v31[6] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEAB8];
  v6 = [v4 filePurseInfo];
  v7 = DecodeBCD([v6 bytes], 25, 2);
  v8 = [v4 filePurseInfo];
  v9 = DecodeBCD([v8 bytes], 27, 1);
  v10 = [v4 filePurseInfo];
  v25 = [v5 dateWithYear:v7 month:v9 day:{DecodeBCD(objc_msgSend(v10, "bytes"), 28, 1)}];

  v11 = [v4 filePurseInfo];
  v23 = [v11 subdataWithRange:{8, 8}];

  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v13 = [v4 fileTrans];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __30__DreamworksDecoder_getState___block_invoke;
  v26[3] = &unk_2788753A8;
  v26[4] = self;
  v14 = [v13 firstWhere:v26];

  if (v14 && [v14 isIn])
  {
    [v12 addObject:@"TransitMetro"];
  }

  v30[0] = @"Balances";
  v27[0] = @"BalanceCurrency";
  v27[1] = @"BalanceCurrencyExponent";
  v28[0] = @"KRW";
  v28[1] = &unk_2843C71D8;
  v27[2] = @"Balance";
  v15 = MEMORY[0x277CCA980];
  v16 = [v4 balance];
  v17 = [v15 decimalNumberWithMantissa:objc_msgSend(v16 exponent:"unsignedIntValue") isNegative:{0, 0}];
  v27[3] = @"BalanceIdentifier";
  v28[2] = v17;
  v28[3] = @"PurseBalance";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];
  v29 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v31[0] = v19;
  v31[1] = @"Taiji";
  v30[1] = @"SP";
  v30[2] = @"SPRaw";
  v31[2] = &unk_2843C71D8;
  v31[3] = v25;
  v31[4] = v24;
  v30[3] = @"CardExpirationDate";
  v30[4] = @"CardIdentifier";
  v30[5] = @"TransactionInProgress";
  v31[5] = v12;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:6];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

BOOL __30__DreamworksDecoder_getState___block_invoke(uint64_t a1, void *a2)
{
  v2 = [*(a1 + 32) resolveTransitModality:{objc_msgSend(a2, "vehicleType")}];
  v3 = v2 == @"TransitMetro";

  return v3;
}

- (id)getHistory:(id)a3 state:(id)a4 error:(id *)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277CBEB18];
  v7 = [v5 filePurse];
  v8 = [v6 arrayWithCapacity:{objc_msgSend(v7, "count")}];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v32 = v5;
  obj = [v5 filePurse];
  v9 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v36;
    *&v10 = 67109120;
    v31 = v10;
    do
    {
      v13 = 0;
      do
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v35 + 1) + 8 * v13);
        v15 = [MEMORY[0x277CBEB38] dictionary];
        v16 = [v14 trt];
        v17 = v16;
        v19 = (v16 == 64 || v16 == 2) && [v14 amount] != 0;
        v20 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:objc_msgSend(v14 exponent:"amount") isNegative:{0, v19}];
        [v15 setObject:v20 forKeyedSubscript:@"Amount"];

        v21 = [MEMORY[0x277CBEA90] dataWithLongBE:{objc_msgSend(v14, "idSam")}];
        [v15 setObject:v21 forKeyedSubscript:@"TerminalIdentifier"];

        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v14, "seqnum")}];
        [v15 setObject:v22 forKeyedSubscript:@"SerialNumber"];

        v23 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:objc_msgSend(v14 exponent:"balance") isNegative:{0, 0}];
        [v15 setObject:v23 forKeyedSubscript:@"FinalBalance"];

        if (v17 <= 2)
        {
          if (v17 == 1)
          {
            [v15 setObject:@"Purchase" forKeyedSubscript:@"TypeDetail"];
            v26 = [v32 fileTrans];
            [(DreamworksDecoder *)self parseTransit:v14 fileTrans:v26 into:v15];

            goto LABEL_23;
          }

          if (v17 == 2)
          {
            v24 = v15;
            v25 = @"TopUp";
            goto LABEL_22;
          }
        }

        else
        {
          switch(v17)
          {
            case 3:
              v24 = v15;
              v25 = @"PurchaseRefundReturn";
              goto LABEL_22;
            case 4:
              v24 = v15;
              v25 = @"TopUpCancel";
              goto LABEL_22;
            case 64:
              v24 = v15;
              v25 = @"PurchaseRefund";
LABEL_22:
              [v24 setObject:v25 forKeyedSubscript:@"TypeDetail"];
              goto LABEL_23;
          }
        }

        v27 = ATLLogObject();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = v31;
          v40 = v17;
          _os_log_impl(&dword_22EEF5000, v27, OS_LOG_TYPE_ERROR, "TRT not recognized (%d).", buf, 8u);
        }

LABEL_23:
        [v8 addObject:v15];

        ++v13;
      }

      while (v11 != v13);
      v28 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
      v11 = v28;
    }

    while (v28);
  }

  [(DreamworksDecoder *)self adjustSN:v8];
  v29 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)parseTransit:(id)a3 fileTrans:(id)a4 into:(id)a5
{
  v8 = a3;
  v9 = a5;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __49__DreamworksDecoder_parseTransit_fileTrans_into___block_invoke;
  v20[3] = &unk_2788753A8;
  v10 = v8;
  v21 = v10;
  v11 = [a4 filter:v20];
  v12 = [v11 count];
  if (v12)
  {
    if (v12 != 1)
    {
      v13 = [v11 sortedArrayUsingComparator:&__block_literal_global_720];

      v11 = v13;
    }

    v14 = [v11 lastObject];
    v15 = [v14 datetime];
    [v9 setObject:v15 forKeyedSubscript:@"TransactionTime"];

    v16 = -[DreamworksDecoder resolveTransitModality:](self, "resolveTransitModality:", [v14 vehicleType]);
    [v9 setObject:v16 forKeyedSubscript:@"TypeDetail"];

    v17 = [MEMORY[0x277CBEA90] dataWithShortBE:{objc_msgSend(v14, "vehicleType")}];
    [v9 setObject:v17 forKeyedSubscript:@"TypeDetailRaw"];

    v18 = [v9 objectForKeyedSubscript:@"TypeDetail"];

    if (v18 == @"TransitMetro")
    {
      v19 = [MEMORY[0x277CBEA90] dataWithIntBE:{objc_msgSend(v14, "stationCode")}];
      [v9 setObject:v19 forKeyedSubscript:@"EndStation"];
    }
  }
}

uint64_t __49__DreamworksDecoder_parseTransit_fileTrans_into___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 number];
  if (v6 <= [v5 number])
  {
    v8 = [v4 number];
    if (v8 >= [v5 number])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)adjustSN:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = MEMORY[0x277CCABB0];
        v10 = [v8 objectForKeyedSubscript:@"SerialNumber"];
        v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "unsignedIntegerValue") << 8}];
        [v8 setObject:v11 forKeyedSubscript:@"SerialNumber"];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)parseHCIEvent:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withTransceiver:(id)a7 withError:(id *)a8
{
  v45[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  if ([v11 length] > 1)
  {
    v23 = *[v11 bytes];
    if (v23 <= 4)
    {
      if (v23 == 1)
      {
        v24 = [(DreamworksDecoder *)self parseStartEvent:v11 withApplet:v12 withError:a8];
        goto LABEL_26;
      }

      if (v23 == 2)
      {
        v24 = [(DreamworksDecoder *)self parseEndEvent:v11 withApplet:v12 withError:a8];
LABEL_26:
        v32 = v24;
        goto LABEL_31;
      }

LABEL_20:
      v27 = ATLLogObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v41) = v23;
        _os_log_impl(&dword_22EEF5000, v27, OS_LOG_TYPE_ERROR, "Unknown event type %u", buf, 8u);
      }

      v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown event type %u", v23];
      v15 = v28;
      if (!a8)
      {
        goto LABEL_19;
      }

      v29 = *a8;
      v17 = MEMORY[0x277CCA9B8];
      v30 = *MEMORY[0x277CCA450];
      if (*a8)
      {
        v31 = *MEMORY[0x277CCA7E8];
        v36[0] = *MEMORY[0x277CCA450];
        v36[1] = v31;
        v37[0] = v28;
        v37[1] = v29;
        v19 = MEMORY[0x277CBEAC0];
        v20 = v37;
        v21 = v36;
        goto LABEL_7;
      }

      v38 = *MEMORY[0x277CCA450];
      v39 = v28;
      v19 = MEMORY[0x277CBEAC0];
      v20 = &v39;
      v21 = &v38;
LABEL_17:
      v22 = 1;
      goto LABEL_18;
    }

    if (v23 == 5)
    {
      v25 = ATLLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v11 asHexString];
        *buf = 138412290;
        v41 = v33;
        _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_DEFAULT, "State change event, nothing to do here. %@", buf, 0xCu);
      }
    }

    else
    {
      if (v23 != 18)
      {
        goto LABEL_20;
      }

      v25 = ATLLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_INFO, "Deselect event, nothing to do here", buf, 2u);
      }
    }

    goto LABEL_30;
  }

  v13 = ATLLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v41) = [v11 length];
    _os_log_impl(&dword_22EEF5000, v13, OS_LOG_TYPE_ERROR, "Short eventData? %u", buf, 8u);
  }

  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Short eventData? %u", objc_msgSend(v11, "length")];
  v15 = v14;
  if (!a8)
  {
    goto LABEL_19;
  }

  v16 = *a8;
  v17 = MEMORY[0x277CCA9B8];
  if (!*a8)
  {
    v44 = *MEMORY[0x277CCA450];
    v45[0] = v14;
    v19 = MEMORY[0x277CBEAC0];
    v20 = v45;
    v21 = &v44;
    goto LABEL_17;
  }

  v18 = *MEMORY[0x277CCA7E8];
  v42[0] = *MEMORY[0x277CCA450];
  v42[1] = v18;
  v43[0] = v14;
  v43[1] = v16;
  v19 = MEMORY[0x277CBEAC0];
  v20 = v43;
  v21 = v42;
LABEL_7:
  v22 = 2;
LABEL_18:
  v26 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:v22];
  *a8 = [v17 errorWithDomain:@"ATL" code:6 userInfo:v26];

LABEL_19:
LABEL_30:
  v32 = 0;
LABEL_31:

  v34 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)parseStartEvent:(id)a3 withApplet:(id)a4 withError:(id *)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v8 length] != 5)
  {
    v16 = ATLLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v48 = [v8 length];
      v49 = 2048;
      v50 = 5;
      _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_ERROR, "Start event length %u expected %lu", buf, 0x12u);
    }

    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start event length %u expected %lu", objc_msgSend(v8, "length"), 5];
    v14 = v17;
    if (!a5)
    {
      goto LABEL_28;
    }

    v18 = *a5;
    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA450];
    if (*a5)
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
      *a5 = [v19 errorWithDomain:@"ATL" code:6 userInfo:v34];

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

  v10 = [v8 bytes];
  v11 = v10;
  if (*(v10 + 1) != 8)
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
    if (!a5)
    {
      goto LABEL_28;
    }

    v28 = *a5;
    v19 = MEMORY[0x277CCA9B8];
    if (*a5)
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

  if (!*(v10 + 2))
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
  v38[1] = v9;
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
  v38[8] = &unk_2843C71C0;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:9];

LABEL_29:
  v35 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)parseEndEvent:(id)a3 withApplet:(id)a4 withError:(id *)a5
{
  v66[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v8 length] <= 8)
  {
    v10 = ATLLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [v8 length];
      _os_log_impl(&dword_22EEF5000, v10, OS_LOG_TYPE_ERROR, "End event length %zu", &buf, 0xCu);
    }

    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End event length %zu", objc_msgSend(v8, "length")];
    v12 = v11;
    if (!a5)
    {
      goto LABEL_34;
    }

    v13 = *a5;
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA450];
    if (*a5)
    {
      v16 = *MEMORY[0x277CCA7E8];
      v63[0] = *MEMORY[0x277CCA450];
      v63[1] = v16;
      v64[0] = v11;
      v64[1] = v13;
      v17 = MEMORY[0x277CBEAC0];
      v18 = v64;
      v19 = v63;
      v20 = 2;
    }

    else
    {
      v65 = *MEMORY[0x277CCA450];
      v66[0] = v11;
      v17 = MEMORY[0x277CBEAC0];
      v18 = v66;
      v19 = &v65;
      v20 = 1;
    }

    v37 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v20];
    v38 = v14;
    v39 = 3;
LABEL_33:
    *a5 = [v38 errorWithDomain:@"ATL" code:v39 userInfo:v37];

LABEL_34:
    v45 = 0;
    goto LABEL_37;
  }

  v21 = [v8 bytes];
  v22 = v21;
  if (*(v21 + 1) != 8)
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
    if (!a5)
    {
      goto LABEL_34;
    }

    v29 = *a5;
    v30 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    if (*a5)
    {
      v32 = *MEMORY[0x277CCA7E8];
      v59[0] = *MEMORY[0x277CCA450];
      v59[1] = v32;
      v60[0] = v28;
      v60[1] = v29;
      v33 = MEMORY[0x277CBEAC0];
      v34 = v60;
      v35 = v59;
      v36 = 2;
    }

    else
    {
      v61 = *MEMORY[0x277CCA450];
      v62 = v28;
      v33 = MEMORY[0x277CBEAC0];
      v34 = &v62;
      v35 = &v61;
      v36 = 1;
    }

    v37 = [v33 dictionaryWithObjects:v34 forKeys:v35 count:v36];
    v38 = v30;
    v39 = 6;
    goto LABEL_33;
  }

  if (*(v21 + 2) == 1)
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
  if (v41 == 144 || v41 == 33642 && (*(v22 + 5) & 0xFF00) == 0xB200)
  {
    v42 = 0;
    v43 = 64;
  }

  else
  {
    v43 = 0;
    v42 = 1;
  }

  v12 = [v8 subdataWithRange:{9, objc_msgSend(v8, "length") - 9}];
  *&buf = [v12 bytes];
  *(&buf + 1) = [v12 length];
  v44 = [(DreamworksDecoder *)self DecodeEndE1TLV:&buf error:a5];
  if (v44 && !*a5)
  {
    v56[0] = @"EventType";
    v56[1] = @"appletIdentifier";
    v57[0] = @"EndEvent";
    v57[1] = v9;
    v56[2] = @"Version";
    v55 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v22 + 1)];
    v57[2] = v55;
    v56[3] = @"Interface";
    v54 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v22 + 2)];
    v57[3] = v54;
    v56[4] = @"didError";
    v53 = [MEMORY[0x277CCABB0] numberWithBool:v42];
    v57[4] = v53;
    v56[5] = @"command";
    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(v40)];
    v57[5] = v46;
    v56[6] = @"status";
    v47 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(v41) >> 16];
    v57[6] = v47;
    v56[7] = @"result";
    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v43];
    v57[7] = v48;
    v57[8] = &unk_2843C71D8;
    v56[8] = @"informative";
    v56[9] = @"type";
    v57[9] = &unk_2843C71F0;
    v56[10] = @"ReadOperationInfo";
    v49 = [v44 objectForKeyedSubscript:?];
    v57[10] = v49;
    v56[11] = @"WriteOperationInfo";
    v50 = [v44 objectForKeyedSubscript:?];
    v57[11] = v50;
    v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:12];
  }

  else
  {
    v45 = 0;
  }

LABEL_37:
  v51 = *MEMORY[0x277D85DE8];

  return v45;
}

- (id)DecodeEndE1TLV:(id *)a3 error:(id *)a4
{
  v69[1] = *MEMORY[0x277D85DE8];
  v52 = 0;
  v53[0] = 0;
  v53[1] = 0;
  v6 = DERDecodeItemCtx(a3, &v52);
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
    if (a4)
    {
      v11 = *a4;
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCA450];
      if (*a4)
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
      *a4 = [v12 errorWithDomain:@"ATL" code:3 userInfo:v43];
    }

LABEL_27:
    a4 = 0;
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
    if (a4)
    {
      v36 = *a4;
      v37 = MEMORY[0x277CCA9B8];
      if (*a4)
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
      *a4 = [v37 errorWithDomain:@"ATL" code:3 userInfo:v45];
    }

    LogBinary(OS_LOG_TYPE_ERROR, "[DreamworksDecoder DecodeEndE1TLV:error:]", 420, a3->var0, a3->var1, @"E1 TLV data", v46, v47, v51);
    goto LABEL_27;
  }

  *buf = 0u;
  v61 = 0;
  v19 = DERParseSequenceSpec(v53, &DreamworksEndEventE1ContentSpec, buf, 0x20uLL);
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
    if (a4)
    {
      v24 = *a4;
      v25 = MEMORY[0x277CCA9B8];
      v26 = *MEMORY[0x277CCA450];
      if (*a4)
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
      *a4 = [v25 errorWithDomain:@"ATL" code:3 userInfo:v50];

      a4 = 0;
    }
  }

  else
  {
    a4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    if (!*&buf[8])
    {
      goto LABEL_28;
    }

    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:ReadS32BE(buf)];
    [a4 setObject:v44 forKeyedSubscript:@"ReadOperationInfo"];

    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:ReadS32BE(&v61)];
    [a4 setObject:v23 forKeyedSubscript:@"WriteOperationInfo"];
  }

LABEL_28:
  v48 = *MEMORY[0x277D85DE8];

  return a4;
}

- (id)processEndOfTransaction:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v22 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Dreamworks decoder doesn't expect processEndOfTransaction", v22, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Dreamworks decoder doesn't expect processEndOfTransaction"];
  v10 = v9;
  if (a7)
  {
    v11 = *a7;
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    if (*a7)
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
    *a7 = [v12 errorWithDomain:@"ATL" code:7 userInfo:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)getServiceProviderData:(id)a3 withPackage:(id)a4 withModule:(id)a5 withPublicKey:(id)a6 withEncryptionScheme:(id)a7 withTransceiver:(id)a8 withError:(id *)a9
{
  v10 = a3;
  v11 = [TransceiverWrapper withTransceiver:a8];
  v12 = [MEMORY[0x277CBEA90] dataWithHexString:v10];

  v13 = SelectByNameCmd(v12);

  v14 = [v11 transceiveAndCheckSW:v13 error:a9];
  if (v14)
  {
    v15 = [MEMORY[0x277CBEA90] dataWithIntBE:2163278080];
    v16 = [MEMORY[0x277CBEA90] dataWithIntBE:12582912];
    v17 = [v11 transceiveAndGetAllData:v15 withGetMoreData:v16 withMoreDataSW:24832 withError:a9];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)cleanup
{
  v3 = ATLLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_22EEF5000, v3, OS_LOG_TYPE_INFO, "cleanup", v4, 2u);
  }

  self->decoderState = 0;
}

@end