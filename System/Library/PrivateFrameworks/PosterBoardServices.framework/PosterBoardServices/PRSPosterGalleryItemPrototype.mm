@interface PRSPosterGalleryItemPrototype
- (BOOL)isEqual:(id)equal;
- (PRSPosterGalleryItemPrototype)initWithCoder:(id)coder;
- (PRSPosterGalleryItemPrototype)initWithIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier containerBundleIdentifier:(id)containerBundleIdentifier galleryOptions:(id)options;
- (PRSPosterGalleryItemPrototype)initWithProactiveRepresentation:(id)representation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)proactiveRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRSPosterGalleryItemPrototype

- (PRSPosterGalleryItemPrototype)initWithIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier containerBundleIdentifier:(id)containerBundleIdentifier galleryOptions:(id)options
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  containerBundleIdentifierCopy = containerBundleIdentifier;
  optionsCopy = options;
  v26.receiver = self;
  v26.super_class = PRSPosterGalleryItemPrototype;
  v14 = [(PRSPosterGalleryItemPrototype *)&v26 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [bundleIdentifierCopy copy];
    extensionBundleIdentifier = v14->_extensionBundleIdentifier;
    v14->_extensionBundleIdentifier = v17;

    v19 = [containerBundleIdentifierCopy copy];
    containerBundleIdentifier = v14->_containerBundleIdentifier;
    v14->_containerBundleIdentifier = v19;

    v21 = [optionsCopy copy];
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

- (PRSPosterGalleryItemPrototype)initWithProactiveRepresentation:(id)representation
{
  representationCopy = representation;
  identifier = [representationCopy identifier];
  extensionBundleIdentifier = [representationCopy extensionBundleIdentifier];
  containerBundleIdentifier = [representationCopy containerBundleIdentifier];
  galleryOptions = [representationCopy galleryOptions];

  posterBoardRepresentation = [galleryOptions posterBoardRepresentation];
  v10 = [(PRSPosterGalleryItemPrototype *)self initWithIdentifier:identifier extensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier galleryOptions:posterBoardRepresentation];

  return v10;
}

- (id)proactiveRepresentation
{
  v2 = [objc_alloc(MEMORY[0x1E698AF18]) initWithPosterBoardRepresentation:self];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = self->_identifier;
  extensionBundleIdentifier = self->_extensionBundleIdentifier;
  containerBundleIdentifier = self->_containerBundleIdentifier;
  galleryOptions = self->_galleryOptions;

  return [v4 initWithIdentifier:identifier extensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier galleryOptions:galleryOptions];
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
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __41__PRSPosterGalleryItemPrototype_isEqual___block_invoke;
      v32[3] = &unk_1E818CD58;
      v12 = v9;
      v33 = v12;
      v13 = [builder appendObject:identifier counterpart:v32];
      extensionBundleIdentifier = self->_extensionBundleIdentifier;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __41__PRSPosterGalleryItemPrototype_isEqual___block_invoke_2;
      v30[3] = &unk_1E818CD58;
      v15 = v12;
      v31 = v15;
      v16 = [builder appendObject:extensionBundleIdentifier counterpart:v30];
      containerBundleIdentifier = self->_containerBundleIdentifier;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __41__PRSPosterGalleryItemPrototype_isEqual___block_invoke_3;
      v28[3] = &unk_1E818CD58;
      v18 = v15;
      v29 = v18;
      v19 = [builder appendObject:containerBundleIdentifier counterpart:v28];
      galleryOptions = self->_galleryOptions;
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __41__PRSPosterGalleryItemPrototype_isEqual___block_invoke_4;
      v26 = &unk_1E818CD58;
      v27 = v18;
      v21 = [builder appendObject:galleryOptions counterpart:&v23];
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
  v4 = [builder appendObject:self->_identifier];
  v5 = [builder appendObject:self->_extensionBundleIdentifier];
  v6 = [builder appendObject:self->_containerBundleIdentifier];
  v7 = [builder appendObject:self->_galleryOptions];
  v8 = [builder hash];

  return v8;
}

- (PRSPosterGalleryItemPrototype)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_identifier);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_extensionBundleIdentifier);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_containerBundleIdentifier);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_galleryOptions);
  v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];

  v17 = [(PRSPosterGalleryItemPrototype *)self initWithIdentifier:v7 extensionBundleIdentifier:v10 containerBundleIdentifier:v13 galleryOptions:v16];
  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_identifier);
  [coderCopy encodeObject:identifier forKey:v6];

  extensionBundleIdentifier = self->_extensionBundleIdentifier;
  v8 = NSStringFromSelector(sel_extensionBundleIdentifier);
  [coderCopy encodeObject:extensionBundleIdentifier forKey:v8];

  containerBundleIdentifier = self->_containerBundleIdentifier;
  v10 = NSStringFromSelector(sel_containerBundleIdentifier);
  [coderCopy encodeObject:containerBundleIdentifier forKey:v10];

  galleryOptions = self->_galleryOptions;
  v12 = NSStringFromSelector(sel_galleryOptions);
  [coderCopy encodeObject:galleryOptions forKey:v12];
}

@end