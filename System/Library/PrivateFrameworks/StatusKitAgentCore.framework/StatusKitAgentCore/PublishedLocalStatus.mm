@interface PublishedLocalStatus
+ (id)predicateForPublishedLocalStatusIdentifiers:(id)identifiers;
@end

@implementation PublishedLocalStatus

+ (id)predicateForPublishedLocalStatusIdentifiers:(id)identifiers
{
  v3 = MEMORY[0x277CCAC30];
  identifiersCopy = identifiers;
  v5 = +[PublishedLocalStatus identifierKeyPath];
  identifiersCopy = [v3 predicateWithFormat:@"%K IN %@", v5, identifiersCopy];

  return identifiersCopy;
}

@end