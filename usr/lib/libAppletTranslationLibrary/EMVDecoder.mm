@interface EMVDecoder
+ (BOOL)isEMV:(id)a3;
+ (id)DecodeEndE1TLV:(id *)a3 withModule:(id)a4 withLegacy:(BOOL)a5 withType:(unsigned __int16 *)a6 withTransactionStatus:(BOOL)a7 error:(id *)a8;
+ (id)parseEndEvent:(id)a3 withApplet:(id)a4 withModule:(id)a5 withLegacy:(BOOL)a6 error:(id *)a7;
+ (id)parseStartEvent:(id)a3 withApplet:(id)a4 error:(id *)a5;
- (id)GetAppletProperties:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)a7;
- (id)getAppletStateAndHistory:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7;
- (id)parseHCIEvent:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withTransceiver:(id)a7 withError:(id *)a8;
- (id)processEndOfTransaction:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7;
@end

@implementation EMVDecoder

- (id)parseHCIEvent:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withTransceiver:(id)a7 withError:(id *)a8
{
  v54[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if ([v11 length] > 2)
  {
    v24 = *[v11 bytes];
    v25 = *([v11 bytes] + 1);
    if (v24 == 2)
    {
      if (v25 == 6 || v25 == 1)
      {
        v26 = [EMVDecoder parseEndEvent:v11 withApplet:v12 withModule:v13 withLegacy:v25 == 1 error:a8];
        goto LABEL_15;
      }
    }

    else if (v24 == 1 && (v25 == 6 || v25 == 1))
    {
      v26 = [EMVDecoder parseStartEvent:v11 withApplet:v12 error:a8];
LABEL_15:
      v27 = v26;
      goto LABEL_27;
    }

    v28 = ATLLogObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v48 = v24;
      v49 = 1024;
      v50 = v25;
      _os_log_impl(&dword_22EEF5000, v28, OS_LOG_TYPE_ERROR, "Invalid event type 0x%x version 0x%x", buf, 0xEu);
    }

    v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid event type 0x%x version 0x%x", v24, v25];
    v16 = v29;
    if (!a8)
    {
      goto LABEL_26;
    }

    v30 = *a8;
    v31 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA450];
    if (*a8)
    {
      v33 = *MEMORY[0x277CCA7E8];
      v43[0] = *MEMORY[0x277CCA450];
      v43[1] = v33;
      v44[0] = v29;
      v44[1] = v30;
      v34 = MEMORY[0x277CBEAC0];
      v35 = v44;
      v36 = v43;
      v37 = 2;
    }

    else
    {
      v45 = *MEMORY[0x277CCA450];
      v46 = v29;
      v34 = MEMORY[0x277CBEAC0];
      v35 = &v46;
      v36 = &v45;
      v37 = 1;
    }

    v38 = [v34 dictionaryWithObjects:v35 forKeys:v36 count:v37];
    v39 = v31;
    v40 = 3;
    goto LABEL_25;
  }

  v14 = ATLLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v48 = [v11 length];
    _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_ERROR, "Short eventData? %u", buf, 8u);
  }

  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Short eventData? %u", objc_msgSend(v11, "length")];
  v16 = v15;
  if (!a8)
  {
    goto LABEL_26;
  }

  v17 = *a8;
  v18 = MEMORY[0x277CCA9B8];
  if (*a8)
  {
    v19 = *MEMORY[0x277CCA7E8];
    v51[0] = *MEMORY[0x277CCA450];
    v51[1] = v19;
    v52[0] = v15;
    v52[1] = v17;
    v20 = MEMORY[0x277CBEAC0];
    v21 = v52;
    v22 = v51;
    v23 = 2;
  }

  else
  {
    v53 = *MEMORY[0x277CCA450];
    v54[0] = v15;
    v20 = MEMORY[0x277CBEAC0];
    v21 = v54;
    v22 = &v53;
    v23 = 1;
  }

  v38 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:v23];
  v39 = v18;
  v40 = 6;
LABEL_25:
  *a8 = [v39 errorWithDomain:@"ATL" code:v40 userInfo:v38];

LABEL_26:
  v27 = 0;
