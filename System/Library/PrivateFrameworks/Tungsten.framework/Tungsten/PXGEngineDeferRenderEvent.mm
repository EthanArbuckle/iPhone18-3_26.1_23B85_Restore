@interface PXGEngineDeferRenderEvent
+ (id)eventWithShouldDeferRenderUntilNextFrame:(BOOL)frame delegateAllowsRender:(BOOL)render;
- (PXGEngineDeferRenderEvent)initWithShouldDeferRenderUntilNextFrame:(BOOL)frame delegateAllowsRender:(BOOL)render;
@end

@implementation PXGEngineDeferRenderEvent

- (PXGEngineDeferRenderEvent)initWithShouldDeferRenderUntilNextFrame:(BOOL)frame delegateAllowsRender:(BOOL)render
{
  renderCopy = render;
  frameCopy = frame;
  v10.receiver = self;
  v10.super_class = PXGEngineDeferRenderEvent;
  v6 = [(PXGTungstenRecordingEvent *)&v10 initWithComponent:0 eventName:@"deferRender"];
  if (v6)
  {
    v7 = objc_alloc_init(PXGEngineDeferRenderEventSerializable);
    serializable = v6->_serializable;
    v6->_serializable = v7;

    [(PXGEngineDeferRenderEventSerializable *)v6->_serializable setShouldDeferRenderUntilNextFrame:frameCopy];
    [(PXGEngineDeferRenderEventSerializable *)v6->_serializable setDelegateAllowsRender:renderCopy];
  }

  return v6;
}

+ (id)eventWithShouldDeferRenderUntilNextFrame:(BOOL)frame delegateAllowsRender:(BOOL)render
{
  v4 = [[PXGEngineDeferRenderEvent alloc] initWithShouldDeferRenderUntilNextFrame:frame delegateAllowsRender:render];

  return v4;
}

@end