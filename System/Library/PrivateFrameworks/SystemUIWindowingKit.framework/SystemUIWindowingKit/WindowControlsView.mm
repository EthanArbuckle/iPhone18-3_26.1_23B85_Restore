@interface WindowControlsView
- (BOOL)accessibilityPerformEscape;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGPoint)menuAttachmentPointForConfiguration:(id)a3;
- (id)_contextMenuInteraction:(id)a3 accessoriesForMenuWithConfiguration:(id)a4;
- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)handleHover:(id)a3;
- (void)handleTap:(id)a3;
- (void)handleTraitChanges;
@end

@implementation WindowControlsView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
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
  v2 = self;
  sub_21ED2F5A0();
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  v7 = sub_21ED35090(v6);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v4 = self;
  v5 = sub_21ED2F818();

  return v5;
}

- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_21ED2FD54(v6, v7);

  return v9;
}

- (id)_contextMenuInteraction:(id)a3 accessoriesForMenuWithConfiguration:(id)a4
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEE5FE8, &qword_21ED36E58);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21ED36CF0;
  v6 = objc_allocWithZone(type metadata accessor for WindowControlsContextMenuAccessoryView());
  v7 = self;
  *(v5 + 32) = sub_21ED2DBA0(v7);

  sub_21ED2CF3C(0, &qword_27CEE5FF0, 0x277D75E98);
  v8 = sub_21ED3593C();

  return v8;
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_21ED30020(v8, v9, a5);

  swift_unknownObjectRelease();
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v8 = a3;
  v9 = a4;
  v10 = v14.receiver;
  swift_unknownObjectRetain();
  [(WindowControlsView *)&v14 contextMenuInteraction:v8 willEndForConfiguration:v9 animator:a5];
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

- (void)handleTap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21ED32948(v4);
}

- (void)handleHover:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21ED32C18(v4);
}

- (BOOL)accessibilityPerformEscape
{
  v2 = self;
  sub_21ED34274();

  return 1;
}

@end