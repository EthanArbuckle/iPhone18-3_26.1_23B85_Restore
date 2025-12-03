@interface FedStatsCategoricalTypeSubcategory
+ (id)categoryWithSuperCategory:(id)category index:(unint64_t)index;
- (FedStatsCategoricalTypeSubcategory)initWithSuperCategory:(id)category index:(unint64_t)index;
@end

@implementation FedStatsCategoricalTypeSubcategory

- (FedStatsCategoricalTypeSubcategory)initWithSuperCategory:(id)category index:(unint64_t)index
{
  categoryCopy = category;
  v11.receiver = self;
  v11.super_class = FedStatsCategoricalTypeSubcategory;
  v8 = [(FedStatsCategoricalTypeSubcategory *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_superCategory, category);
    v9->_index = index;
  }

  return v9;
}

+ (id)categoryWithSuperCategory:(id)category index:(unint64_t)index
{
  categoryCopy = category;
  v7 = [[self alloc] initWithSuperCategory:categoryCopy index:index];

  return v7;
}

@end