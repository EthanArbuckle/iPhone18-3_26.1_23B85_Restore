@interface TextToken
- (TextToken)initWithString:(id)a3 score:(double)a4 features:(id)a5 wordID:(int)a6 properties:(unint64_t)a7;
@end

@implementation TextToken

- (TextToken)initWithString:(id)a3 score:(double)a4 features:(id)a5 wordID:(int)a6 properties:(unint64_t)a7
{
  v13 = a3;
  v14 = a5;
  v18.receiver = self;
  v18.super_class = TextToken;
  v15 = [(TextToken *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_string, a3);
    v16->_score = a4;
    objc_storeStrong(&v16->_features, a5);
    v16->_wordID = a6;
    v16->_properties = a7;
  }

  return v16;
}

@end