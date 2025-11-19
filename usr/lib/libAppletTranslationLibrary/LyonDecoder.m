@interface LyonDecoder
+ (id)getInstance;
- (LyonDecoder)init;
- (id)GetAppletProperties:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)a7;
- (id)getAppletStateAndHistory:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7;
- (id)parseHCIEvent:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withTransceiver:(id)a7 withError:(id *)a8;
- (id)processEndOfTransaction:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7;
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
  v3 = [v2 stateNumber];

  return v3;
}

- (id)GetAppletProperties:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = +[_TtC24AppletTranslationLibrary16LyonSwiftDecoder getInstance];
  v16 = [v15 GetAppletProperties:v14 withPackage:v13 withModule:v12 withTransceiver:v11 withError:a7];

  return v16;
}

- (id)getAppletStateAndHistory:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = +[_TtC24AppletTranslationLibrary16LyonSwiftDecoder getInstance];
  v16 = [v15 getAppletStateAndHistory:v14 withApplet:v13 withPackage:v12 withModule:v11 withError:a7];

  return v16;
}

- (id)parseHCIEvent:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withTransceiver:(id)a7 withError:(id *)a8
{
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = +[_TtC24AppletTranslationLibrary16LyonSwiftDecoder getInstance];
  v19 = [v18 parseHCIEvent:v17 withApplet:v16 withPackage:v15 withModule:v14 withTransceiver:v13 withError:a8];

  if (*a8 || [v19 count])
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)processEndOfTransaction:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = +[_TtC24AppletTranslationLibrary16LyonSwiftDecoder getInstance];
  v16 = [v15 processEndOfTransaction:v14 withApplet:v13 withPackage:v12 withModule:v11 withError:a7];

  return v16;
}

- (void)cleanup
{
  v2 = +[_TtC24AppletTranslationLibrary16LyonSwiftDecoder getInstance];
  [v2 cleanup];
}

@end