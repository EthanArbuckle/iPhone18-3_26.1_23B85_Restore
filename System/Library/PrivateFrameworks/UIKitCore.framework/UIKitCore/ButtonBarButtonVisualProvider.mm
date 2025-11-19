@interface ButtonBarButtonVisualProvider
- (BOOL)buttonSelectionState:(id)a3 forRequestedState:(BOOL)a4;
- (BOOL)shouldLift;
- (CGPoint)menuAnchorPoint;
- (CGRect)accessoryViewAlignmentRect;
- (CGSize)backButtonSystemLayoutSizeFittingSize:(CGSize)a3 horizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (CGSize)buttonImageViewSize:(id)a3;
- (Class)buttonControlClass;
- (UIColor)tintColor;
- (UIView)alignmentViewForStaticNavBarButtonLeading;
- (UIView)alignmentViewForStaticNavBarButtonTrailing;
- (UIView)contentView;
- (id)buttonContextMenuInteractionConfiguration;
- (id)buttonContextMenuStyleFromDefaultStyle:(id)a3;
- (id)buttonContextMenuTargetedPreview;
- (id)buttonSpringLoadedInteractionEffect;
- (id)matchingPointerShapeForView:(id)a3 rect:(CGRect)a4 inContainer:(id)a5;
- (id)pointerPreviewParameters;
- (id)pointerShapeInContainer:(id)a3;
- (id)symbolImageView;
- (void)buttonDidUpdateBoundsSize;
- (void)buttonLayoutSubviews:(id)a3 baseImplementation:(id)a4;
- (void)configureButton:(id)a3 withAppearanceDelegate:(id)a4 fromBarItem:(id)a5;
- (void)reload;
- (void)resetButtonHasHighlighted;
- (void)setBackButtonMaskEnabled:(BOOL)a3;
- (void)setTintColor:(id)a3;
- (void)traitDependenciesUpdated;
- (void)updateButton:(id)a3 appearance:(id)a4;
- (void)updateButton:(id)a3 forEnabledState:(BOOL)a4;
- (void)updateButton:(id)a3 forHeldState:(BOOL)a4;
- (void)updateButton:(id)a3 forHighlightedState:(BOOL)a4;
- (void)updateButton:(id)a3 forSelectedState:(BOOL)a4;
- (void)updateImage;
- (void)updateMenu;
- (void)updateTextContent;
@end

@implementation ButtonBarButtonVisualProvider

- (void)configureButton:(id)a3 withAppearanceDelegate:(id)a4 fromBarItem:(id)a5
{
  swift_unknownObjectWeakAssign();
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_188C58C20(v8, v9);

  swift_unknownObjectRelease();
}

- (id)buttonSpringLoadedInteractionEffect
{
  v2 = [objc_allocWithZone(type metadata accessor for ButtonBarButtonVisualProvider.SpringLoadedBlinkingEffect()) init];

  return v2;
}

- (void)updateButton:(id)a3 forEnabledState:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_188C5DCB8(a4);
}

- (id)symbolImageView
{
  v2 = self;
  v3 = sub_188C5ECB4();

  return v3;
}

- (BOOL)buttonSelectionState:(id)a3 forRequestedState:(BOOL)a4
{
  if (!a4)
  {
    return 0;
  }

  v5 = a3;
  v6 = self;
  if ([v5 isBackButton])
  {

    return 0;
  }

  else if (*(&v6->super.super.isa + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton))
  {

    return 1;
  }

  else
  {
    v8 = *(&v6->super.super.isa + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);

    return v8 != 0;
  }
}

- (void)updateButton:(id)a3 forSelectedState:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_188C5EB3C(v6, a4);
}

- (CGSize)backButtonSystemLayoutSizeFittingSize:(CGSize)a3 horizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = self;
  sub_188C5ED8C(width, height, a4, a5);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)buttonDidUpdateBoundsSize
{
  v2 = self;
  sub_188C5F39C();
}

- (void)buttonLayoutSubviews:(id)a3 baseImplementation:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_188C5F60C(v8, sub_188A4AA04, v7);
}

- (void)updateButton:(id)a3 appearance:(id)a4
{
  v4 = self;
  sub_188C5A3BC();
}

- (Class)buttonControlClass
{
  type metadata accessor for ButtonBarButtonVisualProvider.Button();

  return swift_getObjCClassFromMetadata();
}

