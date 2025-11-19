@interface PRSPosterGalleryItem
- (BOOL)isEqual:(id)a3;
- (PRSPosterGalleryItem)initWithCoder:(id)a3;
- (PRSPosterGalleryItem)initWithIdentifier:(id)a3 descriptorIdentifier:(id)a4 extensionBundleIdentifier:(id)a5 displayNameLocalizationKey:(id)a6 spokenNameLocalizationKey:(id)a7 descriptiveTextLocalizationKey:(id)a8 localizedDisplayName:(id)a9 localizedSubtitle:(id)a10 titleFontName:(id)a11 titleColor:(id)a12 subtitleComplication:(id)a13 layoutType:(int64_t)a14 modeSemanticType:(id)a15 modeUUID:(id)a16 complications:(id)a17 landscapeComplications:(id)a18 blankTemplate:(BOOL)a19 shouldShowAsShuffleStack:(BOOL)a20 source:(int64_t)a21;
- (PRSPosterGalleryItem)initWithProactiveRepresentation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)proactiveRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRSPosterGalleryItem

- (PRSPosterGalleryItem)initWithIdentifier:(id)a3 descriptorIdentifier:(id)a4 extensionBundleIdentifier:(id)a5 displayNameLocalizationKey:(id)a6 spokenNameLocalizationKey:(id)a7 descriptiveTextLocalizationKey:(id)a8 localizedDisplayName:(id)a9 localizedSubtitle:(id)a10 titleFontName:(id)a11 titleColor:(id)a12 subtitleComplication:(id)a13 layoutType:(int64_t)a14 modeSemanticType:(id)a15 modeUUID:(id)a16 complications:(id)a17 landscapeComplications:(id)a18 blankTemplate:(BOOL)a19 shouldShowAsShuffleStack:(BOOL)a20 source:(int64_t)a21
{
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v74 = a7;
  v73 = a8;
  v30 = v28;
  v72 = a9;
  v31 = v27;
  v71 = a10;
  v32 = v29;
  v70 = a11;
  v33 = a12;
  v34 = a13;
  v69 = a15;
  v35 = a16;
  v36 = a17;
  v37 = a18;
  v75.receiver = self;
  v75.super_class = PRSPosterGalleryItem;
  v38 = [(PRSPosterGalleryItem *)&v75 init];
  if (v38)
  {
    v39 = [v26 copy];
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

    v47 = [v74 copy];
    spokenNameLocalizationKey = v38->_spokenNameLocalizationKey;
    v38->_spokenNameLocalizationKey = v47;

    v49 = [v73 copy];
    descriptiveTextLocalizationKey = v38->_descriptiveTextLocalizationKey;
    v38->_descriptiveTextLocalizationKey = v49;

    v51 = [v72 copy];
    localizedDisplayName = v38->_localizedDisplayName;
    v38->_localizedDisplayName = v51;

    v53 = [v71 copy];
    localizedSubtitle = v38->_localizedSubtitle;
    v38->_localizedSubtitle = v53;

    v55 = [v70 copy];
    titleFontName = v38->_titleFontName;
    v38->_titleFontName = v55;

    v57 = [v33 copy];
    titleColor = v38->_titleColor;
    v38->_titleColor = v57;

    v59 = [v34 copy];
    subtitleComplication = v38->_subtitleComplication;
    v38->_subtitleComplication = v59;

    v38->_layoutType = a14;
    objc_storeStrong(&v38->_modeSemanticType, a15);
    v61 = [v35 copy];
    modeUUID = v38->_modeUUID;
    v38->_modeUUID = v61;

    v63 = [v36 copy];
    complications = v38->_complications;
    v38->_complications = v63;

    v65 = [v37 copy];
    landscapeComplications = v38->_landscapeComplications;
    v38->_landscapeComplications = v65;

    v38->_blankTemplate = a19;
    v38->_shouldShowAsShuffleStack = a20;
    v38->_source = a21;
  }

  return v38;
}

