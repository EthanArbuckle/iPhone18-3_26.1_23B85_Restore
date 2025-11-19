@interface WFInputTypeParameter
- (BOOL)parameterStateIsValid:(id)a3;
- (WFInputTypeParameter)initWithDefinition:(id)a3;
- (id)accessoryIconForPossibleState:(id)a3;
- (id)enumeration:(id)a3 localizedLabelForPossibleState:(id)a4;
- (id)possibleStatesForEnumeration:(id)a3;
- (id)selectionType;
- (void)loadPossibleStatesForEnumeration:(id)a3 searchTerm:(id)a4 completionHandler:(id)a5;
@end

@implementation WFInputTypeParameter

- (id)possibleStatesForEnumeration:(id)a3
{
  v3 = WFCategorizedInputTypes();
  v4 = [v3 allItems];

  return v4;
}

- (void)loadPossibleStatesForEnumeration:(id)a3 searchTerm:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = WFCategorizedInputTypes();
  (*(a5 + 2))(v6, v7, 0);
}

- (id)enumeration:(id)a3 localizedLabelForPossibleState:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v8 value];

  if (v9 && (v10 = NSClassFromString(v9), [(objc_class *)v10 conformsToProtocol:&unk_1F4AA61F0]))
  {
    v11 = [(objc_class *)v10 localizedPluralTypeDescription];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)parameterStateIsValid:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 value];
    v5 = [v4 count] != 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)selectionType
{
  v4.receiver = self;
  v4.super_class = WFInputTypeParameter;
  v2 = [(WFEnumerationParameter *)&v4 selectionType];

  return v2;
}

- (id)accessoryIconForPossibleState:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 value];

  if (!v6)
  {
    v9 = 0;
    goto LABEL_46;
  }

  v7 = [MEMORY[0x1E69E0B48] clearBackground];
  if ([v6 isEqualToString:@"WFImageContentItem"])
  {
    v8 = @"photo";
  }

  else if ([v6 isEqualToString:@"WFAVAssetContentItem"])
  {
    v8 = @"music.on.film";
  }

  else if ([v6 isEqualToString:@"WFiTunesProductContentItem"])
  {
    v8 = @"star.square";
  }

  else if ([v6 isEqualToString:@"WFGenericFileContentItem"])
  {
    v8 = @"doc";
  }

  else if ([v6 isEqualToString:@"WFFolderContentItem"])
  {
    v8 = @"folder";
  }

  else if ([v6 isEqualToString:@"WFPDFContentItem"])
  {
    v8 = @"doc.text";
  }

  else if ([v6 isEqualToString:@"WFStringContentItem"])
  {
    v8 = @"text.alignleft";
  }

  else if ([v6 isEqualToString:@"WFRichTextContentItem"])
  {
    v8 = @"doc.richtext";
  }

  else if ([v6 isEqualToString:@"WFSafariWebPageContentItem"])
  {
    v8 = @"safari";
  }

  else if ([v6 isEqualToString:@"WFURLContentItem"])
  {
    v8 = @"link";
  }

  else if ([v6 isEqualToString:@"WFArticleContentItem"])
  {
    v8 = @"doc.plaintext";
  }

  else if ([v6 isEqualToString:@"WFDCMapsLinkContentItem"])
  {
    v8 = @"map";
  }

  else if ([v6 isEqualToString:@"WFLocationContentItem"])
  {
    v8 = @"mappin.and.ellipse";
  }

  else if ([v6 isEqualToString:@"WFContactContentItem"])
  {
    v8 = @"person.crop.circle";
  }

  else if ([v6 isEqualToString:@"WFEmailAddressContentItem"])
  {
    v8 = @"envelope";
  }

  else if ([v6 isEqualToString:@"WFPhoneNumberContentItem"])
  {
    v8 = @"phone.fill";
  }

  else if ([v6 isEqualToString:@"WFDateContentItem"])
  {
    v8 = @"calendar";
  }

  else
  {
    if (![v6 isEqualToString:@"WFAppStoreAppContentItem"])
    {
      v9 = 0;
      goto LABEL_45;
    }

    v8 = @"appstore";
  }

  v9 = [objc_alloc(MEMORY[0x1E69E0D70]) initWithSymbolName:v8 background:v7];
LABEL_45:

LABEL_46:

  return v9;
}

- (WFInputTypeParameter)initWithDefinition:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFInputTypeParameter;
  v3 = [(WFDynamicEnumerationParameter *)&v7 initWithDefinition:a3];
  v4 = v3;
  if (v3)
  {
    [(WFDynamicEnumerationParameter *)v3 setDataSource:v3];
    v5 = v4;
  }

  return v4;
}

@end