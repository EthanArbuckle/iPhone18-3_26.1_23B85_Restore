@interface SHSheetPulsingAction
- (SHSheetPulsingAction)initWithEvent:(id)a3;
- (SHSheetPulsingEvent)event;
@end

@implementation SHSheetPulsingAction

- (SHSheetPulsingAction)initWithEvent:(id)a3
{
  v4 = MEMORY[0x1E698E700];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setObject:v5 forSetting:2];

  v7 = [(SHSheetPulsingAction *)self initWithInfo:v6 responder:0];
  return v7;
}

- (SHSheetPulsingEvent)event
{
  v2 = [(SHSheetPulsingAction *)self info];
  v3 = [v2 objectForSetting:2];

  return v3;
}

@end