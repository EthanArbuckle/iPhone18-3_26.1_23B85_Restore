@interface PULivePhotoKeyFrameSelectionViewController
- (CGSize)preferredContentSize;
- (PULivePhotoKeyFrameSelectionViewController)initWithCoder:(id)a3;
- (PULivePhotoKeyFrameSelectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PULivePhotoKeyFrameSelectionViewControllerDelegate)delegate;
- (int64_t)preferredUserInterfaceStyle;
- (void)_updateButtonTitle;
- (void)setSelectionTitle:(id)a3;
- (void)tapMakeKeyPhoto:(id)a3;
- (void)viewDidLoad;
@end

@implementation PULivePhotoKeyFrameSelectionViewController

- (PULivePhotoKeyFrameSelectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateButtonTitle
{
  v4 = [(PULivePhotoKeyFrameSelectionViewController *)self makeKeyPhotoBtn];
  v3 = [(PULivePhotoKeyFrameSelectionViewController *)self selectionTitle];
  [v4 setTitle:v3 forState:0];
}

- (void)tapMakeKeyPhoto:(id)a3
{
  v4 = [(PULivePhotoKeyFrameSelectionViewController *)self delegate];
  [v4 userDidRequestToMakeKeyPhoto:self];
}

- (void)setSelectionTitle:(id)a3
{
  v4 = a3;
  selectionTitle = self->_selectionTitle;
  if (selectionTitle != v4)
  {
    v8 = v4;
    selectionTitle = [selectionTitle isEqual:v4];
    v4 = v8;
    if ((selectionTitle & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_selectionTitle;
      self->_selectionTitle = v6;

      selectionTitle = [(PULivePhotoKeyFrameSelectionViewController *)self _updateButtonTitle];
      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](selectionTitle, v4);
}

- (int64_t)preferredUserInterfaceStyle
{
  v2 = +[PUPhotoEditProtoSettings sharedInstance];
  if ([v2 lightModeEditor])
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (CGSize)preferredContentSize
{
  v2 = [(PULivePhotoKeyFrameSelectionViewController *)self makeKeyPhotoBtn];
  [v2 intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = PULivePhotoKeyFrameSelectionViewController;
  [(PULivePhotoKeyFrameSelectionViewController *)&v26 viewDidLoad];
  v3 = +[PUInterfaceManager currentTheme];
  v4 = [MEMORY[0x1E69DC738] buttonWithType:1];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 addTarget:self action:sel_tapMakeKeyPhoto_ forControlEvents:64];
  v5 = [v3 photoEditingKeyPhotoSelectionNormalColor];
  [v4 setTitleColor:v5 forState:0];

  v6 = [v3 photoEditingToolbarButtonNormalFont];
  v7 = [v4 titleLabel];
  [v7 setFont:v6];

  [v4 setContentEdgeInsets:{12.0, 12.0, 12.0, 12.0}];
  [(PULivePhotoKeyFrameSelectionViewController *)self setMakeKeyPhotoBtn:v4];
  v8 = [(PULivePhotoKeyFrameSelectionViewController *)self view];
  v9 = [v3 photoEditingPopoverBackgroundColor];
  [v8 setBackgroundColor:v9];

  [v8 addSubview:v4];
  v10 = [v4 leadingAnchor];
  v11 = [v8 safeAreaLayoutGuide];
  v12 = [v11 leadingAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  v14 = [v4 trailingAnchor];
  v15 = [v8 safeAreaLayoutGuide];
  v16 = [v15 trailingAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  v18 = [v4 topAnchor];
  v19 = [v8 safeAreaLayoutGuide];
  v20 = [v19 topAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  [v21 setActive:1];

  v22 = [v4 bottomAnchor];
  v23 = [v8 safeAreaLayoutGuide];
  v24 = [v23 bottomAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  [v25 setActive:1];

  [(PULivePhotoKeyFrameSelectionViewController *)self _updateButtonTitle];
}

- (PULivePhotoKeyFrameSelectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = PULivePhotoKeyFrameSelectionViewController;
  v4 = [(PULivePhotoKeyFrameSelectionViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    commonInit_39315(v4);
  }

  return v5;
}

- (PULivePhotoKeyFrameSelectionViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PULivePhotoKeyFrameSelectionViewController;
  v3 = [(PULivePhotoKeyFrameSelectionViewController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    commonInit_39315(v3);
  }

  return v4;
}

@end