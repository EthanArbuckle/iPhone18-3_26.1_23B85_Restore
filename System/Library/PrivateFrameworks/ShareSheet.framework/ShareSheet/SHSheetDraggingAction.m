@interface SHSheetDraggingAction
- (SHSheetDraggingAction)initWithDraggingEvent:(id)a3;
- (SHSheetDraggingEvent)draggingEvent;
@end

@implementation SHSheetDraggingAction

- (SHSheetDraggingAction)initWithDraggingEvent:(id)a3
{
  v4 = MEMORY[0x1E698E700];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setObject:v5 forSetting:3];

  v7 = [(SHSheetDraggingAction *)self initWithInfo:v6 responder:0];
  return v7;
}

- (SHSheetDraggingEvent)draggingEvent
{
  v2 = [(SHSheetDraggingAction *)self info];
  v3 = [v2 objectForSetting:3];

  return v3;
}

@end