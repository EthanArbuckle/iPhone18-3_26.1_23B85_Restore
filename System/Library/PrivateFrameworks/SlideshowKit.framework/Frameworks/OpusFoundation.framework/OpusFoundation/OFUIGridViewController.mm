@interface OFUIGridViewController
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (CGPoint)draggingSource:(id)source badgeCenterForItem:(id)item;
- (CGRect)draggingSource:(id)source originalFrameForItem:(id)item;
- (OFUIGridView)gridView;
- (OFUIGridViewController)initWithStyle:(unint64_t)style;
- (void)cancelAllOperations:(BOOL)operations;
- (void)commonInit;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)draggingSource:(id)source cleanupItem:(id)item;
- (void)draggingSource:(id)source prepareItem:(id)item;
- (void)loadView;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setGridView:(id)view;
- (void)updateDisplayedCellOperationsPriority:(id)priority;
- (void)updateDisplayedCellsOperationsPriority;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidUnload;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillUnload;
- (void)willMoveToParentViewController:(id)controller;
- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
@end

@implementation OFUIGridViewController

- (void)commonInit
{
  v4.receiver = self;
  v4.super_class = OFUIGridViewController;
  [(OFUIViewController *)&v4 commonInit];
  self->_gridViewStyle = 0;
  v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
  self->_operationQueue = v3;
  -[NSOperationQueue setMaxConcurrentOperationCount:](v3, "setMaxConcurrentOperationCount:", [objc_msgSend(MEMORY[0x277CCAC38] "processInfo")]);
  self->_hideWhenDeviceRotates = 1;
  self->_maintainPercentageScrolledWhenDeviceRotates = 0;
}

- (OFUIGridViewController)initWithStyle:(unint64_t)style
{
  v7.receiver = self;
  v7.super_class = OFUIGridViewController;
  v4 = [(OFUIViewController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(OFUIGridViewController *)v4 commonInit];
    v5->_gridViewStyle = style;
  }

  return v5;
}

- (void)dealloc
{
  operationQueue = self->_operationQueue;
  if (operationQueue)
  {
    [(NSOperationQueue *)operationQueue cancelAllOperations];

    self->_operationQueue = 0;
  }

  gridView = self->_gridView;
  if (gridView)
  {

    self->_gridView = 0;
  }

  v5.receiver = self;
  v5.super_class = OFUIGridViewController;
  [(OFUIViewController *)&v5 dealloc];
}

- (void)loadView
{
  if ([(OFUIGridViewController *)self nibName])
  {
    v10.receiver = self;
    v10.super_class = OFUIGridViewController;
    [(OFUIViewController *)&v10 loadView];
    gridView = [(OFUIGridViewController *)self gridView];
    if (!gridView)
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ loaded the %@ nib but didn't get a OFUIGridView.", objc_msgSend(v5, "stringWithFormat:", @"-[%@ %@]", v7, NSStringFromSelector(a2)), -[OFUIGridViewController nibName](self, "nibName")}];
    }

    if (![(OFUIGridView *)gridView delegate])
    {
      [(OFUIGridView *)gridView setDelegate:self];
    }

    if (![(OFUIGridView *)gridView dataSource])
    {
      [(OFUIGridView *)gridView setDataSource:self];
    }

    [(OFUIGridView *)gridView setGridViewController:self];
  }

  else
  {
    v8 = objc_alloc([objc_opt_class() gridViewClass]);
    [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
    v9 = [v8 initWithFrame:?];
    [v9 setAutoresizingMask:18];
    [v9 setDataSource:self];
    [v9 setDelegate:self];
    [(OFUIGridViewController *)self setView:v9];
    [v9 setGridViewController:self];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = OFUIGridViewController;
  [(OFUIViewController *)&v3 viewDidLoad];
  [[(OFUIGridViewController *)self gridView] reloadData];
}

- (void)viewWillUnload
{
  v3.receiver = self;
  v3.super_class = OFUIGridViewController;
  [(OFUIGridViewController *)&v3 viewWillUnload];
  [[(OFUIGridViewController *)self gridView] setDataSource:0];
  [[(OFUIGridViewController *)self gridView] setDelegate:0];
  [[(OFUIGridViewController *)self gridView] setGridViewDelegate:0];
  [[(OFUIGridViewController *)self gridView] setDraggingSource:0];
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  [[(OFUIGridViewController *)self gridView] prepareForUnloading];
}

- (void)viewDidUnload
{
  v2.receiver = self;
  v2.super_class = OFUIGridViewController;
  [(OFUIGridViewController *)&v2 viewDidUnload];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = OFUIGridViewController;
  [(OFUIViewController *)&v2 didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = OFUIGridViewController;
  [(OFUIViewController *)&v4 viewWillAppear:appear];
  [[(OFUIGridViewController *)self gridView] updateLayout:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = OFUIGridViewController;
  [(OFUIViewController *)&v3 viewDidAppear:appear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = OFUIGridViewController;
  [(OFUIViewController *)&v4 viewWillDisappear:disappear];
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = OFUIGridViewController;
  [(OFUIViewController *)&v3 viewDidDisappear:disappear];
}

- (void)willMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = OFUIGridViewController;
  [(OFUIGridViewController *)&v5 willMoveToParentViewController:?];
  if (!controller)
  {
    [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  v4.receiver = self;
  v4.super_class = OFUIGridViewController;
  return [(OFUIGridViewController *)&v4 shouldAutorotateToInterfaceOrientation:orientation];
}

- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  v25.receiver = self;
  v25.super_class = OFUIGridViewController;
  [(OFUIGridViewController *)&v25 willRotateToInterfaceOrientation:orientation duration:?];
  if (self->_maintainPercentageScrolledWhenDeviceRotates)
  {
    [[(OFUIGridViewController *)self gridView] setCanUpdateCells:0];
    orientation = [[(OFUIGridViewController *)self gridView] orientation];
    [[(OFUIGridViewController *)self gridView] contentSize];
    v8 = v7;
    v10 = v9;
    [[(OFUIGridViewController *)self gridView] bounds];
    v13 = 0.0;
    if (orientation)
    {
      if (v10 > v12)
      {
        [[(OFUIGridViewController *)self gridView] contentOffset];
        v15 = v14;
        [[(OFUIGridViewController *)self gridView] bounds];
        v17 = v15 + v16 * 0.5;
        [[(OFUIGridViewController *)self gridView] contentSize];
        v13 = v17 / v18;
      }
    }

    else if (v8 > v11)
    {
      [[(OFUIGridViewController *)self gridView] contentOffset];
      v20 = v19;
      [[(OFUIGridViewController *)self gridView] bounds];
      v22 = v20 + v21 * 0.5;
      [[(OFUIGridViewController *)self gridView] contentSize];
      v13 = v22 / v23;
    }

    [[(OFUIGridViewController *)self gridView] setPercentageScrolledToRestore:v13];
  }

  if (self->_hideWhenDeviceRotates)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __68__OFUIGridViewController_willRotateToInterfaceOrientation_duration___block_invoke;
    v24[3] = &unk_279C89F90;
    v24[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:196608 delay:v24 options:&__block_literal_global_6 animations:duration * 0.25 completion:0.0];
  }
}

uint64_t __68__OFUIGridViewController_willRotateToInterfaceOrientation_duration___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) gridView];

  return [v1 setAlpha:0.0];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation
{
  v5.receiver = self;
  v5.super_class = OFUIGridViewController;
  [(OFUIGridViewController *)&v5 didRotateFromInterfaceOrientation:orientation];
  if (self->_maintainPercentageScrolledWhenDeviceRotates)
  {
    [[(OFUIGridViewController *)self gridView] setCanUpdateCells:1];
  }

  [[(OFUIGridViewController *)self gridView] updateLayout:1];
  if (self->_hideWhenDeviceRotates)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __60__OFUIGridViewController_didRotateFromInterfaceOrientation___block_invoke;
    v4[3] = &unk_279C89F90;
    v4[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:196608 delay:v4 options:&__block_literal_global_44 animations:0.25 completion:0.0];
  }
}

