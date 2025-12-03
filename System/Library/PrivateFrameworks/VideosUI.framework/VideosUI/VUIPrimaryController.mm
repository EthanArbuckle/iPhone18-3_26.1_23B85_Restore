@interface VUIPrimaryController
- (void)viewDidLoad;
@end

@implementation VUIPrimaryController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = VUIPrimaryController;
  [(VUIPrimaryController *)&v5 viewDidLoad];
  view = [(VUIPrimaryController *)self view];
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [view setBackgroundColor:secondarySystemBackgroundColor];
}

@end