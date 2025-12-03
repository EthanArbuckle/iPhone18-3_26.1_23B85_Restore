@interface REMTemplate
+ (id)newObjectIDForSavedAttachment;
+ (id)newObjectIDForSavedReminder;
- (BOOL)isEqual:(id)equal;
- (BOOL)isUnsupported;
- (BOOL)respondsToSelector:(SEL)selector;
- (REMAccountCapabilities)accountCapabilities;
- (REMListBadge)badge;
- (REMTemplate)initWithStore:(id)store storage:(id)storage;
- (REMTemplateSectionContext)sectionContext;
- (id)debugDescription;
- (id)description;
- (id)optionalObjectID;
- (id)valueForUndefinedKey:(id)key;
- (unint64_t)hash;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation REMTemplate

- (REMTemplate)initWithStore:(id)store storage:(id)storage
{
  storeCopy = store;
  storageCopy = storage;
  v12.receiver = self;
  v12.super_class = REMTemplate;
  v9 = [(REMTemplate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_store, store);
    objc_storeStrong(&v10->_storage, storage);
    -[REMTemplateStorage setStoreGenerationIfNeeded:](v10->_storage, "setStoreGenerationIfNeeded:", [storeCopy storeGeneration]);
  }

  return v10;
}

- (id)optionalObjectID
{
  storage = [(REMTemplate *)self storage];
  optionalObjectID = [storage optionalObjectID];

  return optionalObjectID;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  store = [(REMTemplate *)self store];
  store2 = [equalCopy store];
  v7 = store2;
  if (store == store2)
  {
  }

  else
  {
    store3 = [(REMTemplate *)self store];
    store4 = [equalCopy store];
    v10 = [store3 isEqual:store4];

    if (!v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_10;
    }
  }

  storage = [(REMTemplate *)self storage];
  storage2 = [equalCopy storage];
  if (storage == storage2)
  {
    v11 = 1;
  }

  else
  {
    storage3 = [(REMTemplate *)self storage];
    storage4 = [equalCopy storage];
    v11 = [storage3 isEqual:storage4];
  }

LABEL_10:
  return v11 & 1;
}

- (unint64_t)hash
{
  storage = [(REMTemplate *)self storage];
  v3 = [storage hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  storage = [(REMTemplate *)self storage];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, storage];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  storage = [(REMTemplate *)self storage];
  v6 = [storage debugDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v6];

  return v7;
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  storage = [(REMTemplate *)self storage];
  v6 = [storage valueForKey:keyCopy];

  return v6;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = REMTemplate;
  if ([(REMTemplate *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    storage = [(REMTemplate *)self storage];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  storage = [(REMTemplate *)self storage];
  [storage setValue:valueCopy forKey:keyCopy];
}

- (REMAccountCapabilities)accountCapabilities
{
  storage = [(REMTemplate *)self storage];
  accountCapabilities = [storage accountCapabilities];

  return accountCapabilities;
}

- (REMListBadge)badge
{
  badgeEmblem = [(REMTemplate *)self badgeEmblem];
  if (badgeEmblem)
  {
    v3 = [[REMListBadge alloc] initWithRawValue:badgeEmblem];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (REMTemplateSectionContext)sectionContext
{
  accountCapabilities = [(REMTemplate *)self accountCapabilities];
  supportsSections = [accountCapabilities supportsSections];

  if (supportsSections)
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
  storage = [(REMTemplate *)self storage];
  isUnsupported = [storage isUnsupported];

  return isUnsupported;
}

+ (id)newObjectIDForSavedReminder
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  cdEntityNameForSavedReminder = [self cdEntityNameForSavedReminder];
  v5 = [REMObjectID objectIDWithUUID:uUID entityName:cdEntityNameForSavedReminder];

  return v5;
}

+ (id)newObjectIDForSavedAttachment
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  cdEntityNameForSavedAttachment = [self cdEntityNameForSavedAttachment];
  v5 = [REMObjectID objectIDWithUUID:uUID entityName:cdEntityNameForSavedAttachment];

  return v5;
}

@end