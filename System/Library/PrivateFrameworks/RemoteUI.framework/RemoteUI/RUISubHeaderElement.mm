@interface RUISubHeaderElement
- (void)configureView:(id)view;
@end

@implementation RUISubHeaderElement

- (void)configureView:(id)view
{
  viewCopy = view;
  if (objc_opt_respondsToSelector())
  {
    body = [(RUIElement *)self body];
    sourceURL = [(RUIElement *)self sourceURL];
    attributes = [(RUIElement *)self attributes];
    [viewCopy setSubHeaderText:body baseURL:sourceURL attributes:attributes];
  }

  if (objc_opt_respondsToSelector())
  {
    body2 = [(RUIElement *)self body];
    attributes2 = [(RUIElement *)self attributes];
    [viewCopy setSubHeaderText:body2 attributes:attributes2];
  }

  if (objc_opt_respondsToSelector())
  {
    subHeaderLabel = [viewCopy subHeaderLabel];
    v10 = MEMORY[0x277D75348];
    attributes3 = [(RUIElement *)self attributes];
    v12 = [attributes3 objectForKeyedSubscript:@"color"];
    v13 = [v10 _remoteUI_colorWithString:v12 defaultColor:0];
    v14 = v13;
    if (v13)
    {
      subHeaderLabelTextColor = v13;
    }

    else
    {
      style = [(RUIElement *)self style];
      subHeaderLabelTextColor = [style subHeaderLabelTextColor];
    }

    [subHeaderLabel setTextColor:subHeaderLabelTextColor];
    attributes4 = [(RUIElement *)self attributes];
    v18 = [attributes4 objectForKeyedSubscript:@"subHeaderBold"];
    v19 = [v18 isEqual:@"true"];

    if (v19)
    {
      v20 = MEMORY[0x277D74300];
      font = [subHeaderLabel font];
      [font pointSize];
      v22 = [v20 boldSystemFontOfSize:?];
      [subHeaderLabel setFont:v22];
    }

    attributes5 = [(RUIElement *)self attributes];
    v24 = [attributes5 objectForKeyedSubscript:@"align"];
    if (v24)
    {
      attributes6 = [(RUIElement *)self attributes];
      v26 = [attributes6 objectForKeyedSubscript:@"align"];
      subHeaderLabelAlignment = [RUIParser textAlignmentForString:v26];
    }

    else
    {
      attributes6 = [(RUIElement *)self style];
      subHeaderLabelAlignment = [attributes6 subHeaderLabelAlignment];
    }

    [subHeaderLabel setTextAlignment:subHeaderLabelAlignment];
    attributes7 = [(RUIElement *)self attributes];
    v29 = [attributes7 objectForKeyedSubscript:@"textStyle"];

    if (v29)
    {
      attributes8 = [(RUIElement *)self attributes];
      v31 = [attributes8 objectForKeyedSubscript:@"textStyle"];
      v32 = [RUIParser textStyleForString:v31];

      v33 = [MEMORY[0x277D74300] preferredFontForTextStyle:v32];
      [subHeaderLabel setFont:v33];

      [subHeaderLabel setAdjustsFontForContentSizeCategory:1];
    }
  }
}

@end