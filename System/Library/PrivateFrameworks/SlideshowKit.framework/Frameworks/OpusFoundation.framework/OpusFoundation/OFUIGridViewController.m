@interface OFUIGridViewController
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (CGPoint)draggingSource:(id)a3 badgeCenterForItem:(id)a4;
- (CGRect)draggingSource:(id)a3 originalFrameForItem:(id)a4;
- (OFUIGridView)gridView;
- (OFUIGridViewController)initWithStyle:(unint64_t)a3;
- (void)cancelAllOperations:(BOOL)a3;
- (void)commonInit;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3;
- (void)draggingSource:(id)a3 cleanupItem:(id)a4;
- (void)draggingSource:(id)a3 prepareItem:(id)a4;
- (void)loadView;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setGridView:(id)a3;
- (void)updateDisplayedCellOperationsPriority:(id)a3;
- (void)updateDisplayedCellsOperationsPriority;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidUnload;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillUnload;
- (void)willMoveToParentViewController:(id)a3;
- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
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

- (OFUIGridViewController)initWithStyle:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = OFUIGridViewController;
  v4 = [(OFUIViewController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(OFUIGridViewController *)v4 commonInit];
    v5->_gridViewStyle = a3;
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
    v4 = [(OFUIGridViewController *)self gridView];
    if (!v4)
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ loaded the %@ nib but didn't get a OFUIGridView.", objc_msgSend(v5, "stringWithFormat:", @"-[%@ %@]", v7, NSStringFromSelector(a2)), -[OFUIGridViewController nibName](self, "nibName")}];
    }

    if (![(OFUIGridView *)v4 delegate])
    {
      [(OFUIGridView *)v4 setDelegate:self];
    }

    if (![(OFUIGridView *)v4 dataSource])
    {
      [(OFUIGridView *)v4 setDataSource:self];
    }

    [(OFUIGridView *)v4 setGridViewController:self];
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

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = OFUIGridViewController;
  [(OFUIViewController *)&v4 viewWillAppear:a3];
  [[(OFUIGridViewController *)self gridView] updateLayout:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = OFUIGridViewController;
  [(OFUIViewController *)&v3 viewDidAppear:a3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = OFUIGridViewController;
  [(OFUIViewController *)&v4 viewWillDisappear:a3];
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = OFUIGridViewController;
  [(OFUIViewController *)&v3 viewDidDisappear:a3];
}

- (void)willMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = OFUIGridViewController;
  [(OFUIGridViewController *)&v5 willMoveToParentViewController:?];
  if (!a3)
  {
    [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = OFUIGridViewController;
  return [(OFUIGridViewController *)&v4 shouldAutorotateToInterfaceOrientation:a3];
}

- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v25.receiver = self;
  v25.super_class = OFUIGridViewController;
  [(OFUIGridViewController *)&v25 willRotateToInterfaceOrientation:a3 duration:?];
  if (self->_maintainPercentageScrolledWhenDeviceRotates)
  {
    [[(OFUIGridViewController *)self gridView] setCanUpdateCells:0];
    v6 = [[(OFUIGridViewController *)self gridView] orientation];
    [[(OFUIGridViewController *)self gridView] contentSize];
    v8 = v7;
    v10 = v9;
    [[(OFUIGridViewController *)self gridView] bounds];
    v13 = 0.0;
    if (v6)
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
    [MEMORY[0x277D75D18] animateWithDuration:196608 delay:v24 options:&__block_literal_global_6 animations:a4 * 0.25 completion:0.0];
  }
}

uint64_t __68__OFUIGridViewController_willRotateToInterfaceOrientation_duration___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) gridView];

  return [v1 setAlpha:0.0];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = OFUIGridViewController;
  [(OFUIGridViewController *)&v5 didRotateFromInterfaceOrientation:a3];
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

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7.receiver = self;
  v7.super_class = OFUIGridViewController;
  [OFUIGridViewController setEditing:sel_setEditing_animated_ animated:?];
  [[(OFUIGridViewController *)self gridView] setEditing:v5 animated:v4];
}

- (OFUIGridView)gridView
{
  v2 = [(OFUIGridViewController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (void)setGridView:(id)a3
{
  v5 = [(OFUIGridViewController *)self gridView];
  if (v5 != a3)
  {
    v6 = v5;
    if ([(OFUIGridView *)v5 dataSource]== self)
    {
      [(OFUIGridView *)v6 setDataSource:0];
    }

    if ([(OFUIGridView *)v6 delegate]== self)
    {
      [(OFUIGridView *)v6 setDelegate:0];
    }

    [(OFUIGridViewController *)self setView:a3];
    if (![a3 dataSource])
    {
      [a3 setDataSource:self];
    }

    if (![a3 delegate])
    {

      [a3 setDelegate:self];
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
  v3 = [[(OFUIGridViewController *)self gridView] displayedCells];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v3);
        }

        [(OFUIGridViewController *)self updateDisplayedCellOperationsPriority:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)updateDisplayedCellOperationsPriority:(id)a3
{
  if (a3 && [a3 hasOperations])
  {
    if ([[(OFUIGridViewController *)self gridView] isCellVisible:a3])
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }

    [a3 setOperationsPriority:v5];
  }
}

- (void)cancelAllOperations:(BOOL)a3
{
  v3 = a3;
  [(NSOperationQueue *)[(OFUIGridViewController *)self operationQueue] cancelAllOperations];
  if (v3)
  {
    v5 = [(OFUIGridViewController *)self operationQueue];

    [(NSOperationQueue *)v5 waitUntilAllOperationsAreFinished];
  }
}

- (void)draggingSource:(id)a3 prepareItem:(id)a4
{
  v6 = [(OFUIGridViewController *)self gridView];

  [(OFUIGridView *)v6 draggingSource:a3 prepareItem:a4];
}

- (void)draggingSource:(id)a3 cleanupItem:(id)a4
{
  v6 = [(OFUIGridViewController *)self gridView];

  [(OFUIGridView *)v6 draggingSource:a3 cleanupItem:a4];
}

- (CGRect)draggingSource:(id)a3 originalFrameForItem:(id)a4
{
  v6 = [(OFUIGridViewController *)self gridView];

  [(OFUIGridView *)v6 draggingSource:a3 originalFrameForItem:a4];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGPoint)draggingSource:(id)a3 badgeCenterForItem:(id)a4
{
  v6 = [(OFUIGridViewController *)self gridView];

  [(OFUIGridView *)v6 draggingSource:a3 badgeCenterForItem:a4];
  result.y = v8;
  result.x = v7;
  return result;
}

@end