@interface REMSmartList_Codable
- (REMSmartList_Codable)initWithStore:(id)a3 account:(id)a4 parentList:(id)a5 storage:(id)a6;
@end

@implementation REMSmartList_Codable

- (REMSmartList_Codable)initWithStore:(id)a3 account:(id)a4 parentList:(id)a5 storage:(id)a6
{
  v11.receiver = self;
  v11.super_class = swift_getObjectType();
  return [(REMSmartList *)&v11 initWithStore:a3 account:a4 parentList:a5 storage:a6];
}

@end