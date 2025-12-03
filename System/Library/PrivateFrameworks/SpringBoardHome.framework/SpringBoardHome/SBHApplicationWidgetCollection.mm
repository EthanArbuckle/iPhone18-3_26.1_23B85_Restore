@interface SBHApplicationWidgetCollection
- (NSString)collectionIdentifier;
- (NSString)displayName;
- (SBHApplicationWidgetCollection)initWithCustomImage:(id)image iconBackgroundColor:(id)color displayName:(id)name galleryItems:(id)items vendorName:(id)vendorName;
- (SBHApplicationWidgetCollection)initWithCustomImage:(id)image iconBackgroundColor:(id)color displayName:(id)name galleryItems:(id)items vendorName:(id)vendorName uniqueIdentifier:(id)identifier;
- (SBHApplicationWidgetCollection)initWithCustomTypeIdentifier:(id)identifier displayName:(id)name galleryItems:(id)items vendorName:(id)vendorName uniqueIdentifier:(id)uniqueIdentifier;
- (SBHApplicationWidgetCollection)initWithIcon:(id)icon galleryItems:(id)items vendorName:(id)name;
- (SBHApplicationWidgetCollection)initWithIcon:(id)icon galleryItems:(id)items vendorName:(id)name uniqueIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)indexOfWidgetDescriptorMatchingDescriptor:(id)descriptor;
@end

@implementation SBHApplicationWidgetCollection

- (SBHApplicationWidgetCollection)initWithCustomImage:(id)image iconBackgroundColor:(id)color displayName:(id)name galleryItems:(id)items vendorName:(id)vendorName
{
  v12 = MEMORY[0x1E696AFB0];
  vendorNameCopy = vendorName;
  itemsCopy = items;
  nameCopy = name;
  colorCopy = color;
  imageCopy = image;
  uUID = [v12 UUID];
  uUIDString = [uUID UUIDString];
  v20 = [(SBHApplicationWidgetCollection *)self initWithCustomImage:imageCopy iconBackgroundColor:colorCopy displayName:nameCopy galleryItems:itemsCopy vendorName:vendorNameCopy uniqueIdentifier:uUIDString];

  return v20;
}

- (SBHApplicationWidgetCollection)initWithCustomImage:(id)image iconBackgroundColor:(id)color displayName:(id)name galleryItems:(id)items vendorName:(id)vendorName uniqueIdentifier:(id)identifier
{
  imageCopy = image;
  colorCopy = color;
  nameCopy = name;
  vendorNameCopy = vendorName;
  identifierCopy = identifier;
  v20 = [(SBHApplicationWidgetCollection *)self initWithIcon:0 galleryItems:items vendorName:vendorNameCopy];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_customImage, image);
    objc_storeStrong(&v21->_customImageBackgroundColor, color);
    v22 = [nameCopy copy];
    containerName = v21->_containerName;
    v21->_containerName = v22;

    v24 = [vendorNameCopy copy];
    vendorName = v21->_vendorName;
    v21->_vendorName = v24;

    v26 = [identifierCopy copy];
    uniqueIdentifier = v21->_uniqueIdentifier;
    v21->_uniqueIdentifier = v26;
  }

  return v21;
}

- (SBHApplicationWidgetCollection)initWithIcon:(id)icon galleryItems:(id)items vendorName:(id)name
{
  v8 = MEMORY[0x1E696AFB0];
  nameCopy = name;
  itemsCopy = items;
  iconCopy = icon;
  uUID = [v8 UUID];
  uUIDString = [uUID UUIDString];
  v14 = [(SBHApplicationWidgetCollection *)self initWithIcon:iconCopy galleryItems:itemsCopy vendorName:nameCopy uniqueIdentifier:uUIDString];

  return v14;
}

- (SBHApplicationWidgetCollection)initWithIcon:(id)icon galleryItems:(id)items vendorName:(id)name uniqueIdentifier:(id)identifier
{
  iconCopy = icon;
  itemsCopy = items;
  nameCopy = name;
  identifierCopy = identifier;
  v24.receiver = self;
  v24.super_class = SBHApplicationWidgetCollection;
  v15 = [(SBHApplicationWidgetCollection *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_icon, icon);
    v17 = [itemsCopy copy];
    widgetDescriptors = v16->_widgetDescriptors;
    v16->_widgetDescriptors = v17;

    v19 = [nameCopy copy];
    vendorName = v16->_vendorName;
    v16->_vendorName = v19;

    v21 = [identifierCopy copy];
    uniqueIdentifier = v16->_uniqueIdentifier;
    v16->_uniqueIdentifier = v21;
  }

  return v16;
}

- (SBHApplicationWidgetCollection)initWithCustomTypeIdentifier:(id)identifier displayName:(id)name galleryItems:(id)items vendorName:(id)vendorName uniqueIdentifier:(id)uniqueIdentifier
{
  identifierCopy = identifier;
  nameCopy = name;
  itemsCopy = items;
  vendorNameCopy = vendorName;
  uniqueIdentifierCopy = uniqueIdentifier;
  v29.receiver = self;
  v29.super_class = SBHApplicationWidgetCollection;
  v17 = [(SBHApplicationWidgetCollection *)&v29 init];
  if (v17)
  {
    v18 = [identifierCopy copy];
    typeIdentifier = v17->_typeIdentifier;
    v17->_typeIdentifier = v18;

    v20 = [nameCopy copy];
    containerName = v17->_containerName;
    v17->_containerName = v20;

    v22 = [itemsCopy copy];
    widgetDescriptors = v17->_widgetDescriptors;
    v17->_widgetDescriptors = v22;

    v24 = [vendorNameCopy copy];
    vendorName = v17->_vendorName;
    v17->_vendorName = v24;

    v26 = [uniqueIdentifierCopy copy];
    uniqueIdentifier = v17->_uniqueIdentifier;
    v17->_uniqueIdentifier = v26;
  }

  return v17;
}

