@interface PublishedLocalStatus
+ (id)predicateForPublishedLocalStatusIdentifiers:(id)a3;
@end

@implementation PublishedLocalStatus

+ (id)predicateForPublishedLocalStatusIdentifiers:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = +[PublishedLocalStatus identifierKeyPath];
  v6 = [v3 predicateWithFormat:@"%K IN %@", v5, v4];

  return v6;
}

@end