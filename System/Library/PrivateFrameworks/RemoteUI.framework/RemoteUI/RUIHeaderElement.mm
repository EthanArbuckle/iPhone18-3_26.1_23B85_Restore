@interface RUIHeaderElement
- (int64_t)labelAlignment;
- (void)configureView:(id)view;
@end

@implementation RUIHeaderElement

- (int64_t)labelAlignment
{
  attributes = [(RUIElement *)self attributes];
  v4 = [attributes objectForKeyedSubscript:@"align"];
  if (v4)
  {
    attributes2 = [(RUIElement *)self attributes];
    v6 = [attributes2 objectForKeyedSubscript:@"align"];
    headerLabelAlignment = [RUIParser textAlignmentForString:v6];
  }

  else
  {
    attributes2 = [(RUIElement *)self style];
    headerLabelAlignment = [attributes2 headerLabelAlignment];
  }

  return headerLabelAlignment;
}

- (void)configureView:(id)view
{
  v31[2] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if (objc_opt_respondsToSelector())
  {
    body = [(RUIElement *)self body];
    sourceURL = [(RUIElement *)self sourceURL];
    attributes = [(RUIElement *)self attributes];
    [viewCopy setText:body baseURL:sourceURL attributes:attributes];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_6;
    }

    body = [(RUIElement *)self body];
    sourceURL = [(RUIElement *)self attributes];
    [viewCopy setText:body attributes:sourceURL];
  }

LABEL_6:
  if (objc_opt_respondsToSelector())
  {
    v8 = MEMORY[0x277D75348];
    attributes2 = [(RUIElement *)self attributes];
    v10 = [attributes2 objectForKeyedSubscript:@"color"];
    v11 = [v8 _remoteUI_colorWithString:v10 defaultColor:0];
    v12 = v11;
    if (v11)
    {
      headerLabelTextColor = v11;
    }

    else
    {
      style = [(RUIElement *)self style];
      headerLabelTextColor = [style headerLabelTextColor];
    }

    headerLabel = [viewCopy headerLabel];
    [headerLabel setTextColor:headerLabelTextColor];

    headerLabel2 = [viewCopy headerLabel];
    [headerLabel2 setTextAlignment:{-[RUIHeaderElement labelAlignment](self, "labelAlignment")}];

    attributes3 = [(RUIElement *)self attributes];
    v18 = [attributes3 objectForKeyedSubscript:@"legacyLabel"];
    bOOLValue = [v18 BOOLValue];

    if (bOOLValue)
    {
      defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
      v21 = [defaultParagraphStyle mutableCopy];

      [v21 setLineBreakMode:0];
      if (+[RUIPlatform isAppleTV])
      {
        RemoteUIHeaderFont();
      }

      else
      {
        [MEMORY[0x277D74300] boldSystemFontOfSize:14.0];
      }
      v22 = ;
      v23 = *MEMORY[0x277D74118];
      v30[0] = *MEMORY[0x277D740A8];
      v30[1] = v23;
      v31[0] = v22;
      v31[1] = v21;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
      headerLabel3 = [viewCopy headerLabel];
      v26 = objc_alloc(MEMORY[0x277CCA898]);
      body2 = [(RUIElement *)self body];
      v28 = [v26 initWithString:body2 attributes:v24];
      [headerLabel3 setAttributedText:v28];

      headerLabel4 = [viewCopy headerLabel];
      [headerLabel4 setTextAlignment:1];
    }
  }
}

@end