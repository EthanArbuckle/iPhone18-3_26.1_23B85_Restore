@interface PRPosterAmbientConfiguration
+ (id)allowedEditingContentStyleClasses;
+ (id)decodeObjectWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAmbientConfiguration:(id)configuration;
- (NSString)description;
- (PRPosterAmbientConfiguration)initWithBSXPCCoder:(id)coder;
- (PRPosterAmbientConfiguration)initWithCoder:(id)coder;
- (PRPosterAmbientConfiguration)initWithSupportedDataLayout:(int64_t)layout creationBehavior:(int64_t)behavior editingBehavior:(int64_t)editingBehavior deletionBehavior:(int64_t)deletionBehavior galleryDisplayBehavior:(int64_t)displayBehavior isHidden:(BOOL)hidden needsAuthentication:(BOOL)authentication displayOrder:(int64_t)self0;
- (id)encodeJSON;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setEditingContentStyle:(id)style;
@end

@implementation PRPosterAmbientConfiguration

- (PRPosterAmbientConfiguration)initWithSupportedDataLayout:(int64_t)layout creationBehavior:(int64_t)behavior editingBehavior:(int64_t)editingBehavior deletionBehavior:(int64_t)deletionBehavior galleryDisplayBehavior:(int64_t)displayBehavior isHidden:(BOOL)hidden needsAuthentication:(BOOL)authentication displayOrder:(int64_t)self0
{
  if (editingBehavior >= 2)
  {
    [PRPosterAmbientConfiguration initWithSupportedDataLayout:a2 creationBehavior:? editingBehavior:? deletionBehavior:? galleryDisplayBehavior:? isHidden:? needsAuthentication:? displayOrder:?];
  }

  if (behavior >= 2)
  {
    [PRPosterAmbientConfiguration initWithSupportedDataLayout:a2 creationBehavior:? editingBehavior:? deletionBehavior:? galleryDisplayBehavior:? isHidden:? needsAuthentication:? displayOrder:?];
  }

  if (deletionBehavior >= 3)
  {
    [PRPosterAmbientConfiguration initWithSupportedDataLayout:a2 creationBehavior:? editingBehavior:? deletionBehavior:? galleryDisplayBehavior:? isHidden:? needsAuthentication:? displayOrder:?];
  }

  if (displayBehavior >= 2)
  {
    [PRPosterAmbientConfiguration initWithSupportedDataLayout:a2 creationBehavior:? editingBehavior:? deletionBehavior:? galleryDisplayBehavior:? isHidden:? needsAuthentication:? displayOrder:?];
  }

  if (layout >= 4)
  {
    [PRPosterAmbientConfiguration initWithSupportedDataLayout:a2 creationBehavior:? editingBehavior:? deletionBehavior:? galleryDisplayBehavior:? isHidden:? needsAuthentication:? displayOrder:?];
  }

  v17.receiver = self;
  v17.super_class = PRPosterAmbientConfiguration;
  result = [(PRPosterAmbientConfiguration *)&v17 init];
  if (result)
  {
    result->_supportedDataLayout = layout;
    result->_creationBehavior = behavior;
    result->_deletionBehavior = deletionBehavior;
    result->_editingBehavior = editingBehavior;
    result->_galleryDisplayBehavior = displayBehavior;
    result->_needsAuthentication = authentication;
    result->_hidden = hidden;
    result->_displayOrder = order;
  }

  return result;
}

