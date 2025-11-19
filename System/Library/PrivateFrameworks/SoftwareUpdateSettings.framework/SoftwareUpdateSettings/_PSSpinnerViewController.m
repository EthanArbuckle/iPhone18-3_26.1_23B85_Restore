@interface _PSSpinnerViewController
- (void)loadView;
- (void)updateViewConstraints;
@end

@implementation _PSSpinnerViewController

- (void)loadView
{
  v12 = self;
  v11 = a2;
  v10.receiver = self;
  v10.super_class = _PSSpinnerViewController;
  [(_PSSpinnerViewController *)&v10 loadView];
  v7 = [(_PSSpinnerViewController *)v12 view];
  v6 = [MEMORY[0x277D75348] tableCellGroupedBackgroundColor];
  [v7 setBackgroundColor:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  v2 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:10];
  spinner = v12->_spinner;
  v12->_spinner = v2;
  *&v4 = MEMORY[0x277D82BD8](spinner).n128_u64[0];
  [(UIActivityIndicatorView *)v12->_spinner setTranslatesAutoresizingMaskIntoConstraints:0, v4];
  [(UIActivityIndicatorView *)v12->_spinner startAnimating];
  v8 = [(_PSSpinnerViewController *)v12 view];
  [v8 addSubview:v12->_spinner];
  *&v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  v9 = [(_PSSpinnerViewController *)v12 view];
  [v9 setNeedsUpdateConstraints];
  MEMORY[0x277D82BD8](v9);
}

- (void)updateViewConstraints
{
  v15 = self;
  v14 = a2;
  v13.receiver = self;
  v13.super_class = _PSSpinnerViewController;
  [(_PSSpinnerViewController *)&v13 updateViewConstraints];
  v7 = [(_PSSpinnerViewController *)v15 view];
  v4 = MEMORY[0x277CCAAD0];
  spinner = v15->_spinner;
  v6 = [(_PSSpinnerViewController *)v15 view];
  v5 = [v4 constraintWithItem:spinner attribute:9 relatedBy:? toItem:? attribute:? multiplier:? constant:?];
  [v7 addConstraint:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  *&v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v12 = [(_PSSpinnerViewController *)v15 view];
  v9 = MEMORY[0x277CCAAD0];
  v8 = v15->_spinner;
  v11 = [(_PSSpinnerViewController *)v15 view];
  v10 = [v9 constraintWithItem:v8 attribute:10 relatedBy:0 toItem:1.0 attribute:0.0 multiplier:? constant:?];
  [v12 addConstraint:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
}

@end