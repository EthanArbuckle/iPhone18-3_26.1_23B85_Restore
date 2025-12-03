@interface PXSectionsBlurController
- (PXSectionsBlurController)init;
- (PXSectionsBlurController)initWithBlurrableSectionsSource:(id)source;
- (int64_t)behavior;
- (void)setBehavior:(int64_t)behavior;
- (void)updateSectionsBlurWithVisibleRect:(CGRect)rect safeAreaInsets:(UIEdgeInsets)insets interSectionSpacing:(double)spacing;
@end

@implementation PXSectionsBlurController

- (PXSectionsBlurController)initWithBlurrableSectionsSource:(id)source
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(&self->super.isa + OBJC_IVAR___PXSectionsBlurController_behavior) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SectionsBlurController();
  return [(PXSectionsBlurController *)&v5 init];
}

- (int64_t)behavior
{
  v3 = OBJC_IVAR___PXSectionsBlurController_behavior;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBehavior:(int64_t)behavior
{
  v5 = OBJC_IVAR___PXSectionsBlurController_behavior;
  swift_beginAccess();
  *(&self->super.isa + v5) = behavior;
}

- (void)updateSectionsBlurWithVisibleRect:(CGRect)rect safeAreaInsets:(UIEdgeInsets)insets interSectionSpacing:(double)spacing
{
  selfCopy = self;
  sub_1A46165DC();
}

- (PXSectionsBlurController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end