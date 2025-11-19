@interface PUPopoverController
- (void)presentPopoverFromBarButtonItem:(id)a3 permittedArrowDirections:(unint64_t)a4 animated:(BOOL)a5;
@end

@implementation PUPopoverController

- (void)presentPopoverFromBarButtonItem:(id)a3 permittedArrowDirections:(unint64_t)a4 animated:(BOOL)a5
{
  v6.receiver = self;
  v6.super_class = PUPopoverController;
  [(PUPopoverController *)&v6 presentPopoverFromBarButtonItem:a3 permittedArrowDirections:a4 animated:a5];
  [(PUPopoverController *)self setPassthroughViews:0];
}

@end