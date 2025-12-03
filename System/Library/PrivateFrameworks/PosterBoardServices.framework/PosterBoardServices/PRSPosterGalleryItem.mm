@interface PRSPosterGalleryItem
- (BOOL)isEqual:(id)equal;
- (PRSPosterGalleryItem)initWithCoder:(id)coder;
- (PRSPosterGalleryItem)initWithIdentifier:(id)identifier descriptorIdentifier:(id)descriptorIdentifier extensionBundleIdentifier:(id)bundleIdentifier displayNameLocalizationKey:(id)key spokenNameLocalizationKey:(id)localizationKey descriptiveTextLocalizationKey:(id)textLocalizationKey localizedDisplayName:(id)name localizedSubtitle:(id)self0 titleFontName:(id)self1 titleColor:(id)self2 subtitleComplication:(id)self3 layoutType:(int64_t)self4 modeSemanticType:(id)self5 modeUUID:(id)self6 complications:(id)self7 landscapeComplications:(id)self8 blankTemplate:(BOOL)self9 shouldShowAsShuffleStack:(BOOL)stack source:(int64_t)source;
- (PRSPosterGalleryItem)initWithProactiveRepresentation:(id)representation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)proactiveRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRSPosterGalleryItem

- (PRSPosterGalleryItem)initWithIdentifier:(id)identifier descriptorIdentifier:(id)descriptorIdentifier extensionBundleIdentifier:(id)bundleIdentifier displayNameLocalizationKey:(id)key spokenNameLocalizationKey:(id)localizationKey descriptiveTextLocalizationKey:(id)textLocalizationKey localizedDisplayName:(id)name localizedSubtitle:(id)self0 titleFontName:(id)self1 titleColor:(id)self2 subtitleComplication:(id)self3 layoutType:(int64_t)self4 modeSemanticType:(id)self5 modeUUID:(id)self6 complications:(id)self7 landscapeComplications:(id)self8 blankTemplate:(BOOL)self9 shouldShowAsShuffleStack:(BOOL)stack source:(int64_t)source
{
  identifierCopy = identifier;
  descriptorIdentifierCopy = descriptorIdentifier;
  bundleIdentifierCopy = bundleIdentifier;
  keyCopy = key;
  localizationKeyCopy = localizationKey;
  textLocalizationKeyCopy = textLocalizationKey;
  v30 = bundleIdentifierCopy;
  nameCopy = name;
  v31 = descriptorIdentifierCopy;
  subtitleCopy = subtitle;
  v32 = keyCopy;
  fontNameCopy = fontName;
  colorCopy = color;
  complicationCopy = complication;
  semanticTypeCopy = semanticType;
  dCopy = d;
  complicationsCopy = complications;
  landscapeComplicationsCopy = landscapeComplications;
  v75.receiver = self;
  v75.super_class = PRSPosterGalleryItem;
  v38 = [(PRSPosterGalleryItem *)&v75 init];
  if (v38)
  {
    v39 = [identifierCopy copy];
    identifier = v38->_identifier;
    v38->_identifier = v39;

    v41 = [v31 copy];
    descriptorIdentifier = v38->_descriptorIdentifier;
    v38->_descriptorIdentifier = v41;

    v43 = [v30 copy];
    extensionBundleIdentifier = v38->_extensionBundleIdentifier;
    v38->_extensionBundleIdentifier = v43;

    v45 = [v32 copy];
    displayNameLocalizationKey = v38->_displayNameLocalizationKey;
    v38->_displayNameLocalizationKey = v45;

    v47 = [localizationKeyCopy copy];
    spokenNameLocalizationKey = v38->_spokenNameLocalizationKey;
    v38->_spokenNameLocalizationKey = v47;

    v49 = [textLocalizationKeyCopy copy];
    descriptiveTextLocalizationKey = v38->_descriptiveTextLocalizationKey;
    v38->_descriptiveTextLocalizationKey = v49;

    v51 = [nameCopy copy];
    localizedDisplayName = v38->_localizedDisplayName;
    v38->_localizedDisplayName = v51;

    v53 = [subtitleCopy copy];
    localizedSubtitle = v38->_localizedSubtitle;
    v38->_localizedSubtitle = v53;

    v55 = [fontNameCopy copy];
    titleFontName = v38->_titleFontName;
    v38->_titleFontName = v55;

    v57 = [colorCopy copy];
    titleColor = v38->_titleColor;
    v38->_titleColor = v57;

    v59 = [complicationCopy copy];
    subtitleComplication = v38->_subtitleComplication;
    v38->_subtitleComplication = v59;

    v38->_layoutType = type;
    objc_storeStrong(&v38->_modeSemanticType, semanticType);
    v61 = [dCopy copy];
    modeUUID = v38->_modeUUID;
    v38->_modeUUID = v61;

    v63 = [complicationsCopy copy];
    complications = v38->_complications;
    v38->_complications = v63;

    v65 = [landscapeComplicationsCopy copy];
    landscapeComplications = v38->_landscapeComplications;
    v38->_landscapeComplications = v65;

    v38->_blankTemplate = template;
    v38->_shouldShowAsShuffleStack = stack;
    v38->_source = source;
  }

  return v38;
}

