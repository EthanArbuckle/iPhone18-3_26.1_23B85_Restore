@interface GQDBGSlide
- (GQDBGSlide)init;
- (void)dealloc;
@end

@implementation GQDBGSlide

- (GQDBGSlide)init
{
  v3.receiver = self;
  v3.super_class = GQDBGSlide;
  result = [(GQDBGSlide *)&v3 init];
  if (result)
  {
    result->super.mCallGenerator = 1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDBGSlide;
  [(GQDBGAbstractSlide *)&v3 dealloc];
}

@end