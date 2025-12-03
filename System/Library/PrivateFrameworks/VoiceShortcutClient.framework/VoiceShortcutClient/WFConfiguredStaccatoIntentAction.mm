@interface WFConfiguredStaccatoIntentAction
- (BOOL)isEqual:(id)equal;
- (WFConfiguredStaccatoIntentAction)initWithCoder:(id)coder;
- (WFConfiguredStaccatoIntentAction)initWithIntent:(id)intent named:(id)named previewIcon:(id)icon appShortcutIdentifier:(id)identifier templateParameterValues:(id)values contextualParameters:(id)parameters shortcutsMetadata:(id)metadata colorScheme:(id)self0;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFConfiguredStaccatoIntentAction

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v11.receiver = self;
  v11.super_class = WFConfiguredStaccatoIntentAction;
  v4 = [v3 combineInteger:{-[WFConfiguredSystemIntentAction hash](&v11, sel_hash)}];
  sectionIdentifier = [(WFConfiguredStaccatoAction *)self sectionIdentifier];
  v6 = [v3 combine:sectionIdentifier];

  templateParameterValues = [(WFConfiguredStaccatoIntentAction *)self templateParameterValues];
  v8 = [v3 combine:templateParameterValues];

  v9 = [v3 finalize];
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v14.receiver = self, v14.super_class = WFConfiguredStaccatoIntentAction, [(WFConfiguredSystemIntentAction *)&v14 isEqual:v5]))
  {
    v6 = v5;
    templateParameterValues = [(WFConfiguredStaccatoIntentAction *)self templateParameterValues];
    templateParameterValues2 = [(WFConfiguredStaccatoIntentAction *)v6 templateParameterValues];
    v9 = templateParameterValues;
    v10 = templateParameterValues2;
    v11 = v10;
    if (v9 == v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = 0;
      if (v9 && v10)
      {
        v12 = [v9 isEqual:v10];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFConfiguredStaccatoIntentAction;
  coderCopy = coder;
  [(WFConfiguredSystemIntentAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(WFConfiguredStaccatoAction *)self sectionIdentifier:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"sectionIdentifier"];

  templateParameterValues = [(WFConfiguredStaccatoIntentAction *)self templateParameterValues];
  [coderCopy encodeObject:templateParameterValues forKey:@"templateParameterValues"];
}

- (WFConfiguredStaccatoIntentAction)initWithCoder:(id)coder
{
  v24[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previewIcon"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appShortcutIdentifier"];
  v8 = MEMORY[0x1E695DFD8];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v24[2] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
  v10 = [v8 setWithArray:v9];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"templateParameterValues"];

  v12 = MEMORY[0x1E695DFD8];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v14 = [v12 setWithArray:v13];
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"contextualParameters"];

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortcutsMetadata"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"colorScheme"];

  selfCopy = 0;
  if (v6 && v5)
  {
    v19 = v22;
    self = [(WFConfiguredStaccatoIntentAction *)self initWithIntent:v6 named:v5 previewIcon:v22 appShortcutIdentifier:v7 templateParameterValues:v11 contextualParameters:v15 shortcutsMetadata:v16 colorScheme:v17];
    selfCopy = self;
  }

  else
  {
    v19 = v22;
  }

  v20 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (WFConfiguredStaccatoIntentAction)initWithIntent:(id)intent named:(id)named previewIcon:(id)icon appShortcutIdentifier:(id)identifier templateParameterValues:(id)values contextualParameters:(id)parameters shortcutsMetadata:(id)metadata colorScheme:(id)self0
{
  valuesCopy = values;
  v20.receiver = self;
  v20.super_class = WFConfiguredStaccatoIntentAction;
  v17 = [(WFConfiguredSystemIntentAction *)&v20 initWithIntent:intent named:named previewIcon:icon appShortcutIdentifier:identifier contextualParameters:parameters shortcutsMetadata:metadata colorScheme:scheme];
  templateParameterValues = v17->_templateParameterValues;
  v17->_templateParameterValues = valuesCopy;

  return v17;
}

@end