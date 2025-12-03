@interface REMSmartList_Codable
- (REMSmartList_Codable)initWithStore:(id)store account:(id)account parentList:(id)list storage:(id)storage;
@end

@implementation REMSmartList_Codable

- (REMSmartList_Codable)initWithStore:(id)store account:(id)account parentList:(id)list storage:(id)storage
{
  v11.receiver = self;
  v11.super_class = swift_getObjectType();
  return [(REMSmartList *)&v11 initWithStore:store account:account parentList:list storage:storage];
}

@end