- (void)resetButtonHasHighlighted
{
  v2 = self;
  sub_18909C238();
}

- (UIColor)tintColor
{
  v2 = self;
  v3 = sub_188C5A048();

  return v3;
}

- (void)setTintColor:(id)a3
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(_UIButtonBarButtonVisualProvider *)&v4 setTintColor:a3];
}

- (id)pointerPreviewParameters
{
  v2 = self;
  v3 = sub_18909C5C4();

  return v3;
}

- (id)pointerShapeInContainer:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_18909C998(v4);

  return v6;
}

- (id)matchingPointerShapeForView:(id)a3 rect:(CGRect)a4 inContainer:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = a5;
  v13 = self;
  v14 = sub_1890A12F0(v11, v12, x, y, width, height);

  return v14;
}

- (BOOL)shouldLift
{
  v2 = self;
  v3 = sub_18909D4D8();

  return v3 & 1;
}

- (void)setBackButtonMaskEnabled:(BOOL)a3
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backButtonMask) && *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider__backButtonMaskEnabled) != a3)
  {
    *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider__backButtonMaskEnabled) = a3;
    v4 = self;
    sub_188C5C5BC();
  }
}

- (void)updateButton:(id)a3 forHighlightedState:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1890A14CC(a4);
}

- (void)updateButton:(id)a3 forHeldState:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1890A15C8(a4);
}

- (UIView)contentView
{
  v2 = sub_18909D7A4();

  return v2;
}

- (UIView)alignmentViewForStaticNavBarButtonLeading
{
  v2 = sub_18909E198(&OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton, &OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton);

  return v2;
}

- (UIView)alignmentViewForStaticNavBarButtonTrailing
{
  v2 = sub_18909E198(&OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton, &OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton);

  return v2;
}

- (CGSize)buttonImageViewSize:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  if (v4)
  {
    v5 = a3;
    v6 = self;
    v7 = v4;
    v8 = [v7 _imageView];
    if (!v8)
    {
      __break(1u);
      goto LABEL_7;
    }

    v11 = v8;
    [v8 bounds];
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = swift_getObjectType();
    [(_UIButtonBarButtonVisualProvider *)&v19 buttonImageViewSize:a3];
    v13 = v17;
    v15 = v18;
  }

  v9 = v13;
  v10 = v15;
LABEL_7:
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGRect)accessoryViewAlignmentRect
{
  v2 = sub_1890A0F38(self, a2, sub_18909F284);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)traitDependenciesUpdated
{
  v2 = self;
  sub_18909F588();
}

- (void)updateTextContent
{
  v2 = self;
  sub_18909F73C();
}

- (id)buttonContextMenuInteractionConfiguration
{
  v2 = self;
  v3 = sub_18909FB9C();

  return v3;
}

- (id)buttonContextMenuStyleFromDefaultStyle:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18909FD2C();
  v7 = v6;
  v9 = v8;
  v10 = [(_UIButtonBarButtonVisualProvider *)v5 button];
  v11 = sub_18909FEDC();
  _UIControlMenuSupportUpdateStyleForBarButtons(v4, v10, v11, *(&v5->super.super.isa + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton) != 0, v7, v9);

  return v4;
}

- (id)buttonContextMenuTargetedPreview
{
  v2 = self;
  v3 = sub_18909FEDC();

  return v3;
}

- (CGPoint)menuAnchorPoint
{
  v2 = self;
  sub_18909FD2C();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)updateMenu
{
  v2 = self;
  sub_188C581B0();
}

- (void)updateImage
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton))
  {
    v6 = self;
    v2 = [(_UIButtonBarButtonVisualProvider *)v6 button];
    if (v2)
    {
      v3 = v2;
      v4 = [(_UIButtonBarButtonVisualProvider *)v6 barButtonItem];
      if (v4)
      {
        v5 = v4;
        sub_188C58C20(v3, v4);

        v3 = v5;
      }
    }
  }
}

- (void)reload
{
  v6 = self;
  v2 = [(_UIButtonBarButtonVisualProvider *)v6 button];
  if (v2)
  {
    v3 = v2;
    v4 = [(_UIButtonBarButtonVisualProvider *)v6 barButtonItem];
    if (v4)
    {
      v5 = v4;
      sub_188C58C20(v3, v4);

      v3 = v5;
    }
  }
}

@end