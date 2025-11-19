@interface TTRListBadgeView
- (BOOL)accessibilityActivate;
- (BOOL)ttrAccessibilityShouldIgnoreAccessibilityName;
- (BOOL)ttrAccessibilityShouldIgnoreTintColorValue;
- (NSArray)accessibilityUserInputLabels;
- (NSString)accessibilityValue;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
- (void)setIsAccessibilityElement:(BOOL)a3;
- (void)setTtrAccessibilityShouldIgnoreAccessibilityName:(BOOL)a3;
- (void)setTtrAccessibilityShouldIgnoreTintColorValue:(BOOL)a3;
@end

@implementation TTRListBadgeView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TTRListBadgeView();
  v2 = v3.receiver;
  [(TTRListBadgeView *)&v3 layoutSubviews];
  sub_21D11CB2C();
  if (v2[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_layerColorsDirty] == 1)
  {
    v2[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_layerColorsDirty] = 0;
    sub_21D11CE70();
  }
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a4;
  v7 = self;
  [(TTRListBadgeView *)v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(TTRListBadgeView *)v7 hitTestInsets];
  v18 = UIEdgeInsetsInsetRect(v9, v11, v13, v15, v16, v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [v6 location];
  v31.x = v25;
  v31.y = v26;
  v32.origin.x = v18;
  v32.origin.y = v20;
  v32.size.width = v22;
  v32.size.height = v24;
  if (CGRectContainsPoint(v32, v31))
  {
    sub_21D0D8CF0(0, &qword_27CE65B88);
    v27 = sub_21DBFAFEC();

    v28 = v27;
  }

  else
  {

    v28 = 0;
  }

  return v28;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = _s15RemindersUICore16TTRListBadgeViewC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0jG0C_So0J6RegionCtF_0();

  return v9;
}

- (BOOL)ttrAccessibilityShouldIgnoreAccessibilityName
{
  v3 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreAccessibilityName;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setTtrAccessibilityShouldIgnoreAccessibilityName:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreAccessibilityName;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
}

- (BOOL)ttrAccessibilityShouldIgnoreTintColorValue
{
  v3 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreTintColorValue;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setTtrAccessibilityShouldIgnoreTintColorValue:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreTintColorValue;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
}

- (void)setIsAccessibilityElement:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for TTRListBadgeView();
  [(TTRListBadgeView *)&v4 setIsAccessibilityElement:v3];
}

- (NSString)accessibilityValue
{
  v3 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreTintColorValue;
  swift_beginAccess();
  v4 = 0;
  if ((*(&self->super.super.super.isa + v3) & 1) == 0)
  {
    swift_beginAccess();
    TTRListBadgeView.ColorInfo.localizedDescription.getter();
    v5 = sub_21DBFA12C();

    v4 = v5;
  }

  return v4;
}

- (NSArray)accessibilityUserInputLabels
{
  v2 = self;
  v3 = sub_21DB38960();

  if (v3)
  {
    v4 = sub_21DBFA5DC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for TTRListBadgeView();
  v2 = v8.receiver;
  v3 = [(TTRListBadgeView *)&v8 accessibilityTraits];
  v4 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selected;
  swift_beginAccess();
  if (*(v2 + v4) == 1)
  {
    v5 = *MEMORY[0x277D76598];

    if ((v5 & ~v3) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v3 |= v6;
  }

  else
  {
  }

  return v3;
}

- (BOOL)accessibilityActivate
{
  v2 = self;
  v3 = sub_21DB38D0C();

  return v3;
}

@end