- (PRPosterAmbientConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"supportedDataLayout"];
  v6 = [coderCopy decodeInt64ForKey:@"creationBehavior"];
  v7 = [coderCopy decodeInt64ForKey:@"deletionBehavior"];
  v8 = [coderCopy decodeInt64ForKey:@"editingBehavior"];
  v9 = [coderCopy decodeInt64ForKey:@"galleryDisplayBehavior"];
  v10 = [coderCopy decodeBoolForKey:@"hidden"];
  LOBYTE(v19) = [coderCopy decodeBoolForKey:@"needsAuthentication"];
  v11 = -[PRPosterAmbientConfiguration initWithSupportedDataLayout:creationBehavior:editingBehavior:deletionBehavior:galleryDisplayBehavior:isHidden:needsAuthentication:displayOrder:](self, "initWithSupportedDataLayout:creationBehavior:editingBehavior:deletionBehavior:galleryDisplayBehavior:isHidden:needsAuthentication:displayOrder:", v5, v6, v8, v7, v9, v10, v19, [coderCopy decodeInt64ForKey:@"displayOrder"]);
  v12 = objc_opt_self();
  v13 = [coderCopy decodeObjectOfClass:v12 forKey:@"displayNameSystemSymbolName"];

  [(PRPosterAmbientConfiguration *)v11 setDisplayNameSystemSymbolName:v13];
  v14 = objc_opt_self();
  v15 = [coderCopy decodeObjectOfClass:v14 forKey:@"editingSystemSymbolName"];

  [(PRPosterAmbientConfiguration *)v11 setEditingSystemSymbolName:v15];
  v16 = +[PRPosterAmbientConfiguration allowedEditingContentStyleClasses];
  v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"editingContentStyle"];

  [(PRPosterAmbientConfiguration *)v11 setEditingContentStyle:v17];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[PRPosterAmbientConfiguration supportedDataLayout](self forKey:{"supportedDataLayout"), @"supportedDataLayout"}];
  [coderCopy encodeInt64:-[PRPosterAmbientConfiguration creationBehavior](self forKey:{"creationBehavior"), @"creationBehavior"}];
  [coderCopy encodeInt64:-[PRPosterAmbientConfiguration deletionBehavior](self forKey:{"deletionBehavior"), @"deletionBehavior"}];
  [coderCopy encodeInt64:-[PRPosterAmbientConfiguration editingBehavior](self forKey:{"editingBehavior"), @"editingBehavior"}];
  [coderCopy encodeInt64:-[PRPosterAmbientConfiguration galleryDisplayBehavior](self forKey:{"galleryDisplayBehavior"), @"galleryDisplayBehavior"}];
  [coderCopy encodeBool:-[PRPosterAmbientConfiguration hidden](self forKey:{"hidden"), @"hidden"}];
  [coderCopy encodeBool:-[PRPosterAmbientConfiguration needsAuthentication](self forKey:{"needsAuthentication"), @"needsAuthentication"}];
  displayNameSystemSymbolName = [(PRPosterAmbientConfiguration *)self displayNameSystemSymbolName];
  [coderCopy encodeObject:displayNameSystemSymbolName forKey:@"displayNameSystemSymbolName"];

  editingSystemSymbolName = [(PRPosterAmbientConfiguration *)self editingSystemSymbolName];
  [coderCopy encodeObject:editingSystemSymbolName forKey:@"editingSystemSymbolName"];

  editingContentStyle = [(PRPosterAmbientConfiguration *)self editingContentStyle];
  [coderCopy encodeObject:editingContentStyle forKey:@"editingContentStyle"];

  [coderCopy encodeInt64:-[PRPosterAmbientConfiguration displayOrder](self forKey:{"displayOrder"), @"displayOrder"}];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(PRPosterAmbientConfiguration *)[PRMutablePosterAmbientConfiguration alloc] initWithSupportedDataLayout:self->_supportedDataLayout];
  [(PRPosterAmbientConfiguration *)v4 setCreationBehavior:self->_creationBehavior];
  [(PRPosterAmbientConfiguration *)v4 setDeletionBehavior:self->_deletionBehavior];
  [(PRPosterAmbientConfiguration *)v4 setEditingBehavior:self->_editingBehavior];
  [(PRPosterAmbientConfiguration *)v4 setGalleryDisplayBehavior:self->_galleryDisplayBehavior];
  [(PRPosterAmbientConfiguration *)v4 setHidden:self->_hidden];
  [(PRPosterAmbientConfiguration *)v4 setNeedsAuthentication:self->_needsAuthentication];
  [(PRPosterAmbientConfiguration *)v4 setDisplayNameSystemSymbolName:self->_displayNameSystemSymbolName];
  [(PRPosterAmbientConfiguration *)v4 setEditingSystemSymbolName:self->_editingSystemSymbolName];
  [(PRPosterAmbientConfiguration *)v4 setEditingContentStyle:self->_editingContentStyle];
  [(PRPosterAmbientConfiguration *)v4 setDisplayOrder:self->_displayOrder];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PRPosterAmbientConfiguration *)self isEqualToAmbientConfiguration:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToAmbientConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (configurationCopy == self)
  {
    v20 = 1;
  }

  else if (configurationCopy && (v6 = [(PRPosterAmbientConfiguration *)self supportedDataLayout], v6 == [(PRPosterAmbientConfiguration *)v5 supportedDataLayout]) && (v7 = [(PRPosterAmbientConfiguration *)self creationBehavior], v7 == [(PRPosterAmbientConfiguration *)v5 creationBehavior]) && (v8 = [(PRPosterAmbientConfiguration *)self deletionBehavior], v8 == [(PRPosterAmbientConfiguration *)v5 deletionBehavior]) && (v9 = [(PRPosterAmbientConfiguration *)self editingBehavior], v9 == [(PRPosterAmbientConfiguration *)v5 editingBehavior]) && (v10 = [(PRPosterAmbientConfiguration *)self galleryDisplayBehavior], v10 == [(PRPosterAmbientConfiguration *)v5 galleryDisplayBehavior]) && (v11 = [(PRPosterAmbientConfiguration *)self hidden], v11 == [(PRPosterAmbientConfiguration *)v5 hidden]) && (v12 = [(PRPosterAmbientConfiguration *)self needsAuthentication], v12 == [(PRPosterAmbientConfiguration *)v5 needsAuthentication]) && (v13 = [(PRPosterAmbientConfiguration *)self displayOrder], v13 == [(PRPosterAmbientConfiguration *)v5 displayOrder]))
  {
    displayNameSystemSymbolName = [(PRPosterAmbientConfiguration *)self displayNameSystemSymbolName];
    displayNameSystemSymbolName2 = [(PRPosterAmbientConfiguration *)v5 displayNameSystemSymbolName];
    if (BSEqualObjects())
    {
      editingSystemSymbolName = [(PRPosterAmbientConfiguration *)self editingSystemSymbolName];
      editingSystemSymbolName2 = [(PRPosterAmbientConfiguration *)v5 editingSystemSymbolName];
      if (BSEqualObjects())
      {
        editingContentStyle = [(PRPosterAmbientConfiguration *)self editingContentStyle];
        editingContentStyle2 = [(PRPosterAmbientConfiguration *)v5 editingContentStyle];
        v20 = BSEqualObjects();
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendInt64:{-[PRPosterAmbientConfiguration supportedDataLayout](self, "supportedDataLayout")}];
  v5 = [builder appendInt64:{-[PRPosterAmbientConfiguration creationBehavior](self, "creationBehavior")}];
  v6 = [builder appendInt64:{-[PRPosterAmbientConfiguration deletionBehavior](self, "deletionBehavior")}];
  v7 = [builder appendInt64:{-[PRPosterAmbientConfiguration editingBehavior](self, "editingBehavior")}];
  v8 = [builder appendInt64:{-[PRPosterAmbientConfiguration galleryDisplayBehavior](self, "galleryDisplayBehavior")}];
  v9 = [builder appendBool:{-[PRPosterAmbientConfiguration hidden](self, "hidden")}];
  v10 = [builder appendBool:{-[PRPosterAmbientConfiguration needsAuthentication](self, "needsAuthentication")}];
  displayNameSystemSymbolName = [(PRPosterAmbientConfiguration *)self displayNameSystemSymbolName];
  v12 = [builder appendString:displayNameSystemSymbolName];

  editingSystemSymbolName = [(PRPosterAmbientConfiguration *)self editingSystemSymbolName];
  v14 = [builder appendString:editingSystemSymbolName];

  editingContentStyle = [(PRPosterAmbientConfiguration *)self editingContentStyle];
  v16 = [builder appendObject:editingContentStyle];

  v17 = [builder appendInt64:{-[PRPosterAmbientConfiguration displayOrder](self, "displayOrder")}];
  v18 = [builder hash];

  return v18;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  supportedDataLayout = [(PRPosterAmbientConfiguration *)self supportedDataLayout];
  if (supportedDataLayout > 3)
  {
    v5 = @"(unknown data layout)";
  }

  else
  {
    v5 = off_1E7843A00[supportedDataLayout];
  }

  [v3 appendString:v5 withName:@"supportedDataLayout"];
  creationBehavior = [(PRPosterAmbientConfiguration *)self creationBehavior];
  v7 = @"(unknown creation behavior)";
  if (creationBehavior == 1)
  {
    v7 = @"Manual";
  }

  if (creationBehavior)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"Auto";
  }

  [v3 appendString:v8 withName:@"creationBehavior"];
  deletionBehavior = [(PRPosterAmbientConfiguration *)self deletionBehavior];
  if (deletionBehavior > 2)
  {
    v10 = @"(unknown deletion behavior)";
  }

  else
  {
    v10 = off_1E7843A20[deletionBehavior];
  }

  [v3 appendString:v10 withName:@"deletionBehavior"];
  editingBehavior = [(PRPosterAmbientConfiguration *)self editingBehavior];
  v12 = @"(unknown editing behavior)";
  if (editingBehavior == 1)
  {
    v12 = @"NotEditable";
  }

  if (editingBehavior)
  {
    v13 = v12;
  }

  else
  {
    v13 = @"Editable";
  }

  [v3 appendString:v13 withName:@"editingBehavior"];
  galleryDisplayBehavior = [(PRPosterAmbientConfiguration *)self galleryDisplayBehavior];
  v15 = @"(unknown gallery display behavior)";
  if (galleryDisplayBehavior == 1)
  {
    v15 = @"Hidden";
  }

  if (galleryDisplayBehavior)
  {
    v16 = v15;
  }

  else
  {
    v16 = @"Visible";
  }

  [v3 appendString:v16 withName:@"galleryDisplayBehavior"];
  v17 = [v3 appendBool:-[PRPosterAmbientConfiguration hidden](self withName:{"hidden"), @"hidden"}];
  v18 = [v3 appendBool:-[PRPosterAmbientConfiguration needsAuthentication](self withName:{"needsAuthentication"), @"needsAuthentication"}];
  displayNameSystemSymbolName = [(PRPosterAmbientConfiguration *)self displayNameSystemSymbolName];
  [v3 appendString:displayNameSystemSymbolName withName:@"displayNameSystemSymbolName" skipIfEmpty:1];

  editingSystemSymbolName = [(PRPosterAmbientConfiguration *)self editingSystemSymbolName];
  [v3 appendString:editingSystemSymbolName withName:@"editingSystemSymbolName" skipIfEmpty:1];

  editingContentStyle = [(PRPosterAmbientConfiguration *)self editingContentStyle];
  v22 = [v3 appendObject:editingContentStyle withName:@"editingContentStyle" skipIfNil:1];

  v23 = [v3 appendInt64:-[PRPosterAmbientConfiguration displayOrder](self withName:{"displayOrder"), @"displayOrder"}];
  build = [v3 build];

  return build;
}

