@interface VUISecondaryController
- (void)viewDidLoad;
@end

@implementation VUISecondaryController

- (void)viewDidLoad
{
  v26[4] = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = VUISecondaryController;
  [(VUISecondaryController *)&v25 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E69DD298]);
  v4 = [MEMORY[0x1E69DC730] effectWithStyle:8];
  v5 = [v3 initWithEffect:v4];

  view = [(VUISecondaryController *)self view];
  [view addSubview:v5];

  v17 = MEMORY[0x1E696ACD8];
  topAnchor = [v5 topAnchor];
  view2 = [(VUISecondaryController *)self view];
  topAnchor2 = [view2 topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[0] = v21;
  leadingAnchor = [v5 leadingAnchor];
  view3 = [(VUISecondaryController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v26[1] = v16;
  bottomAnchor = [v5 bottomAnchor];
  view4 = [(VUISecondaryController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v26[2] = v10;
  topAnchor3 = [v5 topAnchor];
  view5 = [(VUISecondaryController *)self view];
  topAnchor4 = [view5 topAnchor];
  v14 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v26[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
  [v17 activateConstraints:v15];
}

@end