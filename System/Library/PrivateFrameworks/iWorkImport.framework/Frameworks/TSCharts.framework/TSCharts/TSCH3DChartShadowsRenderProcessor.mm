@interface TSCH3DChartShadowsRenderProcessor
- (void)setActiveFramebuffer:(id)a3;
@end

@implementation TSCH3DChartShadowsRenderProcessor

- (void)setActiveFramebuffer:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TSCH3DChartShadowsRenderProcessor;
  [(TSCH3DRenderProcessor *)&v15 setActiveFramebuffer:v4];
  objc_msgSend_setActiveFramebuffer_(self->super._original, v5, v6, v7, v8, v4);
  original = self->super._original;
  v14[0] = 0;
  v14[1] = 0;
  objc_msgSend_wipeActiveFramebuffer_(original, v10, v11, v12, v13, v14);
}

@end