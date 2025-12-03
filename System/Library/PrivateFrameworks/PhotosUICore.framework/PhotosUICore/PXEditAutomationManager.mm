@interface PXEditAutomationManager
- (_TtC12PhotosUICore23PXEditAutomationManager)init;
- (void)dealloc;
@end

@implementation PXEditAutomationManager

- (void)dealloc
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x60);
  selfCopy = self;
  v5 = v3();
  if (v5)
  {
    v6 = v5;
    defaultCenter = [objc_opt_self() defaultCenter];
    [defaultCenter removeObserver_];

    (*((*v2 & selfCopy->super.isa) + 0x68))(0);
    swift_unknownObjectRelease();
  }

  v8.receiver = selfCopy;
  v8.super_class = type metadata accessor for PXEditAutomationManager();
  [(PXEditAutomationManager *)&v8 dealloc];
}

- (_TtC12PhotosUICore23PXEditAutomationManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end