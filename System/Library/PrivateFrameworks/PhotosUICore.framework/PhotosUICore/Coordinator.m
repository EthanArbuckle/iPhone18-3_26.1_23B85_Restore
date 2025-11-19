@interface Coordinator
- (_TtC12PhotosUICore11Coordinator)init;
@end

@implementation Coordinator

- (_TtC12PhotosUICore11Coordinator)init
{
  ObjectType = swift_getObjectType();
  v4 = [objc_allocWithZone(PXCMMWorkflowCoordinator) init];
  *(&self->super.isa + OBJC_IVAR____TtC12PhotosUICore11Coordinator_workflowCoordinator) = v4;
  v7.receiver = self;
  v7.super_class = ObjectType;
  v5 = [(Coordinator *)&v7 init];
  [*(&v5->super.isa + OBJC_IVAR____TtC12PhotosUICore11Coordinator_workflowCoordinator) setDelegate_];
  return v5;
}

@end