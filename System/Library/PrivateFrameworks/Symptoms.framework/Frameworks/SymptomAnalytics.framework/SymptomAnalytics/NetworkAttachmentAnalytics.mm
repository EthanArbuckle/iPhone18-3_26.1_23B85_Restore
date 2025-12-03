@interface NetworkAttachmentAnalytics
- (NetworkAttachmentAnalytics)init;
- (id)networkAttachmentsWithId:(id)id;
- (id)networkAttachmentsWithIdInSet:(id)set;
- (id)networkAttachmentsWithMajorID:(id)d;
@end

@implementation NetworkAttachmentAnalytics

- (NetworkAttachmentAnalytics)init
{
  v3 = +[AnalyticsWorkspace defaultWorkspace];
  v4 = +[SFNetworkAttachment entityName];
  v7.receiver = self;
  v7.super_class = NetworkAttachmentAnalytics;
  v5 = [(ObjectAnalytics *)&v7 initWithWorkspace:v3 entityName:v4 withCache:1];

  return v5;
}

- (id)networkAttachmentsWithId:(id)id
{
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"identifier", id];
  v5 = [(ObjectAnalytics *)self fetchEntitiesFreeForm:v4 sortDesc:0];

  return v5;
}

- (id)networkAttachmentsWithIdInSet:(id)set
{
  if (set)
  {
    v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"identifier", set];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(ObjectAnalytics *)self fetchEntitiesFreeForm:v4 sortDesc:0];

  return v5;
}

- (id)networkAttachmentsWithMajorID:(id)d
{
  v4 = MEMORY[0x277CCAC30];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-", d];
  v6 = [v4 predicateWithFormat:@"%K BEGINSWITH %@", @"identifier", v5];

  v7 = [(ObjectAnalytics *)self fetchEntitiesFreeForm:v6 sortDesc:0];

  return v7;
}

@end