@interface REMReminderPredicateDescriptor_Codable
- (REMReminderPredicateDescriptor_Codable)initWithCoder:(id)coder;
- (REMReminderPredicateDescriptor_Codable)initWithReminderPredicateDescriptor:(id)descriptor;
- (REMReminderPredicateDescriptor_Codable)initWithType:(int64_t)type;
@end

@implementation REMReminderPredicateDescriptor_Codable

- (REMReminderPredicateDescriptor_Codable)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(REMReminderPredicateDescriptor *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (REMReminderPredicateDescriptor_Codable)initWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(REMReminderPredicateDescriptor *)&v5 initWithType:type];
}

- (REMReminderPredicateDescriptor_Codable)initWithReminderPredicateDescriptor:(id)descriptor
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end