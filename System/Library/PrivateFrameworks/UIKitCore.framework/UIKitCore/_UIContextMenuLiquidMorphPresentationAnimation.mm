@interface _UIContextMenuLiquidMorphPresentationAnimation
- ($670CA482A27156A98D0A7E5F20B9370A)_dismissedMenuLayout;
- (BOOL)_hasVisibleBackground;
- (BOOL)addCompletion:(id)completion;
- (BOOL)isCompactMenu;
- (BOOL)sourcePreviewMorphsToMenu;
- (NSArray)_accessoryViews;
- (UITargetedPreview)_targetedPreviewForDismissalAnimation;
- (UITargetedPreview)morphPreviewFromAttachmentPoint;
- (UITargetedPreview)resolvedSourcePreview;
- (UITargetedPreview)sourcePreview;
- (_UIContentPlatterView)contentPlatterView;
- (_UIContextMenuLiquidMorphPresentationAnimation)init;
- (_UIContextMenuLiquidMorphPresentationAnimation)initWithUIController:(id)controller;
- (_UIContextMenuLiquidMorphPresentationAnimation)initWithUIController:(id)controller previousAnimation:(id)animation;
- (_UIContextMenuPlatformMetrics)_currentPlatformMetrics;
- (id)_secondaryDismissalPreviewFor:(id)for;
- (id)accessoryAnimationBlock;
- (void)_installAccessories;
- (void)_prepareAnimatablePropertyBasedAnimations;
- (void)_setBackgroundVisible:(BOOL)visible;
- (void)_updateAccessoryAttachment:(id)attachment;
- (void)performTransition;
- (void)prepareTransitionToView:(id)view;
- (void)retargetDismissingMenuToPreview:(id)preview;
- (void)setAccessoryAnimationBlock:(id)block;
- (void)setMorphAnimation:(id)animation;
- (void)setOutgoingAnimationPreview:(id)preview;
- (void)setPresentedLayout:(id)layout;
- (void)setSourcePreview:(id)preview;
- (void)setStashedDismissalPivot:(id)pivot;
- (void)setStashedDismissalPreview:(id)preview;
- (void)transitionDidEnd:(BOOL)end;
@end

@implementation _UIContextMenuLiquidMorphPresentationAnimation

- (_UIContextMenuLiquidMorphPresentationAnimation)initWithUIController:(id)controller previousAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  return sub_188D1EBB4(controllerCopy, animation);
}

- (void)setSourcePreview:(id)preview
{
  previewCopy = preview;
  selfCopy = self;
  uiController = [(_UIContextMenuPresentationAnimation *)selfCopy uiController];
  [(_UIContextMenuUIController *)uiController endSourcePreviewHidingIfNeeded];

  v7.receiver = selfCopy;
  v7.super_class = _UIContextMenuLiquidMorphPresentationAnimation;
  [(_UIContextMenuPresentationAnimation *)&v7 setSourcePreview:previewCopy];
}

- (void)setOutgoingAnimationPreview:(id)preview
{
  v4 = *(self + OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_outgoingAnimationPreview);
  *(self + OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_outgoingAnimationPreview) = preview;
  previewCopy = preview;
}

- (void)prepareTransitionToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_188D78398(viewCopy);
}

- (void)_installAccessories
{
  selfCopy = self;
  sub_188D710E0();
}

- (NSArray)_accessoryViews
{
  selfCopy = self;
  uiController = [(_UIContextMenuPresentationAnimation *)selfCopy uiController];
  menuConfiguration = [(_UIContextMenuUIController *)uiController menuConfiguration];

  accessoryViews = [(_UIFulfilledContextMenuConfiguration *)menuConfiguration accessoryViews];
  if (accessoryViews)
  {
    sub_188A34624(0, &qword_1EA930348);
    sub_18A4A7548();

    selfCopy = accessoryViews;
  }

  sub_188A34624(0, &qword_1EA930348);
  v6 = sub_18A4A7518();

  return v6;
}

- (void)_prepareAnimatablePropertyBasedAnimations
{
  selfCopy = self;
  sub_188D713EC();
}

- (UITargetedPreview)morphPreviewFromAttachmentPoint
{
  selfCopy = self;
  v3 = sub_188D83DDC();

  return v3;
}

- (void)setMorphAnimation:(id)animation
{
  v4 = *(self + OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_morphAnimation);
  *(self + OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_morphAnimation) = animation;
  animationCopy = animation;
}

- (void)_setBackgroundVisible:(BOOL)visible
{
  selfCopy = self;
  sub_188D74A54(visible);
}

- (BOOL)_hasVisibleBackground
{
  selfCopy = self;
  v3 = sub_188D74C04();

  return v3;
}

- (void)setPresentedLayout:(id)layout
{
  v4 = *(self + OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_presentedLayout);
  *(self + OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_presentedLayout) = layout;
  layoutCopy = layout;
}

- (void)setAccessoryAnimationBlock:(id)block
{
  v4 = _Block_copy(block);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_188A4AA0C;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_accessoryAnimationBlock);
  v8 = *(self + OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_accessoryAnimationBlock);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_188A55B8C(v8);
}