- (PRSPosterGalleryItem)initWithProactiveRepresentation:(id)representation
{
  representationCopy = representation;
  complications = [representationCopy complications];
  v31 = [complications bs_map:&__block_literal_global_11];

  landscapeComplications = [representationCopy landscapeComplications];
  v30 = [landscapeComplications bs_map:&__block_literal_global_12_1];

  identifier = [representationCopy identifier];
  descriptorIdentifier = [representationCopy descriptorIdentifier];
  extensionBundleIdentifier = [representationCopy extensionBundleIdentifier];
  displayNameLocalizationKey = [representationCopy displayNameLocalizationKey];
  spokenNameLocalizationKey = [representationCopy spokenNameLocalizationKey];
  descriptiveTextLocalizationKey = [representationCopy descriptiveTextLocalizationKey];
  localizedDisplayName = [representationCopy localizedDisplayName];
  localizedSubtitle = [representationCopy localizedSubtitle];
  titleFontName = [representationCopy titleFontName];
  titleColor = [representationCopy titleColor];
  subtitleComplication = [representationCopy subtitleComplication];
  posterBoardRepresentation = [subtitleComplication posterBoardRepresentation];
  layoutType = [representationCopy layoutType];
  if ((layoutType - 1) >= 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = layoutType;
  }

  modeSemanticType = [representationCopy modeSemanticType];
  modeUUID = [representationCopy modeUUID];
  isBlankTemplate = [representationCopy isBlankTemplate];
  shouldShowAsShuffleStack = [representationCopy shouldShowAsShuffleStack];
  source = [representationCopy source];
  if ((source - 1) >= 6)
  {
    v17 = 0;
  }

  else
  {
    v17 = source;
  }

  BYTE1(v19) = shouldShowAsShuffleStack;
  LOBYTE(v19) = isBlankTemplate;
  v23 = [(PRSPosterGalleryItem *)self initWithIdentifier:identifier descriptorIdentifier:descriptorIdentifier extensionBundleIdentifier:extensionBundleIdentifier displayNameLocalizationKey:displayNameLocalizationKey spokenNameLocalizationKey:spokenNameLocalizationKey descriptiveTextLocalizationKey:descriptiveTextLocalizationKey localizedDisplayName:localizedDisplayName localizedSubtitle:localizedSubtitle titleFontName:titleFontName titleColor:titleColor subtitleComplication:posterBoardRepresentation layoutType:v11 modeSemanticType:modeSemanticType modeUUID:modeUUID complications:v31 landscapeComplications:v30 blankTemplate:v19 shouldShowAsShuffleStack:v17 source:?];

  return v23;
}

