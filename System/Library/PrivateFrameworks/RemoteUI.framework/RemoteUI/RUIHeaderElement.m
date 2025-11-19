@interface RUIHeaderElement
- (int64_t)labelAlignment;
- (void)configureView:(id)a3;
@end

@implementation RUIHeaderElement

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
    v5 = [(RUIElement *)self style];
    v7 = [v5 headerLabelAlignment];
  }

  return v7;
}

- (void)configureView:(id)a3
{
  v31[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(RUIElement *)self body];
    v6 = [(RUIElement *)self sourceURL];
    v7 = [(RUIElement *)self attributes];
    [v4 setText:v5 baseURL:v6 attributes:v7];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_6;
    }

    v5 = [(RUIElement *)self body];
    v6 = [(RUIElement *)self attributes];
    [v4 setText:v5 attributes:v6];
  }

LABEL_6:
  if (objc_opt_respondsToSelector())
  {
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
      v13 = [v14 headerLabelTextColor];
    }

    v15 = [v4 headerLabel];
    [v15 setTextColor:v13];

    v16 = [v4 headerLabel];
    [v16 setTextAlignment:{-[RUIHeaderElement labelAlignment](self, "labelAlignment")}];

    v17 = [(RUIElement *)self attributes];
    v18 = [v17 objectForKeyedSubscript:@"legacyLabel"];
    v19 = [v18 BOOLValue];

    if (v19)
    {
      v20 = [MEMORY[0x277D74248] defaultParagraphStyle];
      v21 = [v20 mutableCopy];

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
      v25 = [v4 headerLabel];
      v26 = objc_alloc(MEMORY[0x277CCA898]);
      v27 = [(RUIElement *)self body];
      v28 = [v26 initWithString:v27 attributes:v24];
      [v25 setAttributedText:v28];

      v29 = [v4 headerLabel];
      [v29 setTextAlignment:1];
    }
  }
}

@end