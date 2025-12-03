@interface SHSheetPulsingAction
- (SHSheetPulsingAction)initWithEvent:(id)event;
- (SHSheetPulsingEvent)event;
@end

@implementation SHSheetPulsingAction

- (SHSheetPulsingAction)initWithEvent:(id)event
{
  v4 = MEMORY[0x1E698E700];
  eventCopy = event;
  v6 = objc_alloc_init(v4);
  [v6 setObject:eventCopy forSetting:2];

  v7 = [(SHSheetPulsingAction *)self initWithInfo:v6 responder:0];
  return v7;
}

- (SHSheetPulsingEvent)event
{
  info = [(SHSheetPulsingAction *)self info];
  v3 = [info objectForSetting:2];

  return v3;
}

@end