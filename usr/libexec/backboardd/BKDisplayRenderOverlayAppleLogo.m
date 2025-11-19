@interface BKDisplayRenderOverlayAppleLogo
+ (id)overlayWithLevel:(float)a3 display:(id)a4;
- (BKDisplayRenderOverlayAppleLogo)initWithOverlayDescriptor:(id)a3 level:(float)a4;
- (id)_prepareContentLayerForPresentation:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (void)_cleanUpContentLayer;
@end

@implementation BKDisplayRenderOverlayAppleLogo

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v9.receiver = self;
  v9.super_class = BKDisplayRenderOverlayAppleLogo;
  v4 = [(BKDisplayBootUIRenderOverlay *)&v9 descriptionBuilderWithMultilinePrefix:a3];
  v5 = v4;
  puiProgressWindow = self->_puiProgressWindow;
  if (puiProgressWindow)
  {
    v7 = [v4 appendObject:puiProgressWindow withName:@"puiProgressWindow"];
  }

  return v5;
}

- (void)_cleanUpContentLayer
{
  [(PUIProgressWindow *)self->_puiProgressWindow setVisible:0];
  puiProgressWindow = self->_puiProgressWindow;
  self->_puiProgressWindow = 0;
}

- (id)_prepareContentLayerForPresentation:(id)a3
{
  v4 = [PUIProgressWindow alloc];
  [(BKDisplayRenderOverlay *)self level];
  v5 = [v4 initWithProgressBarVisibility:0 createContext:0 contextLevel:0 appearance:?];
  puiProgressWindow = self->_puiProgressWindow;
  self->_puiProgressWindow = v5;

  [(PUIProgressWindow *)self->_puiProgressWindow setVisible:1];
  v7 = [(PUIProgressWindow *)self->_puiProgressWindow layer];
  [v7 setDisableUpdateMask:{objc_msgSend(v7, "disableUpdateMask") | 0x10}];
  v8 = [(BKDisplayRenderOverlay *)self display];
  v9 = [v8 uniqueId];

  sub_100028DEC(v9);

  return v7;
}

- (BKDisplayRenderOverlayAppleLogo)initWithOverlayDescriptor:(id)a3 level:(float)a4
{
  v7.receiver = self;
  v7.super_class = BKDisplayRenderOverlayAppleLogo;
  v4 = [(BKDisplayBootUIRenderOverlay *)&v7 initWithOverlayDescriptor:a3 level:?];
  v5 = v4;
  if (v4)
  {
    [(BKDisplayRenderOverlay *)v4 _setType:3];
  }

  return v5;
}

+ (id)overlayWithLevel:(float)a3 display:(id)a4
{
  v5 = a4;
  v6 = [BKSDisplayRenderOverlayDescriptor alloc];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 initWithName:v8 display:v5];

  [v9 setLockBacklight:0];
  v10 = [BKDisplayRenderOverlayAppleLogo alloc];
  *&v11 = a3;
  v12 = [(BKDisplayRenderOverlayAppleLogo *)v10 initWithOverlayDescriptor:v9 level:v11];

  return v12;
}

@end