- (id)proactiveRepresentation
{
  v2 = [objc_alloc(MEMORY[0x1E698AED8]) initWithPosterBoardRepresentation:self];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  LOWORD(v6) = *&self->_blankTemplate;
  return [v4 initWithIdentifier:self->_identifier descriptorIdentifier:self->_descriptorIdentifier extensionBundleIdentifier:self->_extensionBundleIdentifier displayNameLocalizationKey:self->_displayNameLocalizationKey spokenNameLocalizationKey:self->_spokenNameLocalizationKey descriptiveTextLocalizationKey:self->_descriptiveTextLocalizationKey localizedDisplayName:self->_localizedDisplayName localizedSubtitle:self->_localizedSubtitle titleFontName:self->_titleFontName titleColor:self->_titleColor subtitleComplication:self->_subtitleComplication layoutType:self->_layoutType modeSemanticType:self->_modeSemanticType modeUUID:self->_modeUUID complications:self->_complications landscapeComplications:self->_landscapeComplications blankTemplate:v6 shouldShowAsShuffleStack:self->_source source:?];
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
      identifier = self->_identifier;
      v104[0] = MEMORY[0x1E69E9820];
      v104[1] = 3221225472;
      v104[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke;
      v104[3] = &unk_1E818CD58;
      v12 = v9;
      v105 = v12;
      v13 = [builder appendObject:identifier counterpart:v104];
      descriptorIdentifier = self->_descriptorIdentifier;
      v102[0] = MEMORY[0x1E69E9820];
      v102[1] = 3221225472;
      v102[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_2;
      v102[3] = &unk_1E818CD58;
      v15 = v12;
      v103 = v15;
      v16 = [builder appendObject:descriptorIdentifier counterpart:v102];
      extensionBundleIdentifier = self->_extensionBundleIdentifier;
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v100[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_3;
      v100[3] = &unk_1E818CD58;
      v18 = v15;
      v101 = v18;
      v19 = [builder appendObject:extensionBundleIdentifier counterpart:v100];
      displayNameLocalizationKey = self->_displayNameLocalizationKey;
      v98[0] = MEMORY[0x1E69E9820];
      v98[1] = 3221225472;
      v98[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_4;
      v98[3] = &unk_1E818CD58;
      v21 = v18;
      v99 = v21;
      v22 = [builder appendObject:displayNameLocalizationKey counterpart:v98];
      spokenNameLocalizationKey = self->_spokenNameLocalizationKey;
      v96[0] = MEMORY[0x1E69E9820];
      v96[1] = 3221225472;
      v96[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_5;
      v96[3] = &unk_1E818CD58;
      v24 = v21;
      v97 = v24;
      v25 = [builder appendObject:spokenNameLocalizationKey counterpart:v96];
      descriptiveTextLocalizationKey = self->_descriptiveTextLocalizationKey;
      v94[0] = MEMORY[0x1E69E9820];
      v94[1] = 3221225472;
      v94[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_6;
      v94[3] = &unk_1E818CD58;
      v27 = v24;
      v95 = v27;
      v28 = [builder appendObject:descriptiveTextLocalizationKey counterpart:v94];
      localizedDisplayName = self->_localizedDisplayName;
      v92[0] = MEMORY[0x1E69E9820];
      v92[1] = 3221225472;
      v92[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_7;
      v92[3] = &unk_1E818CD58;
      v30 = v27;
      v93 = v30;
      v31 = [builder appendObject:localizedDisplayName counterpart:v92];
      localizedSubtitle = self->_localizedSubtitle;
      v90[0] = MEMORY[0x1E69E9820];
      v90[1] = 3221225472;
      v90[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_8;
      v90[3] = &unk_1E818CD58;
      v33 = v30;
      v91 = v33;
      v34 = [builder appendObject:localizedSubtitle counterpart:v90];
      titleFontName = self->_titleFontName;
      v88[0] = MEMORY[0x1E69E9820];
      v88[1] = 3221225472;
      v88[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_9;
      v88[3] = &unk_1E818CD58;
      v36 = v33;
      v89 = v36;
      v37 = [builder appendObject:titleFontName counterpart:v88];
      titleColor = self->_titleColor;
      v86[0] = MEMORY[0x1E69E9820];
      v86[1] = 3221225472;
      v86[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_10;
      v86[3] = &unk_1E818CD58;
      v39 = v36;
      v87 = v39;
      v40 = [builder appendObject:titleColor counterpart:v86];
      subtitleComplication = self->_subtitleComplication;
      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_11;
      v84[3] = &unk_1E818CD58;
      v42 = v39;
      v85 = v42;
      v43 = [builder appendObject:subtitleComplication counterpart:v84];
      layoutType = self->_layoutType;
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_12;
      v82[3] = &unk_1E818CDA8;
      v45 = v42;
      v83 = v45;
      v46 = [builder appendInteger:layoutType counterpart:v82];
      modeSemanticType = self->_modeSemanticType;
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_13;
      v80[3] = &unk_1E818CD58;
      v48 = v45;
      v81 = v48;
      v49 = [builder appendObject:modeSemanticType counterpart:v80];
      modeUUID = self->_modeUUID;
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_14;
      v78[3] = &unk_1E818CD58;
      v51 = v48;
      v79 = v51;
      v52 = [builder appendObject:modeUUID counterpart:v78];
      complications = self->_complications;
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_15;
      v76[3] = &unk_1E818CD58;
      v54 = v51;
      v77 = v54;
      v55 = [builder appendObject:complications counterpart:v76];
      landscapeComplications = self->_landscapeComplications;
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v74[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_16;
      v74[3] = &unk_1E818CD58;
      v57 = v54;
      v75 = v57;
      v58 = [builder appendObject:landscapeComplications counterpart:v74];
      blankTemplate = self->_blankTemplate;
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_17;
      v72[3] = &unk_1E818CD80;
      v60 = v57;
      v73 = v60;
      v61 = [builder appendBool:blankTemplate counterpart:v72];
      shouldShowAsShuffleStack = self->_shouldShowAsShuffleStack;
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_18;
      v70[3] = &unk_1E818CD80;
      v63 = v60;
      v71 = v63;
      v64 = [builder appendBool:shouldShowAsShuffleStack counterpart:v70];
      source = self->_source;
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_19;
      v68[3] = &unk_1E818CDA8;
      v69 = v63;
      v66 = [builder appendInteger:source counterpart:v68];
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
  v46 = *MEMORY[0x1E69E9840];
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendObject:self->_identifier];
  v5 = [builder appendObject:self->_descriptorIdentifier];
  v6 = [builder appendObject:self->_extensionBundleIdentifier];
  v7 = [builder appendObject:self->_displayNameLocalizationKey];
  v8 = [builder appendObject:self->_spokenNameLocalizationKey];
  v9 = [builder appendObject:self->_descriptiveTextLocalizationKey];
  v10 = [builder appendObject:self->_localizedDisplayName];
  v11 = [builder appendObject:self->_localizedSubtitle];
  v12 = [builder appendObject:self->_titleFontName];
  v13 = [builder appendObject:self->_titleColor];
  v14 = [builder appendObject:self->_subtitleComplication];
  v15 = [builder appendInteger:self->_layoutType];
  v16 = [builder appendObject:self->_modeSemanticType];
  v17 = [builder appendObject:self->_modeUUID];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v18 = self->_complications;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v41;
    do
    {
      v22 = 0;
      do
      {
        if (*v41 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [builder appendObject:*(*(&v40 + 1) + 8 * v22++)];
      }

      while (v20 != v22);
      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v20);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v24 = self->_landscapeComplications;
  v25 = [(NSArray *)v24 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v37;
    do
    {
      v28 = 0;
      do
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [builder appendObject:{*(*(&v36 + 1) + 8 * v28++), v36}];
      }

      while (v26 != v28);
      v26 = [(NSArray *)v24 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v26);
  }

  v30 = [builder appendBool:self->_blankTemplate];
  v31 = [builder appendBool:self->_shouldShowAsShuffleStack];
  v32 = [builder appendInteger:self->_source];
  v33 = [builder hash];

  v34 = *MEMORY[0x1E69E9840];
  return v33;
}

- (PRSPosterGalleryItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_opt_class();
  v5 = NSStringFromSelector(sel_identifier);
  v60 = [coderCopy decodeObjectOfClass:v4 forKey:v5];

  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_descriptorIdentifier);
  v59 = [coderCopy decodeObjectOfClass:v6 forKey:v7];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_extensionBundleIdentifier);
  v58 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v10 = objc_opt_class();
  v11 = NSStringFromSelector(sel_displayNameLocalizationKey);
  v55 = [coderCopy decodeObjectOfClass:v10 forKey:v11];

  v12 = objc_opt_class();
  v13 = NSStringFromSelector(sel_spokenNameLocalizationKey);
  v54 = [coderCopy decodeObjectOfClass:v12 forKey:v13];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_descriptiveTextLocalizationKey);
  v53 = [coderCopy decodeObjectOfClass:v14 forKey:v15];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_localizedDisplayName);
  v52 = [coderCopy decodeObjectOfClass:v16 forKey:v17];

  v18 = objc_opt_class();
  v19 = NSStringFromSelector(sel_localizedSubtitle);
  v51 = [coderCopy decodeObjectOfClass:v18 forKey:v19];

  v20 = objc_opt_class();
  v21 = NSStringFromSelector(sel_titleFontName);
  v50 = [coderCopy decodeObjectOfClass:v20 forKey:v21];

  v22 = objc_opt_class();
  v23 = NSStringFromSelector(sel_titleColor);
  v49 = [coderCopy decodeObjectOfClass:v22 forKey:v23];

  v24 = objc_opt_class();
  v25 = NSStringFromSelector(sel_subtitleComplication);
  v26 = [coderCopy decodeObjectOfClass:v24 forKey:v25];

  v27 = NSStringFromSelector(sel_layoutType);
  v48 = [coderCopy decodeIntegerForKey:v27];

  v28 = objc_opt_class();
  v29 = NSStringFromSelector(sel_modeSemanticType);
  v47 = [coderCopy decodeObjectOfClass:v28 forKey:v29];

  v30 = objc_opt_class();
  v31 = NSStringFromSelector(sel_modeUUID);
  v46 = [coderCopy decodeObjectOfClass:v30 forKey:v31];

  v32 = objc_opt_class();
  v33 = NSStringFromSelector(sel_complications);
  v34 = [coderCopy decodeArrayOfObjectsOfClass:v32 forKey:v33];

  v35 = objc_opt_class();
  v36 = NSStringFromSelector(sel_landscapeComplications);
  v37 = [coderCopy decodeArrayOfObjectsOfClass:v35 forKey:v36];

  v38 = NSStringFromSelector(sel_isBlankTemplate);
  v39 = [coderCopy decodeBoolForKey:v38];

  v40 = NSStringFromSelector(sel_shouldShowAsShuffleStack);
  v41 = [coderCopy decodeBoolForKey:v40];

  v42 = NSStringFromSelector(sel_source);
  v43 = [coderCopy decodeIntegerForKey:v42];

  BYTE1(v45) = v41;
  LOBYTE(v45) = v39;
  v57 = [(PRSPosterGalleryItem *)self initWithIdentifier:v60 descriptorIdentifier:v59 extensionBundleIdentifier:v58 displayNameLocalizationKey:v55 spokenNameLocalizationKey:v54 descriptiveTextLocalizationKey:v53 localizedDisplayName:v52 localizedSubtitle:v51 titleFontName:v50 titleColor:v49 subtitleComplication:v26 layoutType:v48 modeSemanticType:v47 modeUUID:v46 complications:v34 landscapeComplications:v37 blankTemplate:v45 shouldShowAsShuffleStack:v43 source:?];

  return v57;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_identifier);
  [coderCopy encodeObject:identifier forKey:v6];

  descriptorIdentifier = self->_descriptorIdentifier;
  v8 = NSStringFromSelector(sel_descriptorIdentifier);
  [coderCopy encodeObject:descriptorIdentifier forKey:v8];

  extensionBundleIdentifier = self->_extensionBundleIdentifier;
  v10 = NSStringFromSelector(sel_extensionBundleIdentifier);
  [coderCopy encodeObject:extensionBundleIdentifier forKey:v10];

  displayNameLocalizationKey = self->_displayNameLocalizationKey;
  v12 = NSStringFromSelector(sel_displayNameLocalizationKey);
  [coderCopy encodeObject:displayNameLocalizationKey forKey:v12];

  spokenNameLocalizationKey = self->_spokenNameLocalizationKey;
  v14 = NSStringFromSelector(sel_spokenNameLocalizationKey);
  [coderCopy encodeObject:spokenNameLocalizationKey forKey:v14];

  descriptiveTextLocalizationKey = self->_descriptiveTextLocalizationKey;
  v16 = NSStringFromSelector(sel_descriptiveTextLocalizationKey);
  [coderCopy encodeObject:descriptiveTextLocalizationKey forKey:v16];

  localizedDisplayName = self->_localizedDisplayName;
  v18 = NSStringFromSelector(sel_localizedDisplayName);
  [coderCopy encodeObject:localizedDisplayName forKey:v18];

  localizedSubtitle = self->_localizedSubtitle;
  v20 = NSStringFromSelector(sel_localizedSubtitle);
  [coderCopy encodeObject:localizedSubtitle forKey:v20];

  titleFontName = self->_titleFontName;
  v22 = NSStringFromSelector(sel_titleFontName);
  [coderCopy encodeObject:titleFontName forKey:v22];

  titleColor = self->_titleColor;
  v24 = NSStringFromSelector(sel_titleColor);
  [coderCopy encodeObject:titleColor forKey:v24];

  subtitleComplication = self->_subtitleComplication;
  v26 = NSStringFromSelector(sel_subtitleComplication);
  [coderCopy encodeObject:subtitleComplication forKey:v26];

  layoutType = self->_layoutType;
  v28 = NSStringFromSelector(sel_layoutType);
  [coderCopy encodeInteger:layoutType forKey:v28];

  modeSemanticType = self->_modeSemanticType;
  v30 = NSStringFromSelector(sel_modeSemanticType);
  [coderCopy encodeObject:modeSemanticType forKey:v30];

  modeUUID = self->_modeUUID;
  v32 = NSStringFromSelector(sel_modeUUID);
  [coderCopy encodeObject:modeUUID forKey:v32];

  complications = self->_complications;
  v34 = NSStringFromSelector(sel_complications);
  [coderCopy encodeObject:complications forKey:v34];

  landscapeComplications = self->_landscapeComplications;
  v36 = NSStringFromSelector(sel_landscapeComplications);
  [coderCopy encodeObject:landscapeComplications forKey:v36];

  blankTemplate = self->_blankTemplate;
  v38 = NSStringFromSelector(sel_isBlankTemplate);
  [coderCopy encodeBool:blankTemplate forKey:v38];

  shouldShowAsShuffleStack = self->_shouldShowAsShuffleStack;
  v40 = NSStringFromSelector(sel_shouldShowAsShuffleStack);
  [coderCopy encodeBool:shouldShowAsShuffleStack forKey:v40];

  source = self->_source;
  v42 = NSStringFromSelector(sel_source);
  [coderCopy encodeInteger:source forKey:v42];
}

@end