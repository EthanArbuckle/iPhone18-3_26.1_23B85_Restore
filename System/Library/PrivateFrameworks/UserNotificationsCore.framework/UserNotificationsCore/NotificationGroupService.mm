@interface NotificationGroupService
- (void)summaryServiceDidReceiveGroupSummaries:(id)summaries;
@end

@implementation NotificationGroupService

- (void)summaryServiceDidReceiveGroupSummaries:(id)summaries
{
  sub_1DA7AF3EC(0, &unk_1EE110C60, off_1E85D5D40);
  v3 = sub_1DA940BE4();

  NotificationGroupService.summaryServiceDidReceiveGroupSummaries(_:)(v3);
}

@end