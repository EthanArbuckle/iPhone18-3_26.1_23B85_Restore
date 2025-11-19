@interface FedStatsCategoricalTypeSubcategory
+ (id)categoryWithSuperCategory:(id)a3 index:(unint64_t)a4;
- (FedStatsCategoricalTypeSubcategory)initWithSuperCategory:(id)a3 index:(unint64_t)a4;
@end

@implementation FedStatsCategoricalTypeSubcategory

- (FedStatsCategoricalTypeSubcategory)initWithSuperCategory:(id)a3 index:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = FedStatsCategoricalTypeSubcategory;
  v8 = [(FedStatsCategoricalTypeSubcategory *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_superCategory, a3);
    v9->_index = a4;
  }

  return v9;
}

+ (id)categoryWithSuperCategory:(id)a3 index:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithSuperCategory:v6 index:a4];

  return v7;
}

@end