@interface NCNotificationModernListView
- (BOOL)viewEffectivelyTracking;
- (CGPoint)animatableContentOffset;
- (NCNotificationModernListView)initWithCoder:(id)a3;
- (NCNotificationModernListView)initWithModelType:(Class)a3 purpose:(id)a4;
- (NCNotificationModernListView)initWithModelType:(Class)a3 purpose:(id)a4 purposeWithSensitiveTextHashed:(id)a5;
- (double)gestureTranslationY;
- (void)dealloc;
- (void)didSetNeedsUpdateOfApparentZPositionsOfListCells;
- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4;
- (void)syncScrollPosition;
@end

@implementation NCNotificationModernListView

- (BOOL)viewEffectivelyTracking
{
  v2 = self;
  v3 = [(NCNotificationModernListView *)v2 traitCollection];
  v4 = [v3 _backlightLuminance];

  if (v4 == 2)
  {
    v5 = [(NCNotificationModernListView *)v2 isTracking];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NCNotificationModernListView)initWithModelType:(Class)a3 purpose:(id)a4 purposeWithSensitiveTextHashed:(id)a5
{
  swift_getObjCClassMetadata();
  sub_21E92A458();
  sub_21E92A458();
  return NCNotificationModernListView.init(modelType:purpose:purposeWithSensitiveTextHashed:)();
}

- (NCNotificationModernListView)initWithModelType:(Class)a3 purpose:(id)a4
{
  sub_21E92A458();
  v6 = OBJC_IVAR___NCNotificationModernListView_animatableProperty;
  v7 = [objc_allocWithZone(MEMORY[0x277D75D38]) init];
  [v7 setVelocityUsableForVFD_];
  *(&self->super.super.super.super.super.isa + v6) = v7;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___NCNotificationModernListView_performingAnimation) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___NCNotificationModernListView_exclusionManager) = 0;
  v8 = sub_21E92A428();

  v11.receiver = self;
  v11.super_class = NCNotificationModernListView;
  v9 = [(NCNotificationListView *)&v11 initWithModelType:a3 purpose:v8];

  return v9;
}

- (NCNotificationModernListView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR___NCNotificationModernListView_animatableProperty;
  v5 = [objc_allocWithZone(MEMORY[0x277D75D38]) init];
  [v5 setVelocityUsableForVFD_];
  *(&self->super.super.super.super.super.isa + v4) = v5;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___NCNotificationModernListView_performingAnimation) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___NCNotificationModernListView_exclusionManager) = 0;
  result = sub_21E92A988();
  __break(1u);
  return result;
}

- (void)dealloc
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR___NCNotificationModernListView_animatableProperty);
  v3 = self;
  [v2 invalidate];
  v4.receiver = v3;
  v4.super_class = NCNotificationModernListView;
  [(NCNotificationModernListView *)&v4 dealloc];
}

- (CGPoint)animatableContentOffset
{
  [*(&self->super.super.super.super.super.isa + OBJC_IVAR___NCNotificationModernListView_animatableProperty) value];
  v3 = v2;
  v4 = 0.0;
  result.y = v3;
  result.x = v4;
  return result;
}

- (double)gestureTranslationY
{
  v2 = self;
  v3 = [(NCNotificationModernListView *)v2 panGestureRecognizer];
  [v3 translationInView_];
  v5 = v4;

  return v5;
}

- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = NCNotificationModernListView;
  [(NCNotificationModernListView *)&v4 setContentOffset:a4 animated:a3.x, a3.y];
}

- (void)syncScrollPosition
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v7[4] = sub_21E8DCD24;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_21E792C28;
  v7[3] = &block_descriptor_6;
  v5 = _Block_copy(v7);
  v6 = self;

  [v3 _performWithoutRetargetingAnimations_];

  _Block_release(v5);
}

- (void)didSetNeedsUpdateOfApparentZPositionsOfListCells
{
  v2 = self;
  NCNotificationModernListView.didSetNeedsUpdateOfApparentZPositionsOfListCells()();
}

@end