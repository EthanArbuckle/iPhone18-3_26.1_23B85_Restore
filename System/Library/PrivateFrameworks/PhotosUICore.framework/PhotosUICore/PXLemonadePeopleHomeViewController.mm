@interface PXLemonadePeopleHomeViewController
+ (id)new;
- (PXLemonadePeopleHomeViewController)init;
- (PXLemonadePeopleHomeViewController)initWithCoder:(id)coder;
- (PXLemonadePeopleHomeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PXLemonadePeopleHomeViewController)initWithPhotoLibrary:(id)library selectionCoordinator:(id)coordinator hostViewController:(id)controller;
- (unint64_t)routingOptionsForDestination:(id)destination;
- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler;
- (void)viewDidLoad;
@end

@implementation PXLemonadePeopleHomeViewController

- (PXLemonadePeopleHomeViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXLemonadePeopleHomeViewController.m" lineNumber:83 description:{@"%s is not available as initializer", "-[PXLemonadePeopleHomeViewController initWithCoder:]"}];

  abort();
}

- (PXLemonadePeopleHomeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXLemonadePeopleHomeViewController.m" lineNumber:79 description:{@"%s is not available as initializer", "-[PXLemonadePeopleHomeViewController initWithNibName:bundle:]"}];

  abort();
}

- (PXLemonadePeopleHomeViewController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXLemonadePeopleHomeViewController.m" lineNumber:75 description:{@"%s is not available as initializer", "-[PXLemonadePeopleHomeViewController init]"}];

  abort();
}

- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(PXLemonadePeopleHomeViewController *)self routingOptionsForDestination:destination]== 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  handlerCopy[2](handlerCopy, v7, 0);
}

- (unint64_t)routingOptionsForDestination:(id)destination
{
  destinationCopy = destination;
  if ([destinationCopy type] == 8)
  {
    collection = [destinationCopy collection];
    px_isPeopleVirtualCollection = [collection px_isPeopleVirtualCollection];
  }

  else
  {
    px_isPeopleVirtualCollection = 0;
  }

  return px_isPeopleVirtualCollection;
}

- (void)viewDidLoad
{
  v25[4] = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = PXLemonadePeopleHomeViewController;
  [(PXLemonadePeopleHomeViewController *)&v24 viewDidLoad];
  photoLibrary = [(PXLemonadePeopleHomeViewController *)self photoLibrary];
  selectionCoordinator = [(PXLemonadePeopleHomeViewController *)self selectionCoordinator];
  hostViewController = [(PXLemonadePeopleHomeViewController *)self hostViewController];
  v6 = [PXLemonadePeopleHomeViewFactory peopleViewControllerFor:photoLibrary selectionCoordinator:selectionCoordinator hostViewController:hostViewController];

  v23 = v6;
  view = [v6 view];
  view2 = [(PXLemonadePeopleHomeViewController *)self view];
  [(PXLemonadePeopleHomeViewController *)self addChildViewController:v6];
  [view2 addSubview:view];
  [v6 didMoveToParentViewController:self];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = MEMORY[0x1E696ACD8];
  leadingAnchor = [view leadingAnchor];
  leadingAnchor2 = [view2 leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v25[0] = v20;
  trailingAnchor = [view trailingAnchor];
  trailingAnchor2 = [view2 trailingAnchor];
  v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v25[1] = v9;
  topAnchor = [view topAnchor];
  topAnchor2 = [view2 topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v25[2] = v12;
  bottomAnchor = [view bottomAnchor];
  bottomAnchor2 = [view2 bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v25[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
  [v17 activateConstraints:v16];
}

- (PXLemonadePeopleHomeViewController)initWithPhotoLibrary:(id)library selectionCoordinator:(id)coordinator hostViewController:(id)controller
{
  libraryCopy = library;
  coordinatorCopy = coordinator;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = PXLemonadePeopleHomeViewController;
  v12 = [(PXLemonadePeopleHomeViewController *)&v15 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_photoLibrary, library);
    objc_storeStrong(&v13->_selectionCoordinator, coordinator);
    objc_storeStrong(&v13->_hostViewController, controller);
  }

  return v13;
}

+ (id)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXLemonadePeopleHomeViewController.m" lineNumber:71 description:{@"%s is not available as initializer", "+[PXLemonadePeopleHomeViewController new]"}];

  abort();
}

@end