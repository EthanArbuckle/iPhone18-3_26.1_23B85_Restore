@interface PXGEngineDeferRenderEvent
+ (id)eventWithShouldDeferRenderUntilNextFrame:(BOOL)a3 delegateAllowsRender:(BOOL)a4;
- (PXGEngineDeferRenderEvent)initWithShouldDeferRenderUntilNextFrame:(BOOL)a3 delegateAllowsRender:(BOOL)a4;
@end

@implementation PXGEngineDeferRenderEvent

- (PXGEngineDeferRenderEvent)initWithShouldDeferRenderUntilNextFrame:(BOOL)a3 delegateAllowsRender:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PXGEngineDeferRenderEvent;
  v6 = [(PXGTungstenRecordingEvent *)&v10 initWithComponent:0 eventName:@"deferRender"];
  if (v6)
  {
    v7 = objc_alloc_init(PXGEngineDeferRenderEventSerializable);
    serializable = v6->_serializable;
    v6->_serializable = v7;

    [(PXGEngineDeferRenderEventSerializable *)v6->_serializable setShouldDeferRenderUntilNextFrame:v5];
    [(PXGEngineDeferRenderEventSerializable *)v6->_serializable setDelegateAllowsRender:v4];
  }

  return v6;
}

+ (id)eventWithShouldDeferRenderUntilNextFrame:(BOOL)a3 delegateAllowsRender:(BOOL)a4
{
  v4 = [[PXGEngineDeferRenderEvent alloc] initWithShouldDeferRenderUntilNextFrame:a3 delegateAllowsRender:a4];

  return v4;
}

@end