- (PRSPosterGalleryItem)initWithProactiveRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 complications];
  v31 = [v4 bs_map:&__block_literal_global_11];

  v5 = [v3 landscapeComplications];
  v30 = [v5 bs_map:&__block_literal_global_12_1];

  v29 = [v3 identifier];
  v27 = [v3 descriptorIdentifier];
  v26 = [v3 extensionBundleIdentifier];
  v25 = [v3 displayNameLocalizationKey];
  v24 = [v3 spokenNameLocalizationKey];
  v21 = [v3 descriptiveTextLocalizationKey];
  v28 = [v3 localizedDisplayName];
  v6 = [v3 localizedSubtitle];
  v7 = [v3 titleFontName];
  v8 = [v3 titleColor];
  v20 = [v3 subtitleComplication];
  v9 = [v20 posterBoardRepresentation];
  v10 = [v3 layoutType];
  if ((v10 - 1) >= 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v3 modeSemanticType];
  v13 = [v3 modeUUID];
  v14 = [v3 isBlankTemplate];
  v15 = [v3 shouldShowAsShuffleStack];
  v16 = [v3 source];
  if ((v16 - 1) >= 6)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  BYTE1(v19) = v15;
  LOBYTE(v19) = v14;
  v23 = [(PRSPosterGalleryItem *)self initWithIdentifier:v29 descriptorIdentifier:v27 extensionBundleIdentifier:v26 displayNameLocalizationKey:v25 spokenNameLocalizationKey:v24 descriptiveTextLocalizationKey:v21 localizedDisplayName:v28 localizedSubtitle:v6 titleFontName:v7 titleColor:v8 subtitleComplication:v9 layoutType:v11 modeSemanticType:v12 modeUUID:v13 complications:v31 landscapeComplications:v30 blankTemplate:v19 shouldShowAsShuffleStack:v17 source:?];

  return v23;
}

