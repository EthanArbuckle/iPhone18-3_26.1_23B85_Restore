@interface WFConfiguredStaccatoIntentAction
- (BOOL)isEqual:(id)a3;
- (WFConfiguredStaccatoIntentAction)initWithCoder:(id)a3;
- (WFConfiguredStaccatoIntentAction)initWithIntent:(id)a3 named:(id)a4 previewIcon:(id)a5 appShortcutIdentifier:(id)a6 templateParameterValues:(id)a7 contextualParameters:(id)a8 shortcutsMetadata:(id)a9 colorScheme:(id)a10;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFConfiguredStaccatoIntentAction

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v11.receiver = self;
  v11.super_class = WFConfiguredStaccatoIntentAction;
  v4 = [v3 combineInteger:{-[WFConfiguredSystemIntentAction hash](&v11, sel_hash)}];
  v5 = [(WFConfiguredStaccatoAction *)self sectionIdentifier];
  v6 = [v3 combine:v5];

  v7 = [(WFConfiguredStaccatoIntentAction *)self templateParameterValues];
  v8 = [v3 combine:v7];

  v9 = [v3 finalize];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v14.receiver = self, v14.super_class = WFConfiguredStaccatoIntentAction, [(WFConfiguredSystemIntentAction *)&v14 isEqual:v5]))
  {
    v6 = v5;
    v7 = [(WFConfiguredStaccatoIntentAction *)self templateParameterValues];
    v8 = [(WFConfiguredStaccatoIntentAction *)v6 templateParameterValues];
    v9 = v7;
    v10 = v8;
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

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFConfiguredStaccatoIntentAction;
  v4 = a3;
  [(WFConfiguredSystemIntentAction *)&v7 encodeWithCoder:v4];
  v5 = [(WFConfiguredStaccatoAction *)self sectionIdentifier:v7.receiver];
  [v4 encodeObject:v5 forKey:@"sectionIdentifier"];

  v6 = [(WFConfiguredStaccatoIntentAction *)self templateParameterValues];
  [v4 encodeObject:v6 forKey:@"templateParameterValues"];
}

- (WFConfiguredStaccatoIntentAction)initWithCoder:(id)a3
{
  v24[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"previewIcon"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appShortcutIdentifier"];
  v8 = MEMORY[0x1E695DFD8];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v24[2] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
  v10 = [v8 setWithArray:v9];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"templateParameterValues"];

  v12 = MEMORY[0x1E695DFD8];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v14 = [v12 setWithArray:v13];
  v15 = [v4 decodeObjectOfClasses:v14 forKey:@"contextualParameters"];

  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortcutsMetadata"];
  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"colorScheme"];

  v18 = 0;
  if (v6 && v5)
  {
    v19 = v22;
    self = [(WFConfiguredStaccatoIntentAction *)self initWithIntent:v6 named:v5 previewIcon:v22 appShortcutIdentifier:v7 templateParameterValues:v11 contextualParameters:v15 shortcutsMetadata:v16 colorScheme:v17];
    v18 = self;
  }

  else
  {
    v19 = v22;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v18;
}

- (WFConfiguredStaccatoIntentAction)initWithIntent:(id)a3 named:(id)a4 previewIcon:(id)a5 appShortcutIdentifier:(id)a6 templateParameterValues:(id)a7 contextualParameters:(id)a8 shortcutsMetadata:(id)a9 colorScheme:(id)a10
{
  v16 = a7;
  v20.receiver = self;
  v20.super_class = WFConfiguredStaccatoIntentAction;
  v17 = [(WFConfiguredSystemIntentAction *)&v20 initWithIntent:a3 named:a4 previewIcon:a5 appShortcutIdentifier:a6 contextualParameters:a8 shortcutsMetadata:a9 colorScheme:a10];
  templateParameterValues = v17->_templateParameterValues;
  v17->_templateParameterValues = v16;

  return v17;
}

@end