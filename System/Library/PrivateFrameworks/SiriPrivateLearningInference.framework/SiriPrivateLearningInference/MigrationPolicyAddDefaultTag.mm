@interface MigrationPolicyAddDefaultTag
- (_TtC28SiriPrivateLearningInference28MigrationPolicyAddDefaultTag)init;
- (id)migrateAndAddDefaultTagWithSource:(id)source manager:(id)manager;
@end

@implementation MigrationPolicyAddDefaultTag

- (id)migrateAndAddDefaultTagWithSource:(id)source manager:(id)manager
{
  sourceCopy = source;
  managerCopy = manager;
  selfCopy = self;
  sub_222BB80B8(managerCopy);

  sub_222B505A8(0, &qword_27D025FF0, 0x277CBE438);
  v9 = sub_222C9470C();

  return v9;
}

- (_TtC28SiriPrivateLearningInference28MigrationPolicyAddDefaultTag)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MigrationPolicyAddDefaultTag();
  return [(MigrationPolicyAddDefaultTag *)&v3 init];
}

@end