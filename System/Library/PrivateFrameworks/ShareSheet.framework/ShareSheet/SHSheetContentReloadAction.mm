@interface SHSheetContentReloadAction
- (NSUUID)activityUUID;
- (SHSheetContentReloadAction)initWithActivityUUID:(id)d;
@end

@implementation SHSheetContentReloadAction

- (SHSheetContentReloadAction)initWithActivityUUID:(id)d
{
  v4 = MEMORY[0x1E698E700];
  dCopy = d;
  v6 = objc_alloc_init(v4);
  [v6 setObject:dCopy forSetting:1];

  v7 = [(SHSheetContentReloadAction *)self initWithInfo:v6 responder:0];
  return v7;
}

- (NSUUID)activityUUID
{
  info = [(SHSheetContentReloadAction *)self info];
  v3 = [info objectForSetting:1];

  return v3;
}

@end