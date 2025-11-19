@interface KramerDecoder
+ (BOOL)didTransactionError:(id *)a3 withTransactionResult:(unsigned __int16 *)a4;
+ (id)getAppletStateAndHistory:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7;
+ (id)getServiceProviderData:(id)a3 withPackage:(id)a4 withModule:(id)a5 withPublicKey:(id)a6 withEncryptionScheme:(id)a7 withTransceiver:(id)a8 withError:(id *)a9;
@end

@implementation KramerDecoder

+ (BOOL)didTransactionError:(id *)a3 withTransactionResult:(unsigned __int16 *)a4
{
  v5 = *&a3->var4[31] != 0x4000 || (*(&a3->var7 + 1) ^ 0x13 | a3->var8[1] ^ 0xEE) != 0;
  if (a4)
  {
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = 64;
    }

    if (HIBYTE(a3->var7) == 15)
    {
      v7 = -4096;
    }

    else
    {
      v7 = v6;
    }

    *a4 = v7;
  }

  return v5;
}

+ (id)getServiceProviderData:(id)a3 withPackage:(id)a4 withModule:(id)a5 withPublicKey:(id)a6 withEncryptionScheme:(id)a7 withTransceiver:(id)a8 withError:(id *)a9
{
  v9 = [TransceiverWrapper withTransceiver:a8, a4, a5, a6, a7];
  v10 = [MEMORY[0x277CBEA90] dataWithIntBE:2160525312];
  v11 = [MEMORY[0x277CBEA90] dataWithIntBE:2160066560];
  v12 = [v9 transceiveAndGetAllData:v10 withGetMoreData:v11 withMoreDataSW:24832 withError:a9];

  return v12;
}

+ (id)getAppletStateAndHistory:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7
{
  v26[2] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBEB38];
  v9 = a3;
  v10 = [v8 dictionaryWithCapacity:3];
  v24 = 0;
  v11 = [KramerVCReader readCardFromVC:v9 forCity:&unk_2843C64E8 withError:&v24];

  v12 = v24;
  if (v12 && +[AppletTranslator isInternalBuild])
  {
    if (a7)
    {
      v13 = v12;
      v14 = 0;
      *a7 = v12;
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