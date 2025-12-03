@interface WTProofreadCandidateBarView
- (CGSize)intrinsicContentSize;
- (WTProofreadCandidateBarView)init;
- (void)setSuggestionCount:(unint64_t)count;
@end

@implementation WTProofreadCandidateBarView

- (WTProofreadCandidateBarView)init
{
  v3 = objc_alloc(MEMORY[0x1E69DD568]);
  mEMORY[0x1E69DD578] = [MEMORY[0x1E69DD578] sharedLight];
  v5 = [v3 initWithLightSource:mEMORY[0x1E69DD578]];
  v15.receiver = self;
  v15.super_class = WTProofreadCandidateBarView;
  v6 = [(WTProofreadCandidateBarView *)&v15 initWithEffect:v5];

  if (v6)
  {
    [(WTProofreadCandidateBarView *)v6 setUserInteractionEnabled:0];
    [(WTProofreadCandidateBarView *)v6 setExclusiveTouch:0];
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"text.magnifyingglass"];
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    badgeView = v6->_badgeView;
    v6->_badgeView = v8;

    v10 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
    [(UILabel *)v6->_badgeView setFont:v10];

    v11 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v7];
    [v11 setContentMode:1];
    contentView = [(WTProofreadCandidateBarView *)v6 contentView];
    [contentView addSubview:v11];

    contentView2 = [(WTProofreadCandidateBarView *)v6 contentView];
    [contentView2 addSubview:v6->_badgeView];

    [(WTProofreadCandidateBarView *)v6 setFrame:0.0, 0.0, 50.0, 48.0];
    [v11 setFrame:{12.0, 12.0, 24.0, 24.0}];
    [(UILabel *)v6->_badgeView setFrame:30.0, 6.0, 14.0, 16.0];
  }

  return v6;
}

- (void)setSuggestionCount:(unint64_t)count
{
  v4 = MEMORY[0x1E696ADA0];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
  v5 = [v4 localizedStringFromNumber:v7 numberStyle:0];
  badgeView = [(WTProofreadCandidateBarView *)self badgeView];
  [badgeView setText:v5];
}

- (CGSize)intrinsicContentSize
{
  [(WTProofreadCandidateBarView *)self frame];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

@end