+ (id)allowedEditingContentStyleClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_self();
  v4 = objc_opt_self();
  v5 = objc_opt_self();
  v6 = objc_opt_self();
  v7 = [v2 setWithObjects:{v3, v4, v5, v6, 0}];

  return v7;
}

- (void)setEditingContentStyle:(id)style
{
  v16 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [PRPosterAmbientConfiguration allowedEditingContentStyleClasses:0];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(v5);
      }

      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v5 = styleCopy;
    styleCopy = 0;
  }

  p_editingContentStyle = &self->_editingContentStyle;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(p_editingContentStyle, styleCopy);
  }
}

- (PRPosterAmbientConfiguration)initWithBSXPCCoder:(id)coder
{
  v28 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"supportedDataLayout"];
  v6 = [coderCopy decodeInt64ForKey:@"creationBehavior"];
  v7 = [coderCopy decodeInt64ForKey:@"deletionBehavior"];
  v8 = [coderCopy decodeInt64ForKey:@"editingBehavior"];
  v9 = [coderCopy decodeInt64ForKey:@"galleryDisplayBehavior"];
  v10 = [coderCopy decodeBoolForKey:@"hidden"];
  LOBYTE(v22) = [coderCopy decodeBoolForKey:@"needsAuthentication"];
  v11 = -[PRPosterAmbientConfiguration initWithSupportedDataLayout:creationBehavior:editingBehavior:deletionBehavior:galleryDisplayBehavior:isHidden:needsAuthentication:displayOrder:](self, "initWithSupportedDataLayout:creationBehavior:editingBehavior:deletionBehavior:galleryDisplayBehavior:isHidden:needsAuthentication:displayOrder:", v5, v6, v8, v7, v9, v10, v22, [coderCopy decodeInt64ForKey:@"displayOrder"]);
  v12 = [coderCopy decodeStringForKey:@"displayNameSystemSymbolName"];
  [(PRPosterAmbientConfiguration *)v11 setDisplayNameSystemSymbolName:v12];
  v13 = [coderCopy decodeStringForKey:@"editingSystemSymbolName"];
  [(PRPosterAmbientConfiguration *)v11 setEditingSystemSymbolName:v13];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = +[PRPosterAmbientConfiguration allowedEditingContentStyleClasses];
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [coderCopy decodeObjectOfClass:*(*(&v23 + 1) + 8 * i) forKey:@"editingContentStyle"];
        if (v19)
        {
          v20 = v19;
          [(PRPosterAmbientConfiguration *)v11 setEditingContentStyle:v19];

          goto LABEL_11;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v11;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[PRPosterAmbientConfiguration supportedDataLayout](self forKey:{"supportedDataLayout"), @"supportedDataLayout"}];
  [coderCopy encodeInt64:-[PRPosterAmbientConfiguration creationBehavior](self forKey:{"creationBehavior"), @"creationBehavior"}];
  [coderCopy encodeInt64:-[PRPosterAmbientConfiguration deletionBehavior](self forKey:{"deletionBehavior"), @"deletionBehavior"}];
  [coderCopy encodeInt64:-[PRPosterAmbientConfiguration editingBehavior](self forKey:{"editingBehavior"), @"editingBehavior"}];
  [coderCopy encodeInt64:-[PRPosterAmbientConfiguration galleryDisplayBehavior](self forKey:{"galleryDisplayBehavior"), @"galleryDisplayBehavior"}];
  [coderCopy encodeBool:-[PRPosterAmbientConfiguration hidden](self forKey:{"hidden"), @"hidden"}];
  [coderCopy encodeBool:-[PRPosterAmbientConfiguration needsAuthentication](self forKey:{"needsAuthentication"), @"needsAuthentication"}];
  displayNameSystemSymbolName = [(PRPosterAmbientConfiguration *)self displayNameSystemSymbolName];
  [coderCopy encodeObject:displayNameSystemSymbolName forKey:@"displayNameSystemSymbolName"];

  editingSystemSymbolName = [(PRPosterAmbientConfiguration *)self editingSystemSymbolName];
  [coderCopy encodeObject:editingSystemSymbolName forKey:@"editingSystemSymbolName"];

  editingContentStyle = [(PRPosterAmbientConfiguration *)self editingContentStyle];
  [coderCopy encodeObject:editingContentStyle forKey:@"editingContentStyle"];

  [coderCopy encodeInt64:-[PRPosterAmbientConfiguration displayOrder](self forKey:{"displayOrder"), @"displayOrder"}];
}

