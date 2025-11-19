@interface PRPosterAmbientConfiguration
+ (id)allowedEditingContentStyleClasses;
+ (id)decodeObjectWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAmbientConfiguration:(id)a3;
- (NSString)description;
- (PRPosterAmbientConfiguration)initWithBSXPCCoder:(id)a3;
- (PRPosterAmbientConfiguration)initWithCoder:(id)a3;
- (PRPosterAmbientConfiguration)initWithSupportedDataLayout:(int64_t)a3 creationBehavior:(int64_t)a4 editingBehavior:(int64_t)a5 deletionBehavior:(int64_t)a6 galleryDisplayBehavior:(int64_t)a7 isHidden:(BOOL)a8 needsAuthentication:(BOOL)a9 displayOrder:(int64_t)a10;
- (id)encodeJSON;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setEditingContentStyle:(id)a3;
@end

@implementation PRPosterAmbientConfiguration

- (PRPosterAmbientConfiguration)initWithSupportedDataLayout:(int64_t)a3 creationBehavior:(int64_t)a4 editingBehavior:(int64_t)a5 deletionBehavior:(int64_t)a6 galleryDisplayBehavior:(int64_t)a7 isHidden:(BOOL)a8 needsAuthentication:(BOOL)a9 displayOrder:(int64_t)a10
{
  if (a5 >= 2)
  {
    [PRPosterAmbientConfiguration initWithSupportedDataLayout:a2 creationBehavior:? editingBehavior:? deletionBehavior:? galleryDisplayBehavior:? isHidden:? needsAuthentication:? displayOrder:?];
  }

  if (a4 >= 2)
  {
    [PRPosterAmbientConfiguration initWithSupportedDataLayout:a2 creationBehavior:? editingBehavior:? deletionBehavior:? galleryDisplayBehavior:? isHidden:? needsAuthentication:? displayOrder:?];
  }

  if (a6 >= 3)
  {
    [PRPosterAmbientConfiguration initWithSupportedDataLayout:a2 creationBehavior:? editingBehavior:? deletionBehavior:? galleryDisplayBehavior:? isHidden:? needsAuthentication:? displayOrder:?];
  }

  if (a7 >= 2)
  {
    [PRPosterAmbientConfiguration initWithSupportedDataLayout:a2 creationBehavior:? editingBehavior:? deletionBehavior:? galleryDisplayBehavior:? isHidden:? needsAuthentication:? displayOrder:?];
  }

  if (a3 >= 4)
  {
    [PRPosterAmbientConfiguration initWithSupportedDataLayout:a2 creationBehavior:? editingBehavior:? deletionBehavior:? galleryDisplayBehavior:? isHidden:? needsAuthentication:? displayOrder:?];
  }

  v17.receiver = self;
  v17.super_class = PRPosterAmbientConfiguration;
  result = [(PRPosterAmbientConfiguration *)&v17 init];
  if (result)
  {
    result->_supportedDataLayout = a3;
    result->_creationBehavior = a4;
    result->_deletionBehavior = a6;
    result->_editingBehavior = a5;
    result->_galleryDisplayBehavior = a7;
    result->_needsAuthentication = a9;
    result->_hidden = a8;
    result->_displayOrder = a10;
  }

  return result;
}

