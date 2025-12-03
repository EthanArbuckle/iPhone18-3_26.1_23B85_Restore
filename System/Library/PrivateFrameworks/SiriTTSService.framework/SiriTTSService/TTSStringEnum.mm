@interface TTSStringEnum
- (TTSStringEnum)initWithCoder:(id)coder;
- (TTSStringEnum)initWithString:(id)string;
- (int64_t)hash;
@end

@implementation TTSStringEnum

- (int64_t)hash
{
  selfCopy = self;
  v3 = TTSStringEnum.hash.getter();

  return v3;
}

- (TTSStringEnum)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = TTSStringEnum;
  coderCopy = coder;
  v4 = [(TTSStringEnum *)&v9 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"string", v9.receiver, v9.super_class}];

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

- (TTSStringEnum)initWithString:(id)string
{
  v8.receiver = self;
  v8.super_class = TTSStringEnum;
  stringCopy = string;
  v4 = [(TTSStringEnum *)&v8 init];
  v5 = [stringCopy copy];

  string = v4->_string;
  v4->_string = v5;

  return v4;
}

@end