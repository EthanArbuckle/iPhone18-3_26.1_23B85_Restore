@interface WindowControlsView
- (BOOL)accessibilityPerformEscape;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration;
- (id)_contextMenuInteraction:(id)interaction accessoriesForMenuWithConfiguration:(id)configuration;
- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)handleHover:(id)hover;
- (void)handleTap:(id)tap;
- (void)handleTraitChanges;
@end

@implementation WindowControlsView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  v7 = sub_21ED2ED28();
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v18.origin.x = v9;
  v18.origin.y = v11;
  v18.size.width = v13;
  v18.size.height = v15;
  v17.x = x;
  v17.y = y;
  LOBYTE(v7) = CGRectContainsPoint(v18, v17);

  return v7;
}

- (void)handleTraitChanges
{
  selfCopy = self;
  sub_21ED2F5A0();
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  v7 = sub_21ED35090(v6);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  selfCopy = self;
  v5 = sub_21ED2F818();

  return v5;
}

- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
  v9 = sub_21ED2FD54(interactionCopy, configurationCopy);

  return v9;
}

- (id)_contextMenuInteraction:(id)interaction accessoriesForMenuWithConfiguration:(id)configuration
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEE5FE8, &qword_21ED36E58);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21ED36CF0;
  v6 = objc_allocWithZone(type metadata accessor for WindowControlsContextMenuAccessoryView());
  selfCopy = self;
  *(v5 + 32) = sub_21ED2DBA0(selfCopy);

  sub_21ED2CF3C(0, &qword_27CEE5FF0, 0x277D75E98);
  v8 = sub_21ED3593C();

  return v8;
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_21ED30020(interactionCopy, configurationCopy, animator);

  swift_unknownObjectRelease();
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  interactionCopy = interaction;
  configurationCopy = configuration;
  v10 = v14.receiver;
  swift_unknownObjectRetain();
  [(WindowControlsView *)&v14 contextMenuInteraction:interactionCopy willEndForConfiguration:configurationCopy animator:animator];
  v11 = &v10[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 1);
    ObjectType = swift_getObjectType();
    (*(v12 + 32))(v10, ObjectType, v12);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  sub_21ED32948(tapCopy);
}

- (void)handleHover:(id)hover
{
  hoverCopy = hover;
  selfCopy = self;
  sub_21ED32C18(hoverCopy);
}

- (BOOL)accessibilityPerformEscape
{
  selfCopy = self;
  sub_21ED34274();

  return 1;
}

@end