@interface MoreOptionsButton
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)layoutSubviews;
@end

@implementation MoreOptionsButton

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for MoreOptionsButton();
  v2 = v5.receiver;
  [(MoreOptionsButton *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_visualEffectView];
  if (v3)
  {
    v4 = v3;
    [v2 sendSubviewToBack_];
  }
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for MoreOptionsButton();
  v8 = a3;
  v9 = a4;
  v10 = v13.receiver;
  swift_unknownObjectRetain();
  [(MoreOptionsButton *)&v13 contextMenuInteraction:v8 willEndForConfiguration:v9 animator:a5];
  v11 = *&v10[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_onMenuDismissed];
  if (v11)
  {

    v11(v12);

    swift_unknownObjectRelease();
    sub_20B583ECC(v11);
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

@end