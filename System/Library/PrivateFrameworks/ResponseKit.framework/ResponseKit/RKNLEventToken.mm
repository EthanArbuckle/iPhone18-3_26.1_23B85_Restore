@interface RKNLEventToken
- (RKNLEventToken)initWithString:(id)string location:(int64_t)location length:(int64_t)length;
@end

@implementation RKNLEventToken

- (RKNLEventToken)initWithString:(id)string location:(int64_t)location length:(int64_t)length
{
  stringCopy = string;
  v13.receiver = self;
  v13.super_class = RKNLEventToken;
  v10 = [(RKNLEventToken *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_string, string);
    v11->_location = location;
    v11->_length = length;
  }

  return v11;
}

@end