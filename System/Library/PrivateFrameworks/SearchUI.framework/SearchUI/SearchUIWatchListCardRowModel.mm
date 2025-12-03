@interface SearchUIWatchListCardRowModel
- (SearchUIWatchListCardRowModel)initWithResult:(id)result cardSection:(id)section asyncRowManager:(id)manager queryId:(unint64_t)id itemIdentifier:(id)identifier;
- (SearchUIWatchListCardRowModelDelegate)delegate;
- (id)punchouts;
- (int)separatorStyle;
- (void)setHasError:(BOOL)error;
- (void)updateWithTitle:(id)title subtitle:(id)subtitle;
- (void)updateWithTitle:(id)title subtitle:(id)subtitle image:(id)image punchout:(id)punchout;
@end

@implementation SearchUIWatchListCardRowModel

- (SearchUIWatchListCardRowModel)initWithResult:(id)result cardSection:(id)section asyncRowManager:(id)manager queryId:(unint64_t)id itemIdentifier:(id)identifier
{
  managerCopy = manager;
  v16.receiver = self;
  v16.super_class = SearchUIWatchListCardRowModel;
  v13 = [(SearchUICardSectionRowModel *)&v16 initWithResult:result cardSection:section isInline:0 queryId:id itemIdentifier:identifier];
  v14 = v13;
  if (v13)
  {
    [(SearchUIWatchListCardRowModel *)v13 setManager:managerCopy];
    [managerCopy addWatchListRowModelObserver:v14];
  }

  return v14;
}

- (void)updateWithTitle:(id)title subtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  titleCopy = title;
  [(SearchUIWatchListCardRowModel *)self setHasLoaded:1];
  [(SearchUIWatchListCardRowModel *)self setTitle:titleCopy];

  [(SearchUIWatchListCardRowModel *)self setSubtitle:subtitleCopy];
  delegate = [(SearchUIWatchListCardRowModel *)self delegate];
  [delegate didUpdateRowModel:self animate:0];
}

- (void)updateWithTitle:(id)title subtitle:(id)subtitle image:(id)image punchout:(id)punchout
{
  punchoutCopy = punchout;
  imageCopy = image;
  subtitleCopy = subtitle;
  titleCopy = title;
  [(SearchUIWatchListCardRowModel *)self setHasLoaded:1];
  [(SearchUIWatchListCardRowModel *)self setTitle:titleCopy];

  [(SearchUIWatchListCardRowModel *)self setSubtitle:subtitleCopy];
  [(SearchUIWatchListCardRowModel *)self setImage:imageCopy];

  [(SearchUIWatchListCardRowModel *)self setPunchout:punchoutCopy];
  delegate = [(SearchUIWatchListCardRowModel *)self delegate];
  [delegate didUpdateRowModel:self animate:1];
}

- (void)setHasError:(BOOL)error
{
  self->_hasError = error;
  [(SearchUIWatchListCardRowModel *)self setHasLoaded:1];
  delegate = [(SearchUIWatchListCardRowModel *)self delegate];
  [delegate didUpdateRowModel:self animate:1];
}

- (id)punchouts
{
  v7[1] = *MEMORY[0x1E69E9840];
  punchout = [(SearchUIWatchListCardRowModel *)self punchout];
  if (punchout)
  {
    punchout2 = [(SearchUIWatchListCardRowModel *)self punchout];
    v7[0] = punchout2;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)separatorStyle
{
  if ([(SearchUIWatchListCardRowModel *)self hasError])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = SearchUIWatchListCardRowModel;
  return [(SearchUICardSectionRowModel *)&v4 separatorStyle];
}

- (SearchUIWatchListCardRowModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end