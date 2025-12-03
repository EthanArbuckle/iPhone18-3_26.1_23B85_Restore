@interface RUIFooterElement
- (id)linkURL;
- (int64_t)labelAlignment;
- (void)configureView:(id)view;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation RUIFooterElement

- (int64_t)labelAlignment
{
  attributes = [(RUIElement *)self attributes];
  v4 = [attributes objectForKeyedSubscript:@"align"];

  if (v4)
  {
    attributes2 = [(RUIElement *)self attributes];
    v6 = [attributes2 objectForKeyedSubscript:@"align"];
    v7 = [RUIParser textAlignmentForString:v6];
  }

  else
  {
    linkURL = [(RUIFooterElement *)self linkURL];

    style = [(RUIElement *)self style];
    attributes2 = style;
    if (linkURL)
    {
      footerLinkAlignment = [style footerLinkAlignment];
    }

    else
    {
      footerLinkAlignment = [style footerLabelAlignment];
    }

    v7 = footerLinkAlignment;
  }

  return v7;
}

- (id)linkURL
{
  v2 = MEMORY[0x277CBEBC0];
  attributes = [(RUIElement *)self attributes];
  v4 = [attributes objectForKeyedSubscript:@"url"];
  v5 = [v2 URLWithString:v4];

  return v5;
}

- (void)configureView:(id)view
{
  viewCopy = view;
  if (objc_opt_respondsToSelector())
  {
    body = [(RUIElement *)self body];
    attributes = [(RUIElement *)self attributes];
    [viewCopy setText:body attributes:attributes];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_footerView, view);
    v8 = MEMORY[0x277D75348];
    attributes2 = [(RUIElement *)self attributes];
    v10 = [attributes2 objectForKeyedSubscript:@"color"];
    v11 = [v8 _remoteUI_colorWithString:v10 defaultColor:0];
    v12 = v11;
    if (v11)
    {
      footerLabelTextColor = v11;
    }

    else
    {
      style = [(RUIElement *)self style];
      footerLabelTextColor = [style footerLabelTextColor];
    }

    [(RemoteUISectionFooter *)self->_footerView setTextColor:footerLabelTextColor];
    [(RemoteUISectionFooter *)self->_footerView setTextAlignment:[(RUIFooterElement *)self labelAlignment]];
    style2 = [(RUIElement *)self style];

    if (style2)
    {
      footerView = self->_footerView;
      style3 = [(RUIElement *)self style];
      [style3 footerTopMargin];
      [(RemoteUISectionFooter *)footerView setTopMargin:?];

      v18 = self->_footerView;
      style4 = [(RUIElement *)self style];
      footerFont = [style4 footerFont];
      [(RemoteUISectionFooter *)v18 setFont:footerFont];
    }

    attributes3 = [(RUIElement *)self attributes];
    v22 = [attributes3 objectForKeyedSubscript:@"activationFunction"];

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
      linkURL = [(RUIFooterElement *)self linkURL];

      if (linkURL)
      {
        v25 = self->_footerView;
        linkURL2 = [(RUIFooterElement *)self linkURL];
        [(RemoteUISectionFooter *)v25 setLinkURL:linkURL2];
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    pageElement = [(RUIElement *)self pageElement];
    page = [pageElement page];
    [viewCopy configureInPage:page];
  }
}

void __34__RUIFooterElement_configureView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performAction:2 completion:0];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = RUIFooterElement;
  [(RUIElement *)&v6 setEnabled:?];
  linkLabel = [(RemoteUISectionFooter *)self->_footerView linkLabel];
  [linkLabel setEnabled:enabledCopy];
}

@end