@interface BFFBarButtonSpinnerView
- (BFFBarButtonSpinnerView)init;
@end

@implementation BFFBarButtonSpinnerView

- (BFFBarButtonSpinnerView)init
{
  v13.receiver = self;
  v13.super_class = BFFBarButtonSpinnerView;
  v2 = [(BFFBarButtonSpinnerView *)&v13 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = v2->_spinner;
    v2->_spinner = v3;

    [(UIActivityIndicatorView *)v2->_spinner frame];
    v6 = v5;
    v8 = v7;
    v9 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    [(UIActivityIndicatorView *)v2->_spinner setFrame:?];
    v11 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v9, v10, v6, v8}];
    [v11 addSubview:v2->_spinner];
    [(UIActivityIndicatorView *)v2->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)v2->_spinner pinToEdges:v11];
    [(BFFBarButtonSpinnerView *)v2 setCustomView:v11];
  }

  return v2;
}

@end