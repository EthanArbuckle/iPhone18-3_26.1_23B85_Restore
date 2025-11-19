@interface AlphonsoDecoder
+ (id)getInstance;
- (id)GetAppletProperties:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)a7;
- (id)getAppletStateAndHistory:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7;
- (id)parseHCIEvent:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withTransceiver:(id)a7 withError:(id *)a8;
- (id)processEndOfTransaction:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7;
@end

@implementation AlphonsoDecoder

+ (id)getInstance
{
  if (getInstance_onceToken_1 != -1)
  {
    +[AlphonsoDecoder getInstance];
  }

  v3 = getInstance___instance;

  return v3;
}

uint64_t __30__AlphonsoDecoder_getInstance__block_invoke()
{
  getInstance___instance = objc_alloc_init(AlphonsoDecoder);

  return MEMORY[0x2821F96F8]();
}

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
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = +[_TtC24AppletTranslationLibrary20AlphonsoSwiftDecoder getInstance];
  v16 = [v15 getAppletStateAndHistory:v14 withApplet:v13 withPackage:v12 withModule:v11 withError:a7];

  if (*a7 || ![v16 count])
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  return v17;
}

- (id)parseHCIEvent:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withTransceiver:(id)a7 withError:(id *)a8
{
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = +[_TtC24AppletTranslationLibrary20AlphonsoSwiftDecoder getInstance];
  v19 = [v18 parseHCIEvent:v17 withApplet:v16 withPackage:v15 withModule:v14 withTransceiver:v13 withError:a8];

  if (*a8 || ![v19 count])
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  return v20;
}

- (id)processEndOfTransaction:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v22 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "AlphonsoDecoder doesn't expect processEndOfTransaction", v22, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"AlphonsoDecoder doesn't expect processEndOfTransaction"];
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