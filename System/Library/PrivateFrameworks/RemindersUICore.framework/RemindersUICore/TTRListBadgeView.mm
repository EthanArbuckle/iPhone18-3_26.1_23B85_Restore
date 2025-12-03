@interface TTRListBadgeView
- (BOOL)accessibilityActivate;
- (BOOL)ttrAccessibilityShouldIgnoreAccessibilityName;
- (BOOL)ttrAccessibilityShouldIgnoreTintColorValue;
- (NSArray)accessibilityUserInputLabels;
- (NSString)accessibilityValue;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
- (void)setIsAccessibilityElement:(BOOL)element;
- (void)setTtrAccessibilityShouldIgnoreAccessibilityName:(BOOL)name;
- (void)setTtrAccessibilityShouldIgnoreTintColorValue:(BOOL)value;
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

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  requestCopy = request;
  selfCopy = self;
  [(TTRListBadgeView *)selfCopy bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(TTRListBadgeView *)selfCopy hitTestInsets];
  v18 = UIEdgeInsetsInsetRect(v9, v11, v13, v15, v16, v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [requestCopy location];
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

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = _s15RemindersUICore16TTRListBadgeViewC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0jG0C_So0J6RegionCtF_0();

  return v9;
}

- (BOOL)ttrAccessibilityShouldIgnoreAccessibilityName
{
  v3 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreAccessibilityName;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setTtrAccessibilityShouldIgnoreAccessibilityName:(BOOL)name
{
  v5 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreAccessibilityName;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = name;
}

- (BOOL)ttrAccessibilityShouldIgnoreTintColorValue
{
  v3 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreTintColorValue;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setTtrAccessibilityShouldIgnoreTintColorValue:(BOOL)value
{
  v5 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreTintColorValue;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = value;
}

- (void)setIsAccessibilityElement:(BOOL)element
{
  elementCopy = element;
  v4.receiver = self;
  v4.super_class = type metadata accessor for TTRListBadgeView();
  [(TTRListBadgeView *)&v4 setIsAccessibilityElement:elementCopy];
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
  selfCopy = self;
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
  accessibilityTraits = [(TTRListBadgeView *)&v8 accessibilityTraits];
  v4 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selected;
  swift_beginAccess();
  if (*(v2 + v4) == 1)
  {
    v5 = *MEMORY[0x277D76598];

    if ((v5 & ~accessibilityTraits) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    accessibilityTraits |= v6;
  }

  else
  {
  }

  return accessibilityTraits;
}

- (BOOL)accessibilityActivate
{
  selfCopy = self;
  v3 = sub_21DB38D0C();

  return v3;
}

@end