LABEL_27:

  v41 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)getAppletStateAndHistory:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v22 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "EMVDecoder doesn't support GetState", v22, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"EMVDecoder doesn't support GetState"];
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
    *a7 = [v12 errorWithDomain:@"ATL" code:2 userInfo:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (id)parseStartEvent:(id)a3 withApplet:(id)a4 error:(id *)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 length] == 4)
  {
    v9 = [v7 bytes];
    v23[0] = @"EventType";
    v23[1] = @"appletIdentifier";
    v24[0] = @"StartEvent";
    v24[1] = v8;
    v23[2] = @"selectStatus";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(v9 + 2)) >> 16];
    v23[3] = @"IgnoreRFEvents";
    v23[4] = @"DontWaitForEOT";
    v24[2] = v10;
    v24[3] = MEMORY[0x277CBEC28];
    v24[4] = MEMORY[0x277CBEC28];
    v24[5] = MEMORY[0x277CBEC28];
    v23[5] = @"RequiresPowerCycle";
    v23[6] = @"DelayExpressReentry";
    v24[6] = &unk_2843C65A8;
    a5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:7];
  }

  else
  {
    v11 = ATLLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v30 = [v7 length];
      v31 = 2048;
      v32 = 4;
      _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_ERROR, "Start event length %zu (exp) %zu", buf, 0x16u);
    }

    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start event length %zu (exp) %zu", objc_msgSend(v7, "length"), 4];
    v10 = v12;
    if (a5)
    {
      v13 = *a5;
      v14 = MEMORY[0x277CCA9B8];
      if (*a5)
      {
        v15 = *MEMORY[0x277CCA7E8];
        v25[0] = *MEMORY[0x277CCA450];
        v25[1] = v15;
        v26[0] = v12;
        v26[1] = v13;
        v16 = MEMORY[0x277CBEAC0];
        v17 = v26;
        v18 = v25;
        v19 = 2;
      }

      else
      {
        v27 = *MEMORY[0x277CCA450];
        v28 = v12;
        v16 = MEMORY[0x277CBEAC0];
        v17 = &v28;
        v18 = &v27;
        v19 = 1;
      }

      v20 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:v19];
      *a5 = [v14 errorWithDomain:@"ATL" code:3 userInfo:v20];

      a5 = 0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return a5;
}

+ (id)parseEndEvent:(id)a3 withApplet:(id)a4 withModule:(id)a5 withLegacy:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v60[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if ([v11 length] > 0x29)
  {
    v50 = v8;
    v51 = a7;
    v24 = [v11 bytes];
    v25 = MEMORY[0x277CBEB38];
    v55[0] = @"EventType";
    v55[1] = @"appletIdentifier";
    v56[0] = @"EndEvent";
    v56[1] = v12;
    v52 = v12;
    v55[2] = @"status";
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(v24[1]) >> 16];
    v56[2] = v26;
    v55[3] = @"command";
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(v24[2]) >> 16];
    v56[3] = v27;
    v55[4] = @"transactionIdentifier";
    [MEMORY[0x277CBEA90] dataWithBytes:v24 + 3 length:32];
    v29 = v28 = v13;
    v30 = [v29 asHexString];
    v56[4] = v30;
    v55[5] = @"informative";
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(v24[20]) >> 16];
    v56[5] = v31;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:6];
    v16 = [v25 dictionaryWithDictionary:v32];

    v13 = v28;
    v53 = -1;
    v33 = v24[1];
    v34 = v33 != 144;
    if ([v11 length] < 0x2B)
    {
      goto LABEL_15;
    }

    v35 = [v11 subdataWithRange:{42, objc_msgSend(v11, "length") - 42}];
    *&buf = [v35 bytes];
    *(&buf + 1) = [v35 length];
    a7 = [EMVDecoder DecodeEndE1TLV:&buf withModule:v28 withLegacy:v50 withType:&v53 withTransactionStatus:v33 == 144 error:v51];
    if (!a7)
    {

      goto LABEL_22;
    }

    v36 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
    [v36 setObject:a7 forKeyedSubscript:@"Transaction"];
    [v16 setObject:v35 forKeyedSubscript:@"tlv"];
    [v16 setObject:v36 forKeyedSubscript:@"parsedInfo"];
    v37 = [a7 objectForKeyedSubscript:@"Amount"];

    if (v37)
    {
      v38 = [a7 objectForKeyedSubscript:@"Amount"];
      [v16 setObject:v38 forKeyedSubscript:@"amount"];
    }

    v39 = [a7 objectForKeyedSubscript:@"Currency"];

    if (v39)
    {
      v40 = [a7 objectForKeyedSubscript:@"Currency"];
      [v16 setObject:v40 forKeyedSubscript:@"currency"];
    }

    if (v53 - 1 >= 0xFFFE)
    {
LABEL_15:
      v42 = bswap32(v24[19]);
      v41 = HIWORD(v42);
      v34 = (v42 & 0xFEFF0000) == 0 || v33 != 144;
    }

    else
    {
      v41 = 0xFFFFLL;
    }

    v44 = [MEMORY[0x277CCABB0] numberWithBool:v34];
    [v16 setObject:v44 forKeyedSubscript:@"didError"];

    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v53];
    [v16 setObject:v45 forKeyedSubscript:@"type"];

    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v41];
    [v16 setObject:v46 forKeyedSubscript:@"result"];

    a7 = v16;
