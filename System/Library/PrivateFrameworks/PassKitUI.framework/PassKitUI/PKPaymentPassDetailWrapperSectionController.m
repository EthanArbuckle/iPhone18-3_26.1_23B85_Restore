@interface PKPaymentPassDetailWrapperSectionController
- (BOOL)shouldDrawBottomSeparatorForSectionIdentifier:(id)a3;
- (BOOL)shouldDrawTopSeparatorForSectionIdentifier:(id)a3;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (PKPaymentPassDetailWrapperSectionController)initWithViewController:(id)a3;
- (double)estimatedHeightForRowAtIndexPath:(id)a3 sectionIdentifier:(id)a4;
- (double)tableView:(id)a3 heightForFooterInSectionIdentifier:(id)a4;
- (double)tableView:(id)a3 heightForHeaderInSectionIdentifier:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5 sectionIdentifier:(id)a6;
- (id)tableView:(id)a3 leadingSwipeActionsConfigurationForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (id)tableView:(id)a3 viewForFooterInSectionIdentifier:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSectionIdentifier:(id)a4;
- (id)titleForFooterInSectionIdentifier:(id)a3;
- (id)titleForHeaderInSectionIdentifier:(id)a3;
- (int64_t)editingStyleForRowAtIndexPath:(id)a3 sectionIdentifier:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSectionIdentifier:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
@end

@implementation PKPaymentPassDetailWrapperSectionController

- (PKPaymentPassDetailWrapperSectionController)initWithViewController:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKPaymentPassDetailWrapperSectionController;
  v5 = [(PKPaymentPassDetailWrapperSectionController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewController, v4);
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:49];
    for (i = 0; i != 49; ++i)
    {
      v9 = PKPassDetailSectionTypeToString(i);
      [(NSArray *)v7 addObject:v9];
    }

    sectionIdentifiers = v6->_sectionIdentifiers;
    v6->_sectionIdentifiers = v7;
  }

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSectionIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v9 = PKPassDetailSectionTypeFromString(v6);

  v10 = [WeakRetained tableView:v7 numberOfRowsInSectionCase:v9];
  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v12 = PKPassDetailSectionTypeFromString(v8);

  v13 = [WeakRetained tableView:v10 cellForRowAtIndexPath:v9 section:v12];

  return v13;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v11 = PKPassDetailSectionTypeFromString(v8);

  [WeakRetained tableView:v10 didSelectRowAtIndexPath:v9 section:v11];
}

- (id)titleForHeaderInSectionIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v6 = PKPassDetailSectionTypeFromString(v4);

  v7 = [WeakRetained titleForHeaderInSection:v6];

  return v7;
}

- (id)titleForFooterInSectionIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v6 = PKPassDetailSectionTypeFromString(v4);

  v7 = [WeakRetained titleForFooterInSection:v6];

  return v7;
}

- (id)tableView:(id)a3 viewForHeaderInSectionIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v9 = PKPassDetailSectionTypeFromString(v6);

  v10 = [WeakRetained tableView:v7 viewForHeaderInSectionCase:v9];

  return v10;
}

- (id)tableView:(id)a3 viewForFooterInSectionIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v9 = PKPassDetailSectionTypeFromString(v6);

  v10 = [WeakRetained tableView:v7 viewForFooterInSectionCase:v9];

  return v10;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v12 = PKPassDetailSectionTypeFromString(v8);

  [WeakRetained tableView:v10 heightForRowAtIndexPath:v9 section:v12];
  v14 = v13;

  return v14;
}

- (double)tableView:(id)a3 heightForHeaderInSectionIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v9 = PKPassDetailSectionTypeFromString(v6);

  [WeakRetained tableView:v7 heightForHeaderInSectionCase:v9];
  v11 = v10;

  return v11;
}

- (double)tableView:(id)a3 heightForFooterInSectionIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v9 = PKPassDetailSectionTypeFromString(v6);

  [WeakRetained tableView:v7 heightForFooterInSectionCase:v9];
  v11 = v10;

  return v11;
}

- (double)estimatedHeightForRowAtIndexPath:(id)a3 sectionIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v9 = PKPassDetailSectionTypeFromString(v6);

  [WeakRetained estimatedHeightForRowAtIndexPath:v7 section:v9];
  v11 = v10;

  return v11;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v12 = PKPassDetailSectionTypeFromString(v8);

  LOBYTE(v8) = [WeakRetained tableView:v10 canEditRowAtIndexPath:v9 section:v12];
  return v8;
}

- (int64_t)editingStyleForRowAtIndexPath:(id)a3 sectionIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v9 = PKPassDetailSectionTypeFromString(v6);

  v10 = [WeakRetained editingStyleForRowAtIndexPath:v7 section:v9];
  return v10;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v10 = PKPassDetailSectionTypeFromString(v7);

  LOBYTE(v7) = [WeakRetained shouldHighlightRowAtIndexPath:v8 section:v10];
  return v7;
}

- (BOOL)shouldDrawTopSeparatorForSectionIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v6 = PKPassDetailSectionTypeFromString(v4);

  LOBYTE(v4) = [WeakRetained shouldDrawTopSeparator:v6];
  return v4;
}

- (BOOL)shouldDrawBottomSeparatorForSectionIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v6 = PKPassDetailSectionTypeFromString(v4);

  LOBYTE(v4) = [WeakRetained shouldDrawBottomSeparator:v6];
  return v4;
}

- (id)tableView:(id)a3 leadingSwipeActionsConfigurationForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v12 = PKPassDetailSectionTypeFromString(v8);

  v13 = [WeakRetained tableView:v10 leadingSwipeActionsConfigurationForRowAtIndexPath:v9 section:v12];

  return v13;
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v12 = PKPassDetailSectionTypeFromString(v8);

  v13 = [WeakRetained tableView:v10 trailingSwipeActionsConfigurationForRowAtIndexPath:v9 section:v12];

  return v13;
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5 sectionIdentifier:(id)a6
{
  y = a5.y;
  x = a5.x;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v15 = PKPassDetailSectionTypeFromString(v11);

  v16 = [WeakRetained tableView:v13 contextMenuConfigurationForRowAtIndexPath:v12 point:v15 section:{x, y}];

  return v16;
}

@end