@interface TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row
- (NSArray)accessibilityUserInputLabels;
- (NSString)accessibilityLabel;
- (_TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row)initWithArrangedSubviews:(id)subviews;
- (_TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row)initWithCoder:(id)coder;
- (_TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row)initWithFrame:(CGRect)frame;
- (void)accessibilityElementDidBecomeFocused;
- (void)accessibilityElementDidLoseFocus;
- (void)didHover:(id)hover;
- (void)didTap:(id)tap;
- (void)layoutSubviews;
@end

@implementation TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row

- (_TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row)initWithCoder:(id)coder
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_suggestionDelegate) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = (self + OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_configuration);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  v4[4] = 0u;
  v4[5] = 0u;
  v4[6] = 0u;
  v4[7] = 0u;
  v4[8] = 0u;
  v4[9] = 0u;
  v4[10] = 0u;
  v4[11] = 0u;
  v4[12] = 0u;
  v4[13] = 0u;
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

- (void)didTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  sub_21D6AF760();
}

- (void)didHover:(id)hover
{
  hoverCopy = hover;
  selfCopy = self;
  sub_21D6AD6E0(hoverCopy);
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row.accessibilityLabel.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_21DBFA12C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)accessibilityUserInputLabels
{
  selfCopy = self;
  v3 = TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row.accessibilityUserInputLabels.getter();

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

- (void)accessibilityElementDidBecomeFocused
{
  selfCopy = self;
  TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row.accessibilityElementDidBecomeFocused()();
}

- (void)accessibilityElementDidLoseFocus
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row *)&v4 accessibilityElementDidLoseFocus];
  v3 = *&v2[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_backgroundHighlight];
  [v3 setHidden_];
}

- (void)layoutSubviews
{
  selfCopy = self;
  TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row.layoutSubviews()();
}

- (_TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row)initWithArrangedSubviews:(id)subviews
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end