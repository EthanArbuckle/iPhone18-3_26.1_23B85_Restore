@interface PRSPosterGalleryItemPrototype
- (BOOL)isEqual:(id)a3;
- (PRSPosterGalleryItemPrototype)initWithCoder:(id)a3;
- (PRSPosterGalleryItemPrototype)initWithIdentifier:(id)a3 extensionBundleIdentifier:(id)a4 containerBundleIdentifier:(id)a5 galleryOptions:(id)a6;
- (PRSPosterGalleryItemPrototype)initWithProactiveRepresentation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)proactiveRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRSPosterGalleryItemPrototype

- (PRSPosterGalleryItemPrototype)initWithIdentifier:(id)a3 extensionBundleIdentifier:(id)a4 containerBundleIdentifier:(id)a5 galleryOptions:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = PRSPosterGalleryItemPrototype;
  v14 = [(PRSPosterGalleryItemPrototype *)&v26 init];
  if (v14)
  {
    v15 = [v10 copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [v11 copy];
    extensionBundleIdentifier = v14->_extensionBundleIdentifier;
    v14->_extensionBundleIdentifier = v17;

    v19 = [v12 copy];
    containerBundleIdentifier = v14->_containerBundleIdentifier;
    v14->_containerBundleIdentifier = v19;

    v21 = [v13 copy];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = objc_alloc_init(PRSPosterGalleryItemOptions);
    }

    galleryOptions = v14->_galleryOptions;
    v14->_galleryOptions = v23;
  }

  return v14;
}

- (PRSPosterGalleryItemPrototype)initWithProactiveRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 extensionBundleIdentifier];
  v7 = [v4 containerBundleIdentifier];
  v8 = [v4 galleryOptions];

  v9 = [v8 posterBoardRepresentation];
  v10 = [(PRSPosterGalleryItemPrototype *)self initWithIdentifier:v5 extensionBundleIdentifier:v6 containerBundleIdentifier:v7 galleryOptions:v9];

  return v10;
}

- (id)proactiveRepresentation
{
  v2 = [objc_alloc(MEMORY[0x1E698AF18]) initWithPosterBoardRepresentation:self];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  identifier = self->_identifier;
  extensionBundleIdentifier = self->_extensionBundleIdentifier;
  containerBundleIdentifier = self->_containerBundleIdentifier;
  galleryOptions = self->_galleryOptions;

  return [v4 initWithIdentifier:identifier extensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier galleryOptions:galleryOptions];
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
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __41__PRSPosterGalleryItemPrototype_isEqual___block_invoke;
      v32[3] = &unk_1E818CD58;
      v12 = v9;
      v33 = v12;
      v13 = [v10 appendObject:identifier counterpart:v32];
      extensionBundleIdentifier = self->_extensionBundleIdentifier;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __41__PRSPosterGalleryItemPrototype_isEqual___block_invoke_2;
      v30[3] = &unk_1E818CD58;
      v15 = v12;
      v31 = v15;
      v16 = [v10 appendObject:extensionBundleIdentifier counterpart:v30];
      containerBundleIdentifier = self->_containerBundleIdentifier;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __41__PRSPosterGalleryItemPrototype_isEqual___block_invoke_3;
      v28[3] = &unk_1E818CD58;
      v18 = v15;
      v29 = v18;
      v19 = [v10 appendObject:containerBundleIdentifier counterpart:v28];
      galleryOptions = self->_galleryOptions;
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __41__PRSPosterGalleryItemPrototype_isEqual___block_invoke_4;
      v26 = &unk_1E818CD58;
      v27 = v18;
      v21 = [v10 appendObject:galleryOptions counterpart:&v23];
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
  v4 = [v3 appendObject:self->_identifier];
  v5 = [v3 appendObject:self->_extensionBundleIdentifier];
  v6 = [v3 appendObject:self->_containerBundleIdentifier];
  v7 = [v3 appendObject:self->_galleryOptions];
  v8 = [v3 hash];

  return v8;
}

- (PRSPosterGalleryItemPrototype)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_identifier);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_extensionBundleIdentifier);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_containerBundleIdentifier);
  v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_galleryOptions);
  v16 = [v4 decodeObjectOfClass:v14 forKey:v15];

  v17 = [(PRSPosterGalleryItemPrototype *)self initWithIdentifier:v7 extensionBundleIdentifier:v10 containerBundleIdentifier:v13 galleryOptions:v16];
  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  v6 = NSStringFromSelector(sel_identifier);
  [v5 encodeObject:identifier forKey:v6];

  extensionBundleIdentifier = self->_extensionBundleIdentifier;
  v8 = NSStringFromSelector(sel_extensionBundleIdentifier);
  [v5 encodeObject:extensionBundleIdentifier forKey:v8];

  containerBundleIdentifier = self->_containerBundleIdentifier;
  v10 = NSStringFromSelector(sel_containerBundleIdentifier);
  [v5 encodeObject:containerBundleIdentifier forKey:v10];

  galleryOptions = self->_galleryOptions;
  v12 = NSStringFromSelector(sel_galleryOptions);
  [v5 encodeObject:galleryOptions forKey:v12];
}

@end