@interface PULivePhotoKeyFrameSelectionViewController
- (CGSize)preferredContentSize;
- (PULivePhotoKeyFrameSelectionViewController)initWithCoder:(id)coder;
- (PULivePhotoKeyFrameSelectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PULivePhotoKeyFrameSelectionViewControllerDelegate)delegate;
- (int64_t)preferredUserInterfaceStyle;
- (void)_updateButtonTitle;
- (void)setSelectionTitle:(id)title;
- (void)tapMakeKeyPhoto:(id)photo;
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
  makeKeyPhotoBtn = [(PULivePhotoKeyFrameSelectionViewController *)self makeKeyPhotoBtn];
  selectionTitle = [(PULivePhotoKeyFrameSelectionViewController *)self selectionTitle];
  [makeKeyPhotoBtn setTitle:selectionTitle forState:0];
}

- (void)tapMakeKeyPhoto:(id)photo
{
  delegate = [(PULivePhotoKeyFrameSelectionViewController *)self delegate];
  [delegate userDidRequestToMakeKeyPhoto:self];
}

- (void)setSelectionTitle:(id)title
{
  titleCopy = title;
  selectionTitle = self->_selectionTitle;
  if (selectionTitle != titleCopy)
  {
    v8 = titleCopy;
    selectionTitle = [selectionTitle isEqual:titleCopy];
    titleCopy = v8;
    if ((selectionTitle & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_selectionTitle;
      self->_selectionTitle = v6;

      selectionTitle = [(PULivePhotoKeyFrameSelectionViewController *)self _updateButtonTitle];
      titleCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](selectionTitle, titleCopy);
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
  makeKeyPhotoBtn = [(PULivePhotoKeyFrameSelectionViewController *)self makeKeyPhotoBtn];
  [makeKeyPhotoBtn intrinsicContentSize];
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
  photoEditingKeyPhotoSelectionNormalColor = [v3 photoEditingKeyPhotoSelectionNormalColor];
  [v4 setTitleColor:photoEditingKeyPhotoSelectionNormalColor forState:0];

  photoEditingToolbarButtonNormalFont = [v3 photoEditingToolbarButtonNormalFont];
  titleLabel = [v4 titleLabel];
  [titleLabel setFont:photoEditingToolbarButtonNormalFont];

  [v4 setContentEdgeInsets:{12.0, 12.0, 12.0, 12.0}];
  [(PULivePhotoKeyFrameSelectionViewController *)self setMakeKeyPhotoBtn:v4];
  view = [(PULivePhotoKeyFrameSelectionViewController *)self view];
  photoEditingPopoverBackgroundColor = [v3 photoEditingPopoverBackgroundColor];
  [view setBackgroundColor:photoEditingPopoverBackgroundColor];

  [view addSubview:v4];
  leadingAnchor = [v4 leadingAnchor];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v13 setActive:1];

  trailingAnchor = [v4 trailingAnchor];
  safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v17 setActive:1];

  topAnchor = [v4 topAnchor];
  safeAreaLayoutGuide3 = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v21 setActive:1];

  bottomAnchor = [v4 bottomAnchor];
  safeAreaLayoutGuide4 = [view safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v25 setActive:1];

  [(PULivePhotoKeyFrameSelectionViewController *)self _updateButtonTitle];
}

- (PULivePhotoKeyFrameSelectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = PULivePhotoKeyFrameSelectionViewController;
  v4 = [(PULivePhotoKeyFrameSelectionViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    commonInit_39315(v4);
  }

  return v5;
}

- (PULivePhotoKeyFrameSelectionViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PULivePhotoKeyFrameSelectionViewController;
  v3 = [(PULivePhotoKeyFrameSelectionViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    commonInit_39315(v3);
  }

  return v4;
}

@end