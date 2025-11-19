@interface _UIDebuggingOverlayDetailOpacity
- (void)_sliderValueChanged:(id)a3;
- (void)_updateForInspectedView:(id)a3;
@end

@implementation _UIDebuggingOverlayDetailOpacity

- (void)_updateForInspectedView:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_inspectedView, v4);
  v5 = [v4 layer];

  [v5 opacity];
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

- (void)_sliderValueChanged:(id)a3
{
  [a3 value];
  v5 = v4;
  WeakRetained = objc_loadWeakRetained(&self->_inspectedView);
  v6 = [WeakRetained layer];
  LODWORD(v7) = v5;
  [v6 setOpacity:v7];
}

@end