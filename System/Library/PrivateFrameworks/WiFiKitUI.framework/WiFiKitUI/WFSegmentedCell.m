@interface WFSegmentedCell
- (UISegmentedControl)segmentedControl;
- (void)_segmentedControlDidChange:(id)a3;
- (void)addSubview:(id)a3;
- (void)awakeFromNib;
@end

@implementation WFSegmentedCell

- (void)awakeFromNib
{
  v4.receiver = self;
  v4.super_class = WFSegmentedCell;
  [(WFSegmentedCell *)&v4 awakeFromNib];
  v3 = [(WFSegmentedCell *)self segmentedControl];
  [v3 addTarget:self action:sel__segmentedControlDidChange_ forControlEvents:4096];
}

- (void)_segmentedControlDidChange:(id)a3
{
  v6 = a3;
  v4 = [(WFSegmentedCell *)self handler];

  if (v4)
  {
    v5 = [(WFSegmentedCell *)self handler];
    v5[2](v5, [v6 selectedSegmentIndex]);
  }
}

- (void)addSubview:(id)a3
{
  v4 = a3;
  [v4 frame];
  Height = CGRectGetHeight(v10);
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 scale];
  v8 = Height * v7;

  if (v8 != 1.0)
  {
    v9.receiver = self;
    v9.super_class = WFSegmentedCell;
    [(WFSegmentedCell *)&v9 addSubview:v4];
  }
}

- (UISegmentedControl)segmentedControl
{
  WeakRetained = objc_loadWeakRetained(&self->_segmentedControl);

  return WeakRetained;
}

@end