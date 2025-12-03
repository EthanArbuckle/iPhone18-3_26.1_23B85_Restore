@interface CACCorrectionsCollectionViewController
- (CACCorrectionsCollectionViewController)init;
- (CACCorrectionsCollectionViewControllerDelegate)delegate;
- (id)_itemsInSection:(int64_t)section;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_didTapCancel:(id)cancel;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CACCorrectionsCollectionViewController

- (CACCorrectionsCollectionViewController)init
{
  v3 = objc_opt_new();
  [v3 setEstimatedItemSize:{40.0, 40.0}];
  v4 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
  [v4 scaledValueForValue:8.0];
  [v3 setSectionInset:{v5, v5, v5, v5}];
  v6 = [(CACCorrectionsCollectionViewController *)self initWithCollectionViewLayout:v3];

  return v6;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = CACCorrectionsCollectionViewController;
  [(CACCorrectionsCollectionViewController *)&v9 viewDidLoad];
  v3 = [CACLocaleUtilities localizedUIStringForKey:@"Corrections.Title"];
  [(CACCorrectionsCollectionViewController *)self setTitle:v3];

  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__didTapCancel_];
  navigationItem = [(CACCorrectionsCollectionViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v4];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  collectionView = [(CACCorrectionsCollectionViewController *)self collectionView];
  [collectionView setBackgroundColor:whiteColor];

  collectionView2 = [(CACCorrectionsCollectionViewController *)self collectionView];
  [collectionView2 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"Cell"];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CACCorrectionsCollectionViewController;
  [(CACCorrectionsCollectionViewController *)&v5 viewWillAppear:appear];
  collectionView = [(CACCorrectionsCollectionViewController *)self collectionView];
  [collectionView reloadData];
}

- (void)_didTapCancel:(id)cancel
{
  delegate = [(CACCorrectionsCollectionViewController *)self delegate];
  [delegate dismissCorrectionsCollectionViewController:self];
}

- (id)_itemsInSection:(int64_t)section
{
  if (section == 1)
  {
    emojis = [(CACCorrectionsCollectionViewController *)self emojis];
  }

  else if (section)
  {
    emojis = 0;
  }

  else
  {
    emojis = [(CACCorrectionsCollectionViewController *)self alternatives];
  }

  return emojis;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(CACCorrectionsCollectionViewController *)self _itemsInSection:section];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:pathCopy];
  v8 = -[CACCorrectionsCollectionViewController _itemsInSection:](self, "_itemsInSection:", [pathCopy section]);
  v9 = [pathCopy row];

  v10 = [v8 objectAtIndexedSubscript:v9];
  textLabel = [v7 textLabel];
  [textLabel setText:v10];

  return v7;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(CACCorrectionsCollectionViewController *)self delegate];
  v6 = -[CACCorrectionsCollectionViewController _itemsInSection:](self, "_itemsInSection:", [pathCopy section]);
  v7 = [pathCopy row];

  v8 = [v6 objectAtIndexedSubscript:v7];
  [delegate correctionsCollectionViewController:self didSelectItemWithText:v8];
}

- (CACCorrectionsCollectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end