- (id)encodeJSON
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PRPosterAmbientConfiguration supportedDataLayout](self, "supportedDataLayout")}];
  [dictionary bs_setSafeObject:v4 forKey:@"supportedDataLayout"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PRPosterAmbientConfiguration creationBehavior](self, "creationBehavior")}];
  [dictionary bs_setSafeObject:v5 forKey:@"creationBehavior"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PRPosterAmbientConfiguration deletionBehavior](self, "deletionBehavior")}];
  [dictionary bs_setSafeObject:v6 forKey:@"deletionBehavior"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PRPosterAmbientConfiguration editingBehavior](self, "editingBehavior")}];
  [dictionary bs_setSafeObject:v7 forKey:@"editingBehavior"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PRPosterAmbientConfiguration galleryDisplayBehavior](self, "galleryDisplayBehavior")}];
  [dictionary bs_setSafeObject:v8 forKey:@"galleryDisplayBehavior"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[PRPosterAmbientConfiguration hidden](self, "hidden")}];
  [dictionary bs_setSafeObject:v9 forKey:@"hidden"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[PRPosterAmbientConfiguration needsAuthentication](self, "needsAuthentication")}];
  [dictionary bs_setSafeObject:v10 forKey:@"needsAuthentication"];

  displayNameSystemSymbolName = [(PRPosterAmbientConfiguration *)self displayNameSystemSymbolName];
  [dictionary bs_setSafeObject:displayNameSystemSymbolName forKey:@"displayNameSystemSymbolName"];

  editingSystemSymbolName = [(PRPosterAmbientConfiguration *)self editingSystemSymbolName];
  [dictionary bs_setSafeObject:editingSystemSymbolName forKey:@"editingSystemSymbolName"];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PRPosterAmbientConfiguration displayOrder](self, "displayOrder")}];
  [dictionary bs_setSafeObject:v13 forKey:@"displayOrder"];

  editingContentStyle = [(PRPosterAmbientConfiguration *)self editingContentStyle];
  if (editingContentStyle)
  {
    v15 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:editingContentStyle requiringSecureCoding:1 error:0];
    v16 = [v15 base64EncodedStringWithOptions:0];
    [dictionary bs_setSafeObject:v16 forKey:@"editingContentStyle"];
  }

  attributeType = [(PRPosterAmbientConfiguration *)self attributeType];
  [dictionary bs_setSafeObject:attributeType forKey:@"attributeType"];

  v22 = 0;
  v18 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionary options:0 error:&v22];
  v19 = v22;
  if (v19)
  {
    v20 = PRLogCommon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(PRPosterMetadata *)self encodeJSON];
    }
  }

  return v18;
}

