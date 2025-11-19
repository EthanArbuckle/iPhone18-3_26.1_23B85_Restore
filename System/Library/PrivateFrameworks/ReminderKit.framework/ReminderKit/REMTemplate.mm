@interface REMTemplate
+ (id)newObjectIDForSavedAttachment;
+ (id)newObjectIDForSavedReminder;
- (BOOL)isEqual:(id)a3;
- (BOOL)isUnsupported;
- (BOOL)respondsToSelector:(SEL)a3;
- (REMAccountCapabilities)accountCapabilities;
- (REMListBadge)badge;
- (REMTemplate)initWithStore:(id)a3 storage:(id)a4;
- (REMTemplateSectionContext)sectionContext;
- (id)debugDescription;
- (id)description;
- (id)optionalObjectID;
- (id)valueForUndefinedKey:(id)a3;
- (unint64_t)hash;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation REMTemplate

- (REMTemplate)initWithStore:(id)a3 storage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = REMTemplate;
  v9 = [(REMTemplate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_store, a3);
    objc_storeStrong(&v10->_storage, a4);
    -[REMTemplateStorage setStoreGenerationIfNeeded:](v10->_storage, "setStoreGenerationIfNeeded:", [v7 storeGeneration]);
  }

  return v10;
}

- (id)optionalObjectID
{
  v2 = [(REMTemplate *)self storage];
  v3 = [v2 optionalObjectID];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = [(REMTemplate *)self store];
  v6 = [v4 store];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMTemplate *)self store];
    v9 = [v4 store];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_10;
    }
  }

  v12 = [(REMTemplate *)self storage];
  v13 = [v4 storage];
  if (v12 == v13)
  {
    v11 = 1;
  }

  else
  {
    v14 = [(REMTemplate *)self storage];
    v15 = [v4 storage];
    v11 = [v14 isEqual:v15];
  }

LABEL_10:
  return v11 & 1;
}

- (unint64_t)hash
{
  v2 = [(REMTemplate *)self storage];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMTemplate *)self storage];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMTemplate *)self storage];
  v6 = [v5 debugDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v6];

  return v7;
}

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  v5 = [(REMTemplate *)self storage];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = REMTemplate;
  if ([(REMTemplate *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(REMTemplate *)self storage];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(REMTemplate *)self storage];
  [v8 setValue:v7 forKey:v6];
}

- (REMAccountCapabilities)accountCapabilities
{
  v2 = [(REMTemplate *)self storage];
  v3 = [v2 accountCapabilities];

  return v3;
}

- (REMListBadge)badge
{
  v2 = [(REMTemplate *)self badgeEmblem];
  if (v2)
  {
    v3 = [[REMListBadge alloc] initWithRawValue:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (REMTemplateSectionContext)sectionContext
{
  v3 = [(REMTemplate *)self accountCapabilities];
  v4 = [v3 supportsSections];

  if (v4)
  {
    v5 = [[REMTemplateSectionContext alloc] initWithParentTemplate:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isUnsupported
{
  v2 = [(REMTemplate *)self storage];
  v3 = [v2 isUnsupported];

  return v3;
}

+ (id)newObjectIDForSavedReminder
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [a1 cdEntityNameForSavedReminder];
  v5 = [REMObjectID objectIDWithUUID:v3 entityName:v4];

  return v5;
}

+ (id)newObjectIDForSavedAttachment
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [a1 cdEntityNameForSavedAttachment];
  v5 = [REMObjectID objectIDWithUUID:v3 entityName:v4];

  return v5;
}

@end