LABEL_22:
    v12 = v52;
    goto LABEL_25;
  }

  v14 = ATLLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [v11 length];
    _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_ERROR, "End event length %zu", &buf, 0xCu);
  }

  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End event length %zu", objc_msgSend(v11, "length")];
  v16 = v15;
  if (a7)
  {
    v17 = *a7;
    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    if (*a7)
    {
      v57[0] = *MEMORY[0x277CCA450];
      v57[1] = *MEMORY[0x277CCA7E8];
      v58[0] = v15;
      v58[1] = v17;
      v20 = MEMORY[0x277CBEAC0];
      v21 = v58;
      v22 = v57;
      v23 = 2;
    }

    else
    {
      v59 = *MEMORY[0x277CCA450];
      v60[0] = v15;
      v20 = MEMORY[0x277CBEAC0];
      v21 = v60;
      v22 = &v59;
      v23 = 1;
    }

    v47 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:v23];
    *a7 = [v18 errorWithDomain:@"ATL" code:3 userInfo:v47];

    a7 = 0;
  }

LABEL_25:

  v48 = *MEMORY[0x277D85DE8];

  return a7;
}

+ (id)DecodeEndE1TLV:(id *)a3 withModule:(id)a4 withLegacy:(BOOL)a5 withType:(unsigned __int16 *)a6 withTransactionStatus:(BOOL)a7 error:(id *)a8
{
  v9 = a7;
  v143[1] = *MEMORY[0x277D85DE8];
  v13 = a4;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v14 = DERDecodeItemCtx(a3, &v97);
  if (v14 || v97 != 0xE000000000000001)
  {
    v28 = ATLLogObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v122[0].data) = 67109376;
      HIDWORD(v122[0].data) = v14;
      LOWORD(v122[0].length) = 2048;
      *(&v122[0].length + 2) = v97;
      _os_log_impl(&dword_22EEF5000, v28, OS_LOG_TYPE_ERROR, "Failed to decode E1 tag %d or wrong tag 0x%llx", v122, 0x12u);
    }

    v29 = objc_alloc(MEMORY[0x277CCACA8]);
    v30 = [v29 initWithFormat:@"Failed to decode E1 tag %d or wrong tag 0x%llx", v14, v97];
    v31 = v30;
    if (!a8)
    {
      goto LABEL_25;
    }

    v32 = *a8;
    v33 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    if (*a8)
    {
      v35 = *MEMORY[0x277CCA7E8];
      v140[0] = *MEMORY[0x277CCA450];
      v140[1] = v35;
      v141[0] = v30;
      v141[1] = v32;
      v36 = MEMORY[0x277CBEAC0];
      v37 = v141;
      v38 = v140;
LABEL_15:
      v39 = 2;
LABEL_24:
      v45 = [v36 dictionaryWithObjects:v37 forKeys:v38 count:v39];
      *a8 = [v33 errorWithDomain:@"ATL" code:3 userInfo:v45];

      goto LABEL_25;
    }

    v142 = *MEMORY[0x277CCA450];
    v143[0] = v30;
    v36 = MEMORY[0x277CBEAC0];
    v37 = v143;
    v38 = &v142;
