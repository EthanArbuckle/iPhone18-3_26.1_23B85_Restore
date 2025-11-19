@interface REMObjectID_Codable
- (REMObjectID_Codable)initWithUUID:(id)a3 entityName:(id)a4;
@end

@implementation REMObjectID_Codable

- (REMObjectID_Codable)initWithUUID:(id)a3 entityName:(id)a4
{
  ObjectType = swift_getObjectType();
  v7 = sub_23030EBB8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23030EBA8();
  v11 = a4;
  v12 = sub_23030EB88();
  v15.receiver = self;
  v15.super_class = ObjectType;
  v13 = [(REMObjectID *)&v15 initWithUUID:v12 entityName:v11];

  (*(v8 + 8))(v10, v7);
  return v13;
}

@end