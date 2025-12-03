@interface PBFEditingZoomAnimationController
- (CGRect)previewFrame;
- (PBFEditingZoomAnimationController)initWithPreviewFrame:(CGRect)frame previewCornerRadius:(double)radius previewView:(id)view complicationsView:(id)complicationsView;
- (id)buildDimmingView;
- (id)buildZoomingViewWithPreviewView:(id)view previewFrame:(CGRect)frame editingView:(id)editingView complicationsView:(id)complicationsView;
@end

@implementation PBFEditingZoomAnimationController

- (PBFEditingZoomAnimationController)initWithPreviewFrame:(CGRect)frame previewCornerRadius:(double)radius previewView:(id)view complicationsView:(id)complicationsView
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  complicationsViewCopy = complicationsView;
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
    v16->_previewCornerRadius = radius;
    objc_storeStrong(&v16->_previewView, view);
    objc_storeStrong(&v17->_complicationsView, complicationsView);
  }

  return v17;
}

- (id)buildZoomingViewWithPreviewView:(id)view previewFrame:(CGRect)frame editingView:(id)editingView complicationsView:(id)complicationsView
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  editingViewCopy = editingView;
  complicationsViewCopy = complicationsView;
  viewCopy = view;
  [viewCopy setFrame:{x, y, width, height}];
  v15 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v15 setClipsToBounds:1];
  [v15 addSubview:viewCopy];

  if (complicationsViewCopy)
  {
    [v15 addSubview:complicationsViewCopy];
  }

  [v15 addSubview:editingViewCopy];
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