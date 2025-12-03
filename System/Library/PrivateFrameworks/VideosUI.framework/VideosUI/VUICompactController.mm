@interface VUICompactController
- (void)viewDidLoad;
@end

@implementation VUICompactController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = VUICompactController;
  [(VUICompactController *)&v5 viewDidLoad];
  view = [(VUICompactController *)self view];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];
}

@end