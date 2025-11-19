@interface AlphonsoSwiftDecoder
+ (id)getInstance;
- (_TtC24AppletTranslationLibrary20AlphonsoSwiftDecoder)init;
- (id)GetAppletProperties:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)a7;
- (id)getAppletStateAndHistory:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7;
- (id)parseHCIEvent:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withTransceiver:(id)a7 withError:(id *)a8;
- (id)processEndOfTransaction:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7;
@end

@implementation AlphonsoSwiftDecoder

+ (id)getInstance
{
  if (qword_27DA9E378 != -1)
  {
    swift_once();
  }

  v3 = qword_27DA9E640;

  return v3;
}

- (id)parseHCIEvent:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withTransceiver:(id)a7 withError:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = self;
  v19 = sub_22EFB61DC();
  v21 = v20;

  v22 = sub_22EFB648C();
  v24 = v23;

  sub_22EF8141C(v19, v21, v22, v24);

  sub_22EF708C8(v19, v21);
  v25 = sub_22EFB641C();

  return v25;
}

- (id)getAppletStateAndHistory:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7
{
  v9 = sub_22EFB648C();
  v11 = v10;
  v12 = a3;
  v13 = self;
  sub_22EF8189C(v12, v9, v11);

  v14 = sub_22EFB641C();

  return v14;
}

- (id)GetAppletProperties:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)a7
{
  sub_22EF82140();
  v7 = sub_22EFB641C();

  return v7;
}

- (id)processEndOfTransaction:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7
{
  sub_22EFAB468(MEMORY[0x277D84F90]);
  v7 = sub_22EFB641C();

  return v7;
}

- (_TtC24AppletTranslationLibrary20AlphonsoSwiftDecoder)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AlphonsoSwiftDecoder();
  return [(AlphonsoSwiftDecoder *)&v3 init];
}

@end