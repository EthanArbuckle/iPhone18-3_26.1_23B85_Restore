@interface WFCloudKitSyncFlags
+ (BOOL)isCloudKitSyncFlagsRecordID:(id)a3;
+ (NSDictionary)properties;
+ (id)recordIDWithZoneID:(id)a3;
- (WFCloudKitSyncFlags)initWithZoneID:(id)a3;
@end

@implementation WFCloudKitSyncFlags

- (WFCloudKitSyncFlags)initWithZoneID:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFCloudKitSyncFlags.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"zoneID"}];
  }

  v12.receiver = self;
  v12.super_class = WFCloudKitSyncFlags;
  v6 = [(WFCloudKitSyncFlags *)&v12 init];
  if (v6)
  {
    v7 = [WFCloudKitSyncFlags recordIDWithZoneID:v5];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    v9 = v6;
  }

  return v6;
}

+ (BOOL)isCloudKitSyncFlagsRecordID:(id)a3
{
  v3 = [a3 recordName];
  v4 = [v3 isEqualToString:@"ShortcutFlags"];

  return v4;
}

+ (id)recordIDWithZoneID:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"WFCloudKitSyncFlags.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"zoneID"}];
  }

  v6 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"ShortcutFlags" zoneID:v5];

  return v6;
}

+ (NSDictionary)properties
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"migratedVoiceShortcuts";
  v2 = [WFCloudKitItemProperty scalarPropertyWithName:"scalarPropertyWithName:nilValue:" nilValue:?];
  v7[1] = @"defaultShortcutsVersion";
  v8[0] = v2;
  v3 = [WFCloudKitItemProperty scalarPropertyWithName:"scalarPropertyWithName:nilValue:" nilValue:?];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end