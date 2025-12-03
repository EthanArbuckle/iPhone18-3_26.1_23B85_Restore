@interface ATXAppCategoryTrigger
- (ATXAppCategoryTrigger)initWithCoder:(id)coder;
- (ATXAppCategoryTrigger)initWithiTunesCategoryId:(unint64_t)id;
@end

@implementation ATXAppCategoryTrigger

- (ATXAppCategoryTrigger)initWithiTunesCategoryId:(unint64_t)id
{
  v8.receiver = self;
  v8.super_class = ATXAppCategoryTrigger;
  v4 = [(ATXAppCategoryTrigger *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_iTunesCategoryId = id;
    v6 = v4;
  }

  return v5;
}

- (ATXAppCategoryTrigger)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"iTunesCategory"];

  return [(ATXAppCategoryTrigger *)self initWithiTunesCategoryId:v4];
}

@end