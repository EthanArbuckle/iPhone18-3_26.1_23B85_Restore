@interface TUIWritingToolCandidateCell
- (id)cellBackgroundColor;
- (id)cellBackgroundImage;
@end

@implementation TUIWritingToolCandidateCell

- (id)cellBackgroundImage
{
  v3 = [(TUIWritingToolCandidateCell *)self isHighlighted];
  v4 = [(TUICandidateBaseCell *)self style];
  v5 = v4;
  if (v3)
  {
    [v4 highlightedCellBackgroundImage];
  }

  else
  {
    [v4 cellBackgroundImage];
  }
  v6 = ;

  return v6;
}

- (id)cellBackgroundColor
{
  v3 = [(TUIWritingToolCandidateCell *)self isHighlighted];
  v4 = [(TUICandidateBaseCell *)self style];
  v5 = v4;
  if (v3)
  {
    [v4 highlightedBackgroundColor];
  }

  else
  {
    [v4 cellBackgroundColor];
  }
  v6 = ;

  return v6;
}

@end