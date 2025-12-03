@interface PGGraphChange
- (id)description;
@end

@implementation PGGraphChange

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = PGGraphChange;
  v4 = [(PGGraphChange *)&v10 description];
  type = [(PGGraphChange *)self type];
  if (type > 0xC)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_278885670[type];
  }

  v7 = v6;
  v8 = [v3 stringWithFormat:@"%@ [type:%@]", v4, v7];

  return v8;
}

@end