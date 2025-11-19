@interface PXLemonadePeopleHomeViewController
+ (id)new;
- (PXLemonadePeopleHomeViewController)init;
- (PXLemonadePeopleHomeViewController)initWithCoder:(id)a3;
- (PXLemonadePeopleHomeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PXLemonadePeopleHomeViewController)initWithPhotoLibrary:(id)a3 selectionCoordinator:(id)a4 hostViewController:(id)a5;
- (unint64_t)routingOptionsForDestination:(id)a3;
- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)viewDidLoad;
@end

@implementation PXLemonadePeopleHomeViewController

- (PXLemonadePeopleHomeViewController)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXLemonadePeopleHomeViewController.m" lineNumber:83 description:{@"%s is not available as initializer", "-[PXLemonadePeopleHomeViewController initWithCoder:]"}];

  abort();
}

- (PXLemonadePeopleHomeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXLemonadePeopleHomeViewController.m" lineNumber:79 description:{@"%s is not available as initializer", "-[PXLemonadePeopleHomeViewController initWithNibName:bundle:]"}];

  abort();
}

- (PXLemonadePeopleHomeViewController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXLemonadePeopleHomeViewController.m" lineNumber:75 description:{@"%s is not available as initializer", "-[PXLemonadePeopleHomeViewController init]"}];

  abort();
}

- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  if ([(PXLemonadePeopleHomeViewController *)self routingOptionsForDestination:a3]== 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v8[2](v8, v7, 0);
}

- (unint64_t)routingOptionsForDestination:(id)a3
{
  v3 = a3;
  if ([v3 type] == 8)
  {
    v4 = [v3 collection];
    v5 = [v4 px_isPeopleVirtualCollection];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)viewDidLoad
{
  v25[4] = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = PXLemonadePeopleHomeViewController;
  [(PXLemonadePeopleHomeViewController *)&v24 viewDidLoad];
  v3 = [(PXLemonadePeopleHomeViewController *)self photoLibrary];
  v4 = [(PXLemonadePeopleHomeViewController *)self selectionCoordinator];
  v5 = [(PXLemonadePeopleHomeViewController *)self hostViewController];
  v6 = [PXLemonadePeopleHomeViewFactory peopleViewControllerFor:v3 selectionCoordinator:v4 hostViewController:v5];

  v23 = v6;
  v7 = [v6 view];
  v8 = [(PXLemonadePeopleHomeViewController *)self view];
  [(PXLemonadePeopleHomeViewController *)self addChildViewController:v6];
  [v8 addSubview:v7];
  [v6 didMoveToParentViewController:self];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = MEMORY[0x1E696ACD8];
  v22 = [v7 leadingAnchor];
  v21 = [v8 leadingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v25[0] = v20;
  v19 = [v7 trailingAnchor];
  v18 = [v8 trailingAnchor];
  v9 = [v19 constraintEqualToAnchor:v18];
  v25[1] = v9;
  v10 = [v7 topAnchor];
  v11 = [v8 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v25[2] = v12;
  v13 = [v7 bottomAnchor];
  v14 = [v8 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v25[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
  [v17 activateConstraints:v16];
}

- (PXLemonadePeopleHomeViewController)initWithPhotoLibrary:(id)a3 selectionCoordinator:(id)a4 hostViewController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PXLemonadePeopleHomeViewController;
  v12 = [(PXLemonadePeopleHomeViewController *)&v15 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_photoLibrary, a3);
    objc_storeStrong(&v13->_selectionCoordinator, a4);
    objc_storeStrong(&v13->_hostViewController, a5);
  }

  return v13;
}

+ (id)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXLemonadePeopleHomeViewController.m" lineNumber:71 description:{@"%s is not available as initializer", "+[PXLemonadePeopleHomeViewController new]"}];

  abort();
}

@end