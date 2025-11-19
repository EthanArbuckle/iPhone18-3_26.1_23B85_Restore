@interface PRSPosterGallerySection
- (BOOL)isEqual:(id)a3;
- (PRSPosterGallerySection)initWithCoder:(id)a3;
- (PRSPosterGallerySection)initWithProactiveRepresentation:(id)a3;
- (PRSPosterGallerySection)initWithType:(int64_t)a3 localizedTitle:(id)a4 localizedSubtitle:(id)a5 localizedDescriptiveText:(id)a6 symbolImageName:(id)a7 symbolColorName:(id)a8 unityDescription:(id)a9 items:(id)a10;
- (id)proactiveRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRSPosterGallerySection

- (PRSPosterGallerySection)initWithType:(int64_t)a3 localizedTitle:(id)a4 localizedSubtitle:(id)a5 localizedDescriptiveText:(id)a6 symbolImageName:(id)a7 symbolColorName:(id)a8 unityDescription:(id)a9 items:(id)a10
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v40.receiver = self;
  v40.super_class = PRSPosterGallerySection;
  v23 = [(PRSPosterGallerySection *)&v40 init];
  v24 = v23;
  if (v23)
  {
    v23->_type = a3;
    v25 = [v16 copy];
    localizedTitle = v24->_localizedTitle;
    v24->_localizedTitle = v25;

    v27 = [v17 copy];
    localizedSubtitle = v24->_localizedSubtitle;
    v24->_localizedSubtitle = v27;

    v29 = [v18 copy];
    localizedDescriptiveText = v24->_localizedDescriptiveText;
    v24->_localizedDescriptiveText = v29;

    v31 = [v19 copy];
    symbolImageName = v24->_symbolImageName;
    v24->_symbolImageName = v31;

    v33 = [v20 copy];
    symbolColorName = v24->_symbolColorName;
    v24->_symbolColorName = v33;

    v35 = [v21 copy];
    unityDescription = v24->_unityDescription;
    v24->_unityDescription = v35;

    v37 = [v22 copy];
    items = v24->_items;
    v24->_items = v37;
  }

  return v24;
}

- (PRSPosterGallerySection)initWithProactiveRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 items];
  v6 = [v5 bs_map:&__block_literal_global_7];

  v7 = [v4 type];
  if (v7 >= 5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v4 localizedTitle];
  v10 = [v4 localizedSubtitle];
  v11 = [v4 localizedDescriptiveText];
  v12 = [v4 symbolImageName];
  v13 = [v4 symbolColorName];
  v14 = [v4 unityDescription];
  v15 = [(PRSPosterGallerySection *)self initWithType:v8 localizedTitle:v9 localizedSubtitle:v10 localizedDescriptiveText:v11 symbolImageName:v12 symbolColorName:v13 unityDescription:v14 items:v6];

  return v15;
}

