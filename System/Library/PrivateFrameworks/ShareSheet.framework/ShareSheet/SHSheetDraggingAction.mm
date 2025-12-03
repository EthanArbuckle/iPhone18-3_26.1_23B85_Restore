@interface SHSheetDraggingAction
- (SHSheetDraggingAction)initWithDraggingEvent:(id)event;
- (SHSheetDraggingEvent)draggingEvent;
@end

@implementation SHSheetDraggingAction

- (SHSheetDraggingAction)initWithDraggingEvent:(id)event
{
  v4 = MEMORY[0x1E698E700];
  eventCopy = event;
  v6 = objc_alloc_init(v4);
  [v6 setObject:eventCopy forSetting:3];

  v7 = [(SHSheetDraggingAction *)self initWithInfo:v6 responder:0];
  return v7;
}

- (SHSheetDraggingEvent)draggingEvent
{
  info = [(SHSheetDraggingAction *)self info];
  v3 = [info objectForSetting:3];

  return v3;
}

@end