@interface _UIDebuggingOverlayDetailOpacity
- (void)_sliderValueChanged:(id)changed;
- (void)_updateForInspectedView:(id)view;
@end

@implementation _UIDebuggingOverlayDetailOpacity

- (void)_updateForInspectedView:(id)view
{
  viewCopy = view;
  objc_storeWeak(&self->_inspectedView, viewCopy);
  layer = [viewCopy layer];

  [layer opacity];
  v7 = v6;

  v8 = objc_alloc_init(UISlider);
  [(UISlider *)v8 setMinimumValue:0.0];
  LODWORD(v9) = 1.0;
  [(UISlider *)v8 setMaximumValue:v9];
  LODWORD(v10) = v7;
  [(UISlider *)v8 setValue:v10];
  [(UIControl *)v8 addTarget:self action:sel__sliderValueChanged_ forControlEvents:4096];
  view = self->_view;
  self->_view = &v8->super.super;
}

- (void)_sliderValueChanged:(id)changed
{
  [changed value];
  v5 = v4;
  WeakRetained = objc_loadWeakRetained(&self->_inspectedView);
  layer = [WeakRetained layer];
  LODWORD(v7) = v5;
  [layer setOpacity:v7];
}

@end