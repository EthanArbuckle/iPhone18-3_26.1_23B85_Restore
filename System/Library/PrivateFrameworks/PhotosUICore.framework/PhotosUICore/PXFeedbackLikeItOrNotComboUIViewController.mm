@interface PXFeedbackLikeItOrNotComboUIViewController
- (PXFeedbackLikeItOrNotComboUIViewController)initWithDelegate:(id)a3;
- (void)_dislikedIt:(id)a3;
- (void)_doFileRadar:(id)a3;
- (void)_fileRadar:(id)a3;
- (void)_likedIt:(id)a3;
- (void)_provideFeedback:(id)a3;
- (void)finishWithSuccess:(BOOL)a3;
- (void)setShowsActivityIndicator:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PXFeedbackLikeItOrNotComboUIViewController

- (void)finishWithSuccess:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXFeedbackLikeItOrNotComboUIViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(PXFeedbackLikeItOrNotComboUIViewController *)self delegate];
    [v7 userDidFinish:v3];
  }

  else
  {

    [(PXFeedbackLikeItOrNotComboUIViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)setShowsActivityIndicator:(BOOL)a3
{
  activityIndicatorView = self->__activityIndicatorView;
  if (a3)
  {
    [(UIActivityIndicatorView *)activityIndicatorView startAnimating];
  }

  else
  {
    [(UIActivityIndicatorView *)activityIndicatorView stopAnimating];
  }

  v5 = [MEMORY[0x1E695DFD0] currentRunLoop];
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.00999999978];
  [v5 runUntilDate:v4];
}

- (void)viewDidLoad
{
  v61[1] = *MEMORY[0x1E69E9840];
  v60.receiver = self;
  v60.super_class = PXFeedbackLikeItOrNotComboUIViewController;
  [(PXFeedbackLikeItOrNotComboUIViewController *)&v60 viewDidLoad];
  v3 = PXLocalizedStringFromTable(@"FeedbackLikeItOrNotViewController.title", @"PXFeedbackCollection");
  [(PXFeedbackLikeItOrNotComboUIViewController *)self setTitle:v3];

  v4 = objc_opt_new();
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = objc_opt_new();
  v6 = [(PXFeedbackLikeItOrNotComboUIViewController *)self delegate];
  v7 = [v6 longTitleText];
  [v5 setText:v7];

  [v5 setNumberOfLines:2];
  [v5 setTextAlignment:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [MEMORY[0x1E69DB878] systemFontOfSize:18.0];
  [v5 setFont:v8];

  [v4 addSubview:v5];
  v9 = [MEMORY[0x1E69DC738] buttonWithType:0];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 addTarget:self action:sel__likedIt_ forControlEvents:64];
  [v9 setTitle:@"😊" forState:0];
  v10 = [MEMORY[0x1E69DB878] systemFontOfSize:64.0];
  v11 = [v9 titleLabel];
  [v11 setFont:v10];

  v12 = [v9 tintColor];
  [v9 setTitleColor:v12 forState:0];

  [v9 setFrame:{80.0, 210.0, 160.0, 40.0}];
  [v4 addSubview:v9];
  v13 = [MEMORY[0x1E69DC738] buttonWithType:0];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v13 addTarget:self action:sel__dislikedIt_ forControlEvents:64];
  [v13 setTitle:@"😕" forState:0];
  v14 = [MEMORY[0x1E69DB878] systemFontOfSize:64.0];
  v15 = [v13 titleLabel];
  [v15 setFont:v14];

  v16 = [v13 tintColor];
  [v13 setTitleColor:v16 forState:0];

  [v13 setFrame:{80.0, 210.0, 160.0, 40.0}];
  [v4 addSubview:v13];
  v17 = [MEMORY[0x1E69DC738] buttonWithType:1];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v17 addTarget:self action:sel__fileRadar_ forControlEvents:64];
  [v17 setTitle:@"File Radar" forState:0];
  v18 = [v17 tintColor];
  [v17 setTitleColor:v18 forState:0];

  v19 = [MEMORY[0x1E69DB878] systemFontOfSize:18.0];
  v20 = [v17 titleLabel];
  [v20 setFont:v19];

  v21 = [v17 titleLabel];
  [v21 setTextAlignment:1];

  v22 = [v17 titleLabel];
  [v22 setLineBreakMode:0];

  [v4 addSubview:v17];
  v23 = [MEMORY[0x1E69DC738] buttonWithType:1];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v23 addTarget:self action:sel__provideFeedback_ forControlEvents:64];
  [v23 setTitle:@"More Feedback" forState:0];
  v24 = [v23 tintColor];
  [v23 setTitleColor:v24 forState:0];

  v25 = [MEMORY[0x1E69DB878] systemFontOfSize:18.0];
  v26 = [v23 titleLabel];
  [v26 setFont:v25];

  v27 = [v23 titleLabel];
  [v27 setTextAlignment:1];

  v28 = [v23 titleLabel];
  [v28 setLineBreakMode:0];

  [v4 addSubview:v23];
  v59 = self;
  v29 = [(PXFeedbackLikeItOrNotComboUIViewController *)self delegate];
  LOBYTE(v26) = [v29 shouldDisplaySecondaryFeedbackButtons];

  if ((v26 & 1) == 0)
  {
    [v17 setHidden:1];
    [v23 setHidden:1];
  }

  v30 = _NSDictionaryOfVariableBindings(&cfstr_LabelYesbutton.isa, v5, v9, v13, v17, v23, 0);
  v31 = [MEMORY[0x1E696ACD8] constraintWithItem:v5 attribute:3 relatedBy:0 toItem:v4 attribute:10 multiplier:1.0 constant:-100.0];
  [v4 addConstraint:v31];

  v32 = [MEMORY[0x1E696ACD8] constraintWithItem:v5 attribute:9 relatedBy:0 toItem:v4 attribute:9 multiplier:1.0 constant:0.0];
  [v4 addConstraint:v32];

  v33 = [MEMORY[0x1E696ACD8] constraintWithItem:v9 attribute:2 relatedBy:-1 toItem:v4 attribute:9 multiplier:1.0 constant:-20.0];
  [v4 addConstraint:v33];

  v34 = [MEMORY[0x1E696ACD8] constraintWithItem:v13 attribute:1 relatedBy:-1 toItem:v4 attribute:9 multiplier:1.0 constant:20.0];
  [v4 addConstraint:v34];

  v35 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[label]-(50)-[yesButton]" options:0 metrics:&unk_1F190E6F8 views:v30];
  [v4 addConstraints:v35];
  v36 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[label]-(50)-[noButton]" options:0 metrics:&unk_1F190E720 views:v30];

  [v4 addConstraints:v36];
  v37 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[noButton]-(>=50)-[fileRadarButton(>=20)]" options:0 metrics:&unk_1F190E748 views:v30];

  [v4 addConstraints:v37];
  v38 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[yesButton]-(>=50)-[provideFeedbackButton(>=20)]" options:0 metrics:&unk_1F190E770 views:v30];

  [v4 addConstraints:v38];
  v39 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-[fileRadarButton(>=20)]-(>=10)-[provideFeedbackButton(>=20)]-|" options:0 metrics:&unk_1F190E798 views:v30];

  [v4 addConstraints:v39];
  v40 = [MEMORY[0x1E696ACD8] constraintWithItem:v17 attribute:4 relatedBy:0 toItem:v4 attribute:4 multiplier:1.0 constant:-50.0];
  [v4 addConstraint:v40];

  v41 = [MEMORY[0x1E696ACD8] constraintWithItem:v23 attribute:4 relatedBy:0 toItem:v17 attribute:4 multiplier:1.0 constant:0.0];
  [v4 addConstraint:v41];

  v42 = [(PXFeedbackLikeItOrNotComboUIViewController *)v59 view];
  v43 = [MEMORY[0x1E69DC888] whiteColor];
  [v42 setBackgroundColor:v43];

  [v42 addSubview:v4];
  v44 = _NSDictionaryOfVariableBindings(&cfstr_Topcontainervi.isa, v4, 0);
  v45 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-[topContainerView]-|" options:0 metrics:0 views:v44];
  [v42 addConstraints:v45];
  v46 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-[topContainerView]-|" options:0 metrics:0 views:v44];

  [v42 addConstraints:v46];
  v47 = [(PXFeedbackLikeItOrNotComboUIViewController *)v59 _activityIndicatorView];
  [v42 addSubview:v47];

  v48 = [MEMORY[0x1E695DF70] array];
  v49 = MEMORY[0x1E696ACD8];
  v50 = [(PXFeedbackLikeItOrNotComboUIViewController *)v59 _activityIndicatorView];
  v51 = [v49 constraintWithItem:v50 attribute:9 relatedBy:0 toItem:v42 attribute:9 multiplier:1.0 constant:0.0];
  [v48 addObject:v51];

  v52 = MEMORY[0x1E696ACD8];
  v53 = [(PXFeedbackLikeItOrNotComboUIViewController *)v59 _activityIndicatorView];
  v54 = [v52 constraintWithItem:v53 attribute:10 relatedBy:0 toItem:v42 attribute:10 multiplier:1.0 constant:0.0];
  [v48 addObject:v54];

  [v42 addConstraints:v48];
  v55 = PXLocalizedStringFromTable(@"FeedbackCollectionPanel.cancelButton.title", @"PXFeedbackCollection");
  v56 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v55 style:0 target:v59 action:sel_cancelFeedback_];
  v61[0] = v56;
  v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:1];
  v58 = [(PXFeedbackLikeItOrNotComboUIViewController *)v59 navigationItem];
  [v58 setLeftBarButtonItems:v57];
}

