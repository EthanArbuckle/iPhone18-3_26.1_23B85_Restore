@interface WFEmailTrigger
+ (id)displayGlyph;
+ (id)localizedDisplayNameWithContext:(id)context;
+ (id)mailBlue;
- (BOOL)hasValidConfiguration;
- (WFEmailTrigger)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localizedDescriptionWithConfigurationSummaryWithCount:(unint64_t)count;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFEmailTrigger

- (id)copyWithZone:(_NSZone *)zone
{
  v16.receiver = self;
  v16.super_class = WFEmailTrigger;
  v4 = [(WFTrigger *)&v16 copyWithZone:zone];
  selectedAccountIdentifiers = [(WFEmailTrigger *)self selectedAccountIdentifiers];
  v6 = [selectedAccountIdentifiers copy];
  [v4 setSelectedAccountIdentifiers:v6];

  selectedAccountDescriptions = [(WFEmailTrigger *)self selectedAccountDescriptions];
  v8 = [selectedAccountDescriptions copy];
  [v4 setSelectedAccountDescriptions:v8];

  selectedSubject = [(WFEmailTrigger *)self selectedSubject];
  v10 = [selectedSubject copy];
  [v4 setSelectedSubject:v10];

  selectedRecipients = [(WFEmailTrigger *)self selectedRecipients];
  v12 = [selectedRecipients copy];
  [v4 setSelectedRecipients:v12];

  selectedSenders = [(WFEmailTrigger *)self selectedSenders];
  v14 = [selectedSenders copy];
  [v4 setSelectedSenders:v14];

  return v4;
}

- (WFEmailTrigger)initWithCoder:(id)coder
{
  v35[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = WFEmailTrigger;
  v5 = [(WFTrigger *)&v31 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v35[0] = objc_opt_class();
    v35[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"selectedAccountIdentifiers"];
    selectedAccountIdentifiers = v5->_selectedAccountIdentifiers;
    v5->_selectedAccountIdentifiers = v9;

    v11 = MEMORY[0x1E695DFD8];
    v34[0] = objc_opt_class();
    v34[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"selectedAccountDescriptions"];
    selectedAccountDescriptions = v5->_selectedAccountDescriptions;
    v5->_selectedAccountDescriptions = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedSubject"];
    selectedSubject = v5->_selectedSubject;
    v5->_selectedSubject = v16;

    v18 = MEMORY[0x1E695DFD8];
    v33[0] = objc_opt_class();
    v33[1] = objc_opt_class();
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    v20 = [v18 setWithArray:v19];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"selectedRecipients"];
    selectedRecipients = v5->_selectedRecipients;
    v5->_selectedRecipients = v21;

    v23 = MEMORY[0x1E695DFD8];
    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
    v25 = [v23 setWithArray:v24];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"selectedSenders"];
    selectedSenders = v5->_selectedSenders;
    v5->_selectedSenders = v26;

    v28 = v5;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = WFEmailTrigger;
  coderCopy = coder;
  [(WFTrigger *)&v10 encodeWithCoder:coderCopy];
  v5 = [(WFEmailTrigger *)self selectedAccountIdentifiers:v10.receiver];
  [coderCopy encodeObject:v5 forKey:@"selectedAccountIdentifiers"];

  selectedAccountDescriptions = [(WFEmailTrigger *)self selectedAccountDescriptions];
  [coderCopy encodeObject:selectedAccountDescriptions forKey:@"selectedAccountDescriptions"];

  selectedSubject = [(WFEmailTrigger *)self selectedSubject];
  [coderCopy encodeObject:selectedSubject forKey:@"selectedSubject"];

  selectedRecipients = [(WFEmailTrigger *)self selectedRecipients];
  [coderCopy encodeObject:selectedRecipients forKey:@"selectedRecipients"];

  selectedSenders = [(WFEmailTrigger *)self selectedSenders];
  [coderCopy encodeObject:selectedSenders forKey:@"selectedSenders"];
}

- (id)localizedDescriptionWithConfigurationSummaryWithCount:(unint64_t)count
{
  v5 = objc_opt_new();
  selectedAccountIdentifiers = [(WFEmailTrigger *)self selectedAccountIdentifiers];

  if (selectedAccountIdentifiers)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = WFLocalizedString(@"In %@");
    selectedAccountDescriptions = [(WFEmailTrigger *)self selectedAccountDescriptions];
    v10 = [selectedAccountDescriptions componentsJoinedByString:{@", "}];
    v11 = [v7 stringWithFormat:v8, v10];
    [v5 addObject:v11];
  }

  selectedSubject = [(WFEmailTrigger *)self selectedSubject];

  if (selectedSubject)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = WFLocalizedString(@"Subject Contains ‘%@’");
    selectedSubject2 = [(WFEmailTrigger *)self selectedSubject];
    v16 = [v13 stringWithFormat:v14, selectedSubject2];
    [v5 addObject:v16];
  }

  selectedSenders = [(WFEmailTrigger *)self selectedSenders];
  v18 = [selectedSenders count];

  if (v18)
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = WFLocalizedString(@"From %@");
    selectedSenders2 = [(WFEmailTrigger *)self selectedSenders];
    v22 = [selectedSenders2 componentsJoinedByString:{@", "}];
    v23 = [v19 stringWithFormat:v20, v22];
    [v5 addObject:v23];
  }

  selectedRecipients = [(WFEmailTrigger *)self selectedRecipients];
  v25 = [selectedRecipients count];

  if (v25)
  {
    v26 = MEMORY[0x1E696AEC0];
    v27 = WFLocalizedString(@"To %@");
    selectedRecipients2 = [(WFEmailTrigger *)self selectedRecipients];
    v29 = [selectedRecipients2 componentsJoinedByString:{@", "}];
    v30 = [v26 stringWithFormat:v27, v29];
    [v5 addObject:v30];
  }

  v31 = MEMORY[0x1E696AEC0];
  if (count == 1)
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
    countCopy = count;
  }

  countCopy = [v31 stringWithFormat:v32, v33, countCopy];

  return countCopy;
}

- (BOOL)hasValidConfiguration
{
  selectedSenders = [(WFEmailTrigger *)self selectedSenders];
  if ([selectedSenders count])
  {
    v4 = 1;
  }

  else
  {
    selectedSubject = [(WFEmailTrigger *)self selectedSubject];
    v4 = selectedSubject != 0;
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
  displayGlyphName = [self displayGlyphName];
  v4 = [v2 triggerDisplaySymbolNamed:displayGlyphName renderingMode:2];

  return v4;
}

+ (id)localizedDisplayNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Email", @"Email");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end