LABEL_23:
    v39 = 1;
    goto LABEL_24;
  }

  if (!v99)
  {
    if (!v9)
    {
      a8 = MEMORY[0x277CBEC10];
      goto LABEL_100;
    }

    v40 = ATLLogObject();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v122[0].data) = 0;
      _os_log_impl(&dword_22EEF5000, v40, OS_LOG_TYPE_ERROR, "Missing E1 content", v122, 2u);
    }

    v41 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Missing E1 content"];
    v31 = v41;
    if (!a8)
    {
LABEL_25:

      a8 = 0;
      goto LABEL_100;
    }

    v42 = *a8;
    v33 = MEMORY[0x277CCA9B8];
    v43 = *MEMORY[0x277CCA450];
    if (*a8)
    {
      v44 = *MEMORY[0x277CCA7E8];
      v136[0] = *MEMORY[0x277CCA450];
      v136[1] = v44;
      v137[0] = v41;
      v137[1] = v42;
      v36 = MEMORY[0x277CBEAC0];
      v37 = v137;
      v38 = v136;
      goto LABEL_15;
    }

    v138 = *MEMORY[0x277CCA450];
    v139 = v41;
    v36 = MEMORY[0x277CBEAC0];
    v37 = &v139;
    v38 = &v138;
    goto LABEL_23;
  }

  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v123 = 0u;
  memset(v122, 0, sizeof(v122));
  v15 = DERParseSequenceSpec(&v98, &e1EndEventContentSpec, v122, 0xF0uLL);
  if (v15)
  {
    v16 = v15;
    v17 = ATLLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v121 = v16;
      _os_log_impl(&dword_22EEF5000, v17, OS_LOG_TYPE_ERROR, "Failed to decode E1 contents %d", buf, 8u);
    }

    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode E1 contents %d", v16];
    v19 = v18;
    if (!a8)
    {
      goto LABEL_99;
    }

    v20 = *a8;
    v21 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    if (*a8)
    {
      v23 = *MEMORY[0x277CCA7E8];
      v116[0] = *MEMORY[0x277CCA450];
      v116[1] = v23;
      v117[0] = v18;
      v117[1] = v20;
      v24 = MEMORY[0x277CBEAC0];
      v25 = v117;
      v26 = v116;
      v27 = 2;
    }

    else
    {
      v118 = *MEMORY[0x277CCA450];
      v119 = v18;
      v24 = MEMORY[0x277CBEAC0];
      v25 = &v119;
      v26 = &v118;
      v27 = 1;
    }

    v68 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:v27];
    *a8 = [v21 errorWithDomain:@"ATL" code:3 userInfo:v68];

    goto LABEL_71;
  }

  v19 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:15];
  *buf = 0;
  if (*(&v123 + 1))
  {
    v46 = DecodeBCD(&v123);
    v47 = [ATLCurrency currencyCodeForNumber:v46 exponentOut:buf];
    if (v47)
    {
      [v19 setObject:v47 forKeyedSubscript:@"Currency"];
      v48 = [MEMORY[0x277CCABB0] numberWithShort:*buf];
      [v19 setObject:v48 forKeyedSubscript:@"CurrencyExponent"];

      v49 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v46];
      [v19 setObject:v49 forKeyedSubscript:@"CurrencyCode"];
    }
  }

  if (v122[1].length)
  {
    v50 = DecodeBCD(&v122[1]);
    v51 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:v50 exponent:-*buf isNegative:0];
    [v19 setObject:v51 forKeyedSubscript:@"Amount"];
  }

  if (a5 || v122[0].length || !v9)
  {
    if (v122[0].length)
    {
      v63 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:ReadU16BE(v122)];
      [v19 setObject:v63 forKeyedSubscript:@"LocalValidation"];
    }

    if (a6 && *(&v124 + 1))
    {
      *a6 = *v124;
    }

    if (*(&v125 + 1))
    {
      v64 = [MEMORY[0x277CBEA90] dataWithDERItem:&v125];
      [v19 setObject:v64 forKeyedSubscript:@"MerchantNameAndLocation"];
    }

    if ([EMVDecoder isArgon:v13])
    {
      if (*(&v134 + 1))
      {
        v65 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:ReadU16BE(&v134)];
        [v19 setObject:v65 forKeyedSubscript:@"MerchantCategoryCode"];
      }

      if (!*(&v135 + 1))
      {
        goto LABEL_98;
      }

      v66 = [MEMORY[0x277CBEA90] dataWithDERItem:&v135];
      v67 = @"MCII";
      goto LABEL_97;
    }

    if ([EMVDecoder isHelium:v13])
    {
      if (*(&v126 + 1))
      {
        v69 = [MEMORY[0x277CBEA90] dataWithDERItem:&v126];
        [v19 setObject:v69 forKeyedSubscript:@"CDI"];

LABEL_85:
        if (*(&v127 + 1))
        {
          v80 = [MEMORY[0x277CBEA90] dataWithDERItem:&v127];
          [v19 setObject:v80 forKeyedSubscript:@"AIDPersonalized"];
        }

        if (*(&v128 + 1))
        {
          v81 = [MEMORY[0x277CBEA90] dataWithDERItem:&v128];
          [v19 setObject:v81 forKeyedSubscript:@"MAID"];
        }

        if (*(&v129 + 1))
        {
          v82 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:ReadU16BE(&v129)];
          [v19 setObject:v82 forKeyedSubscript:@"MSC"];
        }

        if (!*(&v130 + 1))
        {
          goto LABEL_98;
        }

        v66 = [MEMORY[0x277CCABB0] numberWithInt:ReadS32BE(&v130)];
        v67 = @"TerminalTypeQualifiers";
        goto LABEL_97;
      }

      if (!v9)
      {
        goto LABEL_85;
      }

      v75 = ATLLogObject();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        *v96 = 0;
        _os_log_impl(&dword_22EEF5000, v75, OS_LOG_TYPE_ERROR, "Missing mandatory CDI tag", v96, 2u);
      }

      v76 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Missing mandatory CDI tag"];
      v54 = v76;
      if (!a8)
      {
        goto LABEL_70;
      }

      v77 = *a8;
      v56 = MEMORY[0x277CCA9B8];
      v78 = *MEMORY[0x277CCA450];
      if (*a8)
      {
        v79 = *MEMORY[0x277CCA7E8];
        v108[0] = *MEMORY[0x277CCA450];
        v108[1] = v79;
        v109[0] = v76;
        v109[1] = v77;
        v59 = MEMORY[0x277CBEAC0];
        v60 = v109;
        v61 = v108;
        goto LABEL_40;
      }

      v110 = *MEMORY[0x277CCA450];
      v111 = v76;
      v59 = MEMORY[0x277CBEAC0];
      v60 = &v111;
      v61 = &v110;
