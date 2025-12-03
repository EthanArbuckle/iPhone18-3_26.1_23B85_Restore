@interface RUITopLevelElementProvider
- (BOOL)hasTableView;
- (BOOL)isPrimaryElementNilOrKindOf:(Class)of;
- (RUIElement)parentElement;
- (RUIObjectModel)objectModel;
- (RUIPageElement)pageElement;
- (RUITopLevelElementProvider)initWithParentElement:(id)element;
- (RUITopLevelElementProviderDelegate)delegate;
- (id)makePasscodeViewOM;
- (id)makeSpinnerViewOM;
- (id)makeTableViewOM;
- (id)makeWebViewOM;
- (void)setPrimaryElement:(id)element;
@end

@implementation RUITopLevelElementProvider

- (RUITopLevelElementProvider)initWithParentElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = RUITopLevelElementProvider;
  v5 = [(RUITopLevelElementProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_parentElement, elementCopy);
  }

  return v6;
}

- (RUIObjectModel)objectModel
{
  pageElement = [(RUITopLevelElementProvider *)self pageElement];
  page = [pageElement page];
  objectModel = [page objectModel];

  return objectModel;
}

- (RUIPageElement)pageElement
{
  parentElement = [(RUITopLevelElementProvider *)self parentElement];
  pageElement = [parentElement pageElement];

  return pageElement;
}

- (id)makeWebViewOM
{
  if (!self->_webViewOM)
  {
    v3 = [RUIWebView alloc];
    pageElement = [(RUITopLevelElementProvider *)self pageElement];
    v5 = [(RUIElement *)v3 initWithAttributes:0 parent:pageElement];
    webViewOM = self->_webViewOM;
    self->_webViewOM = v5;

    v7 = self->_webViewOM;
    objectModel = [(RUITopLevelElementProvider *)self objectModel];
    [(RUIWebView *)v7 setDelegate:objectModel];

    delegate = [(RUITopLevelElementProvider *)self delegate];
    LOBYTE(objectModel) = objc_opt_respondsToSelector();

    if (objectModel)
    {
      delegate2 = [(RUITopLevelElementProvider *)self delegate];
      [delegate2 topLevelElementProvider:self didCreateWebView:self->_webViewOM];
    }
  }

  v11 = self->_webViewOM;

  return v11;
}

- (id)makeTableViewOM
{
  if (!self->_tableViewOM)
  {
    v3 = [RUITableView alloc];
    pageElement = [(RUITopLevelElementProvider *)self pageElement];
    v5 = [(RUITableView *)v3 initWithAttributes:0 parent:pageElement];
    tableViewOM = self->_tableViewOM;
    self->_tableViewOM = v5;

    v7 = self->_tableViewOM;
    objectModel = [(RUITopLevelElementProvider *)self objectModel];
    [(RUITableView *)v7 setObjectModel:objectModel];

    v9 = self->_tableViewOM;
    pageElement2 = [(RUITopLevelElementProvider *)self pageElement];
    page = [pageElement2 page];
    [(RUITableView *)v9 setPage:page];

    delegate = [(RUITopLevelElementProvider *)self delegate];
    LOBYTE(pageElement2) = objc_opt_respondsToSelector();

    if (pageElement2)
    {
      delegate2 = [(RUITopLevelElementProvider *)self delegate];
      [delegate2 topLevelElementProvider:self didCreateTableView:self->_tableViewOM];
    }
  }

  v14 = self->_tableViewOM;

  return v14;
}

- (void)setPrimaryElement:(id)element
{
  elementCopy = element;
  v5 = self->_primaryElement;
  objc_storeStrong(&self->_primaryElement, element);
  delegate = [(RUITopLevelElementProvider *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(RUITopLevelElementProvider *)self delegate];
    [delegate2 topLevelElementProvider:self didSetPrimaryElement:elementCopy previousElement:v5];
  }
}

- (BOOL)hasTableView
{
  tableViewOM = [(RUITopLevelElementProvider *)self tableViewOM];
  v3 = tableViewOM != 0;

  return v3;
}

- (BOOL)isPrimaryElementNilOrKindOf:(Class)of
{
  primaryElement = [(RUITopLevelElementProvider *)self primaryElement];
  if (primaryElement)
  {
    primaryElement2 = [(RUITopLevelElementProvider *)self primaryElement];
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

- (id)makePasscodeViewOM
{
  if (!self->_passcodeViewOM)
  {
    v3 = [RUIPasscodeView alloc];
    pageElement = [(RUITopLevelElementProvider *)self pageElement];
    v5 = [(RUIPasscodeView *)v3 initWithAttributes:0 parent:pageElement];
    passcodeViewOM = self->_passcodeViewOM;
    self->_passcodeViewOM = v5;

    v7 = self->_passcodeViewOM;
    objectModel = [(RUITopLevelElementProvider *)self objectModel];
    [(RUIPasscodeView *)v7 setObjectModel:objectModel];

    v9 = self->_passcodeViewOM;
    pageElement2 = [(RUITopLevelElementProvider *)self pageElement];
    page = [pageElement2 page];
    [(RUIPasscodeView *)v9 setPage:page];

    delegate = [(RUITopLevelElementProvider *)self delegate];
    LOBYTE(pageElement2) = objc_opt_respondsToSelector();

    if (pageElement2)
    {
      delegate2 = [(RUITopLevelElementProvider *)self delegate];
      [delegate2 topLevelElementProvider:self didCreatePasscodeView:self->_passcodeViewOM];
    }
  }

  v14 = self->_passcodeViewOM;

  return v14;
}

- (id)makeSpinnerViewOM
{
  if (!self->_spinnerViewOM)
  {
    v3 = [RUISpinnerView alloc];
    pageElement = [(RUITopLevelElementProvider *)self pageElement];
    v5 = [(RUIElement *)v3 initWithAttributes:0 parent:pageElement];
    spinnerViewOM = self->_spinnerViewOM;
    self->_spinnerViewOM = v5;

    v7 = self->_spinnerViewOM;
    objectModel = [(RUITopLevelElementProvider *)self objectModel];
    [(RUISpinnerView *)v7 setObjectModel:objectModel];

    delegate = [(RUITopLevelElementProvider *)self delegate];
    LOBYTE(objectModel) = objc_opt_respondsToSelector();

    if (objectModel)
    {
      delegate2 = [(RUITopLevelElementProvider *)self delegate];
      [delegate2 topLevelElementProvider:self didCreateSpinnerView:self->_spinnerViewOM];
    }
  }

  v11 = self->_spinnerViewOM;

  return v11;
}

- (RUIElement)parentElement
{
  WeakRetained = objc_loadWeakRetained(&self->_parentElement);

  return WeakRetained;
}

- (RUITopLevelElementProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end