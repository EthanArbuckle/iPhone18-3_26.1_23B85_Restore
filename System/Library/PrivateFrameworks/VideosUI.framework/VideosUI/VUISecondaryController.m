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

  v6 = [(VUISecondaryController *)self view];
  [v6 addSubview:v5];

  v17 = MEMORY[0x1E696ACD8];
  v23 = [v5 topAnchor];
  v24 = [(VUISecondaryController *)self view];
  v22 = [v24 topAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v26[0] = v21;
  v19 = [v5 leadingAnchor];
  v20 = [(VUISecondaryController *)self view];
  v18 = [v20 leadingAnchor];
  v16 = [v19 constraintEqualToAnchor:v18];
  v26[1] = v16;
  v7 = [v5 bottomAnchor];
  v8 = [(VUISecondaryController *)self view];
  v9 = [v8 bottomAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v26[2] = v10;
  v11 = [v5 topAnchor];
  v12 = [(VUISecondaryController *)self view];
  v13 = [v12 topAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v26[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
  [v17 activateConstraints:v15];
}

@end