- (NSString)displayName
{
  if (self->_containerName)
  {
    containerName = [(SBHApplicationWidgetCollection *)self containerName];
  }

  else
  {
    icon = self->_icon;
    if (icon)
    {
      containerName = [(SBIcon *)icon displayName];
      if (![containerName length])
      {
        firstObject = [(NSArray *)self->_widgetDescriptors firstObject];
        sbh_appName = [firstObject sbh_appName];

        containerName = sbh_appName;
      }
    }

    else
    {
      containerName = 0;
    }
  }

  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v5 = [containerName stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v5;
}

- (NSString)collectionIdentifier
{
  collectionIdentifier = self->_collectionIdentifier;
  if (!collectionIdentifier)
  {
    isDisfavored = [(SBHApplicationWidgetCollection *)self isDisfavored];
    containerName = [(SBHApplicationWidgetCollection *)self containerName];
    if (containerName)
    {
    }

    else
    {
      iconImageApplicationBundleIdentifier = [(SBHApplicationWidgetCollection *)self iconImageApplicationBundleIdentifier];

      if (!iconImageApplicationBundleIdentifier)
      {
        v16 = MEMORY[0x1E696AEC0];
        leafIdentifier = [(SBLeafIcon *)self->_icon leafIdentifier];
        uUIDString = leafIdentifier;
        if (!leafIdentifier)
        {
          uUID = [MEMORY[0x1E696AFB0] UUID];
          uUIDString = [uUID UUIDString];
        }

        v17 = [v16 stringWithFormat:@"APP_COLLECTION:'%@'-isDisfavored:%d", uUIDString, isDisfavored];
        v18 = self->_collectionIdentifier;
        self->_collectionIdentifier = v17;

        if (leafIdentifier)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }
    }

    v8 = MEMORY[0x1E696AEC0];
    leafIdentifier = [(SBHApplicationWidgetCollection *)self containerName];
    uUID = [(SBHApplicationWidgetCollection *)self iconImageApplicationBundleIdentifier];
    uUIDString = [MEMORY[0x1E696AFB0] UUID];
    v10UUIDString = [uUIDString UUIDString];
    v12 = [v8 stringWithFormat:@"FRAMEWORK_COLLECTION:'%@'-'%@'-isDisfavored:%d-uniqueIdentifier:%@", leafIdentifier, uUID, isDisfavored, v10UUIDString];
    v13 = self->_collectionIdentifier;
    self->_collectionIdentifier = v12;

LABEL_6:
LABEL_7:

    collectionIdentifier = self->_collectionIdentifier;
  }

  v14 = collectionIdentifier;

  return v14;
}

- (unint64_t)indexOfWidgetDescriptorMatchingDescriptor:(id)descriptor
{
  sbh_galleryItemIdentifier = [descriptor sbh_galleryItemIdentifier];
  widgetDescriptors = [(SBHApplicationWidgetCollection *)self widgetDescriptors];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__SBHApplicationWidgetCollection_indexOfWidgetDescriptorMatchingDescriptor___block_invoke;
  v9[3] = &unk_1E808BD08;
  v10 = sbh_galleryItemIdentifier;
  v6 = sbh_galleryItemIdentifier;
  v7 = [widgetDescriptors indexOfObjectPassingTest:v9];

  return v7;
}

uint64_t __76__SBHApplicationWidgetCollection_indexOfWidgetDescriptorMatchingDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sbh_galleryItemIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHApplicationWidgetCollection *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHApplicationWidgetCollection *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBHApplicationWidgetCollection *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__SBHApplicationWidgetCollection_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E8088F18;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (self->_customImage && self->_customImageBackgroundColor)
  {
    v4 = [objc_alloc(objc_opt_class()) initWithCustomImage:self->_customImage iconBackgroundColor:self->_customImageBackgroundColor displayName:self->_containerName galleryItems:self->_widgetDescriptors vendorName:self->_vendorName uniqueIdentifier:self->_uniqueIdentifier];
  }

  else
  {
    typeIdentifier = self->_typeIdentifier;
    v6 = objc_alloc(objc_opt_class());
    if (typeIdentifier)
    {
      v4 = [v6 initWithCustomTypeIdentifier:self->_typeIdentifier displayName:self->_containerName galleryItems:self->_widgetDescriptors vendorName:self->_vendorName uniqueIdentifier:self->_uniqueIdentifier];
    }

    else
    {
      v4 = [v6 initWithIcon:self->_icon galleryItems:self->_widgetDescriptors vendorName:self->_vendorName uniqueIdentifier:self->_uniqueIdentifier];
    }
  }

  v7 = v4;
  [v4 setContainerName:self->_containerName];
  [v7 setIconImageApplicationBundleIdentifier:self->_iconImageApplicationBundleIdentifier];
  [v7 setDisfavored:self->_disfavored];
  return v7;
}

@end