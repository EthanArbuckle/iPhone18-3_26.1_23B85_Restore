@interface PRSPosterGallerySuggestedComplication
+ (PRSPosterGallerySuggestedComplication)suggestedComplicationWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesPersonality:(id)a3;
- (PRSPosterGallerySuggestedComplication)initWithCoder:(id)a3;
- (PRSPosterGallerySuggestedComplication)initWithExtensionBundleIdentifier:(id)a3 kind:(id)a4 containerBundleIdentifier:(id)a5 widgetFamily:(int64_t)a6 intent:(id)a7 source:(int64_t)a8;
- (PRSPosterGallerySuggestedComplication)initWithProactiveRepresentation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)proactiveRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRSPosterGallerySuggestedComplication

- (PRSPosterGallerySuggestedComplication)initWithExtensionBundleIdentifier:(id)a3 kind:(id)a4 containerBundleIdentifier:(id)a5 widgetFamily:(int64_t)a6 intent:(id)a7 source:(int64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v26.receiver = self;
  v26.super_class = PRSPosterGallerySuggestedComplication;
  v18 = [(PRSPosterGallerySuggestedComplication *)&v26 init];
  if (v18)
  {
    v19 = [v14 copy];
    extensionBundleIdentifier = v18->_extensionBundleIdentifier;
    v18->_extensionBundleIdentifier = v19;

    v21 = [v15 copy];
    kind = v18->_kind;
    v18->_kind = v21;

    v23 = [v16 copy];
    containerBundleIdentifier = v18->_containerBundleIdentifier;
    v18->_containerBundleIdentifier = v23;

    v18->_widgetFamily = a6;
    objc_storeStrong(&v18->_intent, a7);
    v18->_source = a8;
  }

  return v18;
}

- (PRSPosterGallerySuggestedComplication)initWithProactiveRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 extensionBundleIdentifier];
  v6 = [v4 kind];
  v7 = [v4 containerBundleIdentifier];
  v8 = [v4 widgetFamily];
  v9 = [v4 intent];
  v10 = [v4 source];

  v11 = (v10 - 1);
  if (v11 < 6)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(PRSPosterGallerySuggestedComplication *)self initWithExtensionBundleIdentifier:v5 kind:v6 containerBundleIdentifier:v7 widgetFamily:v8 intent:v9 source:v12];

  return v13;
}

- (id)proactiveRepresentation
{
  v2 = [objc_alloc(MEMORY[0x1E698AEB8]) initWithPosterBoardRepresentation:self];

  return v2;
}

