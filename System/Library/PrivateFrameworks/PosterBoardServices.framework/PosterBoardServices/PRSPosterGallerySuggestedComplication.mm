@interface PRSPosterGallerySuggestedComplication
+ (PRSPosterGallerySuggestedComplication)suggestedComplicationWithDictionaryRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesPersonality:(id)personality;
- (PRSPosterGallerySuggestedComplication)initWithCoder:(id)coder;
- (PRSPosterGallerySuggestedComplication)initWithExtensionBundleIdentifier:(id)identifier kind:(id)kind containerBundleIdentifier:(id)bundleIdentifier widgetFamily:(int64_t)family intent:(id)intent source:(int64_t)source;
- (PRSPosterGallerySuggestedComplication)initWithProactiveRepresentation:(id)representation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)proactiveRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRSPosterGallerySuggestedComplication

- (PRSPosterGallerySuggestedComplication)initWithExtensionBundleIdentifier:(id)identifier kind:(id)kind containerBundleIdentifier:(id)bundleIdentifier widgetFamily:(int64_t)family intent:(id)intent source:(int64_t)source
{
  identifierCopy = identifier;
  kindCopy = kind;
  bundleIdentifierCopy = bundleIdentifier;
  intentCopy = intent;
  v26.receiver = self;
  v26.super_class = PRSPosterGallerySuggestedComplication;
  v18 = [(PRSPosterGallerySuggestedComplication *)&v26 init];
  if (v18)
  {
    v19 = [identifierCopy copy];
    extensionBundleIdentifier = v18->_extensionBundleIdentifier;
    v18->_extensionBundleIdentifier = v19;

    v21 = [kindCopy copy];
    kind = v18->_kind;
    v18->_kind = v21;

    v23 = [bundleIdentifierCopy copy];
    containerBundleIdentifier = v18->_containerBundleIdentifier;
    v18->_containerBundleIdentifier = v23;

    v18->_widgetFamily = family;
    objc_storeStrong(&v18->_intent, intent);
    v18->_source = source;
  }

  return v18;
}

- (PRSPosterGallerySuggestedComplication)initWithProactiveRepresentation:(id)representation
{
  representationCopy = representation;
  extensionBundleIdentifier = [representationCopy extensionBundleIdentifier];
  kind = [representationCopy kind];
  containerBundleIdentifier = [representationCopy containerBundleIdentifier];
  widgetFamily = [representationCopy widgetFamily];
  intent = [representationCopy intent];
  source = [representationCopy source];

  v11 = (source - 1);
  if (v11 < 6)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(PRSPosterGallerySuggestedComplication *)self initWithExtensionBundleIdentifier:extensionBundleIdentifier kind:kind containerBundleIdentifier:containerBundleIdentifier widgetFamily:widgetFamily intent:intent source:v12];

  return v13;
}

- (id)proactiveRepresentation
{
  v2 = [objc_alloc(MEMORY[0x1E698AEB8]) initWithPosterBoardRepresentation:self];

  return v2;
}

+ (PRSPosterGallerySuggestedComplication)suggestedComplicationWithDictionaryRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v7 = NSStringFromSelector(sel_extensionBundleIdentifier);
  v8 = [representationCopy objectForKey:v7];
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
    v14 = [representationCopy objectForKey:v13];
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
      if (error)
      {
        *error = v18 = 0;
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_37;
    }

    v20 = NSStringFromSelector(sel_containerBundleIdentifier);
    v21 = [representationCopy objectForKey:v20];
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
    v27 = [representationCopy objectForKey:v26];
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
        v18 = [[self alloc] initWithExtensionBundleIdentifier:v12 kind:v19 containerBundleIdentifier:v25 widgetFamily:v32 intent:0 source:0];
        goto LABEL_36;
      }

      if (!error)
      {
        v18 = 0;
        goto LABEL_36;
      }
    }

    *error = v18 = 0;
LABEL_36:

