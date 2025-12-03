@interface BaseMifareDecoder
+ (BOOL)didTransactionError:(id *)error withTransactionResult:(unsigned __int16 *)result;
+ (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
+ (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error;
+ (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
@end

@implementation BaseMifareDecoder

+ (BOOL)didTransactionError:(id *)error withTransactionResult:(unsigned __int16 *)result
{
  v6 = *(&error->var7 + 1) == 18 && error->var8[1] == 1 || *(&error->var7 + 1) == 19 && error->var8[1] == 238;
  v7 = *&error->var4[31] == 0x4000 && v6;
  if (result)
  {
    if (*&error->var4[31] == 0x4000 && v6)
    {
      v8 = 64;
    }

    else
    {
      v8 = 0;
    }

    if (HIBYTE(error->var7) == 15)
    {
      v9 = -4096;
    }

    else
    {
      v9 = v8;
    }

    *result = v9;
  }

  return !v7;
}

+ (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v22 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "MIFARE Decoder doesn't support GetState", v22, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"MIFARE Decoder doesn't support GetState"];
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
    *error = [v12 errorWithDomain:@"ATL" code:2 userInfo:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error
{
  v27[1] = *MEMORY[0x277D85DE8];
  v9 = ATLLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v23 = 0;
    _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_ERROR, "MIFARE Decoder doesn't support getServiceProviderData", v23, 2u);
  }

  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"MIFARE Decoder doesn't support getServiceProviderData"];
  v11 = v10;
  if (error)
  {
    v12 = *error;
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA450];
    if (*error)
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
    *error = [v13 errorWithDomain:@"ATL" code:2 userInfo:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v22 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "MIFARE Decoder doesn't support getServiceProviderData", v22, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"MIFARE Decoder doesn't support getServiceProviderData"];
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
    *error = [v12 errorWithDomain:@"ATL" code:2 userInfo:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
  return 0;
}

@end