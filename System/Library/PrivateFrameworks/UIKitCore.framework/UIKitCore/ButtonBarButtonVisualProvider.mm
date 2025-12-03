@interface ButtonBarButtonVisualProvider
- (BOOL)buttonSelectionState:(id)state forRequestedState:(BOOL)requestedState;
- (BOOL)shouldLift;
- (CGPoint)menuAnchorPoint;
- (CGRect)accessoryViewAlignmentRect;
- (CGSize)backButtonSystemLayoutSizeFittingSize:(CGSize)size horizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (CGSize)buttonImageViewSize:(id)size;
- (Class)buttonControlClass;
- (UIColor)tintColor;
- (UIView)alignmentViewForStaticNavBarButtonLeading;
- (UIView)alignmentViewForStaticNavBarButtonTrailing;
- (UIView)contentView;
- (id)buttonContextMenuInteractionConfiguration;
- (id)buttonContextMenuStyleFromDefaultStyle:(id)style;
- (id)buttonContextMenuTargetedPreview;
- (id)buttonSpringLoadedInteractionEffect;
- (id)matchingPointerShapeForView:(id)view rect:(CGRect)rect inContainer:(id)container;
- (id)pointerPreviewParameters;
- (id)pointerShapeInContainer:(id)container;
- (id)symbolImageView;
- (void)buttonDidUpdateBoundsSize;
- (void)buttonLayoutSubviews:(id)subviews baseImplementation:(id)implementation;
- (void)configureButton:(id)button withAppearanceDelegate:(id)delegate fromBarItem:(id)item;
- (void)reload;
- (void)resetButtonHasHighlighted;
- (void)setBackButtonMaskEnabled:(BOOL)enabled;
- (void)setTintColor:(id)color;
- (void)traitDependenciesUpdated;
- (void)updateButton:(id)button appearance:(id)appearance;
- (void)updateButton:(id)button forEnabledState:(BOOL)state;
- (void)updateButton:(id)button forHeldState:(BOOL)state;
- (void)updateButton:(id)button forHighlightedState:(BOOL)state;
- (void)updateButton:(id)button forSelectedState:(BOOL)state;
- (void)updateImage;
- (void)updateMenu;
- (void)updateTextContent;
@end

@implementation ButtonBarButtonVisualProvider

- (void)configureButton:(id)button withAppearanceDelegate:(id)delegate fromBarItem:(id)item
{
  swift_unknownObjectWeakAssign();
  buttonCopy = button;
  swift_unknownObjectRetain();
  itemCopy = item;
  selfCopy = self;
  sub_188C58C20(buttonCopy, itemCopy);

  swift_unknownObjectRelease();
}

- (id)buttonSpringLoadedInteractionEffect
{
  v2 = [objc_allocWithZone(type metadata accessor for ButtonBarButtonVisualProvider.SpringLoadedBlinkingEffect()) init];

  return v2;
}

- (void)updateButton:(id)button forEnabledState:(BOOL)state
{
  buttonCopy = button;
  selfCopy = self;
  sub_188C5DCB8(state);
}

- (id)symbolImageView
{
  selfCopy = self;
  v3 = sub_188C5ECB4();

  return v3;
}

- (BOOL)buttonSelectionState:(id)state forRequestedState:(BOOL)requestedState
{
  if (!requestedState)
  {
    return 0;
  }

  stateCopy = state;
  selfCopy = self;
  if ([stateCopy isBackButton])
  {

    return 0;
  }

  else if (*(&selfCopy->super.super.isa + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton))
  {

    return 1;
  }

  else
  {
    v8 = *(&selfCopy->super.super.isa + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);

    return v8 != 0;
  }
}

- (void)updateButton:(id)button forSelectedState:(BOOL)state
{
  buttonCopy = button;
  selfCopy = self;
  sub_188C5EB3C(buttonCopy, state);
}

- (CGSize)backButtonSystemLayoutSizeFittingSize:(CGSize)size horizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  sub_188C5ED8C(width, height, priority, fittingPriority);
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
  selfCopy = self;
  sub_188C5F39C();
}

- (void)buttonLayoutSubviews:(id)subviews baseImplementation:(id)implementation
{
  v6 = _Block_copy(implementation);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  subviewsCopy = subviews;
  selfCopy = self;
  sub_188C5F60C(subviewsCopy, sub_188A4AA04, v7);
}