- (PRPosterAmbientConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"supportedDataLayout"];
  v6 = [v4 decodeInt64ForKey:@"creationBehavior"];
  v7 = [v4 decodeInt64ForKey:@"deletionBehavior"];
  v8 = [v4 decodeInt64ForKey:@"editingBehavior"];
  v9 = [v4 decodeInt64ForKey:@"galleryDisplayBehavior"];
  v10 = [v4 decodeBoolForKey:@"hidden"];
  LOBYTE(v19) = [v4 decodeBoolForKey:@"needsAuthentication"];
  v11 = -[PRPosterAmbientConfiguration initWithSupportedDataLayout:creationBehavior:editingBehavior:deletionBehavior:galleryDisplayBehavior:isHidden:needsAuthentication:displayOrder:](self, "initWithSupportedDataLayout:creationBehavior:editingBehavior:deletionBehavior:galleryDisplayBehavior:isHidden:needsAuthentication:displayOrder:", v5, v6, v8, v7, v9, v10, v19, [v4 decodeInt64ForKey:@"displayOrder"]);
  v12 = objc_opt_self();
  v13 = [v4 decodeObjectOfClass:v12 forKey:@"displayNameSystemSymbolName"];

  [(PRPosterAmbientConfiguration *)v11 setDisplayNameSystemSymbolName:v13];
  v14 = objc_opt_self();
  v15 = [v4 decodeObjectOfClass:v14 forKey:@"editingSystemSymbolName"];

  [(PRPosterAmbientConfiguration *)v11 setEditingSystemSymbolName:v15];
  v16 = +[PRPosterAmbientConfiguration allowedEditingContentStyleClasses];
  v17 = [v4 decodeObjectOfClasses:v16 forKey:@"editingContentStyle"];

  [(PRPosterAmbientConfiguration *)v11 setEditingContentStyle:v17];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeInt64:-[PRPosterAmbientConfiguration supportedDataLayout](self forKey:{"supportedDataLayout"), @"supportedDataLayout"}];
  [v7 encodeInt64:-[PRPosterAmbientConfiguration creationBehavior](self forKey:{"creationBehavior"), @"creationBehavior"}];
  [v7 encodeInt64:-[PRPosterAmbientConfiguration deletionBehavior](self forKey:{"deletionBehavior"), @"deletionBehavior"}];
  [v7 encodeInt64:-[PRPosterAmbientConfiguration editingBehavior](self forKey:{"editingBehavior"), @"editingBehavior"}];
  [v7 encodeInt64:-[PRPosterAmbientConfiguration galleryDisplayBehavior](self forKey:{"galleryDisplayBehavior"), @"galleryDisplayBehavior"}];
  [v7 encodeBool:-[PRPosterAmbientConfiguration hidden](self forKey:{"hidden"), @"hidden"}];
  [v7 encodeBool:-[PRPosterAmbientConfiguration needsAuthentication](self forKey:{"needsAuthentication"), @"needsAuthentication"}];
  v4 = [(PRPosterAmbientConfiguration *)self displayNameSystemSymbolName];
  [v7 encodeObject:v4 forKey:@"displayNameSystemSymbolName"];

  v5 = [(PRPosterAmbientConfiguration *)self editingSystemSymbolName];
  [v7 encodeObject:v5 forKey:@"editingSystemSymbolName"];

  v6 = [(PRPosterAmbientConfiguration *)self editingContentStyle];
  [v7 encodeObject:v6 forKey:@"editingContentStyle"];

  [v7 encodeInt64:-[PRPosterAmbientConfiguration displayOrder](self forKey:{"displayOrder"), @"displayOrder"}];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PRPosterAmbientConfiguration *)self isEqualToAmbientConfiguration:v4];
  }

  return v5;
}

