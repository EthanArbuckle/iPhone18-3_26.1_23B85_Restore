@interface WFEmailTrigger
+ (id)displayGlyph;
+ (id)localizedDisplayNameWithContext:(id)a3;
+ (id)mailBlue;
- (BOOL)hasValidConfiguration;
- (WFEmailTrigger)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)localizedDescriptionWithConfigurationSummaryWithCount:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFEmailTrigger

- (id)copyWithZone:(_NSZone *)a3
{
  v16.receiver = self;
  v16.super_class = WFEmailTrigger;
  v4 = [(WFTrigger *)&v16 copyWithZone:a3];
  v5 = [(WFEmailTrigger *)self selectedAccountIdentifiers];
  v6 = [v5 copy];
  [v4 setSelectedAccountIdentifiers:v6];

  v7 = [(WFEmailTrigger *)self selectedAccountDescriptions];
  v8 = [v7 copy];
  [v4 setSelectedAccountDescriptions:v8];

  v9 = [(WFEmailTrigger *)self selectedSubject];
  v10 = [v9 copy];
  [v4 setSelectedSubject:v10];

  v11 = [(WFEmailTrigger *)self selectedRecipients];
  v12 = [v11 copy];
  [v4 setSelectedRecipients:v12];

  v13 = [(WFEmailTrigger *)self selectedSenders];
  v14 = [v13 copy];
  [v4 setSelectedSenders:v14];

  return v4;
}

- (WFEmailTrigger)initWithCoder:(id)a3
{
  v35[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = WFEmailTrigger;
  v5 = [(WFTrigger *)&v31 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v35[0] = objc_opt_class();
    v35[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"selectedAccountIdentifiers"];
    selectedAccountIdentifiers = v5->_selectedAccountIdentifiers;
    v5->_selectedAccountIdentifiers = v9;

    v11 = MEMORY[0x1E695DFD8];
    v34[0] = objc_opt_class();
    v34[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"selectedAccountDescriptions"];
    selectedAccountDescriptions = v5->_selectedAccountDescriptions;
    v5->_selectedAccountDescriptions = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectedSubject"];
    selectedSubject = v5->_selectedSubject;
    v5->_selectedSubject = v16;

    v18 = MEMORY[0x1E695DFD8];
    v33[0] = objc_opt_class();
    v33[1] = objc_opt_class();
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    v20 = [v18 setWithArray:v19];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"selectedRecipients"];
    selectedRecipients = v5->_selectedRecipients;
    v5->_selectedRecipients = v21;

    v23 = MEMORY[0x1E695DFD8];
    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
    v25 = [v23 setWithArray:v24];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"selectedSenders"];
    selectedSenders = v5->_selectedSenders;
    v5->_selectedSenders = v26;

    v28 = v5;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = WFEmailTrigger;
  v4 = a3;
  [(WFTrigger *)&v10 encodeWithCoder:v4];
  v5 = [(WFEmailTrigger *)self selectedAccountIdentifiers:v10.receiver];
  [v4 encodeObject:v5 forKey:@"selectedAccountIdentifiers"];

  v6 = [(WFEmailTrigger *)self selectedAccountDescriptions];
  [v4 encodeObject:v6 forKey:@"selectedAccountDescriptions"];

  v7 = [(WFEmailTrigger *)self selectedSubject];
  [v4 encodeObject:v7 forKey:@"selectedSubject"];

  v8 = [(WFEmailTrigger *)self selectedRecipients];
  [v4 encodeObject:v8 forKey:@"selectedRecipients"];

  v9 = [(WFEmailTrigger *)self selectedSenders];
  [v4 encodeObject:v9 forKey:@"selectedSenders"];
}

- (id)localizedDescriptionWithConfigurationSummaryWithCount:(unint64_t)a3
{
  v5 = objc_opt_new();
  v6 = [(WFEmailTrigger *)self selectedAccountIdentifiers];

  if (v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = WFLocalizedString(@"In %@");
    v9 = [(WFEmailTrigger *)self selectedAccountDescriptions];
    v10 = [v9 componentsJoinedByString:{@", "}];
    v11 = [v7 stringWithFormat:v8, v10];
    [v5 addObject:v11];
  }

  v12 = [(WFEmailTrigger *)self selectedSubject];

  if (v12)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = WFLocalizedString(@"Subject Contains ‘%@’");
    v15 = [(WFEmailTrigger *)self selectedSubject];
    v16 = [v13 stringWithFormat:v14, v15];
    [v5 addObject:v16];
  }

  v17 = [(WFEmailTrigger *)self selectedSenders];
  v18 = [v17 count];

  if (v18)
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = WFLocalizedString(@"From %@");
    v21 = [(WFEmailTrigger *)self selectedSenders];
    v22 = [v21 componentsJoinedByString:{@", "}];
    v23 = [v19 stringWithFormat:v20, v22];
    [v5 addObject:v23];
  }

  v24 = [(WFEmailTrigger *)self selectedRecipients];
  v25 = [v24 count];

  if (v25)
  {
    v26 = MEMORY[0x1E696AEC0];
    v27 = WFLocalizedString(@"To %@");
    v28 = [(WFEmailTrigger *)self selectedRecipients];
    v29 = [v28 componentsJoinedByString:{@", "}];
    v30 = [v26 stringWithFormat:v27, v29];
    [v5 addObject:v30];
  }

  v31 = MEMORY[0x1E696AEC0];
  if (a3 == 1)
  {
    v32 = WFLocalizedString(@"When I Get an Email %@");
    v33 = [v5 componentsJoinedByString:@" "];
    v34 = v33;
  }

  else
  {
    v32 = WFLocalizedString(@"When I Get an Email %@ (%d)");
    v33 = [v5 componentsJoinedByString:@" "];
    v34 = v33;
    v37 = a3;
  }

  v35 = [v31 stringWithFormat:v32, v33, v37];

  return v35;
}

- (BOOL)hasValidConfiguration
{
  v3 = [(WFEmailTrigger *)self selectedSenders];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(WFEmailTrigger *)self selectedSubject];
    v4 = v5 != 0;
  }

  return v4;
}

+ (id)mailBlue
{
  v2 = [objc_alloc(MEMORY[0x1E69E09E0]) initWithRed:0.352941185 green:0.784313738 blue:0.980392158 alpha:1.0];

  return v2;
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
  v4 = WFLocalizedStringResourceWithKey(@"Email", @"Email");
  v5 = [v3 localize:v4];

  return v5;
}

@end