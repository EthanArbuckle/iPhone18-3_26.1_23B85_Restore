@interface WFMessageTrigger
+ (id)displayGlyph;
+ (id)localizedDisplayNameWithContext:(id)a3;
- (BOOL)hasValidConfiguration;
- (WFMessageTrigger)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)localizedDescriptionWithConfigurationSummaryWithCount:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFMessageTrigger

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = WFMessageTrigger;
  v4 = [(WFTrigger *)&v12 copyWithZone:a3];
  v5 = [(WFMessageTrigger *)self selectedContents];
  v6 = [v5 copy];
  [v4 setSelectedContents:v6];

  v7 = [(WFMessageTrigger *)self selectedSenders];
  v8 = [v7 copy];
  [v4 setSelectedSenders:v8];

  v9 = [(WFMessageTrigger *)self selectedSendersStrings];
  v10 = [v9 copy];
  [v4 setSelectedSendersStrings:v10];

  return v4;
}

- (WFMessageTrigger)initWithCoder:(id)a3
{
  v30[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = WFMessageTrigger;
  v5 = [(WFTrigger *)&v23 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectedContents"];
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
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"selectedSenders"];
    selectedSenders = v5->_selectedSenders;
    v5->_selectedSenders = v13;

    v15 = MEMORY[0x1E695DFD8];
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v17 = [v15 setWithArray:v16];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"selectedSendersStrings"];
    selectedSendersStrings = v5->_selectedSendersStrings;
    v5->_selectedSendersStrings = v18;

    v20 = v5;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFMessageTrigger;
  v4 = a3;
  [(WFTrigger *)&v8 encodeWithCoder:v4];
  v5 = [(WFMessageTrigger *)self selectedContents:v8.receiver];
  [v4 encodeObject:v5 forKey:@"selectedContents"];

  v6 = [(WFMessageTrigger *)self selectedSenders];
  [v4 encodeObject:v6 forKey:@"selectedSenders"];

  v7 = [(WFMessageTrigger *)self selectedSendersStrings];
  [v4 encodeObject:v7 forKey:@"selectedSendersStrings"];
}

- (id)localizedDescriptionWithConfigurationSummaryWithCount:(unint64_t)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  v6 = [(WFMessageTrigger *)self selectedContents];
  v7 = [v6 length];

  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = WFLocalizedString(@"Containing ‘%@’");
    v10 = [(WFMessageTrigger *)self selectedContents];
    v11 = [v8 stringWithFormat:v9, v10];
    [v5 addObject:v11];
  }

  v12 = [(WFMessageTrigger *)self selectedSenders];
  v13 = [v12 count];

  if (v13)
  {
    v14 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v15 = [(WFMessageTrigger *)self selectedSenders];
    v16 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
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
            objc_enumerationMutation(v15);
          }

          v20 = [MEMORY[0x1E6996CC8] contactWithCNContact:*(*(&v34 + 1) + 8 * i)];
          v21 = [v20 triggerDisplayName];
          [v14 addObject:v21];
        }

        v17 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
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
  if (a3 == 1)
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
    v33 = a3;
  }

  v30 = [v26 stringWithFormat:v27, v28, v33];

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

- (BOOL)hasValidConfiguration
{
  v3 = [(WFMessageTrigger *)self selectedSenders];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(WFMessageTrigger *)self selectedContents];
    v4 = v5 != 0;
  }

  return v4;
}

+ (id)displayGlyph
{
  v2 = MEMORY[0x1E69E0B58];
  v3 = [a1 displayGlyphName];
  v4 = [v2 triggerDisplaySymbolNamed:v3 renderingMode:2];

  return v4;
}

+ (id)localizedDisplayNameWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Message", @"Message");
  v5 = [v3 localize:v4];

  return v5;
}

@end