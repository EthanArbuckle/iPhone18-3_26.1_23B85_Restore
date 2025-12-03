@interface LanguageAwareStringHandler
- (id)makeLanguageAwareAttributedString:(id)string defaultParagraphStyle:(id)style;
- (id)makeLanguageAwareString:(id)string;
@end

@implementation LanguageAwareStringHandler

- (id)makeLanguageAwareAttributedString:(id)string defaultParagraphStyle:(id)style
{
  stringCopy = string;
  styleCopy = style;
  selfCopy = self;
  v9 = sub_1E3DBEA00(stringCopy, style);

  return v9;
}

- (id)makeLanguageAwareString:(id)string
{
  v4 = sub_1E4205F14();
  v6 = v5;
  selfCopy = self;
  sub_1E3DBEBF8(v4, v6);

  v8 = sub_1E4205ED4();

  return v8;
}

@end