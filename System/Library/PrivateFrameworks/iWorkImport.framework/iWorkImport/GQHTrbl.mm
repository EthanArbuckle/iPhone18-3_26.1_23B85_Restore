@interface GQHTrbl
- (GQHTrbl)init;
- (void)setTop:(int)top right:(int)right bottom:(int)bottom left:(int)left;
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

- (void)setTop:(int)top right:(int)right bottom:(int)bottom left:(int)left
{
  self->mTop = top;
  self->mRight = right;
  self->mBottom = bottom;
  self->mLeft = left;
}

@end