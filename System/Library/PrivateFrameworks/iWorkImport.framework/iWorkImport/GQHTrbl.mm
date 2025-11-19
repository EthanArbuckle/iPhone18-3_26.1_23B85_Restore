@interface GQHTrbl
- (GQHTrbl)init;
- (void)setTop:(int)a3 right:(int)a4 bottom:(int)a5 left:(int)a6;
@end

@implementation GQHTrbl

- (GQHTrbl)init
{
  v3.receiver = self;
  v3.super_class = GQHTrbl;
  result = [(GQHTrbl *)&v3 init];
  if (result)
  {
    *&result->mTop = 0;
    *&result->mBottom = 0;
  }

  return result;
}

- (void)setTop:(int)a3 right:(int)a4 bottom:(int)a5 left:(int)a6
{
  self->mTop = a3;
  self->mRight = a4;
  self->mBottom = a5;
  self->mLeft = a6;
}

@end