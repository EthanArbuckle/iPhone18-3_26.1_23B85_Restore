@interface WFMessageTrigger
+ (id)displayGlyph;
+ (id)localizedDisplayNameWithContext:(id)context;
- (BOOL)hasValidConfiguration;
- (WFMessageTrigger)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localizedDescriptionWithConfigurationSummaryWithCount:(unint64_t)count;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFMessageTrigger

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = WFMessageTrigger;
  v4 = [(WFTrigger *)&v12 copyWithZone:zone];
  selectedContents = [(WFMessageTrigger *)self selectedContents];
  v6 = [selectedContents copy];
  [v4 setSelectedContents:v6];

  selectedSenders = [(WFMessageTrigger *)self selectedSenders];
  v8 = [selectedSenders copy];
  [v4 setSelectedSenders:v8];

  selectedSendersStrings = [(WFMessageTrigger *)self selectedSendersStrings];
  v10 = [selectedSendersStrings copy];
  [v4 setSelectedSendersStrings:v10];

  return v4;
}

- (WFMessageTrigger)initWithCoder:(id)coder
{
  v30[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = WFMessageTrigger;
  v5 = [(WFTrigger *)&v23 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedContents"];
    selectedContents = v5->_selectedContents;
    v5->_selectedContents = v6;

    v8 = MEMORY[0x1E695DFD8];
    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v9 = getCNContactClass_softClass;
    v28 = getCNContactClass_softClass;
    if (!getCNContactClass_softClass)
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __getCNContactClass_block_invoke;
      v24[3] = &unk_1E837FAC0;
      v24[4] = &v25;
      __getCNContactClass_block_invoke(v24);
      v9 = v26[3];
    }

    v10 = v9;
    _Block_object_dispose(&v25, 8);
    v30[0] = v9;
    v30[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    v12 = [v8 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"selectedSenders"];
    selectedSenders = v5->_selectedSenders;
    v5->_selectedSenders = v13;

    v15 = MEMORY[0x1E695DFD8];
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v17 = [v15 setWithArray:v16];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"selectedSendersStrings"];
    selectedSendersStrings = v5->_selectedSendersStrings;
    v5->_selectedSendersStrings = v18;

    v20 = v5;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = WFMessageTrigger;
  coderCopy = coder;
  [(WFTrigger *)&v8 encodeWithCoder:coderCopy];
  v5 = [(WFMessageTrigger *)self selectedContents:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"selectedContents"];

  selectedSenders = [(WFMessageTrigger *)self selectedSenders];
  [coderCopy encodeObject:selectedSenders forKey:@"selectedSenders"];

  selectedSendersStrings = [(WFMessageTrigger *)self selectedSendersStrings];
  [coderCopy encodeObject:selectedSendersStrings forKey:@"selectedSendersStrings"];
}

- (id)localizedDescriptionWithConfigurationSummaryWithCount:(unint64_t)count
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  selectedContents = [(WFMessageTrigger *)self selectedContents];
  v7 = [selectedContents length];

  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = WFLocalizedString(@"Containing ‘%@’");
    selectedContents2 = [(WFMessageTrigger *)self selectedContents];
    v11 = [v8 stringWithFormat:v9, selectedContents2];
    [v5 addObject:v11];
  }

  selectedSenders = [(WFMessageTrigger *)self selectedSenders];
  v13 = [selectedSenders count];

  if (v13)
  {
    v14 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    selectedSenders2 = [(WFMessageTrigger *)self selectedSenders];
    v16 = [selectedSenders2 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v35;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v35 != v18)
          {
            objc_enumerationMutation(selectedSenders2);
          }

          v20 = [MEMORY[0x1E6996CC8] contactWithCNContact:*(*(&v34 + 1) + 8 * i)];
          triggerDisplayName = [v20 triggerDisplayName];
          [v14 addObject:triggerDisplayName];
        }

        v17 = [selectedSenders2 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v17);
    }

    v22 = MEMORY[0x1E696AEC0];
    v23 = WFLocalizedString(@"From %@");
    v24 = [v14 componentsJoinedByString:{@", "}];
    v25 = [v22 stringWithFormat:v23, v24];
    [v5 addObject:v25];
  }

  v26 = MEMORY[0x1E696AEC0];
  if (count == 1)
  {
    v27 = WFLocalizedString(@"When I Get a Message %@");
    v28 = [v5 componentsJoinedByString:@" "];
    v29 = v28;
  }

  else
  {
    v27 = WFLocalizedString(@"When I Get a Message %@ (%d)");
    v28 = [v5 componentsJoinedByString:@" "];
    v29 = v28;
    countCopy = count;
  }

  countCopy = [v26 stringWithFormat:v27, v28, countCopy];

  v31 = *MEMORY[0x1E69E9840];

  return countCopy;
}

- (BOOL)hasValidConfiguration
{
  selectedSenders = [(WFMessageTrigger *)self selectedSenders];
  if ([selectedSenders count])
  {
    v4 = 1;
  }

  else
  {
    selectedContents = [(WFMessageTrigger *)self selectedContents];
    v4 = selectedContents != 0;
  }

  return v4;
}

+ (id)displayGlyph
{
  v2 = MEMORY[0x1E69E0B58];
  displayGlyphName = [self displayGlyphName];
  v4 = [v2 triggerDisplaySymbolNamed:displayGlyphName renderingMode:2];

  return v4;
}

+ (id)localizedDisplayNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Message", @"Message");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end