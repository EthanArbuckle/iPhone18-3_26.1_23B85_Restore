@interface PXSectionsBlurController
- (PXSectionsBlurController)init;
- (PXSectionsBlurController)initWithBlurrableSectionsSource:(id)a3;
- (int64_t)behavior;
- (void)setBehavior:(int64_t)a3;
- (void)updateSectionsBlurWithVisibleRect:(CGRect)a3 safeAreaInsets:(UIEdgeInsets)a4 interSectionSpacing:(double)a5;
@end

@implementation PXSectionsBlurController

- (PXSectionsBlurController)initWithBlurrableSectionsSource:(id)a3
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

- (void)setBehavior:(int64_t)a3
{
  v5 = OBJC_IVAR___PXSectionsBlurController_behavior;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (void)updateSectionsBlurWithVisibleRect:(CGRect)a3 safeAreaInsets:(UIEdgeInsets)a4 interSectionSpacing:(double)a5
{
  v5 = self;
  sub_1A46165DC();
}

- (PXSectionsBlurController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end