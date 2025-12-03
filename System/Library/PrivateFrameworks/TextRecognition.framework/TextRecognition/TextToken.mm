@interface TextToken
- (TextToken)initWithString:(id)string score:(double)score features:(id)features wordID:(int)d properties:(unint64_t)properties;
@end

@implementation TextToken

- (TextToken)initWithString:(id)string score:(double)score features:(id)features wordID:(int)d properties:(unint64_t)properties
{
  stringCopy = string;
  featuresCopy = features;
  v18.receiver = self;
  v18.super_class = TextToken;
  v15 = [(TextToken *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_string, string);
    v16->_score = score;
    objc_storeStrong(&v16->_features, features);
    v16->_wordID = d;
    v16->_properties = properties;
  }

  return v16;
}

@end