- (BOOL)isEqualToAmbientConfiguration:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v20 = 1;
  }

  else if (v4 && (v6 = [(PRPosterAmbientConfiguration *)self supportedDataLayout], v6 == [(PRPosterAmbientConfiguration *)v5 supportedDataLayout]) && (v7 = [(PRPosterAmbientConfiguration *)self creationBehavior], v7 == [(PRPosterAmbientConfiguration *)v5 creationBehavior]) && (v8 = [(PRPosterAmbientConfiguration *)self deletionBehavior], v8 == [(PRPosterAmbientConfiguration *)v5 deletionBehavior]) && (v9 = [(PRPosterAmbientConfiguration *)self editingBehavior], v9 == [(PRPosterAmbientConfiguration *)v5 editingBehavior]) && (v10 = [(PRPosterAmbientConfiguration *)self galleryDisplayBehavior], v10 == [(PRPosterAmbientConfiguration *)v5 galleryDisplayBehavior]) && (v11 = [(PRPosterAmbientConfiguration *)self hidden], v11 == [(PRPosterAmbientConfiguration *)v5 hidden]) && (v12 = [(PRPosterAmbientConfiguration *)self needsAuthentication], v12 == [(PRPosterAmbientConfiguration *)v5 needsAuthentication]) && (v13 = [(PRPosterAmbientConfiguration *)self displayOrder], v13 == [(PRPosterAmbientConfiguration *)v5 displayOrder]))
  {
    v14 = [(PRPosterAmbientConfiguration *)self displayNameSystemSymbolName];
    v15 = [(PRPosterAmbientConfiguration *)v5 displayNameSystemSymbolName];
    if (BSEqualObjects())
    {
      v16 = [(PRPosterAmbientConfiguration *)self editingSystemSymbolName];
      v17 = [(PRPosterAmbientConfiguration *)v5 editingSystemSymbolName];
      if (BSEqualObjects())
      {
        v18 = [(PRPosterAmbientConfiguration *)self editingContentStyle];
        v19 = [(PRPosterAmbientConfiguration *)v5 editingContentStyle];
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
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendInt64:{-[PRPosterAmbientConfiguration supportedDataLayout](self, "supportedDataLayout")}];
  v5 = [v3 appendInt64:{-[PRPosterAmbientConfiguration creationBehavior](self, "creationBehavior")}];
  v6 = [v3 appendInt64:{-[PRPosterAmbientConfiguration deletionBehavior](self, "deletionBehavior")}];
  v7 = [v3 appendInt64:{-[PRPosterAmbientConfiguration editingBehavior](self, "editingBehavior")}];
  v8 = [v3 appendInt64:{-[PRPosterAmbientConfiguration galleryDisplayBehavior](self, "galleryDisplayBehavior")}];
  v9 = [v3 appendBool:{-[PRPosterAmbientConfiguration hidden](self, "hidden")}];
  v10 = [v3 appendBool:{-[PRPosterAmbientConfiguration needsAuthentication](self, "needsAuthentication")}];
  v11 = [(PRPosterAmbientConfiguration *)self displayNameSystemSymbolName];
  v12 = [v3 appendString:v11];

  v13 = [(PRPosterAmbientConfiguration *)self editingSystemSymbolName];
  v14 = [v3 appendString:v13];

  v15 = [(PRPosterAmbientConfiguration *)self editingContentStyle];
  v16 = [v3 appendObject:v15];

  v17 = [v3 appendInt64:{-[PRPosterAmbientConfiguration displayOrder](self, "displayOrder")}];
  v18 = [v3 hash];

  return v18;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(PRPosterAmbientConfiguration *)self supportedDataLayout];
  if (v4 > 3)
  {
    v5 = @"(unknown data layout)";
  }

  else
  {
    v5 = off_1E7843A00[v4];
  }

  [v3 appendString:v5 withName:@"supportedDataLayout"];
  v6 = [(PRPosterAmbientConfiguration *)self creationBehavior];
  v7 = @"(unknown creation behavior)";
  if (v6 == 1)
  {
    v7 = @"Manual";
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"Auto";
  }

  [v3 appendString:v8 withName:@"creationBehavior"];
  v9 = [(PRPosterAmbientConfiguration *)self deletionBehavior];
  if (v9 > 2)
  {
    v10 = @"(unknown deletion behavior)";
  }

  else
  {
    v10 = off_1E7843A20[v9];
  }

  [v3 appendString:v10 withName:@"deletionBehavior"];
  v11 = [(PRPosterAmbientConfiguration *)self editingBehavior];
  v12 = @"(unknown editing behavior)";
  if (v11 == 1)
  {
    v12 = @"NotEditable";
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = @"Editable";
  }

  [v3 appendString:v13 withName:@"editingBehavior"];
  v14 = [(PRPosterAmbientConfiguration *)self galleryDisplayBehavior];
  v15 = @"(unknown gallery display behavior)";
  if (v14 == 1)
  {
    v15 = @"Hidden";
  }

  if (v14)
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
  v19 = [(PRPosterAmbientConfiguration *)self displayNameSystemSymbolName];
  [v3 appendString:v19 withName:@"displayNameSystemSymbolName" skipIfEmpty:1];

  v20 = [(PRPosterAmbientConfiguration *)self editingSystemSymbolName];
  [v3 appendString:v20 withName:@"editingSystemSymbolName" skipIfEmpty:1];

  v21 = [(PRPosterAmbientConfiguration *)self editingContentStyle];
  v22 = [v3 appendObject:v21 withName:@"editingContentStyle" skipIfNil:1];

  v23 = [v3 appendInt64:-[PRPosterAmbientConfiguration displayOrder](self withName:{"displayOrder"), @"displayOrder"}];
  v24 = [v3 build];

  return v24;
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

- (void)setEditingContentStyle:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

    v5 = v4;
    v4 = 0;
  }

  p_editingContentStyle = &self->_editingContentStyle;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(p_editingContentStyle, v4);
  }
}

