@interface BaseCalypsoDecoder
+ (id)getAppletStateAndHistory:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7;
+ (id)getAppletStateAndHistory:(id)a3 withError:(id *)a4;
+ (id)getServiceProviderData:(id)a3 withError:(id *)a4;
+ (id)getServiceProviderData:(id)a3 withPackage:(id)a4 withModule:(id)a5 withPublicKey:(id)a6 withEncryptionScheme:(id)a7 withTransceiver:(id)a8 withError:(id *)a9;
+ (id)getServiceProviderData:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)a7;
+ (id)getServiceProviderData:(id)a3 withPublicKey:(id)a4 withEncryptionScheme:(id)a5 withError:(id *)a6;
+ (void)interpretTransactionEvent:(id)a3;
- (id)generateEndEventFromHCI;
@end

@implementation BaseCalypsoDecoder

+ (id)getAppletStateAndHistory:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v22 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Calypso Base Decoder doesn't support GetState (YET)", v22, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Calypso Base Decoder doesn't support GetState (YET)"];
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

+ (id)getAppletStateAndHistory:(id)a3 withError:(id *)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = ATLLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v19 = 0;
    _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_ERROR, "Calypso Base Decoder doesn't support GetState (YET)", v19, 2u);
  }

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Calypso Base Decoder doesn't support GetState (YET)"];
  v7 = v6;
  if (a4)
  {
    v8 = *a4;
    v9 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    if (*a4)
    {
      v11 = *MEMORY[0x277CCA7E8];
      v20[0] = *MEMORY[0x277CCA450];
      v20[1] = v11;
      v21[0] = v6;
      v21[1] = v8;
      v12 = MEMORY[0x277CBEAC0];
      v13 = v21;
      v14 = v20;
      v15 = 2;
    }

    else
    {
      v22 = *MEMORY[0x277CCA450];
      v23[0] = v6;
      v12 = MEMORY[0x277CBEAC0];
      v13 = v23;
      v14 = &v22;
      v15 = 1;
    }

    v16 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:v15];
    *a4 = [v9 errorWithDomain:@"ATL" code:2 userInfo:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (id)getServiceProviderData:(id)a3 withPackage:(id)a4 withModule:(id)a5 withPublicKey:(id)a6 withEncryptionScheme:(id)a7 withTransceiver:(id)a8 withError:(id *)a9
{
  v27[1] = *MEMORY[0x277D85DE8];
  v9 = ATLLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v23 = 0;
    _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_ERROR, "Calypso Base Decoder doesn't support getServiceProviderData (YET)", v23, 2u);
  }

  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Calypso Base Decoder doesn't support getServiceProviderData (YET)"];
  v11 = v10;
  if (a9)
  {
    v12 = *a9;
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA450];
    if (*a9)
    {
      v15 = *MEMORY[0x277CCA7E8];
      v24[0] = *MEMORY[0x277CCA450];
      v24[1] = v15;
      v25[0] = v10;
      v25[1] = v12;
      v16 = MEMORY[0x277CBEAC0];
      v17 = v25;
      v18 = v24;
      v19 = 2;
    }

    else
    {
      v26 = *MEMORY[0x277CCA450];
      v27[0] = v10;
      v16 = MEMORY[0x277CBEAC0];
      v17 = v27;
      v18 = &v26;
      v19 = 1;
    }

    v20 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:v19];
    *a9 = [v13 errorWithDomain:@"ATL" code:2 userInfo:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (id)getServiceProviderData:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)a7
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v22 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Calypso Base Decoder doesn't support getServiceProviderData (YET)", v22, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Calypso Base Decoder doesn't support getServiceProviderData (YET)"];
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

