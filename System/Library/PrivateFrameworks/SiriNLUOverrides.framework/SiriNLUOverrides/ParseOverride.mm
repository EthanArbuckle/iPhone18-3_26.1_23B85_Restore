@interface ParseOverride
- (ParseOverride)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation ParseOverride

- (ParseOverride)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  return ParseOverride.init(entity:insertInto:)(v5, a4);
}

@end