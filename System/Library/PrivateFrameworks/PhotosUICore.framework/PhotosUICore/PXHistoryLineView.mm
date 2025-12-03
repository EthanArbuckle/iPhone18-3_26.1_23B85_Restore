@interface PXHistoryLineView
- (PXHistoryLineView)initWithHistoryLine:(id)line;
- (void)layoutSubviews;
- (void)setHistoryLine:(id)line;
@end

@implementation PXHistoryLineView

- (void)setHistoryLine:(id)line
{
  lineCopy = line;
  v5 = [lineCopy objectForKeyedSubscript:@"state"];
  [(PXStateBadgeView *)self->_stateBadgeView setState:v5];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [lineCopy objectForKeyedSubscript:@"stage"];
  v8 = [lineCopy objectForKeyedSubscript:@"agent"];
  v9 = [lineCopy objectForKeyedSubscript:@"reason"];

  v10 = [v6 stringWithFormat:@"%@ (%@): %@", v7, v8, v9];

  [(UILabel *)self->_reasonLabel setText:v10];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PXHistoryLineView;
  [(PXHistoryLineView *)&v4 layoutSubviews];
  [(PXStateBadgeView *)self->_stateBadgeView setFrame:2.0, 3.0, 16.0, 16.0];
  [(UILabel *)self->_reasonLabel setFrame:22.0, 0.0, 300.0, 38.0];
  v3 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
  [(UILabel *)self->_reasonLabel setFont:v3];
}

- (PXHistoryLineView)initWithHistoryLine:(id)line
{
  lineCopy = line;
  v11.receiver = self;
  v11.super_class = PXHistoryLineView;
  v5 = [(PXHistoryLineView *)&v11 init];
  if (v5)
  {
    v6 = [[PXStateBadgeView alloc] initWithState:0];
    stateBadgeView = v5->_stateBadgeView;
    v5->_stateBadgeView = v6;

    [(PXHistoryLineView *)v5 addSubview:v5->_stateBadgeView];
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    reasonLabel = v5->_reasonLabel;
    v5->_reasonLabel = v8;

    [(UILabel *)v5->_reasonLabel setNumberOfLines:2];
    [(PXHistoryLineView *)v5 addSubview:v5->_reasonLabel];
    [(PXHistoryLineView *)v5 setHistoryLine:lineCopy];
  }

  return v5;
}

@end