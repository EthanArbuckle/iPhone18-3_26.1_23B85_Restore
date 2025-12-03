@interface ParseOverride
- (ParseOverride)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ParseOverride

- (ParseOverride)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  entityCopy = entity;
  contextCopy = context;
  return ParseOverride.init(entity:insertInto:)(entityCopy, context);
}

@end