- (id)accessoryAnimationBlock
{
  if (*(self + OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_accessoryAnimationBlock))
  {
    v2 = *(self + OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_accessoryAnimationBlock + 8);
    v5[4] = *(self + OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_accessoryAnimationBlock);
    v5[5] = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_188D85708;
    v5[3] = &block_descriptor_68_4;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)transitionDidEnd:(BOOL)end
{
  if (end)
  {
    selfCopy = self;
    uiController = [(_UIContextMenuPresentationAnimation *)selfCopy uiController];
    menuView = [(_UIContextMenuUIController *)uiController menuView];

    v5 = selfCopy;
    if (menuView)
    {
      if (![(_UIContextMenuPresentationAnimation *)selfCopy isDismissTransition])
      {
        [(_UIContextMenuView *)menuView didCompleteMenuAppearanceAnimation];
      }

      v5 = selfCopy;
    }
  }
}

- (UITargetedPreview)sourcePreview
{
  v4.receiver = self;
  v4.super_class = _UIContextMenuLiquidMorphPresentationAnimation;
  sourcePreview = [(_UIContextMenuPresentationAnimation *)&v4 sourcePreview];

  return sourcePreview;
}

- (_UIContentPlatterView)contentPlatterView
{
  selfCopy = self;
  uiController = [(_UIContextMenuPresentationAnimation *)selfCopy uiController];
  contentPlatterView = [(_UIContextMenuUIController *)uiController contentPlatterView];

  if (contentPlatterView)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      goto LABEL_5;
    }
  }

  v5 = 0;
LABEL_5:

  return v5;
}

- (void)performTransition
{
  selfCopy = self;
  sub_188D82378();
}

- (void)setStashedDismissalPreview:(id)preview
{
  v4 = *(self + OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_stashedDismissalPreview);
  *(self + OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_stashedDismissalPreview) = preview;
  previewCopy = preview;
}

- (void)setStashedDismissalPivot:(id)pivot
{
  v4 = *(self + OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_stashedDismissalPivot);
  *(self + OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_stashedDismissalPivot) = pivot;
  pivotCopy = pivot;
}

- (UITargetedPreview)resolvedSourcePreview
{
  selfCopy = self;
  v3 = sub_18921A498();

  return v3;
}

- (id)_secondaryDismissalPreviewFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  uiController = [(_UIContextMenuPresentationAnimation *)selfCopy uiController];
  [forCopy _internalIdentifier];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA940A10);
  v7 = sub_18A4A7D28();
  swift_unknownObjectRelease();
  v8 = [(_UIContextMenuUIController *)uiController dismissalPreviewForSecondaryItem:v7 style:[(_UIContextMenuPresentationAnimation *)selfCopy dismissalStyle]];

  swift_unknownObjectRelease();

  return v8;
}

- (void)retargetDismissingMenuToPreview:(id)preview
{
  previewCopy = preview;
  selfCopy = self;
  sub_18921A8B0(preview);
}

- (BOOL)addCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_18921AC94(sub_188A4AA04, v5);

  return 1;
}

- (BOOL)isCompactMenu
{
  selfCopy = self;
  uiController = [(_UIContextMenuPresentationAnimation *)selfCopy uiController];
  menuStyle = [(_UIContextMenuUIController *)uiController menuStyle];

  preferredLayout = [(_UIContextMenuStyle *)menuStyle preferredLayout];
  return preferredLayout == 3;
}

- (BOOL)sourcePreviewMorphsToMenu
{
  selfCopy = self;
  if ([(_UIContextMenuLiquidMorphPresentationAnimation *)selfCopy isCompactMenu])
  {
    uiController = [(_UIContextMenuPresentationAnimation *)selfCopy uiController];
    menuStyle = [(_UIContextMenuUIController *)uiController menuStyle];

    shouldMenuOverlapSourcePreview = [(_UIContextMenuStyle *)menuStyle shouldMenuOverlapSourcePreview];
  }

  else
  {
    shouldMenuOverlapSourcePreview = 0;
  }

  return shouldMenuOverlapSourcePreview;
}

- (_UIContextMenuPlatformMetrics)_currentPlatformMetrics
{
  selfCopy = self;
  uiController = [(_UIContextMenuPresentationAnimation *)selfCopy uiController];
  platterContainerView = [(_UIContextMenuUIController *)uiController platterContainerView];

  traitCollection = [(UIView *)platterContainerView traitCollection];
  userInterfaceIdiom = [(UITraitCollection *)traitCollection userInterfaceIdiom];

  v7 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);

  return v7;
}

- ($670CA482A27156A98D0A7E5F20B9370A)_dismissedMenuLayout
{
  selfCopy = self;
  sub_18921B028(v13);

  v6 = v13[1];
  v7 = v13[2];
  v8 = v13[3];
  v9 = v13[4];
  v10 = v13[5];
  v11 = v13[6];
  v12 = v13[7];
  retstr->var0.origin = v13[0];
  retstr->var0.size = v6;
  *&retstr->var1.x = v7;
  *&retstr->var1.z = v8;
  *&retstr->var2.y = v9;
  *&retstr->var3.b = v10;
  *&retstr->var3.d = v11;
  *&retstr->var3.ty = v12;
  return result;
}

- (UITargetedPreview)_targetedPreviewForDismissalAnimation
{
  selfCopy = self;
  sub_18921B2D4();
  v4 = v3;

  return v4;
}

- (void)_updateAccessoryAttachment:(id)attachment
{
  attachmentCopy = attachment;
  selfCopy = self;
  sub_18921BB18(attachmentCopy);
}

- (_UIContextMenuLiquidMorphPresentationAnimation)initWithUIController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_UIContextMenuLiquidMorphPresentationAnimation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end