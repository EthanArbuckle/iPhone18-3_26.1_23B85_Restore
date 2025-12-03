@interface TFFeedbackFormViewDataSource
- (TFFeedbackFormViewDataSource)initWithPresenter:(id)presenter;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)prepareTableViewForDataSource:(id)source;
@end

@implementation TFFeedbackFormViewDataSource

- (TFFeedbackFormViewDataSource)initWithPresenter:(id)presenter
{
  presenterCopy = presenter;
  v11.receiver = self;
  v11.super_class = TFFeedbackFormViewDataSource;
  v6 = [(TFFeedbackFormViewDataSource *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presenter, presenter);
    v8 = objc_alloc_init(TFFeedbackFormCellUpdater);
    cellUpdater = v7->_cellUpdater;
    v7->_cellUpdater = v8;
  }

  return v7;
}

- (void)prepareTableViewForDataSource:(id)source
{
  sourceCopy = source;
  v4 = objc_opt_class();
  v5 = +[TFLinkableHeaderFooterView reuseIdentifier];
  [sourceCopy registerClass:v4 forHeaderFooterViewReuseIdentifier:v5];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  presenter = [(TFFeedbackFormViewDataSource *)self presenter];
  v9 = [presenter visibleEntryAtGroupIndex:objc_msgSend(pathCopy entryIndex:{"section"), objc_msgSend(pathCopy, "row")}];

  v10 = +[TFFeedbackEntryTypeCellProvider reuseIdentifierForEntryType:](TFFeedbackEntryTypeCellProvider, "reuseIdentifierForEntryType:", [v9 type]);
  v11 = [viewCopy dequeueReusableCellWithIdentifier:v10 forIndexPath:pathCopy];

  cellUpdater = [(TFFeedbackFormViewDataSource *)self cellUpdater];
  presenter2 = [(TFFeedbackFormViewDataSource *)self presenter];
  feedbackDataSource = [presenter2 feedbackDataSource];
  presenter3 = [(TFFeedbackFormViewDataSource *)self presenter];
  [cellUpdater updateCell:v11 displayingEntry:v9 contentDataSource:feedbackDataSource updateProxy:presenter3];

  return v11;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  presenter = [(TFFeedbackFormViewDataSource *)self presenter];
  v6 = [presenter numberOfVisibleItemsInGroupAtIndex:section];

  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  presenter = [(TFFeedbackFormViewDataSource *)self presenter];
  numberOfEntryGroupsInForm = [presenter numberOfEntryGroupsInForm];

  return numberOfEntryGroupsInForm;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  presenter = [(TFFeedbackFormViewDataSource *)self presenter];
  v8 = [presenter headerTextForGroupAtIndex:section];

  if (v8)
  {
    v9 = +[TFLinkableHeaderFooterView reuseIdentifier];
    v10 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v9];

    [v10 applyText:v8 withTextLinkMap:0 isHeader:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  presenter = [(TFFeedbackFormViewDataSource *)self presenter];
  v8 = [presenter footerTextForGroupAtIndex:section];

  if (v8)
  {
    v9 = +[TFLinkableHeaderFooterView reuseIdentifier];
    v10 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v9];

    presenter2 = [(TFFeedbackFormViewDataSource *)self presenter];
    v12 = [presenter2 footerTextLinkMapForGroupAtIndex:section];
    [v10 applyText:v8 withTextLinkMap:v12 isHeader:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  presenter = [(TFFeedbackFormViewDataSource *)self presenter];
  v8 = [presenter headerTextForGroupAtIndex:section];

  if (v8)
  {
    [viewCopy bounds];
    [TFLinkableHeaderFooterView itemSizeWithText:v8 isHeader:1 fittingSize:viewCopy inTraitEnvironment:CGRectGetWidth(v12), 1.79769313e308];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  presenter = [(TFFeedbackFormViewDataSource *)self presenter];
  v8 = [presenter footerTextForGroupAtIndex:section];

  if (v8)
  {
    [viewCopy bounds];
    [TFLinkableHeaderFooterView itemSizeWithText:v8 isHeader:0 fittingSize:viewCopy inTraitEnvironment:CGRectGetWidth(v12), 1.79769313e308];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  presenter = [(TFFeedbackFormViewDataSource *)self presenter];
  section = [pathCopy section];
  v10 = [pathCopy row];

  v11 = [presenter visibleEntryAtGroupIndex:section entryIndex:v10];

  presenter2 = [(TFFeedbackFormViewDataSource *)self presenter];
  feedbackDataSource = [presenter2 feedbackDataSource];
  [viewCopy bounds];
  [TFFeedbackEntryTypeCellProvider cellSizeForEntry:v11 dataSource:feedbackDataSource fittingSize:viewCopy inTraitEnvironment:v14, 1.79769313e308];
  v16 = v15;

  return v16;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [view cellForRowAtIndexPath:pathCopy];
  v7 = v6;
  if (v6 && [v6 isSelectable])
  {
    v8 = pathCopy;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end