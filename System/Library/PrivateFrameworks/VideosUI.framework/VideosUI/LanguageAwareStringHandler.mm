@interface LanguageAwareStringHandler
- (id)makeLanguageAwareAttributedString:(id)a3 defaultParagraphStyle:(id)a4;
- (id)makeLanguageAwareString:(id)a3;
@end

@implementation LanguageAwareStringHandler

- (id)makeLanguageAwareAttributedString:(id)a3 defaultParagraphStyle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1E3DBEA00(v6, a4);

  return v9;
}

- (id)makeLanguageAwareString:(id)a3
{
  v4 = sub_1E4205F14();
  v6 = v5;
  v7 = self;
  sub_1E3DBEBF8(v4, v6);

  v8 = sub_1E4205ED4();

  return v8;
}

@end