LABEL_37:
    goto LABEL_38;
  }

  if (error)
  {
    *error = v18 = 0;
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
  null = containerBundleIdentifier;
  if (!containerBundleIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null;
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

- (BOOL)matchesPersonality:(id)personality
{
  personalityCopy = personality;
  extensionBundleIdentifier = [(PRSPosterGallerySuggestedComplication *)self extensionBundleIdentifier];
  extensionBundleIdentifier2 = [personalityCopy extensionBundleIdentifier];
  if (BSEqualStrings())
  {
    kind = [(PRSPosterGallerySuggestedComplication *)self kind];
    kind2 = [personalityCopy kind];
    v9 = BSEqualStrings();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  extensionBundleIdentifier = self->_extensionBundleIdentifier;
  kind = self->_kind;
  containerBundleIdentifier = self->_containerBundleIdentifier;
  widgetFamily = self->_widgetFamily;
  intent = self->_intent;
  source = self->_source;

  return [v4 initWithExtensionBundleIdentifier:extensionBundleIdentifier kind:kind containerBundleIdentifier:containerBundleIdentifier widgetFamily:widgetFamily intent:intent source:source];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = equalCopy;
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
      builder = [MEMORY[0x1E698E6A0] builder];
      extensionBundleIdentifier = self->_extensionBundleIdentifier;
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __49__PRSPosterGallerySuggestedComplication_isEqual___block_invoke;
      v42[3] = &unk_1E818CD58;
      v12 = v9;
      v43 = v12;
      v13 = [builder appendObject:extensionBundleIdentifier counterpart:v42];
      kind = self->_kind;
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __49__PRSPosterGallerySuggestedComplication_isEqual___block_invoke_2;
      v40[3] = &unk_1E818D5E8;
      v15 = v12;
      v41 = v15;
      v16 = [builder appendString:kind counterpart:v40];
      containerBundleIdentifier = self->_containerBundleIdentifier;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __49__PRSPosterGallerySuggestedComplication_isEqual___block_invoke_3;
      v38[3] = &unk_1E818CD58;
      v18 = v15;
      v39 = v18;
      v19 = [builder appendObject:containerBundleIdentifier counterpart:v38];
      widgetFamily = self->_widgetFamily;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __49__PRSPosterGallerySuggestedComplication_isEqual___block_invoke_4;
      v36[3] = &unk_1E818CDA8;
      v21 = v18;
      v37 = v21;
      v22 = [builder appendInteger:widgetFamily counterpart:v36];
      intent = self->_intent;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __49__PRSPosterGallerySuggestedComplication_isEqual___block_invoke_5;
      v34[3] = &unk_1E818CD58;
      v24 = v21;
      v35 = v24;
      v25 = [builder appendObject:intent counterpart:v34];
      source = self->_source;
      v29 = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __49__PRSPosterGallerySuggestedComplication_isEqual___block_invoke_6;
      v32 = &unk_1E818CDA8;
      v33 = v24;
      v27 = [builder appendInteger:source counterpart:&v29];
      v8 = [builder isEqual];
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
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendObject:self->_extensionBundleIdentifier];
  v5 = [builder appendObject:self->_kind];
  v6 = [builder appendObject:self->_containerBundleIdentifier];
  v7 = [builder appendInteger:self->_widgetFamily];
  v8 = [builder appendObject:self->_intent];
  v9 = [builder appendInteger:self->_source];
  v10 = [builder hash];

  return v10;
}

- (PRSPosterGallerySuggestedComplication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_extensionBundleIdentifier);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_kind);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_containerBundleIdentifier);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

  v14 = NSStringFromSelector(sel_widgetFamily);
  v15 = [coderCopy decodeIntegerForKey:v14];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_intent);
  v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];

  v19 = NSStringFromSelector(sel_source);
  v20 = [coderCopy decodeIntegerForKey:v19];

  v21 = [(PRSPosterGallerySuggestedComplication *)self initWithExtensionBundleIdentifier:v7 kind:v10 containerBundleIdentifier:v13 widgetFamily:v15 intent:v18 source:v20];
  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  extensionBundleIdentifier = self->_extensionBundleIdentifier;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_extensionBundleIdentifier);
  [coderCopy encodeObject:extensionBundleIdentifier forKey:v6];

  kind = self->_kind;
  v8 = NSStringFromSelector(sel_kind);
  [coderCopy encodeObject:kind forKey:v8];

  containerBundleIdentifier = self->_containerBundleIdentifier;
  v10 = NSStringFromSelector(sel_containerBundleIdentifier);
  [coderCopy encodeObject:containerBundleIdentifier forKey:v10];

  widgetFamily = self->_widgetFamily;
  v12 = NSStringFromSelector(sel_widgetFamily);
  [coderCopy encodeInteger:widgetFamily forKey:v12];

  intent = self->_intent;
  v14 = NSStringFromSelector(sel_intent);
  [coderCopy encodeObject:intent forKey:v14];

  source = self->_source;
  v16 = NSStringFromSelector(sel_source);
  [coderCopy encodeInteger:source forKey:v16];
}

@end