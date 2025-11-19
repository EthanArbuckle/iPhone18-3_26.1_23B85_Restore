@interface _UIContextMenuLiquidMorphPresentationAnimation
- ($670CA482A27156A98D0A7E5F20B9370A)_dismissedMenuLayout;
- (BOOL)_hasVisibleBackground;
- (BOOL)addCompletion:(id)a3;
- (BOOL)isCompactMenu;
- (BOOL)sourcePreviewMorphsToMenu;
- (NSArray)_accessoryViews;
- (UITargetedPreview)_targetedPreviewForDismissalAnimation;
- (UITargetedPreview)morphPreviewFromAttachmentPoint;
- (UITargetedPreview)resolvedSourcePreview;
- (UITargetedPreview)sourcePreview;
- (_UIContentPlatterView)contentPlatterView;
- (_UIContextMenuLiquidMorphPresentationAnimation)init;
- (_UIContextMenuLiquidMorphPresentationAnimation)initWithUIController:(id)a3;
- (_UIContextMenuLiquidMorphPresentationAnimation)initWithUIController:(id)a3 previousAnimation:(id)a4;
- (_UIContextMenuPlatformMetrics)_currentPlatformMetrics;
- (id)_secondaryDismissalPreviewFor:(id)a3;
- (id)accessoryAnimationBlock;
- (void)_installAccessories;
- (void)_prepareAnimatablePropertyBasedAnimations;
- (void)_setBackgroundVisible:(BOOL)a3;
- (void)_updateAccessoryAttachment:(id)a3;
- (void)performTransition;
- (void)prepareTransitionToView:(id)a3;
- (void)retargetDismissingMenuToPreview:(id)a3;
- (void)setAccessoryAnimationBlock:(id)a3;
- (void)setMorphAnimation:(id)a3;
- (void)setOutgoingAnimationPreview:(id)a3;
- (void)setPresentedLayout:(id)a3;
- (void)setSourcePreview:(id)a3;
- (void)setStashedDismissalPivot:(id)a3;
- (void)setStashedDismissalPreview:(id)a3;
- (void)transitionDidEnd:(BOOL)a3;
@end

@implementation _UIContextMenuLiquidMorphPresentationAnimation

- (_UIContextMenuLiquidMorphPresentationAnimation)initWithUIController:(id)a3 previousAnimation:(id)a4
{
  v5 = a3;
  v6 = a4;
  return sub_188D1EBB4(v5, a4);
}

- (void)setSourcePreview:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(_UIContextMenuPresentationAnimation *)v5 uiController];
  [(_UIContextMenuUIController *)v6 endSourcePreviewHidingIfNeeded];

  v7.receiver = v5;
  v7.super_class = _UIContextMenuLiquidMorphPresentationAnimation;
  [(_UIContextMenuPresentationAnimation *)&v7 setSourcePreview:v4];
}

- (void)setOutgoingAnimationPreview:(id)a3
{
  v4 = *(self + OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_outgoingAnimationPreview);
  *(self + OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_outgoingAnimationPreview) = a3;
  v3 = a3;
}

- (void)prepareTransitionToView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188D78398(v4);
}

- (void)_installAccessories
{
  v2 = self;
  sub_188D710E0();
}

- (NSArray)_accessoryViews
{
  v2 = self;
  v3 = [(_UIContextMenuPresentationAnimation *)v2 uiController];
  v4 = [(_UIContextMenuUIController *)v3 menuConfiguration];

  v5 = [(_UIFulfilledContextMenuConfiguration *)v4 accessoryViews];
  if (v5)
  {
    sub_188A34624(0, &qword_1EA930348);
    sub_18A4A7548();

    v2 = v5;
  }

  sub_188A34624(0, &qword_1EA930348);
  v6 = sub_18A4A7518();

  return v6;
}

- (void)_prepareAnimatablePropertyBasedAnimations
{
  v2 = self;
  sub_188D713EC();
}

- (UITargetedPreview)morphPreviewFromAttachmentPoint
{
  v2 = self;
  v3 = sub_188D83DDC();

  return v3;
}

- (void)setMorphAnimation:(id)a3
{
  v4 = *(self + OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_morphAnimation);
  *(self + OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_morphAnimation) = a3;
  v3 = a3;
}

- (void)_setBackgroundVisible:(BOOL)a3
{
  v4 = self;
  sub_188D74A54(a3);
}

