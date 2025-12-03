@interface PKPaymentPassDetailWrapperSectionController
- (BOOL)shouldDrawBottomSeparatorForSectionIdentifier:(id)identifier;
- (BOOL)shouldDrawTopSeparatorForSectionIdentifier:(id)identifier;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (PKPaymentPassDetailWrapperSectionController)initWithViewController:(id)controller;
- (double)estimatedHeightForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (double)tableView:(id)view heightForFooterInSectionIdentifier:(id)identifier;
- (double)tableView:(id)view heightForHeaderInSectionIdentifier:(id)identifier;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point sectionIdentifier:(id)identifier;
- (id)tableView:(id)view leadingSwipeActionsConfigurationForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (id)tableView:(id)view viewForFooterInSectionIdentifier:(id)identifier;
- (id)tableView:(id)view viewForHeaderInSectionIdentifier:(id)identifier;
- (id)titleForFooterInSectionIdentifier:(id)identifier;
- (id)titleForHeaderInSectionIdentifier:(id)identifier;
- (int64_t)editingStyleForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (int64_t)tableView:(id)view numberOfRowsInSectionIdentifier:(id)identifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
@end

@implementation PKPaymentPassDetailWrapperSectionController

- (PKPaymentPassDetailWrapperSectionController)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = PKPaymentPassDetailWrapperSectionController;
  v5 = [(PKPaymentPassDetailWrapperSectionController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewController, controllerCopy);
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

- (int64_t)tableView:(id)view numberOfRowsInSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v9 = PKPassDetailSectionTypeFromString(identifierCopy);

  v10 = [WeakRetained tableView:viewCopy numberOfRowsInSectionCase:v9];
  return v10;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pathCopy = path;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v12 = PKPassDetailSectionTypeFromString(identifierCopy);

  v13 = [WeakRetained tableView:viewCopy cellForRowAtIndexPath:pathCopy section:v12];

  return v13;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pathCopy = path;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v11 = PKPassDetailSectionTypeFromString(identifierCopy);

  [WeakRetained tableView:viewCopy didSelectRowAtIndexPath:pathCopy section:v11];
}

- (id)titleForHeaderInSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v6 = PKPassDetailSectionTypeFromString(identifierCopy);

  v7 = [WeakRetained titleForHeaderInSection:v6];

  return v7;
}

- (id)titleForFooterInSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v6 = PKPassDetailSectionTypeFromString(identifierCopy);

  v7 = [WeakRetained titleForFooterInSection:v6];

  return v7;
}

- (id)tableView:(id)view viewForHeaderInSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v9 = PKPassDetailSectionTypeFromString(identifierCopy);

  v10 = [WeakRetained tableView:viewCopy viewForHeaderInSectionCase:v9];

  return v10;
}

- (id)tableView:(id)view viewForFooterInSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v9 = PKPassDetailSectionTypeFromString(identifierCopy);

  v10 = [WeakRetained tableView:viewCopy viewForFooterInSectionCase:v9];

  return v10;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pathCopy = path;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v12 = PKPassDetailSectionTypeFromString(identifierCopy);

  [WeakRetained tableView:viewCopy heightForRowAtIndexPath:pathCopy section:v12];
  v14 = v13;

  return v14;
}

- (double)tableView:(id)view heightForHeaderInSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v9 = PKPassDetailSectionTypeFromString(identifierCopy);

  [WeakRetained tableView:viewCopy heightForHeaderInSectionCase:v9];
  v11 = v10;

  return v11;
}

- (double)tableView:(id)view heightForFooterInSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v9 = PKPassDetailSectionTypeFromString(identifierCopy);

  [WeakRetained tableView:viewCopy heightForFooterInSectionCase:v9];
  v11 = v10;

  return v11;
}

- (double)estimatedHeightForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v9 = PKPassDetailSectionTypeFromString(identifierCopy);

  [WeakRetained estimatedHeightForRowAtIndexPath:pathCopy section:v9];
  v11 = v10;

  return v11;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pathCopy = path;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v12 = PKPassDetailSectionTypeFromString(identifierCopy);

  LOBYTE(identifierCopy) = [WeakRetained tableView:viewCopy canEditRowAtIndexPath:pathCopy section:v12];
  return identifierCopy;
}

- (int64_t)editingStyleForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v9 = PKPassDetailSectionTypeFromString(identifierCopy);

  v10 = [WeakRetained editingStyleForRowAtIndexPath:pathCopy section:v9];
  return v10;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v10 = PKPassDetailSectionTypeFromString(identifierCopy);

  LOBYTE(identifierCopy) = [WeakRetained shouldHighlightRowAtIndexPath:pathCopy section:v10];
  return identifierCopy;
}

- (BOOL)shouldDrawTopSeparatorForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v6 = PKPassDetailSectionTypeFromString(identifierCopy);

  LOBYTE(identifierCopy) = [WeakRetained shouldDrawTopSeparator:v6];
  return identifierCopy;
}

- (BOOL)shouldDrawBottomSeparatorForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v6 = PKPassDetailSectionTypeFromString(identifierCopy);

  LOBYTE(identifierCopy) = [WeakRetained shouldDrawBottomSeparator:v6];
  return identifierCopy;
}

- (id)tableView:(id)view leadingSwipeActionsConfigurationForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pathCopy = path;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v12 = PKPassDetailSectionTypeFromString(identifierCopy);

  v13 = [WeakRetained tableView:viewCopy leadingSwipeActionsConfigurationForRowAtIndexPath:pathCopy section:v12];

  return v13;
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pathCopy = path;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v12 = PKPassDetailSectionTypeFromString(identifierCopy);

  v13 = [WeakRetained tableView:viewCopy trailingSwipeActionsConfigurationForRowAtIndexPath:pathCopy section:v12];

  return v13;
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point sectionIdentifier:(id)identifier
{
  y = point.y;
  x = point.x;
  identifierCopy = identifier;
  pathCopy = path;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v15 = PKPassDetailSectionTypeFromString(identifierCopy);

  v16 = [WeakRetained tableView:viewCopy contextMenuConfigurationForRowAtIndexPath:pathCopy point:v15 section:{x, y}];

  return v16;
}

@end