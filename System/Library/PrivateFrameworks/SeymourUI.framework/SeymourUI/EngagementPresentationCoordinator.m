@interface EngagementPresentationCoordinator
- (BOOL)allowsModalMessageDisplay;
- (_TtC9SeymourUI33EngagementPresentationCoordinator)init;
- (id)contextPropertyWithName:(id)a3;
- (id)viewControllerForModalPresentation;
@end

@implementation EngagementPresentationCoordinator

- (BOOL)allowsModalMessageDisplay
{
  v2 = self;
  v3 = EngagementPresentationCoordinator.allowsModalMessageDisplay.getter();

  return v3 & 1;
}

- (id)contextPropertyWithName:(id)a3
{
  sub_20C13C954();
  v4 = self;
  EngagementPresentationCoordinator.contextProperty(withName:)(&v13);

  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v13, v14);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x28223BE20](v6);
    v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_20C13DFD4();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1(&v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)viewControllerForModalPresentation
{
  v2 = self;
  EngagementPresentationCoordinator.viewControllerForModalPresentation()(v3);
  v5 = v4;

  return v5;
}

- (_TtC9SeymourUI33EngagementPresentationCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end