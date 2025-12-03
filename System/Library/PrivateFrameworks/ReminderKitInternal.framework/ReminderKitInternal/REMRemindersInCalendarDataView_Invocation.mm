@interface REMRemindersInCalendarDataView_Invocation
- (REMRemindersInCalendarDataView_Invocation)initWithCoder:(id)coder;
- (REMRemindersInCalendarDataView_Invocation)initWithFetchResultTokenToDiffAgainst:(id)against;
@end

@implementation REMRemindersInCalendarDataView_Invocation

- (REMRemindersInCalendarDataView_Invocation)initWithFetchResultTokenToDiffAgainst:(id)against
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(REMStoreSwiftInvocation *)&v5 initWithFetchResultTokenToDiffAgainst:against];
}

- (REMRemindersInCalendarDataView_Invocation)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(REMStoreSwiftInvocation *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end