@interface ATXAppCategoryTrigger
- (ATXAppCategoryTrigger)initWithCoder:(id)a3;
- (ATXAppCategoryTrigger)initWithiTunesCategoryId:(unint64_t)a3;
@end

@implementation ATXAppCategoryTrigger

- (ATXAppCategoryTrigger)initWithiTunesCategoryId:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = ATXAppCategoryTrigger;
  v4 = [(ATXAppCategoryTrigger *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_iTunesCategoryId = a3;
    v6 = v4;
  }

  return v5;
}

- (ATXAppCategoryTrigger)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"iTunesCategory"];

  return [(ATXAppCategoryTrigger *)self initWithiTunesCategoryId:v4];
}

@end