- (PRPosterAmbientConfiguration)initWithBSXPCCoder:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"supportedDataLayout"];
  v6 = [v4 decodeInt64ForKey:@"creationBehavior"];
  v7 = [v4 decodeInt64ForKey:@"deletionBehavior"];
  v8 = [v4 decodeInt64ForKey:@"editingBehavior"];
  v9 = [v4 decodeInt64ForKey:@"galleryDisplayBehavior"];
  v10 = [v4 decodeBoolForKey:@"hidden"];
  LOBYTE(v22) = [v4 decodeBoolForKey:@"needsAuthentication"];
  v11 = -[PRPosterAmbientConfiguration initWithSupportedDataLayout:creationBehavior:editingBehavior:deletionBehavior:galleryDisplayBehavior:isHidden:needsAuthentication:displayOrder:](self, "initWithSupportedDataLayout:creationBehavior:editingBehavior:deletionBehavior:galleryDisplayBehavior:isHidden:needsAuthentication:displayOrder:", v5, v6, v8, v7, v9, v10, v22, [v4 decodeInt64ForKey:@"displayOrder"]);
  v12 = [v4 decodeStringForKey:@"displayNameSystemSymbolName"];
  [(PRPosterAmbientConfiguration *)v11 setDisplayNameSystemSymbolName:v12];
  v13 = [v4 decodeStringForKey:@"editingSystemSymbolName"];
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

        v19 = [v4 decodeObjectOfClass:*(*(&v23 + 1) + 8 * i) forKey:@"editingContentStyle"];
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

- (void)encodeWithBSXPCCoder:(id)a3
{
  v7 = a3;
  [v7 encodeInt64:-[PRPosterAmbientConfiguration supportedDataLayout](self forKey:{"supportedDataLayout"), @"supportedDataLayout"}];
  [v7 encodeInt64:-[PRPosterAmbientConfiguration creationBehavior](self forKey:{"creationBehavior"), @"creationBehavior"}];
  [v7 encodeInt64:-[PRPosterAmbientConfiguration deletionBehavior](self forKey:{"deletionBehavior"), @"deletionBehavior"}];
  [v7 encodeInt64:-[PRPosterAmbientConfiguration editingBehavior](self forKey:{"editingBehavior"), @"editingBehavior"}];
  [v7 encodeInt64:-[PRPosterAmbientConfiguration galleryDisplayBehavior](self forKey:{"galleryDisplayBehavior"), @"galleryDisplayBehavior"}];
  [v7 encodeBool:-[PRPosterAmbientConfiguration hidden](self forKey:{"hidden"), @"hidden"}];
  [v7 encodeBool:-[PRPosterAmbientConfiguration needsAuthentication](self forKey:{"needsAuthentication"), @"needsAuthentication"}];
  v4 = [(PRPosterAmbientConfiguration *)self displayNameSystemSymbolName];
  [v7 encodeObject:v4 forKey:@"displayNameSystemSymbolName"];

  v5 = [(PRPosterAmbientConfiguration *)self editingSystemSymbolName];
  [v7 encodeObject:v5 forKey:@"editingSystemSymbolName"];

  v6 = [(PRPosterAmbientConfiguration *)self editingContentStyle];
  [v7 encodeObject:v6 forKey:@"editingContentStyle"];

  [v7 encodeInt64:-[PRPosterAmbientConfiguration displayOrder](self forKey:{"displayOrder"), @"displayOrder"}];
}

