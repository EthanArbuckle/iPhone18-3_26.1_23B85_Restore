@interface TTRIExpandingTextView
- (BOOL)accessibilityActivate;
- (BOOL)isScrollEnabled;
- (CGPoint)contentOffset;
- (CGSize)_layoutSizeThatFits:(CGSize)fits fixedAxes:(unint64_t)axes;
- (CGSize)contentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC15RemindersUICore21TTRIExpandingTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (double)effectiveBaselineOffsetFromBottom;
- (double)effectiveFirstBaselineOffsetFromTop;
- (unint64_t)accessibilityTraits;
- (void)setContentOffset:(CGPoint)offset;
- (void)setContentSize:(CGSize)size;
- (void)setScrollEnabled:(BOOL)enabled;
@end

@implementation TTRIExpandingTextView

- (BOOL)isScrollEnabled
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TTRIExpandingTextView();
  return [(TTRIExpandingTextView *)&v3 isScrollEnabled];
}

- (void)setScrollEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = type metadata accessor for TTRIExpandingTextView();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isScrollEnabled = [(TTRIExpandingTextView *)&v9 isScrollEnabled];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(TTRIExpandingTextView *)&v8 setScrollEnabled:enabledCopy];
  if (isScrollEnabled != [(TTRIExpandingTextView *)selfCopy isScrollEnabled])
  {
    sub_21DACB010();
  }
}

- (CGSize)_layoutSizeThatFits:(CGSize)fits fixedAxes:(unint64_t)axes
{
  height = fits.height;
  width = fits.width;
  v9.receiver = self;
  v9.super_class = type metadata accessor for TTRIExpandingTextView();
  [(TTRIExpandingTextView *)&v9 _layoutSizeThatFits:axes fixedAxes:width, height];
  result.height = v8;
  result.width = v7;
  return result;
}

- (double)effectiveFirstBaselineOffsetFromTop
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for TTRIExpandingTextView();
  v2 = v11.receiver;
  [(TTRIExpandingTextView *)&v11 effectiveFirstBaselineOffsetFromTop];
  v4 = v3;
  if (fabs(v3) >= 0.0000000149011612 || (v5 = [v2 textStorage], v6 = objc_msgSend(v5, sel_length), v5, v6))
  {
  }

  else
  {
    v8 = COERCE_DOUBLE(sub_21DACAD50());
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      return v8;
    }
  }

  return v4;
}

- (double)effectiveBaselineOffsetFromBottom
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for TTRIExpandingTextView();
  v2 = v12.receiver;
  [(TTRIExpandingTextView *)&v12 effectiveBaselineOffsetFromBottom];
  v4 = v3;
  if (fabs(v3) >= 0.0000000149011612 || (v5 = [v2 textStorage], v6 = objc_msgSend(v5, sel_length), v5, v6))
  {
  }

  else
  {
    sub_21DACAD50();
    v9 = v8;
    v11 = v10;

    if ((v11 & 1) == 0)
    {
      return v9;
    }
  }

  return v4;
}

- (_TtC15RemindersUICore21TTRIExpandingTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CGSize)contentSize
{
  sub_21DACBD5C(self, a2, &selRef_contentSize);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  TTRIExpandingTextView.contentSize.setter(width, height);
}

- (CGPoint)contentOffset
{
  sub_21DACBD5C(self, a2, &selRef_contentOffset);
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  selfCopy = self;
  if ([(TTRIExpandingTextView *)selfCopy isScrollEnabled])
  {
    v6.receiver = selfCopy;
    v6.super_class = type metadata accessor for TTRIExpandingTextView();
    [(TTRIExpandingTextView *)&v6 setContentOffset:x, y];
  }

  else
  {
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = TTRIExpandingTextView.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)accessibilityActivate
{
  selfCopy = self;
  canBecomeFirstResponder = [(TTRIExpandingTextView *)selfCopy canBecomeFirstResponder];
  if (canBecomeFirstResponder)
  {
    [(TTRIExpandingTextView *)selfCopy becomeFirstResponder];
  }

  return canBecomeFirstResponder;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TTRIExpandingTextView();
  v2 = v7.receiver;
  accessibilityTraits = [(TTRIExpandingTextView *)&v7 accessibilityTraits];
  textArea = [objc_opt_self() textArea];

  v5 = -1;
  if ((textArea & accessibilityTraits) != 0)
  {
    v5 = ~textArea;
  }

  return v5 & accessibilityTraits;
}

@end