@interface TFFeedbackFormViewDataSource
- (TFFeedbackFormViewDataSource)initWithPresenter:(id)a3;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)prepareTableViewForDataSource:(id)a3;
@end

@implementation TFFeedbackFormViewDataSource

- (TFFeedbackFormViewDataSource)initWithPresenter:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TFFeedbackFormViewDataSource;
  v6 = [(TFFeedbackFormViewDataSource *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presenter, a3);
    v8 = objc_alloc_init(TFFeedbackFormCellUpdater);
    cellUpdater = v7->_cellUpdater;
    v7->_cellUpdater = v8;
  }

  return v7;
}

- (void)prepareTableViewForDataSource:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = +[TFLinkableHeaderFooterView reuseIdentifier];
  [v3 registerClass:v4 forHeaderFooterViewReuseIdentifier:v5];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TFFeedbackFormViewDataSource *)self presenter];
  v9 = [v8 visibleEntryAtGroupIndex:objc_msgSend(v6 entryIndex:{"section"), objc_msgSend(v6, "row")}];

  v10 = +[TFFeedbackEntryTypeCellProvider reuseIdentifierForEntryType:](TFFeedbackEntryTypeCellProvider, "reuseIdentifierForEntryType:", [v9 type]);
  v11 = [v7 dequeueReusableCellWithIdentifier:v10 forIndexPath:v6];

  v12 = [(TFFeedbackFormViewDataSource *)self cellUpdater];
  v13 = [(TFFeedbackFormViewDataSource *)self presenter];
  v14 = [v13 feedbackDataSource];
  v15 = [(TFFeedbackFormViewDataSource *)self presenter];
  [v12 updateCell:v11 displayingEntry:v9 contentDataSource:v14 updateProxy:v15];

  return v11;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(TFFeedbackFormViewDataSource *)self presenter];
  v6 = [v5 numberOfVisibleItemsInGroupAtIndex:a4];

  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(TFFeedbackFormViewDataSource *)self presenter];
  v4 = [v3 numberOfEntryGroupsInForm];

  return v4;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(TFFeedbackFormViewDataSource *)self presenter];
  v8 = [v7 headerTextForGroupAtIndex:a4];

  if (v8)
  {
    v9 = +[TFLinkableHeaderFooterView reuseIdentifier];
    v10 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:v9];

    [v10 applyText:v8 withTextLinkMap:0 isHeader:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(TFFeedbackFormViewDataSource *)self presenter];
  v8 = [v7 footerTextForGroupAtIndex:a4];

  if (v8)
  {
    v9 = +[TFLinkableHeaderFooterView reuseIdentifier];
    v10 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:v9];

    v11 = [(TFFeedbackFormViewDataSource *)self presenter];
    v12 = [v11 footerTextLinkMapForGroupAtIndex:a4];
    [v10 applyText:v8 withTextLinkMap:v12 isHeader:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(TFFeedbackFormViewDataSource *)self presenter];
  v8 = [v7 headerTextForGroupAtIndex:a4];

  if (v8)
  {
    [v6 bounds];
    [TFLinkableHeaderFooterView itemSizeWithText:v8 isHeader:1 fittingSize:v6 inTraitEnvironment:CGRectGetWidth(v12), 1.79769313e308];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(TFFeedbackFormViewDataSource *)self presenter];
  v8 = [v7 footerTextForGroupAtIndex:a4];

  if (v8)
  {
    [v6 bounds];
    [TFLinkableHeaderFooterView itemSizeWithText:v8 isHeader:0 fittingSize:v6 inTraitEnvironment:CGRectGetWidth(v12), 1.79769313e308];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TFFeedbackFormViewDataSource *)self presenter];
  v9 = [v6 section];
  v10 = [v6 row];

  v11 = [v8 visibleEntryAtGroupIndex:v9 entryIndex:v10];

  v12 = [(TFFeedbackFormViewDataSource *)self presenter];
  v13 = [v12 feedbackDataSource];
  [v7 bounds];
  [TFFeedbackEntryTypeCellProvider cellSizeForEntry:v11 dataSource:v13 fittingSize:v7 inTraitEnvironment:v14, 1.79769313e308];
  v16 = v15;

  return v16;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [a3 cellForRowAtIndexPath:v5];
  v7 = v6;
  if (v6 && [v6 isSelectable])
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end