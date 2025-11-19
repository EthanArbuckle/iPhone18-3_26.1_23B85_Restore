@interface RUIFooterElement
- (id)linkURL;
- (int64_t)labelAlignment;
- (void)configureView:(id)a3;
- (void)setEnabled:(BOOL)a3;
@end

@implementation RUIFooterElement

- (int64_t)labelAlignment
{
  v3 = [(RUIElement *)self attributes];
  v4 = [v3 objectForKeyedSubscript:@"align"];

  if (v4)
  {
    v5 = [(RUIElement *)self attributes];
    v6 = [v5 objectForKeyedSubscript:@"align"];
    v7 = [RUIParser textAlignmentForString:v6];
  }

  else
  {
    v8 = [(RUIFooterElement *)self linkURL];

    v9 = [(RUIElement *)self style];
    v5 = v9;
    if (v8)
    {
      v10 = [v9 footerLinkAlignment];
    }

    else
    {
      v10 = [v9 footerLabelAlignment];
    }

    v7 = v10;
  }

  return v7;
}

- (id)linkURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = [(RUIElement *)self attributes];
  v4 = [v3 objectForKeyedSubscript:@"url"];
  v5 = [v2 URLWithString:v4];

  return v5;
}

- (void)configureView:(id)a3
{
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v6 = [(RUIElement *)self body];
    v7 = [(RUIElement *)self attributes];
    [v5 setText:v6 attributes:v7];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_footerView, a3);
    v8 = MEMORY[0x277D75348];
    v9 = [(RUIElement *)self attributes];
    v10 = [v9 objectForKeyedSubscript:@"color"];
    v11 = [v8 _remoteUI_colorWithString:v10 defaultColor:0];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v14 = [(RUIElement *)self style];
      v13 = [v14 footerLabelTextColor];
    }

    [(RemoteUISectionFooter *)self->_footerView setTextColor:v13];
    [(RemoteUISectionFooter *)self->_footerView setTextAlignment:[(RUIFooterElement *)self labelAlignment]];
    v15 = [(RUIElement *)self style];

    if (v15)
    {
      footerView = self->_footerView;
      v17 = [(RUIElement *)self style];
      [v17 footerTopMargin];
      [(RemoteUISectionFooter *)footerView setTopMargin:?];

      v18 = self->_footerView;
      v19 = [(RUIElement *)self style];
      v20 = [v19 footerFont];
      [(RemoteUISectionFooter *)v18 setFont:v20];
    }

    v21 = [(RUIElement *)self attributes];
    v22 = [v21 objectForKeyedSubscript:@"activationFunction"];

    if (v22)
    {
      objc_initWeak(&location, self);
      v23 = self->_footerView;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __34__RUIFooterElement_configureView___block_invoke;
      v29[3] = &unk_2782E81C8;
      objc_copyWeak(&v30, &location);
      [(RemoteUISectionFooter *)v23 setLinkAction:v29];
      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
    }

    else
    {
      v24 = [(RUIFooterElement *)self linkURL];

      if (v24)
      {
        v25 = self->_footerView;
        v26 = [(RUIFooterElement *)self linkURL];
        [(RemoteUISectionFooter *)v25 setLinkURL:v26];
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v27 = [(RUIElement *)self pageElement];
    v28 = [v27 page];
    [v5 configureInPage:v28];
  }
}

void __34__RUIFooterElement_configureView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performAction:2 completion:0];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = RUIFooterElement;
  [(RUIElement *)&v6 setEnabled:?];
  v5 = [(RemoteUISectionFooter *)self->_footerView linkLabel];
  [v5 setEnabled:v3];
}

@end