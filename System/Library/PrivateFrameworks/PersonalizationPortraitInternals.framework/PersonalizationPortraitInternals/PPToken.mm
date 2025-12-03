@interface PPToken
- (PPToken)initWithText:(id)text tag:(id)tag;
@end

@implementation PPToken

- (PPToken)initWithText:(id)text tag:(id)tag
{
  textCopy = text;
  tagCopy = tag;
  v12.receiver = self;
  v12.super_class = PPToken;
  v9 = [(PPToken *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_text, text);
    objc_storeStrong(&v10->_tag, tag);
  }

  return v10;
}

@end