- (id)proactiveRepresentation
{
  v2 = [objc_alloc(MEMORY[0x1E698AED8]) initWithPosterBoardRepresentation:self];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  LOWORD(v6) = *&self->_blankTemplate;
  return [v4 initWithIdentifier:self->_identifier descriptorIdentifier:self->_descriptorIdentifier extensionBundleIdentifier:self->_extensionBundleIdentifier displayNameLocalizationKey:self->_displayNameLocalizationKey spokenNameLocalizationKey:self->_spokenNameLocalizationKey descriptiveTextLocalizationKey:self->_descriptiveTextLocalizationKey localizedDisplayName:self->_localizedDisplayName localizedSubtitle:self->_localizedSubtitle titleFontName:self->_titleFontName titleColor:self->_titleColor subtitleComplication:self->_subtitleComplication layoutType:self->_layoutType modeSemanticType:self->_modeSemanticType modeUUID:self->_modeUUID complications:self->_complications landscapeComplications:self->_landscapeComplications blankTemplate:v6 shouldShowAsShuffleStack:self->_source source:?];
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
      identifier = self->_identifier;
      v104[0] = MEMORY[0x1E69E9820];
      v104[1] = 3221225472;
      v104[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke;
      v104[3] = &unk_1E818CD58;
      v12 = v9;
      v105 = v12;
      v13 = [v10 appendObject:identifier counterpart:v104];
      descriptorIdentifier = self->_descriptorIdentifier;
      v102[0] = MEMORY[0x1E69E9820];
      v102[1] = 3221225472;
      v102[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_2;
      v102[3] = &unk_1E818CD58;
      v15 = v12;
      v103 = v15;
      v16 = [v10 appendObject:descriptorIdentifier counterpart:v102];
      extensionBundleIdentifier = self->_extensionBundleIdentifier;
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v100[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_3;
      v100[3] = &unk_1E818CD58;
      v18 = v15;
      v101 = v18;
      v19 = [v10 appendObject:extensionBundleIdentifier counterpart:v100];
      displayNameLocalizationKey = self->_displayNameLocalizationKey;
      v98[0] = MEMORY[0x1E69E9820];
      v98[1] = 3221225472;
      v98[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_4;
      v98[3] = &unk_1E818CD58;
      v21 = v18;
      v99 = v21;
      v22 = [v10 appendObject:displayNameLocalizationKey counterpart:v98];
      spokenNameLocalizationKey = self->_spokenNameLocalizationKey;
      v96[0] = MEMORY[0x1E69E9820];
      v96[1] = 3221225472;
      v96[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_5;
      v96[3] = &unk_1E818CD58;
      v24 = v21;
      v97 = v24;
      v25 = [v10 appendObject:spokenNameLocalizationKey counterpart:v96];
      descriptiveTextLocalizationKey = self->_descriptiveTextLocalizationKey;
      v94[0] = MEMORY[0x1E69E9820];
      v94[1] = 3221225472;
      v94[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_6;
      v94[3] = &unk_1E818CD58;
      v27 = v24;
      v95 = v27;
      v28 = [v10 appendObject:descriptiveTextLocalizationKey counterpart:v94];
      localizedDisplayName = self->_localizedDisplayName;
      v92[0] = MEMORY[0x1E69E9820];
      v92[1] = 3221225472;
      v92[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_7;
      v92[3] = &unk_1E818CD58;
      v30 = v27;
      v93 = v30;
      v31 = [v10 appendObject:localizedDisplayName counterpart:v92];
      localizedSubtitle = self->_localizedSubtitle;
      v90[0] = MEMORY[0x1E69E9820];
      v90[1] = 3221225472;
      v90[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_8;
      v90[3] = &unk_1E818CD58;
      v33 = v30;
      v91 = v33;
      v34 = [v10 appendObject:localizedSubtitle counterpart:v90];
      titleFontName = self->_titleFontName;
      v88[0] = MEMORY[0x1E69E9820];
      v88[1] = 3221225472;
      v88[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_9;
      v88[3] = &unk_1E818CD58;
      v36 = v33;
      v89 = v36;
      v37 = [v10 appendObject:titleFontName counterpart:v88];
      titleColor = self->_titleColor;
      v86[0] = MEMORY[0x1E69E9820];
      v86[1] = 3221225472;
      v86[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_10;
      v86[3] = &unk_1E818CD58;
      v39 = v36;
      v87 = v39;
      v40 = [v10 appendObject:titleColor counterpart:v86];
      subtitleComplication = self->_subtitleComplication;
      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_11;
      v84[3] = &unk_1E818CD58;
      v42 = v39;
      v85 = v42;
      v43 = [v10 appendObject:subtitleComplication counterpart:v84];
      layoutType = self->_layoutType;
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_12;
      v82[3] = &unk_1E818CDA8;
      v45 = v42;
      v83 = v45;
      v46 = [v10 appendInteger:layoutType counterpart:v82];
      modeSemanticType = self->_modeSemanticType;
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_13;
      v80[3] = &unk_1E818CD58;
      v48 = v45;
      v81 = v48;
      v49 = [v10 appendObject:modeSemanticType counterpart:v80];
      modeUUID = self->_modeUUID;
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_14;
      v78[3] = &unk_1E818CD58;
      v51 = v48;
      v79 = v51;
      v52 = [v10 appendObject:modeUUID counterpart:v78];
      complications = self->_complications;
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_15;
      v76[3] = &unk_1E818CD58;
      v54 = v51;
      v77 = v54;
      v55 = [v10 appendObject:complications counterpart:v76];
      landscapeComplications = self->_landscapeComplications;
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v74[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_16;
      v74[3] = &unk_1E818CD58;
      v57 = v54;
      v75 = v57;
      v58 = [v10 appendObject:landscapeComplications counterpart:v74];
      blankTemplate = self->_blankTemplate;
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_17;
      v72[3] = &unk_1E818CD80;
      v60 = v57;
      v73 = v60;
      v61 = [v10 appendBool:blankTemplate counterpart:v72];
      shouldShowAsShuffleStack = self->_shouldShowAsShuffleStack;
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_18;
      v70[3] = &unk_1E818CD80;
      v63 = v60;
      v71 = v63;
      v64 = [v10 appendBool:shouldShowAsShuffleStack counterpart:v70];
      source = self->_source;
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __32__PRSPosterGalleryItem_isEqual___block_invoke_19;
      v68[3] = &unk_1E818CDA8;
      v69 = v63;
      v66 = [v10 appendInteger:source counterpart:v68];
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
  v46 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendObject:self->_identifier];
  v5 = [v3 appendObject:self->_descriptorIdentifier];
  v6 = [v3 appendObject:self->_extensionBundleIdentifier];
  v7 = [v3 appendObject:self->_displayNameLocalizationKey];
  v8 = [v3 appendObject:self->_spokenNameLocalizationKey];
  v9 = [v3 appendObject:self->_descriptiveTextLocalizationKey];
  v10 = [v3 appendObject:self->_localizedDisplayName];
  v11 = [v3 appendObject:self->_localizedSubtitle];
  v12 = [v3 appendObject:self->_titleFontName];
  v13 = [v3 appendObject:self->_titleColor];
  v14 = [v3 appendObject:self->_subtitleComplication];
  v15 = [v3 appendInteger:self->_layoutType];
  v16 = [v3 appendObject:self->_modeSemanticType];
  v17 = [v3 appendObject:self->_modeUUID];
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

        v23 = [v3 appendObject:*(*(&v40 + 1) + 8 * v22++)];
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

        v29 = [v3 appendObject:{*(*(&v36 + 1) + 8 * v28++), v36}];
      }

      while (v26 != v28);
      v26 = [(NSArray *)v24 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v26);
  }

  v30 = [v3 appendBool:self->_blankTemplate];
  v31 = [v3 appendBool:self->_shouldShowAsShuffleStack];
  v32 = [v3 appendInteger:self->_source];
  v33 = [v3 hash];

  v34 = *MEMORY[0x1E69E9840];
  return v33;
}

- (PRSPosterGalleryItem)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromSelector(sel_identifier);
  v60 = [v3 decodeObjectOfClass:v4 forKey:v5];

  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_descriptorIdentifier);
  v59 = [v3 decodeObjectOfClass:v6 forKey:v7];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_extensionBundleIdentifier);
  v58 = [v3 decodeObjectOfClass:v8 forKey:v9];

  v10 = objc_opt_class();
  v11 = NSStringFromSelector(sel_displayNameLocalizationKey);
  v55 = [v3 decodeObjectOfClass:v10 forKey:v11];

  v12 = objc_opt_class();
  v13 = NSStringFromSelector(sel_spokenNameLocalizationKey);
  v54 = [v3 decodeObjectOfClass:v12 forKey:v13];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_descriptiveTextLocalizationKey);
  v53 = [v3 decodeObjectOfClass:v14 forKey:v15];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_localizedDisplayName);
  v52 = [v3 decodeObjectOfClass:v16 forKey:v17];

  v18 = objc_opt_class();
  v19 = NSStringFromSelector(sel_localizedSubtitle);
  v51 = [v3 decodeObjectOfClass:v18 forKey:v19];

  v20 = objc_opt_class();
  v21 = NSStringFromSelector(sel_titleFontName);
  v50 = [v3 decodeObjectOfClass:v20 forKey:v21];

  v22 = objc_opt_class();
  v23 = NSStringFromSelector(sel_titleColor);
  v49 = [v3 decodeObjectOfClass:v22 forKey:v23];

  v24 = objc_opt_class();
  v25 = NSStringFromSelector(sel_subtitleComplication);
  v26 = [v3 decodeObjectOfClass:v24 forKey:v25];

  v27 = NSStringFromSelector(sel_layoutType);
  v48 = [v3 decodeIntegerForKey:v27];

  v28 = objc_opt_class();
  v29 = NSStringFromSelector(sel_modeSemanticType);
  v47 = [v3 decodeObjectOfClass:v28 forKey:v29];

  v30 = objc_opt_class();
  v31 = NSStringFromSelector(sel_modeUUID);
  v46 = [v3 decodeObjectOfClass:v30 forKey:v31];

  v32 = objc_opt_class();
  v33 = NSStringFromSelector(sel_complications);
  v34 = [v3 decodeArrayOfObjectsOfClass:v32 forKey:v33];

  v35 = objc_opt_class();
  v36 = NSStringFromSelector(sel_landscapeComplications);
  v37 = [v3 decodeArrayOfObjectsOfClass:v35 forKey:v36];

  v38 = NSStringFromSelector(sel_isBlankTemplate);
  v39 = [v3 decodeBoolForKey:v38];

  v40 = NSStringFromSelector(sel_shouldShowAsShuffleStack);
  v41 = [v3 decodeBoolForKey:v40];

  v42 = NSStringFromSelector(sel_source);
  v43 = [v3 decodeIntegerForKey:v42];

  BYTE1(v45) = v41;
  LOBYTE(v45) = v39;
  v57 = [(PRSPosterGalleryItem *)self initWithIdentifier:v60 descriptorIdentifier:v59 extensionBundleIdentifier:v58 displayNameLocalizationKey:v55 spokenNameLocalizationKey:v54 descriptiveTextLocalizationKey:v53 localizedDisplayName:v52 localizedSubtitle:v51 titleFontName:v50 titleColor:v49 subtitleComplication:v26 layoutType:v48 modeSemanticType:v47 modeUUID:v46 complications:v34 landscapeComplications:v37 blankTemplate:v45 shouldShowAsShuffleStack:v43 source:?];

  return v57;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  v6 = NSStringFromSelector(sel_identifier);
  [v5 encodeObject:identifier forKey:v6];

  descriptorIdentifier = self->_descriptorIdentifier;
  v8 = NSStringFromSelector(sel_descriptorIdentifier);
  [v5 encodeObject:descriptorIdentifier forKey:v8];

  extensionBundleIdentifier = self->_extensionBundleIdentifier;
  v10 = NSStringFromSelector(sel_extensionBundleIdentifier);
  [v5 encodeObject:extensionBundleIdentifier forKey:v10];

  displayNameLocalizationKey = self->_displayNameLocalizationKey;
  v12 = NSStringFromSelector(sel_displayNameLocalizationKey);
  [v5 encodeObject:displayNameLocalizationKey forKey:v12];

  spokenNameLocalizationKey = self->_spokenNameLocalizationKey;
  v14 = NSStringFromSelector(sel_spokenNameLocalizationKey);
  [v5 encodeObject:spokenNameLocalizationKey forKey:v14];

  descriptiveTextLocalizationKey = self->_descriptiveTextLocalizationKey;
  v16 = NSStringFromSelector(sel_descriptiveTextLocalizationKey);
  [v5 encodeObject:descriptiveTextLocalizationKey forKey:v16];

  localizedDisplayName = self->_localizedDisplayName;
  v18 = NSStringFromSelector(sel_localizedDisplayName);
  [v5 encodeObject:localizedDisplayName forKey:v18];

  localizedSubtitle = self->_localizedSubtitle;
  v20 = NSStringFromSelector(sel_localizedSubtitle);
  [v5 encodeObject:localizedSubtitle forKey:v20];

  titleFontName = self->_titleFontName;
  v22 = NSStringFromSelector(sel_titleFontName);
  [v5 encodeObject:titleFontName forKey:v22];

  titleColor = self->_titleColor;
  v24 = NSStringFromSelector(sel_titleColor);
  [v5 encodeObject:titleColor forKey:v24];

  subtitleComplication = self->_subtitleComplication;
  v26 = NSStringFromSelector(sel_subtitleComplication);
  [v5 encodeObject:subtitleComplication forKey:v26];

  layoutType = self->_layoutType;
  v28 = NSStringFromSelector(sel_layoutType);
  [v5 encodeInteger:layoutType forKey:v28];

  modeSemanticType = self->_modeSemanticType;
  v30 = NSStringFromSelector(sel_modeSemanticType);
  [v5 encodeObject:modeSemanticType forKey:v30];

  modeUUID = self->_modeUUID;
  v32 = NSStringFromSelector(sel_modeUUID);
  [v5 encodeObject:modeUUID forKey:v32];

  complications = self->_complications;
  v34 = NSStringFromSelector(sel_complications);
  [v5 encodeObject:complications forKey:v34];

  landscapeComplications = self->_landscapeComplications;
  v36 = NSStringFromSelector(sel_landscapeComplications);
  [v5 encodeObject:landscapeComplications forKey:v36];

  blankTemplate = self->_blankTemplate;
  v38 = NSStringFromSelector(sel_isBlankTemplate);
  [v5 encodeBool:blankTemplate forKey:v38];

  shouldShowAsShuffleStack = self->_shouldShowAsShuffleStack;
  v40 = NSStringFromSelector(sel_shouldShowAsShuffleStack);
  [v5 encodeBool:shouldShowAsShuffleStack forKey:v40];

  source = self->_source;
  v42 = NSStringFromSelector(sel_source);
  [v5 encodeInteger:source forKey:v42];
}

@end