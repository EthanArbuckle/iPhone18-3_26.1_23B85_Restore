@interface _PSSpinnerViewController
- (void)loadView;
- (void)updateViewConstraints;
@end

@implementation _PSSpinnerViewController

- (void)loadView
{
  selfCopy = self;
  v11 = a2;
  v10.receiver = self;
  v10.super_class = _PSSpinnerViewController;
  [(_PSSpinnerViewController *)&v10 loadView];
  view = [(_PSSpinnerViewController *)selfCopy view];
  tableCellGroupedBackgroundColor = [MEMORY[0x277D75348] tableCellGroupedBackgroundColor];
  [view setBackgroundColor:?];
  MEMORY[0x277D82BD8](tableCellGroupedBackgroundColor);
  MEMORY[0x277D82BD8](view);
  v2 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:10];
  spinner = selfCopy->_spinner;
  selfCopy->_spinner = v2;
  *&v4 = MEMORY[0x277D82BD8](spinner).n128_u64[0];
  [(UIActivityIndicatorView *)selfCopy->_spinner setTranslatesAutoresizingMaskIntoConstraints:0, v4];
  [(UIActivityIndicatorView *)selfCopy->_spinner startAnimating];
  view2 = [(_PSSpinnerViewController *)selfCopy view];
  [view2 addSubview:selfCopy->_spinner];
  *&v5 = MEMORY[0x277D82BD8](view2).n128_u64[0];
  view3 = [(_PSSpinnerViewController *)selfCopy view];
  [view3 setNeedsUpdateConstraints];
  MEMORY[0x277D82BD8](view3);
}

- (void)updateViewConstraints
{
  selfCopy = self;
  v14 = a2;
  v13.receiver = self;
  v13.super_class = _PSSpinnerViewController;
  [(_PSSpinnerViewController *)&v13 updateViewConstraints];
  view = [(_PSSpinnerViewController *)selfCopy view];
  v4 = MEMORY[0x277CCAAD0];
  spinner = selfCopy->_spinner;
  view2 = [(_PSSpinnerViewController *)selfCopy view];
  v5 = [v4 constraintWithItem:spinner attribute:9 relatedBy:? toItem:? attribute:? multiplier:? constant:?];
  [view addConstraint:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](view2);
  *&v2 = MEMORY[0x277D82BD8](view).n128_u64[0];
  view3 = [(_PSSpinnerViewController *)selfCopy view];
  v9 = MEMORY[0x277CCAAD0];
  v8 = selfCopy->_spinner;
  view4 = [(_PSSpinnerViewController *)selfCopy view];
  v10 = [v9 constraintWithItem:v8 attribute:10 relatedBy:0 toItem:1.0 attribute:0.0 multiplier:? constant:?];
  [view3 addConstraint:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](view4);
  MEMORY[0x277D82BD8](view3);
}

@end