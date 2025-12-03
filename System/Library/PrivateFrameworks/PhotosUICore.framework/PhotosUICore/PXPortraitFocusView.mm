@interface PXPortraitFocusView
- (PXPortraitFocusView)initWithMediaView:(id)view isHDR:(BOOL)r;
- (PXPortraitFocusViewDelegate)focusViewDelegate;
- (void)focusPointChanged:(CGPoint)changed;
@end

@implementation PXPortraitFocusView

- (PXPortraitFocusViewDelegate)focusViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_focusViewDelegate);

  return WeakRetained;
}

- (void)focusPointChanged:(CGPoint)changed
{
  y = changed.y;
  x = changed.x;
  focusViewDelegate = [(PXPortraitFocusView *)self focusViewDelegate];
  [focusViewDelegate focusPointChanged:{x, y}];
}

- (PXPortraitFocusView)initWithMediaView:(id)view isHDR:(BOOL)r
{
  viewCopy = view;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPortraitFocusView.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"mediaView != nil"}];
  }

  v12.receiver = self;
  v12.super_class = PXPortraitFocusView;
  v8 = [(PXPortraitFocusView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mediaView, view);
  }

  return v9;
}

@end