+ (PRSPosterGallerySuggestedComplication)suggestedComplicationWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = NSStringFromSelector(sel_extensionBundleIdentifier);
  v8 = [v6 objectForKey:v7];
  v9 = objc_opt_class();
  v10 = v8;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = NSStringFromSelector(sel_kind);
    v14 = [v6 objectForKey:v13];
    v15 = objc_opt_class();
    v16 = v14;
    if (v15)
    {
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v19 = v17;

    if (!v19)
    {
      if (a4)
      {
        *a4 = v18 = 0;
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_37;
    }

    v20 = NSStringFromSelector(sel_containerBundleIdentifier);
    v21 = [v6 objectForKey:v20];
    v22 = objc_opt_class();
    v23 = v21;
    if (v22)
    {
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;

    v26 = NSStringFromSelector(sel_widgetFamily);
    v27 = [v6 objectForKey:v26];
    v28 = objc_opt_class();
    v29 = v27;
    if (v28)
    {
      if (objc_opt_isKindOfClass())
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;

    if (v31)
    {
      v32 = CHSWidgetFamilyFromString();
      if ((CHSWidgetFamilyIsAccessory() & 1) != 0 || v32 == 1)
      {
        v18 = [[a1 alloc] initWithExtensionBundleIdentifier:v12 kind:v19 containerBundleIdentifier:v25 widgetFamily:v32 intent:0 source:0];
        goto LABEL_36;
      }

      if (!a4)
      {
        v18 = 0;
        goto LABEL_36;
      }
    }

    *a4 = v18 = 0;
LABEL_36:

LABEL_37:
    goto LABEL_38;
  }

  if (a4)
  {
    *a4 = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_38:

  return v18;
}

- (id)dictionaryRepresentation
{
  v15[4] = *MEMORY[0x1E69E9840];
  widgetFamily = self->_widgetFamily;
  v4 = NSStringFromWidgetFamily();
  v5 = NSStringFromSelector(sel_extensionBundleIdentifier);
  v14[0] = v5;
  v15[0] = self->_extensionBundleIdentifier;
  v6 = NSStringFromSelector(sel_kind);
  v14[1] = v6;
  v15[1] = self->_kind;
  v7 = NSStringFromSelector(sel_containerBundleIdentifier);
  v14[2] = v7;
  containerBundleIdentifier = self->_containerBundleIdentifier;
  v9 = containerBundleIdentifier;
  if (!containerBundleIdentifier)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v9;
  v10 = NSStringFromSelector(sel_widgetFamily);
  v14[3] = v10;
  v15[3] = v4;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];

  if (!containerBundleIdentifier)
  {
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)matchesPersonality:(id)a3
{
  v4 = a3;
  v5 = [(PRSPosterGallerySuggestedComplication *)self extensionBundleIdentifier];
  v6 = [v4 extensionBundleIdentifier];
  if (BSEqualStrings())
  {
    v7 = [(PRSPosterGallerySuggestedComplication *)self kind];
    v8 = [v4 kind];
    v9 = BSEqualStrings();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  extensionBundleIdentifier = self->_extensionBundleIdentifier;
  kind = self->_kind;
  containerBundleIdentifier = self->_containerBundleIdentifier;
  widgetFamily = self->_widgetFamily;
  intent = self->_intent;
  source = self->_source;

  return [v4 initWithExtensionBundleIdentifier:extensionBundleIdentifier kind:kind containerBundleIdentifier:containerBundleIdentifier widgetFamily:widgetFamily intent:intent source:source];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v4;
    if (v5)
    {
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

    v9 = v7;

    if (v9)
    {
      v10 = [MEMORY[0x1E698E6A0] builder];
      extensionBundleIdentifier = self->_extensionBundleIdentifier;
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __49__PRSPosterGallerySuggestedComplication_isEqual___block_invoke;
      v42[3] = &unk_1E818CD58;
      v12 = v9;
      v43 = v12;
      v13 = [v10 appendObject:extensionBundleIdentifier counterpart:v42];
      kind = self->_kind;
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __49__PRSPosterGallerySuggestedComplication_isEqual___block_invoke_2;
      v40[3] = &unk_1E818D5E8;
      v15 = v12;
      v41 = v15;
      v16 = [v10 appendString:kind counterpart:v40];
      containerBundleIdentifier = self->_containerBundleIdentifier;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __49__PRSPosterGallerySuggestedComplication_isEqual___block_invoke_3;
      v38[3] = &unk_1E818CD58;
      v18 = v15;
      v39 = v18;
      v19 = [v10 appendObject:containerBundleIdentifier counterpart:v38];
      widgetFamily = self->_widgetFamily;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __49__PRSPosterGallerySuggestedComplication_isEqual___block_invoke_4;
      v36[3] = &unk_1E818CDA8;
      v21 = v18;
      v37 = v21;
      v22 = [v10 appendInteger:widgetFamily counterpart:v36];
      intent = self->_intent;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __49__PRSPosterGallerySuggestedComplication_isEqual___block_invoke_5;
      v34[3] = &unk_1E818CD58;
      v24 = v21;
      v35 = v24;
      v25 = [v10 appendObject:intent counterpart:v34];
      source = self->_source;
      v29 = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __49__PRSPosterGallerySuggestedComplication_isEqual___block_invoke_6;
      v32 = &unk_1E818CDA8;
      v33 = v24;
      v27 = [v10 appendInteger:source counterpart:&v29];
      v8 = [v10 isEqual];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendObject:self->_extensionBundleIdentifier];
  v5 = [v3 appendObject:self->_kind];
  v6 = [v3 appendObject:self->_containerBundleIdentifier];
  v7 = [v3 appendInteger:self->_widgetFamily];
  v8 = [v3 appendObject:self->_intent];
  v9 = [v3 appendInteger:self->_source];
  v10 = [v3 hash];

  return v10;
}

- (PRSPosterGallerySuggestedComplication)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_extensionBundleIdentifier);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_kind);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_containerBundleIdentifier);
  v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

  v14 = NSStringFromSelector(sel_widgetFamily);
  v15 = [v4 decodeIntegerForKey:v14];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_intent);
  v18 = [v4 decodeObjectOfClass:v16 forKey:v17];

  v19 = NSStringFromSelector(sel_source);
  v20 = [v4 decodeIntegerForKey:v19];

  v21 = [(PRSPosterGallerySuggestedComplication *)self initWithExtensionBundleIdentifier:v7 kind:v10 containerBundleIdentifier:v13 widgetFamily:v15 intent:v18 source:v20];
  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  extensionBundleIdentifier = self->_extensionBundleIdentifier;
  v5 = a3;
  v6 = NSStringFromSelector(sel_extensionBundleIdentifier);
  [v5 encodeObject:extensionBundleIdentifier forKey:v6];

  kind = self->_kind;
  v8 = NSStringFromSelector(sel_kind);
  [v5 encodeObject:kind forKey:v8];

  containerBundleIdentifier = self->_containerBundleIdentifier;
  v10 = NSStringFromSelector(sel_containerBundleIdentifier);
  [v5 encodeObject:containerBundleIdentifier forKey:v10];

  widgetFamily = self->_widgetFamily;
  v12 = NSStringFromSelector(sel_widgetFamily);
  [v5 encodeInteger:widgetFamily forKey:v12];

  intent = self->_intent;
  v14 = NSStringFromSelector(sel_intent);
  [v5 encodeObject:intent forKey:v14];

  source = self->_source;
  v16 = NSStringFromSelector(sel_source);
  [v5 encodeInteger:source forKey:v16];
}

@end