@interface MigrationPolicyAddDefaultTag
- (_TtC28SiriPrivateLearningInference28MigrationPolicyAddDefaultTag)init;
- (id)migrateAndAddDefaultTagWithSource:(id)a3 manager:(id)a4;
@end

@implementation MigrationPolicyAddDefaultTag

- (id)migrateAndAddDefaultTagWithSource:(id)a3 manager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_222BB80B8(v7);

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