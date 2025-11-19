@interface SLUEStatisticsCohortTypeEncoding
- (SLUEStatisticsCohortTypeEncoding)initWithDefaults;
@end

@implementation SLUEStatisticsCohortTypeEncoding

- (SLUEStatisticsCohortTypeEncoding)initWithDefaults
{
  v5.receiver = self;
  v5.super_class = SLUEStatisticsCohortTypeEncoding;
  v2 = [(SLUEStatisticsCohortTypeEncoding *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SLUEStatisticsCohortTypeEncoding *)v2 setRawValueEncoded:&unk_2878A7800];
  }

  return v3;
}

@end