- (id)proactiveRepresentation
{
  v2 = [objc_alloc(MEMORY[0x1E698AEE0]) initWithPosterBoardRepresentation:self];

  return v2;
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
      type = self->_type;
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __35__PRSPosterGallerySection_isEqual___block_invoke;
      v52[3] = &unk_1E818CDA8;
      v12 = v9;
      v53 = v12;
      v13 = [v10 appendInteger:type counterpart:v52];
      localizedTitle = self->_localizedTitle;
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __35__PRSPosterGallerySection_isEqual___block_invoke_2;
      v50[3] = &unk_1E818CD58;
      v15 = v12;
      v51 = v15;
      v16 = [v10 appendObject:localizedTitle counterpart:v50];
      localizedSubtitle = self->_localizedSubtitle;
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __35__PRSPosterGallerySection_isEqual___block_invoke_3;
      v48[3] = &unk_1E818CD58;
      v18 = v15;
      v49 = v18;
      v19 = [v10 appendObject:localizedSubtitle counterpart:v48];
      localizedDescriptiveText = self->_localizedDescriptiveText;
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __35__PRSPosterGallerySection_isEqual___block_invoke_4;
      v46[3] = &unk_1E818CD58;
      v21 = v18;
      v47 = v21;
      v22 = [v10 appendObject:localizedDescriptiveText counterpart:v46];
      symbolImageName = self->_symbolImageName;
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __35__PRSPosterGallerySection_isEqual___block_invoke_5;
      v44[3] = &unk_1E818CD58;
      v24 = v21;
      v45 = v24;
      v25 = [v10 appendObject:symbolImageName counterpart:v44];
      symbolColorName = self->_symbolColorName;
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __35__PRSPosterGallerySection_isEqual___block_invoke_6;
      v42[3] = &unk_1E818CD58;
      v27 = v24;
      v43 = v27;
      v28 = [v10 appendObject:symbolColorName counterpart:v42];
      unityDescription = self->_unityDescription;
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __35__PRSPosterGallerySection_isEqual___block_invoke_7;
      v40[3] = &unk_1E818CD58;
      v30 = v27;
      v41 = v30;
      v31 = [v10 appendObject:unityDescription counterpart:v40];
      items = self->_items;
      v35 = MEMORY[0x1E69E9820];
      v36 = 3221225472;
      v37 = __35__PRSPosterGallerySection_isEqual___block_invoke_8;
      v38 = &unk_1E818CD58;
      v39 = v30;
      v33 = [v10 appendObject:items counterpart:&v35];
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
  v25 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendInteger:self->_type];
  v5 = [v3 appendObject:self->_localizedTitle];
  v6 = [v3 appendObject:self->_localizedSubtitle];
  v7 = [v3 appendObject:self->_localizedDescriptiveText];
  v8 = [v3 appendObject:self->_symbolImageName];
  v9 = [v3 appendObject:self->_symbolColorName];
  v10 = [v3 appendObject:self->_unityDescription];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = self->_items;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [v3 appendObject:{*(*(&v20 + 1) + 8 * v15++), v20}];
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v17 = [v3 hash];
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (PRSPosterGallerySection)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = NSStringFromSelector(sel_type);
  v5 = [v3 decodeIntegerForKey:v4];

  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_localizedTitle);
  v8 = [v3 decodeObjectOfClass:v6 forKey:v7];

  v9 = objc_opt_class();
  v10 = NSStringFromSelector(sel_localizedSubtitle);
  v11 = [v3 decodeObjectOfClass:v9 forKey:v10];

  v12 = objc_opt_class();
  v13 = NSStringFromSelector(sel_localizedDescriptiveText);
  v14 = [v3 decodeObjectOfClass:v12 forKey:v13];

  v15 = objc_opt_class();
  v16 = NSStringFromSelector(sel_symbolImageName);
  v17 = [v3 decodeObjectOfClass:v15 forKey:v16];

  v18 = objc_opt_class();
  v19 = NSStringFromSelector(sel_symbolColorName);
  v20 = [v3 decodeObjectOfClass:v18 forKey:v19];

  v21 = objc_opt_class();
  v22 = NSStringFromSelector(sel_unityDescription);
  v23 = [v3 decodeObjectOfClass:v21 forKey:v22];

  v24 = objc_opt_class();
  v25 = NSStringFromSelector(sel_items);
  v26 = [v3 decodeArrayOfObjectsOfClass:v24 forKey:v25];

  v27 = [(PRSPosterGallerySection *)self initWithType:v5 localizedTitle:v8 localizedSubtitle:v11 localizedDescriptiveText:v14 symbolImageName:v17 symbolColorName:v20 unityDescription:v23 items:v26];
  return v27;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  v6 = NSStringFromSelector(sel_type);
  [v5 encodeInteger:type forKey:v6];

  localizedTitle = self->_localizedTitle;
  v8 = NSStringFromSelector(sel_localizedTitle);
  [v5 encodeObject:localizedTitle forKey:v8];

  localizedSubtitle = self->_localizedSubtitle;
  v10 = NSStringFromSelector(sel_localizedSubtitle);
  [v5 encodeObject:localizedSubtitle forKey:v10];

  localizedDescriptiveText = self->_localizedDescriptiveText;
  v12 = NSStringFromSelector(sel_localizedDescriptiveText);
  [v5 encodeObject:localizedDescriptiveText forKey:v12];

  symbolImageName = self->_symbolImageName;
  v14 = NSStringFromSelector(sel_symbolImageName);
  [v5 encodeObject:symbolImageName forKey:v14];

  symbolColorName = self->_symbolColorName;
  v16 = NSStringFromSelector(sel_symbolColorName);
  [v5 encodeObject:symbolColorName forKey:v16];

  unityDescription = self->_unityDescription;
  v18 = NSStringFromSelector(sel_unityDescription);
  [v5 encodeObject:unityDescription forKey:v18];

  items = self->_items;
  v20 = NSStringFromSelector(sel_items);
  [v5 encodeObject:items forKey:v20];
}

@end