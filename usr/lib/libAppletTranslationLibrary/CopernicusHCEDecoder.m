@interface CopernicusHCEDecoder
- (id)GetAppletProperties:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)a7;
- (id)getAppletStateAndHistory:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7;
- (id)parseHCIEvent:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withTransceiver:(id)a7 withError:(id *)a8;
- (id)processEndOfTransaction:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7;
@end

@implementation CopernicusHCEDecoder

- (id)GetAppletProperties:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)a7
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"Supported";
  v11[0] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:{1, a6, a7}];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)getAppletStateAndHistory:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v22 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "HCE has no history", v22, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"HCE has no history"];
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

- (id)processEndOfTransaction:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v22 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "HCE has no EOT", v22, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"HCE has no EOT"];
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

- (id)parseHCIEvent:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withTransceiver:(id)a7 withError:(id *)a8
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  if ([v10 length] > 1)
  {
    v22 = MEMORY[0x277CBEB38];
    v28[0] = @"EventType";
    v28[1] = @"appletIdentifier";
    v29[0] = @"EndEvent";
    v29[1] = v11;
    v28[2] = @"didError";
    v28[3] = @"command";
    v29[2] = MEMORY[0x277CBEC38];
    v29[3] = &unk_2843C7190;
    v28[4] = @"status";
    v28[5] = @"result";
    v29[4] = &unk_2843C7190;
    v29[5] = &unk_2843C71A8;
    v28[6] = @"informative";
    v29[6] = &unk_2843C7190;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:7];
    a8 = [v22 dictionaryWithDictionary:v23];

    if ([v10 length] < 4)
    {
      goto LABEL_12;
    }

    v24 = [v10 bytes];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(v24 + 2)) >> 16];
    [a8 setObject:v14 forKeyedSubscript:@"PairingModeBrandCode"];
  }

  else
  {
    v12 = ATLLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v35 = [v10 length];
      _os_log_impl(&dword_22EEF5000, v12, OS_LOG_TYPE_ERROR, "Bad length %u", buf, 8u);
    }

    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Bad length %u", objc_msgSend(v10, "length")];
    v14 = v13;
    if (a8)
    {
      v15 = *a8;
      v16 = MEMORY[0x277CCA9B8];
      if (*a8)
      {
        v17 = *MEMORY[0x277CCA7E8];
        v30[0] = *MEMORY[0x277CCA450];
        v30[1] = v17;
        v31[0] = v13;
        v31[1] = v15;
        v18 = MEMORY[0x277CBEAC0];
        v19 = v31;
        v20 = v30;
        v21 = 2;
      }

      else
      {
        v32 = *MEMORY[0x277CCA450];
        v33 = v13;
        v18 = MEMORY[0x277CBEAC0];
        v19 = &v33;
        v20 = &v32;
        v21 = 1;
      }

      v25 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:v21];
      *a8 = [v16 errorWithDomain:@"ATL" code:3 userInfo:v25];

      a8 = 0;
    }
  }

LABEL_12:
  v26 = *MEMORY[0x277D85DE8];

  return a8;
}

@end