@interface _UIStringAndPositionPair
- (BOOL)isEqualToPair:(void *)a3 inputDelegate:;
- (id)initWithString:(void *)a3 position:;
@end

@implementation _UIStringAndPositionPair

- (id)initWithString:(void *)a3 position:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = _UIStringAndPositionPair;
    a1 = objc_msgSendSuper2(&v10, sel_init);
    if (a1)
    {
      v7 = [v5 copy];
      v8 = a1[1];
      a1[1] = v7;

      objc_storeStrong(a1 + 2, a3);
    }
  }

  return a1;
}

- (BOOL)isEqualToPair:(void *)a3 inputDelegate:
{
  v5 = a2;
  v6 = a3;
  v7 = 0;
  if (a1 && v5)
  {
    if ([*(a1 + 8) isEqualToString:v5[1]])
    {
      v7 = [v6 comparePosition:*(a1 + 16) toPosition:v5[2]] == 0;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end