- (id)encodeJSON
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PRPosterAmbientConfiguration supportedDataLayout](self, "supportedDataLayout")}];
  [v3 bs_setSafeObject:v4 forKey:@"supportedDataLayout"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PRPosterAmbientConfiguration creationBehavior](self, "creationBehavior")}];
  [v3 bs_setSafeObject:v5 forKey:@"creationBehavior"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PRPosterAmbientConfiguration deletionBehavior](self, "deletionBehavior")}];
  [v3 bs_setSafeObject:v6 forKey:@"deletionBehavior"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PRPosterAmbientConfiguration editingBehavior](self, "editingBehavior")}];
  [v3 bs_setSafeObject:v7 forKey:@"editingBehavior"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PRPosterAmbientConfiguration galleryDisplayBehavior](self, "galleryDisplayBehavior")}];
  [v3 bs_setSafeObject:v8 forKey:@"galleryDisplayBehavior"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[PRPosterAmbientConfiguration hidden](self, "hidden")}];
  [v3 bs_setSafeObject:v9 forKey:@"hidden"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[PRPosterAmbientConfiguration needsAuthentication](self, "needsAuthentication")}];
  [v3 bs_setSafeObject:v10 forKey:@"needsAuthentication"];

  v11 = [(PRPosterAmbientConfiguration *)self displayNameSystemSymbolName];
  [v3 bs_setSafeObject:v11 forKey:@"displayNameSystemSymbolName"];

  v12 = [(PRPosterAmbientConfiguration *)self editingSystemSymbolName];
  [v3 bs_setSafeObject:v12 forKey:@"editingSystemSymbolName"];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PRPosterAmbientConfiguration displayOrder](self, "displayOrder")}];
  [v3 bs_setSafeObject:v13 forKey:@"displayOrder"];

  v14 = [(PRPosterAmbientConfiguration *)self editingContentStyle];
  if (v14)
  {
    v15 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v14 requiringSecureCoding:1 error:0];
    v16 = [v15 base64EncodedStringWithOptions:0];
    [v3 bs_setSafeObject:v16 forKey:@"editingContentStyle"];
  }

  v17 = [(PRPosterAmbientConfiguration *)self attributeType];
  [v3 bs_setSafeObject:v17 forKey:@"attributeType"];

  v22 = 0;
  v18 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:0 error:&v22];
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

+ (id)decodeObjectWithJSON:(id)a3
{
  v44 = 0;
  v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v44];
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

      v7 = [v5 integerValue];

      v8 = [v3 objectForKey:@"creationBehavior"];
      v9 = v8;
      if (!v8)
      {
        v8 = &unk_1F1C6B7A0;
      }

      v10 = [v8 integerValue];

      v11 = [v3 objectForKey:@"deletionBehavior"];
      v12 = v11;
      if (!v11)
      {
        v11 = &unk_1F1C6B7B8;
      }

      v13 = [v11 integerValue];

      v14 = [v3 objectForKey:@"editingBehavior"];
      v15 = v14;
      if (!v14)
      {
        v14 = &unk_1F1C6B7D0;
      }

      v16 = [v14 integerValue];

      v17 = [v3 objectForKey:@"galleryDisplayBehavior"];
      v18 = v17;
      if (!v17)
      {
        v17 = &unk_1F1C6B7A0;
      }

      v19 = [v17 integerValue];

      v20 = [v3 objectForKey:@"hidden"];
      if (v20)
      {
        v21 = [v3 objectForKey:@"hidden"];
        v43 = [v21 BOOLValue];
      }

      else
      {
        v43 = 0;
      }

      v24 = [v3 objectForKey:@"needsAuthentication"];
      if (v24)
      {
        v25 = [v3 objectForKey:@"needsAuthentication"];
        v42 = [v25 BOOLValue];
      }

      else
      {
        v42 = 0;
      }

      v26 = [v3 objectForKey:@"displayOrder"];
      if (v26)
      {
        [v3 objectForKey:@"displayOrder"];
        v27 = v16;
        v28 = v13;
        v29 = v10;
        v31 = v30 = v7;
        v32 = [v31 integerValue];

        v7 = v30;
        v10 = v29;
        v13 = v28;
        v16 = v27;
      }

      else
      {
        v32 = 0x7FFFFFFFLL;
      }

      LOBYTE(v41) = v42;
      v23 = [objc_alloc(objc_opt_class()) initWithSupportedDataLayout:v7 creationBehavior:v10 editingBehavior:v16 deletionBehavior:v13 galleryDisplayBehavior:v19 isHidden:v43 needsAuthentication:v41 displayOrder:v32];
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