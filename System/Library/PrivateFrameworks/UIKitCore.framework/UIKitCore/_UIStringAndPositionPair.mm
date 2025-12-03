@interface _UIStringAndPositionPair
- (BOOL)isEqualToPair:(void *)pair inputDelegate:;
- (id)initWithString:(void *)string position:;
@end

@implementation _UIStringAndPositionPair

- (id)initWithString:(void *)string position:
{
  v5 = a2;
  stringCopy = string;
  if (self)
  {
    v10.receiver = self;
    v10.super_class = _UIStringAndPositionPair;
    self = objc_msgSendSuper2(&v10, sel_init);
    if (self)
    {
      v7 = [v5 copy];
      v8 = self[1];
      self[1] = v7;

      objc_storeStrong(self + 2, string);
    }
  }

  return self;
}

- (BOOL)isEqualToPair:(void *)pair inputDelegate:
{
  v5 = a2;
  pairCopy = pair;
  v7 = 0;
  if (self && v5)
  {
    if ([*(self + 8) isEqualToString:v5[1]])
    {
      v7 = [pairCopy comparePosition:*(self + 16) toPosition:v5[2]] == 0;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end