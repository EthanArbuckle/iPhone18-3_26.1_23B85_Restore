@interface RUITopLevelElementProvider
- (BOOL)hasTableView;
- (BOOL)isPrimaryElementNilOrKindOf:(Class)a3;
- (RUIElement)parentElement;
- (RUIObjectModel)objectModel;
- (RUIPageElement)pageElement;
- (RUITopLevelElementProvider)initWithParentElement:(id)a3;
- (RUITopLevelElementProviderDelegate)delegate;
- (id)makePasscodeViewOM;
- (id)makeSpinnerViewOM;
- (id)makeTableViewOM;
- (id)makeWebViewOM;
- (void)setPrimaryElement:(id)a3;
@end

@implementation RUITopLevelElementProvider

- (RUITopLevelElementProvider)initWithParentElement:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RUITopLevelElementProvider;
  v5 = [(RUITopLevelElementProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_parentElement, v4);
  }

  return v6;
}

- (RUIObjectModel)objectModel
{
  v2 = [(RUITopLevelElementProvider *)self pageElement];
  v3 = [v2 page];
  v4 = [v3 objectModel];

  return v4;
}

- (RUIPageElement)pageElement
{
  v2 = [(RUITopLevelElementProvider *)self parentElement];
  v3 = [v2 pageElement];

  return v3;
}

- (id)makeWebViewOM
{
  if (!self->_webViewOM)
  {
    v3 = [RUIWebView alloc];
    v4 = [(RUITopLevelElementProvider *)self pageElement];
    v5 = [(RUIElement *)v3 initWithAttributes:0 parent:v4];
    webViewOM = self->_webViewOM;
    self->_webViewOM = v5;

    v7 = self->_webViewOM;
    v8 = [(RUITopLevelElementProvider *)self objectModel];
    [(RUIWebView *)v7 setDelegate:v8];

    v9 = [(RUITopLevelElementProvider *)self delegate];
    LOBYTE(v8) = objc_opt_respondsToSelector();

    if (v8)
    {
      v10 = [(RUITopLevelElementProvider *)self delegate];
      [v10 topLevelElementProvider:self didCreateWebView:self->_webViewOM];
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
    v4 = [(RUITopLevelElementProvider *)self pageElement];
    v5 = [(RUITableView *)v3 initWithAttributes:0 parent:v4];
    tableViewOM = self->_tableViewOM;
    self->_tableViewOM = v5;

    v7 = self->_tableViewOM;
    v8 = [(RUITopLevelElementProvider *)self objectModel];
    [(RUITableView *)v7 setObjectModel:v8];

    v9 = self->_tableViewOM;
    v10 = [(RUITopLevelElementProvider *)self pageElement];
    v11 = [v10 page];
    [(RUITableView *)v9 setPage:v11];

    v12 = [(RUITopLevelElementProvider *)self delegate];
    LOBYTE(v10) = objc_opt_respondsToSelector();

    if (v10)
    {
      v13 = [(RUITopLevelElementProvider *)self delegate];
      [v13 topLevelElementProvider:self didCreateTableView:self->_tableViewOM];
    }
  }

  v14 = self->_tableViewOM;

  return v14;
}

- (void)setPrimaryElement:(id)a3
{
  v9 = a3;
  v5 = self->_primaryElement;
  objc_storeStrong(&self->_primaryElement, a3);
  v6 = [(RUITopLevelElementProvider *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(RUITopLevelElementProvider *)self delegate];
    [v8 topLevelElementProvider:self didSetPrimaryElement:v9 previousElement:v5];
  }
}

- (BOOL)hasTableView
{
  v2 = [(RUITopLevelElementProvider *)self tableViewOM];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isPrimaryElementNilOrKindOf:(Class)a3
{
  v4 = [(RUITopLevelElementProvider *)self primaryElement];
  if (v4)
  {
    v5 = [(RUITopLevelElementProvider *)self primaryElement];
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
    v4 = [(RUITopLevelElementProvider *)self pageElement];
    v5 = [(RUIPasscodeView *)v3 initWithAttributes:0 parent:v4];
    passcodeViewOM = self->_passcodeViewOM;
    self->_passcodeViewOM = v5;

    v7 = self->_passcodeViewOM;
    v8 = [(RUITopLevelElementProvider *)self objectModel];
    [(RUIPasscodeView *)v7 setObjectModel:v8];

    v9 = self->_passcodeViewOM;
    v10 = [(RUITopLevelElementProvider *)self pageElement];
    v11 = [v10 page];
    [(RUIPasscodeView *)v9 setPage:v11];

    v12 = [(RUITopLevelElementProvider *)self delegate];
    LOBYTE(v10) = objc_opt_respondsToSelector();

    if (v10)
    {
      v13 = [(RUITopLevelElementProvider *)self delegate];
      [v13 topLevelElementProvider:self didCreatePasscodeView:self->_passcodeViewOM];
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
    v4 = [(RUITopLevelElementProvider *)self pageElement];
    v5 = [(RUIElement *)v3 initWithAttributes:0 parent:v4];
    spinnerViewOM = self->_spinnerViewOM;
    self->_spinnerViewOM = v5;

    v7 = self->_spinnerViewOM;
    v8 = [(RUITopLevelElementProvider *)self objectModel];
    [(RUISpinnerView *)v7 setObjectModel:v8];

    v9 = [(RUITopLevelElementProvider *)self delegate];
    LOBYTE(v8) = objc_opt_respondsToSelector();

    if (v8)
    {
      v10 = [(RUITopLevelElementProvider *)self delegate];
      [v10 topLevelElementProvider:self didCreateSpinnerView:self->_spinnerViewOM];
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