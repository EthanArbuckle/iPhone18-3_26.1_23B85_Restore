@interface TSIDSSimTransferringViewController
- (TSIDSSimTransferringViewController)initWithTitle:(id)a3 subtitle:(id)a4;
- (TSSIMSetupFlowDelegate)delegate;
- (void)dealloc;
@end

@implementation TSIDSSimTransferringViewController

- (TSIDSSimTransferringViewController)initWithTitle:(id)a3 subtitle:(id)a4
{
  v47[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v45.receiver = self;
  v45.super_class = TSIDSSimTransferringViewController;
  v8 = [(TSIDSSimTransferringViewController *)&v45 init];
  v9 = v8;
  if (v8)
  {
    [(TSIDSSimTransferringViewController *)v8 setTitle:v6];
    [(TSIDSSimTransferringViewController *)v9 setSubtitle:v7];
    v10 = objc_alloc(MEMORY[0x277D756B8]);
    v11 = [v10 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v42 = v6;
    placeHolderLabel = v9->_placeHolderLabel;
    v9->_placeHolderLabel = v11;

    [(UILabel *)v9->_placeHolderLabel setText:@" "];
    [(UILabel *)v9->_placeHolderLabel setNumberOfLines:0];
    [(UILabel *)v9->_placeHolderLabel setTextAlignment:1];
    [(UILabel *)v9->_placeHolderLabel setHidden:1];
    [(UILabel *)v9->_placeHolderLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    indicatorView = v9->_indicatorView;
    v9->_indicatorView = v13;

    [(UIActivityIndicatorView *)v9->_indicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    CGAffineTransformMakeScale(&v44, 1.5, 1.5);
    v15 = v9->_indicatorView;
    v43 = v44;
    [(UIActivityIndicatorView *)v15 setTransform:&v43];
    [(UIActivityIndicatorView *)v9->_indicatorView startAnimating];
    v41 = v7;
    v16 = objc_alloc(MEMORY[0x277D75A68]);
    v47[0] = v9->_placeHolderLabel;
    v47[1] = v9->_indicatorView;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
    v18 = [v16 initWithArrangedSubviews:v17];
    stackView = v9->_stackView;
    v9->_stackView = v18;

    [(UIStackView *)v9->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v9->_stackView setAxis:1];
    [(UIStackView *)v9->_stackView setSpacing:16.0];
    [(UIStackView *)v9->_stackView setAlignment:3];
    v20 = [(TSIDSSimTransferringViewController *)v9 contentView];
    [v20 addSubview:v9->_stackView];

    [(TSIDSSimTransferringViewController *)v9 setDismissalType:0];
    v34 = MEMORY[0x277CCAAD0];
    v39 = [(UIStackView *)v9->_stackView topAnchor];
    v40 = [(TSIDSSimTransferringViewController *)v9 contentView];
    v38 = [v40 mainContentGuide];
    v37 = [v38 topAnchor];
    v36 = [v39 constraintGreaterThanOrEqualToAnchor:v37];
    v46[0] = v36;
    v33 = [(UIStackView *)v9->_stackView centerXAnchor];
    v35 = [(TSIDSSimTransferringViewController *)v9 contentView];
    v21 = [v35 mainContentGuide];
    v22 = [v21 centerXAnchor];
    v23 = [v33 constraintEqualToAnchor:v22];
    v46[1] = v23;
    v24 = [(UIStackView *)v9->_stackView centerYAnchor];
    v25 = [(TSIDSSimTransferringViewController *)v9 contentView];
    v26 = [v25 mainContentGuide];
    v27 = [v26 centerYAnchor];
    v28 = [v24 constraintEqualToAnchor:v27];
    v46[2] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
    [v34 activateConstraints:v29];

    v7 = v41;
    v6 = v42;

    v30 = v9;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)dealloc
{
  [(UIActivityIndicatorView *)self->_indicatorView stopAnimating];
  v3.receiver = self;
  v3.super_class = TSIDSSimTransferringViewController;
  [(TSIDSSimTransferringViewController *)&v3 dealloc];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end