@interface ICRadioContentReference
+ (id)storeItemWithIdentifier:(id)identifier;
- (ICRadioContentReference)initWithCoder:(id)coder;
@end

@implementation ICRadioContentReference

- (ICRadioContentReference)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = ICRadioContentReference;
  return [(ICRadioContentReference *)&v4 init];
}

+ (id)storeItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[ICRadioStoreContentReference alloc] initWithStoreIdentifier:identifierCopy];

  return v4;
}

@end