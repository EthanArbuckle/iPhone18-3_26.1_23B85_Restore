@interface ButtonBarButtonVisualProvider.Button
+ (Class)_visualProviderClassForIdiom:(int64_t)idiom;
- (BOOL)_shouldAdjustToTraitCollection;
- (CGRect)_selectedIndicatorBounds;
- (CGRect)contentRectForBounds:(CGRect)bounds;
- (CGSize)_roundSize:(CGSize)size;
- (UIEdgeInsets)_additionalSelectionInsets;
- (_TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button)initWithCoder:(id)coder;
- (id)_selectedIndicatorViewWithImage:(id)image;
- (void)didMoveToWindow;
@end

@implementation ButtonBarButtonVisualProvider.Button

+ (Class)_visualProviderClassForIdiom:(int64_t)idiom
{
  type metadata accessor for ButtonBarButtonVisualProvider.ButtonVisualProvider();

  return swift_getObjCClassFromMetadata();
}

- (BOOL)_shouldAdjustToTraitCollection
{
  v2 = _UIApplicationLinkedOnOrAfter();
  if (v2)
  {

    LOBYTE(v2) = _UIBarsUseDynamicType();
  }

  return v2;
}

- (CGRect)contentRectForBounds:(CGRect)bounds
{
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (bounds.size.width != 0.0 || (v5 = 0.0, v6 = 0.0, v7 = 0.0, v8 = 0.0, bounds.size.height != 0.0))
  {
    height = bounds.size.height;
    width = bounds.size.width;
    v15.receiver = self;
    v15.super_class = swift_getObjectType();
    [(UIButton *)&v15 contentRectForBounds:x, y, width, height];
    v7 = v11;
    v8 = v12;
  }

  v13 = v7;
  v14 = v8;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGSize)_roundSize:(CGSize)size
{
  selfCopy = self;
  UICeilToViewScale(selfCopy);
  v5 = v4;
  UICeilToViewScale(selfCopy);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(UIView *)&v4 didMoveToWindow];
  window = [v2 window];
  if (window)
  {
  }

  else
  {
    [v2 setHighlighted_];
  }
}

- (_TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button)initWithCoder:(id)coder
{
  v3 = (self + OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_selectionIndicatorViewFrame);
  v4 = *(MEMORY[0x1E695F050] + 16);
  *v3 = *MEMORY[0x1E695F050];
  v3[1] = v4;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_usesTintColorCapsuleForSelection) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_enableMonochromaticTreatmentOnImageAndTitle) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets) = UIEdgeInsetsZero;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___guardAgainstDegenerateBaselineCalculation) = 0;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (UIEdgeInsets)_additionalSelectionInsets
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets);
  v3 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets);
  v4 = *(&self->super.super.super._constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets);
  v5 = *(&self->super.super.super._cachedTraitCollection + OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGRect)_selectedIndicatorBounds
{
  v2 = sub_1890A0F38(self, a2, sub_18909C888);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)_selectedIndicatorViewWithImage:(id)image
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_usesTintColorCapsuleForSelection) == 1)
  {
    v3 = [objc_allocWithZone(_UIButtonBarButtonSelectedIndicatorView) init];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = swift_getObjectType();
    imageCopy = image;
    v6 = v9.receiver;
    result = [(UIButton *)&v9 _selectedIndicatorViewWithImage:imageCopy];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v8 = result;

    v3 = v8;
  }

  return v3;
}

@end