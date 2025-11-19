@interface RUISubHeaderElement
- (void)configureView:(id)a3;
@end

@implementation RUISubHeaderElement

- (void)configureView:(id)a3
{
  v34 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(RUIElement *)self body];
    v5 = [(RUIElement *)self sourceURL];
    v6 = [(RUIElement *)self attributes];
    [v34 setSubHeaderText:v4 baseURL:v5 attributes:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [(RUIElement *)self body];
    v8 = [(RUIElement *)self attributes];
    [v34 setSubHeaderText:v7 attributes:v8];
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v34 subHeaderLabel];
    v10 = MEMORY[0x277D75348];
    v11 = [(RUIElement *)self attributes];
    v12 = [v11 objectForKeyedSubscript:@"color"];
    v13 = [v10 _remoteUI_colorWithString:v12 defaultColor:0];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v16 = [(RUIElement *)self style];
      v15 = [v16 subHeaderLabelTextColor];
    }

    [v9 setTextColor:v15];
    v17 = [(RUIElement *)self attributes];
    v18 = [v17 objectForKeyedSubscript:@"subHeaderBold"];
    v19 = [v18 isEqual:@"true"];

    if (v19)
    {
      v20 = MEMORY[0x277D74300];
      v21 = [v9 font];
      [v21 pointSize];
      v22 = [v20 boldSystemFontOfSize:?];
      [v9 setFont:v22];
    }

    v23 = [(RUIElement *)self attributes];
    v24 = [v23 objectForKeyedSubscript:@"align"];
    if (v24)
    {
      v25 = [(RUIElement *)self attributes];
      v26 = [v25 objectForKeyedSubscript:@"align"];
      v27 = [RUIParser textAlignmentForString:v26];
    }

    else
    {
      v25 = [(RUIElement *)self style];
      v27 = [v25 subHeaderLabelAlignment];
    }

    [v9 setTextAlignment:v27];
    v28 = [(RUIElement *)self attributes];
    v29 = [v28 objectForKeyedSubscript:@"textStyle"];

    if (v29)
    {
      v30 = [(RUIElement *)self attributes];
      v31 = [v30 objectForKeyedSubscript:@"textStyle"];
      v32 = [RUIParser textStyleForString:v31];

      v33 = [MEMORY[0x277D74300] preferredFontForTextStyle:v32];
      [v9 setFont:v33];

      [v9 setAdjustsFontForContentSizeCategory:1];
    }
  }
}

@end