+ (id)decodeObjectWithJSON:(id)n
{
  v44 = 0;
  v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v44];
  v4 = v44;
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && !v4)
    {
      v5 = [v3 objectForKey:@"supportedDataLayout"];
      v6 = v5;
      if (!v5)
      {
        v5 = &unk_1F1C6B7A0;
      }

      integerValue = [v5 integerValue];

      v8 = [v3 objectForKey:@"creationBehavior"];
      v9 = v8;
      if (!v8)
      {
        v8 = &unk_1F1C6B7A0;
      }

      integerValue2 = [v8 integerValue];

      v11 = [v3 objectForKey:@"deletionBehavior"];
      v12 = v11;
      if (!v11)
      {
        v11 = &unk_1F1C6B7B8;
      }

      integerValue3 = [v11 integerValue];

      v14 = [v3 objectForKey:@"editingBehavior"];
      v15 = v14;
      if (!v14)
      {
        v14 = &unk_1F1C6B7D0;
      }

      integerValue4 = [v14 integerValue];

      v17 = [v3 objectForKey:@"galleryDisplayBehavior"];
      v18 = v17;
      if (!v17)
      {
        v17 = &unk_1F1C6B7A0;
      }

      integerValue5 = [v17 integerValue];

      v20 = [v3 objectForKey:@"hidden"];
      if (v20)
      {
        v21 = [v3 objectForKey:@"hidden"];
        bOOLValue = [v21 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      v24 = [v3 objectForKey:@"needsAuthentication"];
      if (v24)
      {
        v25 = [v3 objectForKey:@"needsAuthentication"];
        bOOLValue2 = [v25 BOOLValue];
      }

      else
      {
        bOOLValue2 = 0;
      }

      v26 = [v3 objectForKey:@"displayOrder"];
      if (v26)
      {
        [v3 objectForKey:@"displayOrder"];
        v27 = integerValue4;
        v28 = integerValue3;
        v29 = integerValue2;
        v31 = v30 = integerValue;
        integerValue6 = [v31 integerValue];

        integerValue = v30;
        integerValue2 = v29;
        integerValue3 = v28;
        integerValue4 = v27;
      }

      else
      {
        integerValue6 = 0x7FFFFFFFLL;
      }

      LOBYTE(v41) = bOOLValue2;
      v23 = [objc_alloc(objc_opt_class()) initWithSupportedDataLayout:integerValue creationBehavior:integerValue2 editingBehavior:integerValue4 deletionBehavior:integerValue3 galleryDisplayBehavior:integerValue5 isHidden:bOOLValue needsAuthentication:v41 displayOrder:integerValue6];
      v22 = [v3 objectForKey:@"displayNameSystemSymbolName"];
      [v23 setDisplayNameSystemSymbolName:v22];
      v33 = [v3 objectForKey:@"editingSystemSymbolName"];
      [v23 setEditingSystemSymbolName:v33];
      v34 = [v3 objectForKey:@"editingContentStyle"];
      v35 = objc_opt_self();
      if (objc_opt_isKindOfClass())
      {
        v36 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v34 options:0];

        if (!v36)
        {
LABEL_30:

          goto LABEL_31;
        }

        v37 = MEMORY[0x1E696ACD0];
        v38 = +[PRPosterAmbientConfiguration allowedEditingContentStyleClasses];
        v39 = [v37 unarchivedObjectOfClasses:v38 fromData:v36 error:0];

        [v23 setEditingContentStyle:v39];
        v35 = v36;
      }

      goto LABEL_30;
    }
  }

  v22 = PRLogCommon();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [(PRPosterMetadata *)v4 decodeObjectWithJSON:v22];
  }

  v23 = 0;
