@interface SUConcernListDataSource
- (SUConcernListDataSource)init;
- (SUTextViewCell)textViewCell;
- (double)cellHeightForIndexPath:(id)path;
- (id)_titleCellForIndexPath:(id)path;
- (id)cellForIndexPath:(id)path;
- (int64_t)numberOfRowsInSection:(int64_t)section;
- (int64_t)numberOfSections;
- (void)dealloc;
@end

@implementation SUConcernListDataSource

- (SUConcernListDataSource)init
{
  v3.receiver = self;
  v3.super_class = SUConcernListDataSource;
  result = [(SUTableDataSource *)&v3 init];
  if (result)
  {
    result->_selectedConcernIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (void)dealloc
{
  self->_concerns = 0;
  v3.receiver = self;
  v3.super_class = SUConcernListDataSource;
  [(SUTableDataSource *)&v3 dealloc];
}

- (SUTextViewCell)textViewCell
{
  result = self->_textViewCell;
  if (!result)
  {
    self->_textViewCell = [[SUTextViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    -[SUTextContentView setPlaceholder:](-[SUTextViewCell textContentView](self->_textViewCell, "textContentView"), "setPlaceholder:", [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"COMMENTS_PLACEHOLDER", &stru_1F41B3660, 0}]);
    return self->_textViewCell;
  }

  return result;
}

- (id)cellForIndexPath:(id)path
{
  section = [path section];
  if (section == 1)
  {

    return [(SUConcernListDataSource *)self textViewCell];
  }

  else if (section)
  {
    return 0;
  }

  else
  {

    return [(SUConcernListDataSource *)self _titleCellForIndexPath:path];
  }
}

- (double)cellHeightForIndexPath:(id)path
{
  if ([path section] == 1)
  {
    return 150.0;
  }

  v6.receiver = self;
  v6.super_class = SUConcernListDataSource;
  [(SUTableDataSource *)&v6 cellHeightForIndexPath:path];
  return result;
}

- (int64_t)numberOfSections
{
  if ([(NSArray *)self->_concerns count])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)numberOfRowsInSection:(int64_t)section
{
  if (section != 1)
  {
    if (!section)
    {
      return [(NSArray *)self->_concerns count];
    }

    return 0;
  }

  return section;
}

- (id)_titleCellForIndexPath:(id)path
{
  v4 = [path row];
  v5 = [-[SUTableDataSource cellReuseSource](self "cellReuseSource")];
  if (!v5)
  {
    v5 = [[SUTableCell alloc] initWithStyle:0 reuseIdentifier:@"0"];
  }

  textLabel = [(SUTableCell *)v5 textLabel];
  [textLabel setAdjustsFontSizeToFitWidth:1];
  [textLabel setMinimumScaleFactor:0.75];
  [textLabel setText:{objc_msgSend(-[NSArray objectAtIndex:](self->_concerns, "objectAtIndex:", v4), "title")}];
  if (v4 == [(SUConcernListDataSource *)self selectedConcernIndex])
  {
    [(SUTableCell *)v5 setAccessoryType:3];
    blackColor = [MEMORY[0x1E69DC888] colorWithRed:0.196078431 green:0.309803922 blue:0.521568627 alpha:1.0];
  }

  else
  {
    [(SUTableCell *)v5 setAccessoryType:0];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
  }

  [textLabel setTextColor:blackColor];
  return v5;
}

@end