- (BOOL)_hasVisibleBackground
{
  v2 = self;
  v3 = sub_188D74C04();

  return v3;
}

- (void)setPresentedLayout:(id)a3
{
  v4 = *(self + OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_presentedLayout);
  *(self + OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_presentedLayout) = a3;
  v3 = a3;
}

- (void)setAccessoryAnimationBlock:(id)a3
{
  v4 = _Block_copy(a3);
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
  v9 = self;
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

- (void)transitionDidEnd:(BOOL)a3
{
  if (a3)
  {
    v6 = self;
    v3 = [(_UIContextMenuPresentationAnimation *)v6 uiController];
    v4 = [(_UIContextMenuUIController *)v3 menuView];

    v5 = v6;
    if (v4)
    {
      if (![(_UIContextMenuPresentationAnimation *)v6 isDismissTransition])
      {
        [(_UIContextMenuView *)v4 didCompleteMenuAppearanceAnimation];
      }

      v5 = v6;
    }
  }
}

- (UITargetedPreview)sourcePreview
{
  v4.receiver = self;
  v4.super_class = _UIContextMenuLiquidMorphPresentationAnimation;
  v2 = [(_UIContextMenuPresentationAnimation *)&v4 sourcePreview];

  return v2;
}

- (_UIContentPlatterView)contentPlatterView
{
  v2 = self;
  v3 = [(_UIContextMenuPresentationAnimation *)v2 uiController];
  v4 = [(_UIContextMenuUIController *)v3 contentPlatterView];

  if (v4)
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
  v2 = self;
  sub_188D82378();
}

- (void)setStashedDismissalPreview:(id)a3
{
  v4 = *(self + OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_stashedDismissalPreview);
  *(self + OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_stashedDismissalPreview) = a3;
  v3 = a3;
}

- (void)setStashedDismissalPivot:(id)a3
{
  v4 = *(self + OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_stashedDismissalPivot);
  *(self + OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_stashedDismissalPivot) = a3;
  v3 = a3;
}

- (UITargetedPreview)resolvedSourcePreview
{
  v2 = self;
  v3 = sub_18921A498();

  return v3;
}

- (id)_secondaryDismissalPreviewFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(_UIContextMenuPresentationAnimation *)v5 uiController];
  [v4 _internalIdentifier];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA940A10);
  v7 = sub_18A4A7D28();
  swift_unknownObjectRelease();
  v8 = [(_UIContextMenuUIController *)v6 dismissalPreviewForSecondaryItem:v7 style:[(_UIContextMenuPresentationAnimation *)v5 dismissalStyle]];

  swift_unknownObjectRelease();

  return v8;
}

- (void)retargetDismissingMenuToPreview:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_18921A8B0(a3);
}

- (BOOL)addCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_18921AC94(sub_188A4AA04, v5);

  return 1;
}

- (BOOL)isCompactMenu
{
  v2 = self;
  v3 = [(_UIContextMenuPresentationAnimation *)v2 uiController];
  v4 = [(_UIContextMenuUIController *)v3 menuStyle];

  v5 = [(_UIContextMenuStyle *)v4 preferredLayout];
  return v5 == 3;
}

- (BOOL)sourcePreviewMorphsToMenu
{
  v2 = self;
  if ([(_UIContextMenuLiquidMorphPresentationAnimation *)v2 isCompactMenu])
  {
    v3 = [(_UIContextMenuPresentationAnimation *)v2 uiController];
    v4 = [(_UIContextMenuUIController *)v3 menuStyle];

    v5 = [(_UIContextMenuStyle *)v4 shouldMenuOverlapSourcePreview];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_UIContextMenuPlatformMetrics)_currentPlatformMetrics
{
  v2 = self;
  v3 = [(_UIContextMenuPresentationAnimation *)v2 uiController];
  v4 = [(_UIContextMenuUIController *)v3 platterContainerView];

  v5 = [(UIView *)v4 traitCollection];
  v6 = [(UITraitCollection *)v5 userInterfaceIdiom];

  v7 = _UIContextMenuGetPlatformMetrics(v6);

  return v7;
}

- ($670CA482A27156A98D0A7E5F20B9370A)_dismissedMenuLayout
{
  v4 = self;
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
  v2 = self;
  sub_18921B2D4();
  v4 = v3;

  return v4;
}

- (void)_updateAccessoryAttachment:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18921BB18(v4);
}

- (_UIContextMenuLiquidMorphPresentationAnimation)initWithUIController:(id)a3
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