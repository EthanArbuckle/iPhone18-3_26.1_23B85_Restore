@interface DownloadButton
- (BOOL)isHighlighted;
- (int64_t)accessibilityState;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DownloadButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DownloadButton();
  return [(DownloadButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DownloadButton();
  v4 = v5.receiver;
  [(DownloadButton *)&v5 setHighlighted:highlightedCopy];
  sub_20C0DAFD4([v4 isHighlighted]);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20C0DA850();
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_20C0DAA9C();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_20C0DAC4C(change);
}

- (int64_t)accessibilityState
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState);
  v3 = *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState);
  if (v3 <= 1)
  {
    if (*(&self->super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState))
    {
      if (v2)
      {
        return 6;
      }

      else
      {
        return 5;
      }
    }

    else
    {
      return *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState) == 3;
    }
  }

  else if (v3 == 2)
  {
    return 3;
  }

  else if (v3 == 3)
  {
    return qword_20C18E660[v2];
  }

  else
  {
    return 7;
  }
}

@end