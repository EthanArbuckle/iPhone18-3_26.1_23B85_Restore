@interface PUPopoverController
- (void)presentPopoverFromBarButtonItem:(id)item permittedArrowDirections:(unint64_t)directions animated:(BOOL)animated;
@end

@implementation PUPopoverController

- (void)presentPopoverFromBarButtonItem:(id)item permittedArrowDirections:(unint64_t)directions animated:(BOOL)animated
{
  v6.receiver = self;
  v6.super_class = PUPopoverController;
  [(PUPopoverController *)&v6 presentPopoverFromBarButtonItem:item permittedArrowDirections:directions animated:animated];
  [(PUPopoverController *)self setPassthroughViews:0];
}

@end