uint64_t __60__OFUIGridViewController_didRotateFromInterfaceOrientation___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) gridView];

  return [v1 setAlpha:1.0];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v7.receiver = self;
  v7.super_class = OFUIGridViewController;
  [OFUIGridViewController setEditing:sel_setEditing_animated_ animated:?];
  [[(OFUIGridViewController *)self gridView] setEditing:editingCopy animated:animatedCopy];
}

- (OFUIGridView)gridView
{
  view = [(OFUIGridViewController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return view;
  }

  else
  {
    return 0;
  }
}

- (void)setGridView:(id)view
{
  gridView = [(OFUIGridViewController *)self gridView];
  if (gridView != view)
  {
    v6 = gridView;
    if ([(OFUIGridView *)gridView dataSource]== self)
    {
      [(OFUIGridView *)v6 setDataSource:0];
    }

    if ([(OFUIGridView *)v6 delegate]== self)
    {
      [(OFUIGridView *)v6 setDelegate:0];
    }

    [(OFUIGridViewController *)self setView:view];
    if (![view dataSource])
    {
      [view setDataSource:self];
    }

    if (![view delegate])
    {

      [view setDelegate:self];
    }
  }
}

- (void)updateDisplayedCellsOperationsPriority
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  displayedCells = [[(OFUIGridViewController *)self gridView] displayedCells];
  v4 = [displayedCells countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(displayedCells);
        }

        [(OFUIGridViewController *)self updateDisplayedCellOperationsPriority:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [displayedCells countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)updateDisplayedCellOperationsPriority:(id)priority
{
  if (priority && [priority hasOperations])
  {
    if ([[(OFUIGridViewController *)self gridView] isCellVisible:priority])
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }

    [priority setOperationsPriority:v5];
  }
}

- (void)cancelAllOperations:(BOOL)operations
{
  operationsCopy = operations;
  [(NSOperationQueue *)[(OFUIGridViewController *)self operationQueue] cancelAllOperations];
  if (operationsCopy)
  {
    operationQueue = [(OFUIGridViewController *)self operationQueue];

    [(NSOperationQueue *)operationQueue waitUntilAllOperationsAreFinished];
  }
}

- (void)draggingSource:(id)source prepareItem:(id)item
{
  gridView = [(OFUIGridViewController *)self gridView];

  [(OFUIGridView *)gridView draggingSource:source prepareItem:item];
}

- (void)draggingSource:(id)source cleanupItem:(id)item
{
  gridView = [(OFUIGridViewController *)self gridView];

  [(OFUIGridView *)gridView draggingSource:source cleanupItem:item];
}

- (CGRect)draggingSource:(id)source originalFrameForItem:(id)item
{
  gridView = [(OFUIGridViewController *)self gridView];

  [(OFUIGridView *)gridView draggingSource:source originalFrameForItem:item];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGPoint)draggingSource:(id)source badgeCenterForItem:(id)item
{
  gridView = [(OFUIGridViewController *)self gridView];

  [(OFUIGridView *)gridView draggingSource:source badgeCenterForItem:item];
  result.y = v8;
  result.x = v7;
  return result;
}

@end