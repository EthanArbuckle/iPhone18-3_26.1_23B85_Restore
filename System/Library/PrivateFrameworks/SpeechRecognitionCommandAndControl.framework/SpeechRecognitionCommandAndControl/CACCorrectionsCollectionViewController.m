@interface CACCorrectionsCollectionViewController
- (CACCorrectionsCollectionViewController)init;
- (CACCorrectionsCollectionViewControllerDelegate)delegate;
- (id)_itemsInSection:(int64_t)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_didTapCancel:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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
  v5 = [(CACCorrectionsCollectionViewController *)self navigationItem];
  [v5 setRightBarButtonItem:v4];

  v6 = [MEMORY[0x277D75348] whiteColor];
  v7 = [(CACCorrectionsCollectionViewController *)self collectionView];
  [v7 setBackgroundColor:v6];

  v8 = [(CACCorrectionsCollectionViewController *)self collectionView];
  [v8 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"Cell"];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CACCorrectionsCollectionViewController;
  [(CACCorrectionsCollectionViewController *)&v5 viewWillAppear:a3];
  v4 = [(CACCorrectionsCollectionViewController *)self collectionView];
  [v4 reloadData];
}

- (void)_didTapCancel:(id)a3
{
  v4 = [(CACCorrectionsCollectionViewController *)self delegate];
  [v4 dismissCorrectionsCollectionViewController:self];
}

- (id)_itemsInSection:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(CACCorrectionsCollectionViewController *)self emojis];
  }

  else if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(CACCorrectionsCollectionViewController *)self alternatives];
  }

  return v3;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(CACCorrectionsCollectionViewController *)self _itemsInSection:a4];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:v6];
  v8 = -[CACCorrectionsCollectionViewController _itemsInSection:](self, "_itemsInSection:", [v6 section]);
  v9 = [v6 row];

  v10 = [v8 objectAtIndexedSubscript:v9];
  v11 = [v7 textLabel];
  [v11 setText:v10];

  return v7;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v9 = [(CACCorrectionsCollectionViewController *)self delegate];
  v6 = -[CACCorrectionsCollectionViewController _itemsInSection:](self, "_itemsInSection:", [v5 section]);
  v7 = [v5 row];

  v8 = [v6 objectAtIndexedSubscript:v7];
  [v9 correctionsCollectionViewController:self didSelectItemWithText:v8];
}

- (CACCorrectionsCollectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end