LABEL_68:
      v62 = 1;
      goto LABEL_69;
    }

    if ([EMVDecoder isNeon:v13])
    {
      if (*(&v131 + 1))
      {
        v70 = [MEMORY[0x277CBEA90] dataWithDERItem:&v131];
        [v19 setObject:v70 forKeyedSubscript:@"IssuerApplicationData"];
      }

      if (*(&v132 + 1))
      {
        v71 = [MEMORY[0x277CBEA90] dataWithDERItem:&v132];
        [v19 setObject:v71 forKeyedSubscript:@"MobileCVMResults"];
      }

      if (!*(&v133 + 1))
      {
        goto LABEL_98;
      }

      v66 = [MEMORY[0x277CCABB0] numberWithInt:ReadS32BE(&v133)];
      v67 = @"EnhancedContactlessReaderCapabilities";
      goto LABEL_97;
    }

    if ([EMVDecoder isXenon:v13])
    {
      if (*(&v130 + 1))
      {
        v73 = [MEMORY[0x277CCABB0] numberWithInt:ReadS32BE(&v130)];
        [v19 setObject:v73 forKeyedSubscript:@"TerminalTypeQualifiers"];
      }

      if (*(&v134 + 1))
      {
        v74 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:ReadU16BE(&v134)];
        [v19 setObject:v74 forKeyedSubscript:@"MerchantCategoryCode"];
      }
    }

    else
    {
      if (![EMVDecoder isLuau:v13])
      {
LABEL_98:
        a8 = v19;
        goto LABEL_99;
      }

      if (*(&v126 + 1))
      {
        v83 = [MEMORY[0x277CBEA90] dataWithDERItem:&v126];
        [v19 setObject:v83 forKeyedSubscript:@"CDI"];

        if (!*(&v131 + 1))
        {
          if (!v9)
          {
            goto LABEL_98;
          }

          v91 = ATLLogObject();
          if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
          {
            *v96 = 0;
            _os_log_impl(&dword_22EEF5000, v91, OS_LOG_TYPE_ERROR, "Missing mandatory IAD tag", v96, 2u);
          }

          v92 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Missing mandatory IAD tag"];
          v54 = v92;
          if (!a8)
          {
            goto LABEL_70;
          }

          v93 = *a8;
          v56 = MEMORY[0x277CCA9B8];
          v94 = *MEMORY[0x277CCA450];
          if (*a8)
          {
            v95 = *MEMORY[0x277CCA7E8];
            v100[0] = *MEMORY[0x277CCA450];
            v100[1] = v95;
            v101[0] = v92;
            v101[1] = v93;
            v59 = MEMORY[0x277CBEAC0];
            v60 = v101;
            v61 = v100;
            goto LABEL_40;
          }

          v102 = *MEMORY[0x277CCA450];
          v103 = v92;
          v59 = MEMORY[0x277CBEAC0];
          v60 = &v103;
          v61 = &v102;
          goto LABEL_68;
        }

        goto LABEL_96;
      }

      if (v9)
      {
        v86 = ATLLogObject();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          *v96 = 0;
          _os_log_impl(&dword_22EEF5000, v86, OS_LOG_TYPE_ERROR, "Missing mandatory CVS tag", v96, 2u);
        }

        v87 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Missing mandatory CVS tag"];
        v54 = v87;
        if (!a8)
        {
          goto LABEL_70;
        }

        v88 = *a8;
        v56 = MEMORY[0x277CCA9B8];
        v89 = *MEMORY[0x277CCA450];
        if (*a8)
        {
          v90 = *MEMORY[0x277CCA7E8];
          v104[0] = *MEMORY[0x277CCA450];
          v104[1] = v90;
          v105[0] = v87;
          v105[1] = v88;
          v59 = MEMORY[0x277CBEAC0];
          v60 = v105;
          v61 = v104;
          goto LABEL_40;
        }

        v106 = *MEMORY[0x277CCA450];
        v107 = v87;
        v59 = MEMORY[0x277CBEAC0];
        v60 = &v107;
        v61 = &v106;
        goto LABEL_68;
      }
    }

    if (!*(&v131 + 1))
    {
      goto LABEL_98;
    }

