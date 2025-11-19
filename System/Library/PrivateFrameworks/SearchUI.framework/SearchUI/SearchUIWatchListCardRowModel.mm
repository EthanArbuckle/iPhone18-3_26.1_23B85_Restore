@interface SearchUIWatchListCardRowModel
- (SearchUIWatchListCardRowModel)initWithResult:(id)a3 cardSection:(id)a4 asyncRowManager:(id)a5 queryId:(unint64_t)a6 itemIdentifier:(id)a7;
- (SearchUIWatchListCardRowModelDelegate)delegate;
- (id)punchouts;
- (int)separatorStyle;
- (void)setHasError:(BOOL)a3;
- (void)updateWithTitle:(id)a3 subtitle:(id)a4;
- (void)updateWithTitle:(id)a3 subtitle:(id)a4 image:(id)a5 punchout:(id)a6;
@end

@implementation SearchUIWatchListCardRowModel

- (SearchUIWatchListCardRowModel)initWithResult:(id)a3 cardSection:(id)a4 asyncRowManager:(id)a5 queryId:(unint64_t)a6 itemIdentifier:(id)a7
{
  v12 = a5;
  v16.receiver = self;
  v16.super_class = SearchUIWatchListCardRowModel;
  v13 = [(SearchUICardSectionRowModel *)&v16 initWithResult:a3 cardSection:a4 isInline:0 queryId:a6 itemIdentifier:a7];
  v14 = v13;
  if (v13)
  {
    [(SearchUIWatchListCardRowModel *)v13 setManager:v12];
    [v12 addWatchListRowModelObserver:v14];
  }

  return v14;
}

- (void)updateWithTitle:(id)a3 subtitle:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(SearchUIWatchListCardRowModel *)self setHasLoaded:1];
  [(SearchUIWatchListCardRowModel *)self setTitle:v7];

  [(SearchUIWatchListCardRowModel *)self setSubtitle:v6];
  v8 = [(SearchUIWatchListCardRowModel *)self delegate];
  [v8 didUpdateRowModel:self animate:0];
}

- (void)updateWithTitle:(id)a3 subtitle:(id)a4 image:(id)a5 punchout:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [(SearchUIWatchListCardRowModel *)self setHasLoaded:1];
  [(SearchUIWatchListCardRowModel *)self setTitle:v13];

  [(SearchUIWatchListCardRowModel *)self setSubtitle:v12];
  [(SearchUIWatchListCardRowModel *)self setImage:v11];

  [(SearchUIWatchListCardRowModel *)self setPunchout:v10];
  v14 = [(SearchUIWatchListCardRowModel *)self delegate];
  [v14 didUpdateRowModel:self animate:1];
}

- (void)setHasError:(BOOL)a3
{
  self->_hasError = a3;
  [(SearchUIWatchListCardRowModel *)self setHasLoaded:1];
  v4 = [(SearchUIWatchListCardRowModel *)self delegate];
  [v4 didUpdateRowModel:self animate:1];
}

- (id)punchouts
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [(SearchUIWatchListCardRowModel *)self punchout];
  if (v3)
  {
    v4 = [(SearchUIWatchListCardRowModel *)self punchout];
    v7[0] = v4;
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