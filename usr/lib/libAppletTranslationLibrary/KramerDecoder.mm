@interface KramerDecoder
+ (BOOL)didTransactionError:(id *)error withTransactionResult:(unsigned __int16 *)result;
+ (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
+ (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error;
@end

@implementation KramerDecoder

+ (BOOL)didTransactionError:(id *)error withTransactionResult:(unsigned __int16 *)result
{
  v5 = *&error->var4[31] != 0x4000 || (*(&error->var7 + 1) ^ 0x13 | error->var8[1] ^ 0xEE) != 0;
  if (result)
  {
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = 64;
    }

    if (HIBYTE(error->var7) == 15)
    {
      v7 = -4096;
    }

    else
    {
      v7 = v6;
    }

    *result = v7;
  }

  return v5;
}

+ (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error
{
  scheme = [TransceiverWrapper withTransceiver:transceiver, package, module, key, scheme];
  v10 = [MEMORY[0x277CBEA90] dataWithIntBE:2160525312];
  v11 = [MEMORY[0x277CBEA90] dataWithIntBE:2160066560];
  v12 = [scheme transceiveAndGetAllData:v10 withGetMoreData:v11 withMoreDataSW:24832 withError:error];

  return v12;
}

+ (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v26[2] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBEB38];
  historyCopy = history;
  v10 = [v8 dictionaryWithCapacity:3];
  v24 = 0;
  v11 = [KramerVCReader readCardFromVC:historyCopy forCity:&unk_2843C64E8 withError:&v24];

  v12 = v24;
  if (v12 && +[AppletTranslator isInternalBuild])
  {
    if (error)
    {
      v13 = v12;
      v14 = 0;
      *error = v12;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v15 = [v11 objectForKeyedSubscript:@"CommutePlans"];
    v16 = [v11 objectForKeyedSubscript:@"ATLInternal"];
    v17 = [v11 objectForKeyedSubscript:@"CyclicLog"];
    [v10 setObject:v15 forKeyedSubscript:@"CommutePlans"];
    v18 = [KramerMappings convertPlansToBalances:v15 withDetails:v16];
    [v10 setObject:v18 forKeyedSubscript:@"Balances"];

    v19 = [v17 objectForKeyedSubscript:@"CyclicLog"];
    v20 = [v17 objectForKeyedSubscript:@"LogDirectory"];
    v21 = [KramerMappings getMergedHistory:v19 withDirectory:v20 withIpeList:v16];

    v25[0] = @"State";
    v25[1] = @"TransactionHistory";
    v26[0] = v10;
    v26[1] = v21;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v14;
}

@end