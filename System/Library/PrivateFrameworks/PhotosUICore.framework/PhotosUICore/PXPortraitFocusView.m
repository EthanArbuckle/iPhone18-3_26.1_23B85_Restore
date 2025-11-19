@interface PXPortraitFocusView
- (PXPortraitFocusView)initWithMediaView:(id)a3 isHDR:(BOOL)a4;
- (PXPortraitFocusViewDelegate)focusViewDelegate;
- (void)focusPointChanged:(CGPoint)a3;
@end

@implementation PXPortraitFocusView

- (PXPortraitFocusViewDelegate)focusViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_focusViewDelegate);

  return WeakRetained;
}

- (void)focusPointChanged:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(PXPortraitFocusView *)self focusViewDelegate];
  [v5 focusPointChanged:{x, y}];
}

- (PXPortraitFocusView)initWithMediaView:(id)a3 isHDR:(BOOL)a4
{
  v7 = a3;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXPortraitFocusView.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"mediaView != nil"}];
  }

  v12.receiver = self;
  v12.super_class = PXPortraitFocusView;
  v8 = [(PXPortraitFocusView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mediaView, a3);
  }

  return v9;
}

@end