LABEL_31:

  return v23;
}

- (void)initWithSupportedDataLayout:(char *)a1 creationBehavior:editingBehavior:deletionBehavior:galleryDisplayBehavior:isHidden:needsAuthentication:displayOrder:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"PRAmbientEditingBehaviorIsValid(editingBehavior)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSupportedDataLayout:(char *)a1 creationBehavior:editingBehavior:deletionBehavior:galleryDisplayBehavior:isHidden:needsAuthentication:displayOrder:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"PRAmbientCreationBehaviorIsValid(creationBehavior)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSupportedDataLayout:(char *)a1 creationBehavior:editingBehavior:deletionBehavior:galleryDisplayBehavior:isHidden:needsAuthentication:displayOrder:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"PRAmbientDeletionBehaviorIsValid(deletionBehavior)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSupportedDataLayout:(char *)a1 creationBehavior:editingBehavior:deletionBehavior:galleryDisplayBehavior:isHidden:needsAuthentication:displayOrder:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"PRAmbientGalleryDisplayBehaviorIsValid(galleryDisplayBehavior)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSupportedDataLayout:(char *)a1 creationBehavior:editingBehavior:deletionBehavior:galleryDisplayBehavior:isHidden:needsAuthentication:displayOrder:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"PRPosterAmbientSupportedDataLayoutIsValid(supportedDataLayout)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end