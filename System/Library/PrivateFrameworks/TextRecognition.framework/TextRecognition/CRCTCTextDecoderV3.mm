@interface CRCTCTextDecoderV3
+ (id)lmSupportedLanguages;
- (CVNLPTextDecodingPruningPolicy)pruningPolicy;
- (_TtC15TextRecognition18CRCTCTextDecoderV3)init;
- (_TtC15TextRecognition18CRCTCTextDecoderV3)initWithConfiguration:(id)configuration model:(id)model error:(id *)error;
@end

@implementation CRCTCTextDecoderV3

- (CVNLPTextDecodingPruningPolicy)pruningPolicy
{
  retstr->var0 = 0;
  retstr->var1 = 1;
  *&retstr->var2 = 0xA3F4CCCCDLL;
  return self;
}

+ (id)lmSupportedLanguages
{
  _s15TextRecognition18CRCTCTextDecoderV3C20lmSupportedLanguagesSaySSGyFZ_0();
  v2 = sub_1B429FDE8();

  return v2;
}

- (_TtC15TextRecognition18CRCTCTextDecoderV3)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRCTCTextDecoderV3();
  return [(CRCTCTextDecoderV3 *)&v3 init];
}

- (_TtC15TextRecognition18CRCTCTextDecoderV3)initWithConfiguration:(id)configuration model:(id)model error:(id *)error
{
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  v7 = sub_1B415D8E4(configurationCopy, model);

  swift_unknownObjectRelease();
  return v7;
}

@end