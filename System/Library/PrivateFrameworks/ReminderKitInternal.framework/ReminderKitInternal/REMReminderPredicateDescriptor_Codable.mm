@interface REMReminderPredicateDescriptor_Codable
- (REMReminderPredicateDescriptor_Codable)initWithCoder:(id)a3;
- (REMReminderPredicateDescriptor_Codable)initWithReminderPredicateDescriptor:(id)a3;
- (REMReminderPredicateDescriptor_Codable)initWithType:(int64_t)a3;
@end

@implementation REMReminderPredicateDescriptor_Codable

- (REMReminderPredicateDescriptor_Codable)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(REMReminderPredicateDescriptor *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (REMReminderPredicateDescriptor_Codable)initWithType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(REMReminderPredicateDescriptor *)&v5 initWithType:a3];
}

- (REMReminderPredicateDescriptor_Codable)initWithReminderPredicateDescriptor:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end