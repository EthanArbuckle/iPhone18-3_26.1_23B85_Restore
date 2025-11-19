@interface TTSStringEnum
- (TTSStringEnum)initWithCoder:(id)a3;
- (TTSStringEnum)initWithString:(id)a3;
- (int64_t)hash;
@end

@implementation TTSStringEnum

- (int64_t)hash
{
  v2 = self;
  v3 = TTSStringEnum.hash.getter();

  return v3;
}

- (TTSStringEnum)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = TTSStringEnum;
  v3 = a3;
  v4 = [(TTSStringEnum *)&v9 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"string", v9.receiver, v9.super_class}];

  string = v4->_string;
  v4->_string = v5;

  if (v4->_string)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (TTSStringEnum)initWithString:(id)a3
{
  v8.receiver = self;
  v8.super_class = TTSStringEnum;
  v3 = a3;
  v4 = [(TTSStringEnum *)&v8 init];
  v5 = [v3 copy];

  string = v4->_string;
  v4->_string = v5;

  return v4;
}

@end