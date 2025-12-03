@interface BKDisplayRenderOverlayAppleLogo
+ (id)overlayWithLevel:(float)level display:(id)display;
- (BKDisplayRenderOverlayAppleLogo)initWithOverlayDescriptor:(id)descriptor level:(float)level;
- (id)_prepareContentLayerForPresentation:(id)presentation;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (void)_cleanUpContentLayer;
@end

@implementation BKDisplayRenderOverlayAppleLogo

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v9.receiver = self;
  v9.super_class = BKDisplayRenderOverlayAppleLogo;
  v4 = [(BKDisplayBootUIRenderOverlay *)&v9 descriptionBuilderWithMultilinePrefix:prefix];
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

- (id)_prepareContentLayerForPresentation:(id)presentation
{
  v4 = [PUIProgressWindow alloc];
  [(BKDisplayRenderOverlay *)self level];
  v5 = [v4 initWithProgressBarVisibility:0 createContext:0 contextLevel:0 appearance:?];
  puiProgressWindow = self->_puiProgressWindow;
  self->_puiProgressWindow = v5;

  [(PUIProgressWindow *)self->_puiProgressWindow setVisible:1];
  layer = [(PUIProgressWindow *)self->_puiProgressWindow layer];
  [layer setDisableUpdateMask:{objc_msgSend(layer, "disableUpdateMask") | 0x10}];
  display = [(BKDisplayRenderOverlay *)self display];
  uniqueId = [display uniqueId];

  sub_100028DEC(uniqueId);

  return layer;
}

- (BKDisplayRenderOverlayAppleLogo)initWithOverlayDescriptor:(id)descriptor level:(float)level
{
  v7.receiver = self;
  v7.super_class = BKDisplayRenderOverlayAppleLogo;
  v4 = [(BKDisplayBootUIRenderOverlay *)&v7 initWithOverlayDescriptor:descriptor level:?];
  v5 = v4;
  if (v4)
  {
    [(BKDisplayRenderOverlay *)v4 _setType:3];
  }

  return v5;
}

+ (id)overlayWithLevel:(float)level display:(id)display
{
  displayCopy = display;
  v6 = [BKSDisplayRenderOverlayDescriptor alloc];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 initWithName:v8 display:displayCopy];

  [v9 setLockBacklight:0];
  v10 = [BKDisplayRenderOverlayAppleLogo alloc];
  *&v11 = level;
  v12 = [(BKDisplayRenderOverlayAppleLogo *)v10 initWithOverlayDescriptor:v9 level:v11];

  return v12;
}

@end