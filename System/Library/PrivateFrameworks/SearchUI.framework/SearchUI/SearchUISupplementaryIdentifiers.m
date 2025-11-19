@interface SearchUISupplementaryIdentifiers
+ (NSString)itemSeparatorKind;
+ (NSString)leadingScrollButtonKind;
+ (NSString)sectionBottomSeparatorKind;
+ (NSString)sectionHeaderKind;
+ (NSString)sectionTopSeparatorKind;
+ (NSString)trailingScrollButtonKind;
- (SearchUISupplementaryIdentifiers)init;
@end

@implementation SearchUISupplementaryIdentifiers

+ (NSString)sectionHeaderKind
{
  v2 = sub_1DA25F234();

  return v2;
}

+ (NSString)sectionTopSeparatorKind
{
  v2 = sub_1DA25F234();

  return v2;
}

+ (NSString)sectionBottomSeparatorKind
{
  v2 = sub_1DA25F234();

  return v2;
}

+ (NSString)itemSeparatorKind
{
  v2 = sub_1DA25F234();

  return v2;
}

+ (NSString)leadingScrollButtonKind
{
  v2 = sub_1DA25F234();

  return v2;
}

+ (NSString)trailingScrollButtonKind
{
  v2 = sub_1DA25F234();

  return v2;
}

- (SearchUISupplementaryIdentifiers)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchUISupplementaryIdentifiers();
  return [(SearchUISupplementaryIdentifiers *)&v3 init];
}

@end