@interface PPToken
- (PPToken)initWithText:(id)a3 tag:(id)a4;
@end

@implementation PPToken

- (PPToken)initWithText:(id)a3 tag:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PPToken;
  v9 = [(PPToken *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_text, a3);
    objc_storeStrong(&v10->_tag, a4);
  }

  return v10;
}

@end