@interface PUAssetPickerActivityProgressViewController
- (PUAssetPickerActivityProgressViewController)init;
- (void)viewDidLoad;
@end

@implementation PUAssetPickerActivityProgressViewController

- (void)viewDidLoad
{
  v19[4] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = PUAssetPickerActivityProgressViewController;
  [(PUAssetPickerActivityProgressViewController *)&v18 viewDidLoad];
  view = [(PUAssetPickerActivityProgressViewController *)self view];
  [view addSubview:self->_progressView];
  [(UIProgressView *)self->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(UIProgressView *)self->_progressView leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v19[0] = v15;
  trailingAnchor = [(UIProgressView *)self->_progressView trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v5 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v19[1] = v5;
  bottomAnchor = [(UIProgressView *)self->_progressView bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v19[2] = v8;
  topAnchor = [(UIProgressView *)self->_progressView topAnchor];
  topAnchor2 = [view topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v19[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  [v13 activateConstraints:v12];
}

- (PUAssetPickerActivityProgressViewController)init
{
  v6.receiver = self;
  v6.super_class = PUAssetPickerActivityProgressViewController;
  v2 = [(PUAssetPickerActivityProgressViewController *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DCE48]) initWithProgressViewStyle:1];
    progressView = v2->_progressView;
    v2->_progressView = v3;
  }

  return v2;
}

@end