- (void)updateButton:(id)button appearance:(id)appearance
{
  selfCopy = self;
  sub_188C5A3BC();
}

- (Class)buttonControlClass
{
  type metadata accessor for ButtonBarButtonVisualProvider.Button();

  return swift_getObjCClassFromMetadata();
}

- (void)resetButtonHasHighlighted
{
  selfCopy = self;
  sub_18909C238();
}

- (UIColor)tintColor
{
  selfCopy = self;
  v3 = sub_188C5A048();

  return v3;
}

- (void)setTintColor:(id)color
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(_UIButtonBarButtonVisualProvider *)&v4 setTintColor:color];
}

- (id)pointerPreviewParameters
{
  selfCopy = self;
  v3 = sub_18909C5C4();

  return v3;
}

- (id)pointerShapeInContainer:(id)container
{
  containerCopy = container;
  selfCopy = self;
  v6 = sub_18909C998(containerCopy);

  return v6;
}

- (id)matchingPointerShapeForView:(id)view rect:(CGRect)rect inContainer:(id)container
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  containerCopy = container;
  selfCopy = self;
  v14 = sub_1890A12F0(viewCopy, containerCopy, x, y, width, height);

  return v14;
}

- (BOOL)shouldLift
{
  selfCopy = self;
  v3 = sub_18909D4D8();

  return v3 & 1;
}

- (void)setBackButtonMaskEnabled:(BOOL)enabled
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backButtonMask) && *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider__backButtonMaskEnabled) != enabled)
  {
    *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider__backButtonMaskEnabled) = enabled;
    selfCopy = self;
    sub_188C5C5BC();
  }
}

- (void)updateButton:(id)button forHighlightedState:(BOOL)state
{
  buttonCopy = button;
  selfCopy = self;
  sub_1890A14CC(state);
}

- (void)updateButton:(id)button forHeldState:(BOOL)state
{
  buttonCopy = button;
  selfCopy = self;
  sub_1890A15C8(state);
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

- (CGSize)buttonImageViewSize:(id)size
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  if (v4)
  {
    sizeCopy = size;
    selfCopy = self;
    v7 = v4;
    _imageView = [v7 _imageView];
    if (!_imageView)
    {
      __break(1u);
      goto LABEL_7;
    }

    v11 = _imageView;
    [_imageView bounds];
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = swift_getObjectType();
    [(_UIButtonBarButtonVisualProvider *)&v19 buttonImageViewSize:size];
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
  selfCopy = self;
  sub_18909F588();
}

- (void)updateTextContent
{
  selfCopy = self;
  sub_18909F73C();
}

- (id)buttonContextMenuInteractionConfiguration
{
  selfCopy = self;
  v3 = sub_18909FB9C();

  return v3;
}

- (id)buttonContextMenuStyleFromDefaultStyle:(id)style
{
  styleCopy = style;
  selfCopy = self;
  sub_18909FD2C();
  v7 = v6;
  v9 = v8;
  button = [(_UIButtonBarButtonVisualProvider *)selfCopy button];
  v11 = sub_18909FEDC();
  _UIControlMenuSupportUpdateStyleForBarButtons(styleCopy, button, v11, *(&selfCopy->super.super.isa + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton) != 0, v7, v9);

  return styleCopy;
}

- (id)buttonContextMenuTargetedPreview
{
  selfCopy = self;
  v3 = sub_18909FEDC();

  return v3;
}

- (CGPoint)menuAnchorPoint
{
  selfCopy = self;
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
  selfCopy = self;
  sub_188C581B0();
}

- (void)updateImage
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton))
  {
    selfCopy = self;
    button = [(_UIButtonBarButtonVisualProvider *)selfCopy button];
    if (button)
    {
      v3 = button;
      barButtonItem = [(_UIButtonBarButtonVisualProvider *)selfCopy barButtonItem];
      if (barButtonItem)
      {
        v5 = barButtonItem;
        sub_188C58C20(v3, barButtonItem);

        v3 = v5;
      }
    }
  }
}

- (void)reload
{
  selfCopy = self;
  button = [(_UIButtonBarButtonVisualProvider *)selfCopy button];
  if (button)
  {
    v3 = button;
    barButtonItem = [(_UIButtonBarButtonVisualProvider *)selfCopy barButtonItem];
    if (barButtonItem)
    {
      v5 = barButtonItem;
      sub_188C58C20(v3, barButtonItem);

      v3 = v5;
    }
  }
}

@end