LABEL_96:
    v66 = [MEMORY[0x277CBEA90] dataWithDERItem:&v131];
    v67 = @"IssuerApplicationData";
LABEL_97:
    [v19 setObject:v66 forKeyedSubscript:v67];

    goto LABEL_98;
  }

  v52 = ATLLogObject();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
  {
    *v96 = 0;
    _os_log_impl(&dword_22EEF5000, v52, OS_LOG_TYPE_ERROR, "Missing mandatory local validation tag", v96, 2u);
  }

  v53 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Missing mandatory local validation tag"];
  v54 = v53;
  if (!a8)
  {
    goto LABEL_70;
  }

  v55 = *a8;
  v56 = MEMORY[0x277CCA9B8];
  v57 = *MEMORY[0x277CCA450];
  if (!*a8)
  {
    v114 = *MEMORY[0x277CCA450];
    v115 = v53;
    v59 = MEMORY[0x277CBEAC0];
    v60 = &v115;
    v61 = &v114;
    goto LABEL_68;
  }

  v58 = *MEMORY[0x277CCA7E8];
  v112[0] = *MEMORY[0x277CCA450];
  v112[1] = v58;
  v113[0] = v53;
  v113[1] = v55;
  v59 = MEMORY[0x277CBEAC0];
  v60 = v113;
  v61 = v112;
LABEL_40:
  v62 = 2;
LABEL_69:
  v72 = [v59 dictionaryWithObjects:v60 forKeys:v61 count:v62];
  *a8 = [v56 errorWithDomain:@"ATL" code:3 userInfo:v72];

LABEL_70:
LABEL_71:
  a8 = 0;
LABEL_99:

LABEL_100:
  v84 = *MEMORY[0x277D85DE8];

  return a8;
}

+ (BOOL)isEMV:(id)a3
{
  v3 = a3;
  v4 = [EMVDecoder isArgon:v3]|| [EMVDecoder isHelium:v3]|| [EMVDecoder isNeon:v3]|| [EMVDecoder isXenon:v3]|| [EMVDecoder isLuau:v3]|| [EMVDecoder isPoke:v3]|| [EMVDecoder isEMVLegacy:v3];

  return v4;
}

- (id)GetAppletProperties:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)a7
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"Supported";
  v10[1] = @"DelayExpressReentry";
  v11[0] = MEMORY[0x277CBEC38];
  v11[1] = &unk_2843C65A8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:{2, a6, a7}];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)processEndOfTransaction:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v22 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "EMV decoder doesn't expect processEndOfTransaction", v22, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"EMV decoder doesn't expect processEndOfTransaction"];
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

@end