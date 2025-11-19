@interface WFCloudKitSyncEvent
- (WFCloudKitSyncEvent)initWithIdentifier:(int)a3 eventType:(int)a4 date:(id)a5 content:(id)a6;
- (id)description;
@end

@implementation WFCloudKitSyncEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(WFCloudKitSyncEvent *)self identifier];
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
  v8 = [(WFCloudKitSyncEvent *)self date];
  v9 = [(WFCloudKitSyncEvent *)self content];
  v10 = [v3 stringWithFormat:@"<%i: %@, date: %@ (%@)>", v4, v7, v8, v9];

  return v10;
}

- (WFCloudKitSyncEvent)initWithIdentifier:(int)a3 eventType:(int)a4 date:(id)a5 content:(id)a6
{
  v11 = a5;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = WFCloudKitSyncEvent;
  v13 = [(WFCloudKitSyncEvent *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_identifier = a3;
    v13->_eventType = a4;
    objc_storeStrong(&v13->_date, a5);
    objc_storeStrong(&v14->_content, a6);
    v15 = v14;
  }

  return v14;
}

@end