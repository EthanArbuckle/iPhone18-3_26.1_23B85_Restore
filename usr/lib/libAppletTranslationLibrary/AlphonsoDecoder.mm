@interface AlphonsoDecoder
+ (id)getInstance;
- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
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

- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"Supported";
  v11[0] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:{1, transceiver, error}];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  moduleCopy = module;
  packageCopy = package;
  appletCopy = applet;
  historyCopy = history;
  v15 = +[_TtC24AppletTranslationLibrary20AlphonsoSwiftDecoder getInstance];
  v16 = [v15 getAppletStateAndHistory:historyCopy withApplet:appletCopy withPackage:packageCopy withModule:moduleCopy withError:error];

  if (*error || ![v16 count])
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  return v17;
}

- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  transceiverCopy = transceiver;
  moduleCopy = module;
  packageCopy = package;
  appletCopy = applet;
  eventCopy = event;
  v18 = +[_TtC24AppletTranslationLibrary20AlphonsoSwiftDecoder getInstance];
  v19 = [v18 parseHCIEvent:eventCopy withApplet:appletCopy withPackage:packageCopy withModule:moduleCopy withTransceiver:transceiverCopy withError:error];

  if (*error || ![v19 count])
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  return v20;
}

- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
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

@end