- (id)generateEndEventFromHCI
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = ATLLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v2, OS_LOG_TYPE_DEBUG, "Generating EndEventfromHCI ...", buf, 2u);
  }

  v3 = +[CalypsoDecoder sharedInstance];
  v4 = [v3 getHciArray];

  v5 = +[CalypsoDecoder sharedInstance];
  v6 = [v5 getHciArray];
  if (!v6)
  {

    goto LABEL_26;
  }

  v7 = v6;
  v8 = +[CalypsoDecoder sharedInstance];
  v9 = [v8 getHciArray];
  v10 = [v9 count];

  if (!v10)
  {
LABEL_26:
    v31 = ATLLogObject();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v31, OS_LOG_TYPE_DEFAULT, "HCI Array provided does not contain HCI events", buf, 2u);
    }

    v41 = 0;
    goto LABEL_29;
  }

  v11 = +[CalypsoDecoder sharedInstance];
  v12 = [v11 getAppletAID];

  if (v12)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = v4;
    v13 = v4;
    v14 = [v13 countByEnumeratingWithState:&v45 objects:v57 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v46;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v46 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v45 + 1) + 8 * i);
          v19 = ATLLogObject();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v56 = v18;
            _os_log_impl(&dword_22EEF5000, v19, OS_LOG_TYPE_DEBUG, "--> %@", buf, 0xCu);
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v45 objects:v57 count:16];
      }

      while (v15);
    }

    v20 = +[CalypsoDecoder sharedInstance];
    if ([v20 getErrorTransaction])
    {
      v21 = 0;
    }

    else
    {
      v21 = 64;
    }

    v22 = +[CalypsoDecoder sharedInstance];
    v23 = [v22 getErrorTransaction];

    if (v23)
    {
      v24 = ATLLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = +[CalypsoDecoder sharedInstance];
        v26 = [v25 getErrorCode];
        *buf = 138412290;
        v56 = v26;
        _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_DEFAULT, "*** Error occurred during transaction. SpecialEvents ErrorCode = %@", buf, 0xCu);
      }
    }

    v27 = +[CalypsoDecoder sharedInstance];
    v28 = [v27 getTransactionDetailRaw];

    if (!v28)
    {
      v29 = +[CalypsoDecoder sharedInstance];
      v30 = [MEMORY[0x277CBEA90] dataWithHexString:@"020000"];
      [v29 setTransactionDetailRaw:v30];
    }

    v54[0] = @"EndEvent";
    v53[0] = @"EventType";
    v53[1] = @"appletIdentifier";
    v31 = +[CalypsoDecoder sharedInstance];
    v32 = [v31 getAppletAID];
    v54[1] = v32;
    v54[2] = &unk_2843C6770;
    v53[2] = @"Version";
    v53[3] = @"Interface";
    v54[3] = @"Contactless";
    v53[4] = @"didError";
    v33 = MEMORY[0x277CCABB0];
    v34 = +[CalypsoDecoder sharedInstance];
    v35 = [v33 numberWithBool:{objc_msgSend(v34, "getErrorTransaction")}];
    v54[4] = v35;
    v53[5] = @"result";
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v21];
    v54[5] = v36;
    v54[6] = &unk_2843C6788;
    v53[6] = @"type";
    v53[7] = @"parsedInfo";
    v51 = @"Transaction";
    v49 = @"TypeDetailRaw";
    v37 = +[CalypsoDecoder sharedInstance];
    v38 = [v37 getTransactionDetailRaw];
    v50 = v38;
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v52 = v39;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v54[7] = v40;
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:8];

    v4 = v44;
LABEL_29:

    goto LABEL_30;
  }

  v41 = 0;
LABEL_30:

  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

+ (void)interpretTransactionEvent:(id)a3
{
  v3 = ATLLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22EEF5000, v3, OS_LOG_TYPE_DEFAULT, "BaseCalypsoDecoder doesn't implement specific interpretTransactionEvent", v4, 2u);
  }
}

+ (id)getServiceProviderData:(id)a3 withError:(id *)a4
{
  v4 = ATLLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22EEF5000, v4, OS_LOG_TYPE_DEFAULT, "BaseCalypsoDecoder doesn't support getServiceProviderData via context (implemented in specific subDecoders)", v6, 2u);
  }

  return 0;
}

+ (id)getServiceProviderData:(id)a3 withPublicKey:(id)a4 withEncryptionScheme:(id)a5 withError:(id *)a6
{
  v6 = ATLLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_DEFAULT, "BaseCalypsoDecoder doesn't support getServiceProviderData via context (implemented in specific subDecoders)", v8, 2u);
  }

  return 0;
}

@end