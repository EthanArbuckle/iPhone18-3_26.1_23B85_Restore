@interface PBFEditingZoomAnimationController
- (CGRect)previewFrame;
- (PBFEditingZoomAnimationController)initWithPreviewFrame:(CGRect)a3 previewCornerRadius:(double)a4 previewView:(id)a5 complicationsView:(id)a6;
- (id)buildDimmingView;
- (id)buildZoomingViewWithPreviewView:(id)a3 previewFrame:(CGRect)a4 editingView:(id)a5 complicationsView:(id)a6;
@end

@implementation PBFEditingZoomAnimationController

- (PBFEditingZoomAnimationController)initWithPreviewFrame:(CGRect)a3 previewCornerRadius:(double)a4 previewView:(id)a5 complicationsView:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14 = a5;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = PBFEditingZoomAnimationController;
  v16 = [(PBFEditingZoomAnimationController *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_previewFrame.origin.x = x;
    v16->_previewFrame.origin.y = y;
    v16->_previewFrame.size.width = width;
    v16->_previewFrame.size.height = height;
    v16->_previewCornerRadius = a4;
    objc_storeStrong(&v16->_previewView, a5);
    objc_storeStrong(&v17->_complicationsView, a6);
  }

  return v17;
}

- (id)buildZoomingViewWithPreviewView:(id)a3 previewFrame:(CGRect)a4 editingView:(id)a5 complicationsView:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a5;
  v13 = a6;
  v14 = a3;
  [v14 setFrame:{x, y, width, height}];
  v15 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v15 setClipsToBounds:1];
  [v15 addSubview:v14];

  if (v13)
  {
    [v15 addSubview:v13];
  }

  [v15 addSubview:v12];
  [v15 setAccessibilityIgnoresInvertColors:1];

  return v15;
}

- (id)buildDimmingView
{
  v2 = objc_alloc(MEMORY[0x277D75D18]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v4 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.25];
  [v3 setBackgroundColor:v4];

  [v3 setAutoresizingMask:18];

  return v3;
}

- (CGRect)previewFrame
{
  x = self->_previewFrame.origin.x;
  y = self->_previewFrame.origin.y;
  width = self->_previewFrame.size.width;
  height = self->_previewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end