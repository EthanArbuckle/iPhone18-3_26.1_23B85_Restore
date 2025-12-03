@interface PRSPosterGalleryLayout
- (BOOL)isEqual:(id)equal;
- (PRSPosterGalleryLayout)initWithCoder:(id)coder;
- (PRSPosterGalleryLayout)initWithProactiveRepresentation:(id)representation;
- (PRSPosterGalleryLayout)initWithSections:(id)sections locale:(id)locale source:(int64_t)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)proactiveRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRSPosterGalleryLayout

- (PRSPosterGalleryLayout)initWithSections:(id)sections locale:(id)locale source:(int64_t)source
{
  sectionsCopy = sections;
  localeCopy = locale;
  v17.receiver = self;
  v17.super_class = PRSPosterGalleryLayout;
  v10 = [(PRSPosterGalleryLayout *)&v17 init];
  if (v10)
  {
    v11 = [sectionsCopy copy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v10->_sections, v13);

    if (localeCopy)
    {
      currentLocale = localeCopy;
    }

    else
    {
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    }

    locale = v10->_locale;
    v10->_locale = currentLocale;

    v10->_source = source;
  }

  return v10;
}

- (PRSPosterGalleryLayout)initWithProactiveRepresentation:(id)representation
{
  representationCopy = representation;
  sections = [representationCopy sections];
  v6 = [sections bs_map:&__block_literal_global_5];

  locale = [representationCopy locale];
  source = [representationCopy source];

  v9 = [(PRSPosterGalleryLayout *)self initWithSections:v6 locale:locale source:source != 0];
  return v9;
}

- (id)proactiveRepresentation
{
  v2 = [objc_alloc(MEMORY[0x1E698AED0]) initWithPosterBoardRepresentation:self];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  sections = self->_sections;
  locale = self->_locale;
  source = self->_source;

  return [v4 initWithSections:sections locale:locale source:source];
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
      sections = self->_sections;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __34__PRSPosterGalleryLayout_isEqual___block_invoke;
      v24[3] = &unk_1E818CD58;
      v12 = v9;
      v25 = v12;
      v13 = [builder appendObject:sections counterpart:v24];
      locale = self->_locale;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __34__PRSPosterGalleryLayout_isEqual___block_invoke_2;
      v22[3] = &unk_1E818CD58;
      v15 = v12;
      v23 = v15;
      v16 = [builder appendObject:locale counterpart:v22];
      source = self->_source;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __34__PRSPosterGalleryLayout_isEqual___block_invoke_3;
      v20[3] = &unk_1E818CDA8;
      v21 = v15;
      v18 = [builder appendInteger:source counterpart:v20];
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
  v20 = *MEMORY[0x1E69E9840];
  builder = [MEMORY[0x1E698E6B8] builder];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_sections;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [builder appendObject:{*(*(&v15 + 1) + 8 * v8++), v15}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v10 = [builder appendObject:self->_locale];
  v11 = [builder appendInteger:self->_source];
  v12 = [builder hash];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)description
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = self->_sections;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v3);
        }

        items = [*(*(&v20 + 1) + 8 * i) items];
        v6 += [items count];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [(NSArray *)self->_sections count];
  localeIdentifier = [(NSLocale *)self->_locale localeIdentifier];
  v15 = localeIdentifier;
  if (self->_source == 1)
  {
    v16 = @"Proactive";
  }

  else
  {
    v16 = @"Unknown";
  }

  v17 = [v10 stringWithFormat:@"<%@(%p): %lu sections, %lu items, locale=%@, source=%@>", v12, self, v13, v6, localeIdentifier, v16, v20];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (PRSPosterGalleryLayout)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_sections);
  v7 = [coderCopy decodeArrayOfObjectsOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_locale);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = NSStringFromSelector(sel_source);
  v12 = [coderCopy decodeIntegerForKey:v11];

  v13 = [(PRSPosterGalleryLayout *)self initWithSections:v7 locale:v10 source:v12];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  sections = self->_sections;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_sections);
  [coderCopy encodeObject:sections forKey:v6];

  locale = self->_locale;
  v8 = NSStringFromSelector(sel_locale);
  [coderCopy encodeObject:locale forKey:v8];

  source = self->_source;
  v10 = NSStringFromSelector(sel_source);
  [coderCopy encodeInteger:source forKey:v10];
}

@end