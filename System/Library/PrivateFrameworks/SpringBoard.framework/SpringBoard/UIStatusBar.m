@interface UIStatusBar
@end

@implementation UIStatusBar

void __85__UIStatusBar_Base_Snapshots__sb_setSnapshotOverridesWithTimeEnabled_overriddenDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = sb_setSnapshotOverridesWithTimeEnabled_overriddenDate__timeDateFormatter;
  sb_setSnapshotOverridesWithTimeEnabled_overriddenDate__timeDateFormatter = v0;

  v2 = sb_setSnapshotOverridesWithTimeEnabled_overriddenDate__timeDateFormatter;
  v3 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [v2 setLocale:v3];

  [sb_setSnapshotOverridesWithTimeEnabled_overriddenDate__timeDateFormatter setDateStyle:0];
  [sb_setSnapshotOverridesWithTimeEnabled_overriddenDate__timeDateFormatter setTimeStyle:1];
  v4 = sb_setSnapshotOverridesWithTimeEnabled_overriddenDate__timeDateFormatter;
  v5 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"America/Los_Angeles"];
  [v4 setTimeZone:v5];
}

@end