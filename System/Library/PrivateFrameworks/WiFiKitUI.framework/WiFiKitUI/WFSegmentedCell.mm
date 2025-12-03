@interface WFSegmentedCell
- (UISegmentedControl)segmentedControl;
- (void)_segmentedControlDidChange:(id)change;
- (void)addSubview:(id)subview;
- (void)awakeFromNib;
@end

@implementation WFSegmentedCell

- (void)awakeFromNib
{
  v4.receiver = self;
  v4.super_class = WFSegmentedCell;
  [(WFSegmentedCell *)&v4 awakeFromNib];
  segmentedControl = [(WFSegmentedCell *)self segmentedControl];
  [segmentedControl addTarget:self action:sel__segmentedControlDidChange_ forControlEvents:4096];
}

- (void)_segmentedControlDidChange:(id)change
{
  changeCopy = change;
  handler = [(WFSegmentedCell *)self handler];

  if (handler)
  {
    handler2 = [(WFSegmentedCell *)self handler];
    handler2[2](handler2, [changeCopy selectedSegmentIndex]);
  }
}

- (void)addSubview:(id)subview
{
  subviewCopy = subview;
  [subviewCopy frame];
  Height = CGRectGetHeight(v10);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v8 = Height * v7;

  if (v8 != 1.0)
  {
    v9.receiver = self;
    v9.super_class = WFSegmentedCell;
    [(WFSegmentedCell *)&v9 addSubview:subviewCopy];
  }
}

- (UISegmentedControl)segmentedControl
{
  WeakRetained = objc_loadWeakRetained(&self->_segmentedControl);

  return WeakRetained;
}

@end