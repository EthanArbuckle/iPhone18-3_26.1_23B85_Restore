@interface TUIWritingToolCandidateCell
- (id)cellBackgroundColor;
- (id)cellBackgroundImage;
@end

@implementation TUIWritingToolCandidateCell

- (id)cellBackgroundImage
{
  isHighlighted = [(TUIWritingToolCandidateCell *)self isHighlighted];
  style = [(TUICandidateBaseCell *)self style];
  v5 = style;
  if (isHighlighted)
  {
    [style highlightedCellBackgroundImage];
  }

  else
  {
    [style cellBackgroundImage];
  }
  v6 = ;

  return v6;
}

- (id)cellBackgroundColor
{
  isHighlighted = [(TUIWritingToolCandidateCell *)self isHighlighted];
  style = [(TUICandidateBaseCell *)self style];
  v5 = style;
  if (isHighlighted)
  {
    [style highlightedBackgroundColor];
  }

  else
  {
    [style cellBackgroundColor];
  }
  v6 = ;

  return v6;
}

@end