- (void)_provideFeedback:(id)a3
{
  v4 = [(PXFeedbackLikeItOrNotComboUIViewController *)self delegate];
  v14 = [v4 positiveFeedbackKeys];

  v5 = [(PXFeedbackLikeItOrNotComboUIViewController *)self delegate];
  v6 = [v5 negativeFeedbackKeys];

  v7 = [(PXFeedbackLikeItOrNotComboUIViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [(PXFeedbackLikeItOrNotComboUIViewController *)self delegate];
    v9 = [v8 wantsCustomFeedbackSection];
  }

  else
  {
    v9 = 0;
  }

  v10 = [PXFeedbackFormUIViewController alloc];
  v11 = [(PXFeedbackLikeItOrNotComboUIViewController *)self delegate];
  v12 = [(PXFeedbackFormUIViewController *)v10 initWithDelegate:v11 positiveKeys:v14 negativeKeys:v6 wantsCustomFeedbackSection:v9];

  v13 = [(PXFeedbackLikeItOrNotComboUIViewController *)self navigationController];
  [v13 pushViewController:v12 animated:1];
}

- (void)_fileRadar:(id)a3
{
  v4 = a3;
  v5 = [(PXFeedbackLikeItOrNotComboUIViewController *)self delegate];
  v6 = [v5 viewTitleForRadar];

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __57__PXFeedbackLikeItOrNotComboUIViewController__fileRadar___block_invoke;
  v20[3] = &unk_1E772FB30;
  v20[4] = &v21;
  v7 = [MEMORY[0x1E69DC648] actionWithTitle:@"Cancel" style:1 handler:v20];
  v8 = MEMORY[0x1E69DC648];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __57__PXFeedbackLikeItOrNotComboUIViewController__fileRadar___block_invoke_2;
  v16 = &unk_1E772FB58;
  v19 = &v21;
  v17 = self;
  v9 = v6;
  v18 = v9;
  v10 = [v8 actionWithTitle:@"OK" style:0 handler:&v13];
  if ((v22[3] & 1) == 0)
  {
    v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Note" message:@"This will take a snapshot of the details of your Photo Library (such as names and locations preferredStyle:{but no actual assets).\nBy submitting this feedback you agree to share the details of snapshot with Apple.\nThis may take a few minutes...", 1, v13, v14, v15, v16, v17}];
    [v11 addAction:v7];
    [v11 addAction:v10];
    v12 = [(PXFeedbackLikeItOrNotComboUIViewController *)self navigationController];
    [v12 presentViewController:v11 animated:1 completion:0];
  }

  _Block_object_dispose(&v21, 8);
}

- (void)_doFileRadar:(id)a3
{
  v4 = a3;
  [(PXFeedbackLikeItOrNotComboUIViewController *)self setShowsActivityIndicator:1];
  v5 = [(PXFeedbackLikeItOrNotComboUIViewController *)self view];
  [v5 setUserInteractionEnabled:0];

  v6 = [(PXFeedbackLikeItOrNotComboUIViewController *)self view];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__PXFeedbackLikeItOrNotComboUIViewController__doFileRadar___block_invoke;
  v7[3] = &unk_1E774BE98;
  v7[4] = self;
  [PXFeedbackTapToRadarRequestHandler fileRadarFromSourceView:v6 viewTitleForRadar:v4 completionHandler:v7];
}

void __59__PXFeedbackLikeItOrNotComboUIViewController__doFileRadar___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  [*(a1 + 32) setShowsActivityIndicator:0];
  v3 = [*(a1 + 32) view];
  [v3 setUserInteractionEnabled:1];

  v4 = v12;
  if (v12)
  {
    v5 = [v12 description];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error Code = %ld", objc_msgSend(v12, "code")];
    }

    v8 = v7;

    v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Error while capturing metadata" message:v8 preferredStyle:1];
    v10 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:0];
    [v9 addAction:v10];

    v11 = [*(a1 + 32) navigationController];
    [v11 presentViewController:v9 animated:1 completion:0];

    v4 = v12;
  }
}

- (void)_dislikedIt:(id)a3
{
  v3 = [(PXFeedbackLikeItOrNotComboUIViewController *)self delegate];
  [v3 userIndicatedDislike];
}

- (void)_likedIt:(id)a3
{
  v3 = [(PXFeedbackLikeItOrNotComboUIViewController *)self delegate];
  [v3 userIndicatedLike];
}

- (PXFeedbackLikeItOrNotComboUIViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PXFeedbackLikeItOrNotComboUIViewController;
  v5 = [(PXFeedbackLikeItOrNotComboUIViewController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(PXFeedbackLikeItOrNotComboUIViewController *)v5 setDelegate:v4];
    v7 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    activityIndicatorView = v6->__activityIndicatorView;
    v6->__activityIndicatorView = v7;

    [(UIActivityIndicatorView *)v6->__activityIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v6;
}

@end