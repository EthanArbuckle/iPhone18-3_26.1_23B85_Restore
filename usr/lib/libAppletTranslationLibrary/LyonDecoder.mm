@interface LyonDecoder
+ (id)getInstance;
- (LyonDecoder)init;
- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (int64_t)state;
- (void)cleanup;
@end

@implementation LyonDecoder

+ (id)getInstance
{
  if (getInstance_onceToken_3 != -1)
  {
    +[LyonDecoder getInstance];
  }

  v3 = getInstance_inst_2;

  return v3;
}

uint64_t __26__LyonDecoder_getInstance__block_invoke()
{
  getInstance_inst_2 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (LyonDecoder)init
{
  v4.receiver = self;
  v4.super_class = LyonDecoder;
  v2 = [(LyonDecoder *)&v4 init];
  if (v2)
  {
    [AppletTranslator registerForCleanup:v2];
  }

  return v2;
}

- (int64_t)state
{
  v2 = +[_TtC24AppletTranslationLibrary16LyonSwiftDecoder getInstance];
  stateNumber = [v2 stateNumber];

  return stateNumber;
}

- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  transceiverCopy = transceiver;
  moduleCopy = module;
  packageCopy = package;
  propertiesCopy = properties;
  v15 = +[_TtC24AppletTranslationLibrary16LyonSwiftDecoder getInstance];
  v16 = [v15 GetAppletProperties:propertiesCopy withPackage:packageCopy withModule:moduleCopy withTransceiver:transceiverCopy withError:error];

  return v16;
}

- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  moduleCopy = module;
  packageCopy = package;
  appletCopy = applet;
  historyCopy = history;
  v15 = +[_TtC24AppletTranslationLibrary16LyonSwiftDecoder getInstance];
  v16 = [v15 getAppletStateAndHistory:historyCopy withApplet:appletCopy withPackage:packageCopy withModule:moduleCopy withError:error];

  return v16;
}

- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  transceiverCopy = transceiver;
  moduleCopy = module;
  packageCopy = package;
  appletCopy = applet;
  eventCopy = event;
  v18 = +[_TtC24AppletTranslationLibrary16LyonSwiftDecoder getInstance];
  v19 = [v18 parseHCIEvent:eventCopy withApplet:appletCopy withPackage:packageCopy withModule:moduleCopy withTransceiver:transceiverCopy withError:error];

  if (*error || [v19 count])
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  moduleCopy = module;
  packageCopy = package;
  appletCopy = applet;
  transactionCopy = transaction;
  v15 = +[_TtC24AppletTranslationLibrary16LyonSwiftDecoder getInstance];
  v16 = [v15 processEndOfTransaction:transactionCopy withApplet:appletCopy withPackage:packageCopy withModule:moduleCopy withError:error];

  return v16;
}

- (void)cleanup
{
  v2 = +[_TtC24AppletTranslationLibrary16LyonSwiftDecoder getInstance];
  [v2 cleanup];
}

@end