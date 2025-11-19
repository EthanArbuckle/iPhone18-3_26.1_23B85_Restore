@interface ICRadioContentReference
+ (id)storeItemWithIdentifier:(id)a3;
- (ICRadioContentReference)initWithCoder:(id)a3;
@end

@implementation ICRadioContentReference

- (ICRadioContentReference)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = ICRadioContentReference;
  return [(ICRadioContentReference *)&v4 init];
}

+ (id)storeItemWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[ICRadioStoreContentReference alloc] initWithStoreIdentifier:v3];

  return v4;
}

@end