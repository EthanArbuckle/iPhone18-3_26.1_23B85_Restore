@interface PSBarButtonSpinnerView
- (PSBarButtonSpinnerView)init;
@end

@implementation PSBarButtonSpinnerView

- (PSBarButtonSpinnerView)init
{
  v22[4] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = PSBarButtonSpinnerView;
  v2 = [(PSBarButtonSpinnerView *)&v21 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = v2->_spinner;
    v2->_spinner = v3;

    [(UIActivityIndicatorView *)v2->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 addSubview:v2->_spinner];
    v15 = MEMORY[0x1E696ACD8];
    v20 = [(UIActivityIndicatorView *)v2->_spinner centerXAnchor];
    v19 = [v5 centerXAnchor];
    v18 = [v20 constraintEqualToAnchor:v19];
    v22[0] = v18;
    v17 = [(UIActivityIndicatorView *)v2->_spinner centerYAnchor];
    v16 = [v5 centerYAnchor];
    v6 = [v17 constraintEqualToAnchor:v16];
    v22[1] = v6;
    v7 = [v5 widthAnchor];
    v8 = [(UIActivityIndicatorView *)v2->_spinner widthAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    v22[2] = v9;
    v10 = [v5 heightAnchor];
    v11 = [(UIActivityIndicatorView *)v2->_spinner heightAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v22[3] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
    [v15 activateConstraints:v13];

    [(PSBarButtonSpinnerView *)v2 setCustomView:v5];
  }

  return v2;
}

@end