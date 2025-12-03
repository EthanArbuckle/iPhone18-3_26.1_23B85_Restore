@interface WFCloudKitSyncEvent
- (WFCloudKitSyncEvent)initWithIdentifier:(int)identifier eventType:(int)type date:(id)date content:(id)content;
- (id)description;
@end

@implementation WFCloudKitSyncEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(WFCloudKitSyncEvent *)self identifier];
  v5 = [(WFCloudKitSyncEvent *)self eventType]- 1;
  if (v5 > 0xC)
  {
    v6 = @"RecordFetch";
  }

  else
  {
    v6 = off_1E8374510[v5];
  }

  v7 = v6;
  date = [(WFCloudKitSyncEvent *)self date];
  content = [(WFCloudKitSyncEvent *)self content];
  v10 = [v3 stringWithFormat:@"<%i: %@, date: %@ (%@)>", identifier, v7, date, content];

  return v10;
}

- (WFCloudKitSyncEvent)initWithIdentifier:(int)identifier eventType:(int)type date:(id)date content:(id)content
{
  dateCopy = date;
  contentCopy = content;
  v17.receiver = self;
  v17.super_class = WFCloudKitSyncEvent;
  v13 = [(WFCloudKitSyncEvent *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_identifier = identifier;
    v13->_eventType = type;
    objc_storeStrong(&v13->_date, date);
    objc_storeStrong(&v14->_content, content);
    v15 = v14;
  }

  return v14;
}

@end