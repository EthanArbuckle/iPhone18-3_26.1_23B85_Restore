@interface SBHApplicationWidgetCollection
- (NSString)collectionIdentifier;
- (NSString)displayName;
- (SBHApplicationWidgetCollection)initWithCustomImage:(id)a3 iconBackgroundColor:(id)a4 displayName:(id)a5 galleryItems:(id)a6 vendorName:(id)a7;
- (SBHApplicationWidgetCollection)initWithCustomImage:(id)a3 iconBackgroundColor:(id)a4 displayName:(id)a5 galleryItems:(id)a6 vendorName:(id)a7 uniqueIdentifier:(id)a8;
- (SBHApplicationWidgetCollection)initWithCustomTypeIdentifier:(id)a3 displayName:(id)a4 galleryItems:(id)a5 vendorName:(id)a6 uniqueIdentifier:(id)a7;
- (SBHApplicationWidgetCollection)initWithIcon:(id)a3 galleryItems:(id)a4 vendorName:(id)a5;
- (SBHApplicationWidgetCollection)initWithIcon:(id)a3 galleryItems:(id)a4 vendorName:(id)a5 uniqueIdentifier:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)indexOfWidgetDescriptorMatchingDescriptor:(id)a3;
@end

@implementation SBHApplicationWidgetCollection

- (SBHApplicationWidgetCollection)initWithCustomImage:(id)a3 iconBackgroundColor:(id)a4 displayName:(id)a5 galleryItems:(id)a6 vendorName:(id)a7
{
  v12 = MEMORY[0x1E696AFB0];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [v12 UUID];
  v19 = [v18 UUIDString];
  v20 = [(SBHApplicationWidgetCollection *)self initWithCustomImage:v17 iconBackgroundColor:v16 displayName:v15 galleryItems:v14 vendorName:v13 uniqueIdentifier:v19];

  return v20;
}

- (SBHApplicationWidgetCollection)initWithCustomImage:(id)a3 iconBackgroundColor:(id)a4 displayName:(id)a5 galleryItems:(id)a6 vendorName:(id)a7 uniqueIdentifier:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = [(SBHApplicationWidgetCollection *)self initWithIcon:0 galleryItems:a6 vendorName:v18];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_customImage, a3);
    objc_storeStrong(&v21->_customImageBackgroundColor, a4);
    v22 = [v17 copy];
    containerName = v21->_containerName;
    v21->_containerName = v22;

    v24 = [v18 copy];
    vendorName = v21->_vendorName;
    v21->_vendorName = v24;

    v26 = [v19 copy];
    uniqueIdentifier = v21->_uniqueIdentifier;
    v21->_uniqueIdentifier = v26;
  }

  return v21;
}

- (SBHApplicationWidgetCollection)initWithIcon:(id)a3 galleryItems:(id)a4 vendorName:(id)a5
{
  v8 = MEMORY[0x1E696AFB0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 UUID];
  v13 = [v12 UUIDString];
  v14 = [(SBHApplicationWidgetCollection *)self initWithIcon:v11 galleryItems:v10 vendorName:v9 uniqueIdentifier:v13];

  return v14;
}

- (SBHApplicationWidgetCollection)initWithIcon:(id)a3 galleryItems:(id)a4 vendorName:(id)a5 uniqueIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = SBHApplicationWidgetCollection;
  v15 = [(SBHApplicationWidgetCollection *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_icon, a3);
    v17 = [v12 copy];
    widgetDescriptors = v16->_widgetDescriptors;
    v16->_widgetDescriptors = v17;

    v19 = [v13 copy];
    vendorName = v16->_vendorName;
    v16->_vendorName = v19;

    v21 = [v14 copy];
    uniqueIdentifier = v16->_uniqueIdentifier;
    v16->_uniqueIdentifier = v21;
  }

  return v16;
}

- (SBHApplicationWidgetCollection)initWithCustomTypeIdentifier:(id)a3 displayName:(id)a4 galleryItems:(id)a5 vendorName:(id)a6 uniqueIdentifier:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = SBHApplicationWidgetCollection;
  v17 = [(SBHApplicationWidgetCollection *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    typeIdentifier = v17->_typeIdentifier;
    v17->_typeIdentifier = v18;

    v20 = [v13 copy];
    containerName = v17->_containerName;
    v17->_containerName = v20;

    v22 = [v14 copy];
    widgetDescriptors = v17->_widgetDescriptors;
    v17->_widgetDescriptors = v22;

    v24 = [v15 copy];
    vendorName = v17->_vendorName;
    v17->_vendorName = v24;

    v26 = [v16 copy];
    uniqueIdentifier = v17->_uniqueIdentifier;
    v17->_uniqueIdentifier = v26;
  }

  return v17;
}

- (NSString)displayName
{
  if (self->_containerName)
  {
    v3 = [(SBHApplicationWidgetCollection *)self containerName];
  }

  else
  {
    icon = self->_icon;
    if (icon)
    {
      v3 = [(SBIcon *)icon displayName];
      if (![v3 length])
      {
        v8 = [(NSArray *)self->_widgetDescriptors firstObject];
        v9 = [v8 sbh_appName];

        v3 = v9;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  v4 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  return v5;
}

- (NSString)collectionIdentifier
{
  collectionIdentifier = self->_collectionIdentifier;
  if (!collectionIdentifier)
  {
    v5 = [(SBHApplicationWidgetCollection *)self isDisfavored];
    v6 = [(SBHApplicationWidgetCollection *)self containerName];
    if (v6)
    {
    }

    else
    {
      v7 = [(SBHApplicationWidgetCollection *)self iconImageApplicationBundleIdentifier];

      if (!v7)
      {
        v16 = MEMORY[0x1E696AEC0];
        v9 = [(SBLeafIcon *)self->_icon leafIdentifier];
        v10 = v9;
        if (!v9)
        {
          v2 = [MEMORY[0x1E696AFB0] UUID];
          v10 = [v2 UUIDString];
        }

        v17 = [v16 stringWithFormat:@"APP_COLLECTION:'%@'-isDisfavored:%d", v10, v5];
        v18 = self->_collectionIdentifier;
        self->_collectionIdentifier = v17;

        if (v9)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }
    }

    v8 = MEMORY[0x1E696AEC0];
    v9 = [(SBHApplicationWidgetCollection *)self containerName];
    v2 = [(SBHApplicationWidgetCollection *)self iconImageApplicationBundleIdentifier];
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [v10 UUIDString];
    v12 = [v8 stringWithFormat:@"FRAMEWORK_COLLECTION:'%@'-'%@'-isDisfavored:%d-uniqueIdentifier:%@", v9, v2, v5, v11];
    v13 = self->_collectionIdentifier;
    self->_collectionIdentifier = v12;

LABEL_6:
LABEL_7:

    collectionIdentifier = self->_collectionIdentifier;
  }

  v14 = collectionIdentifier;

  return v14;
}

- (unint64_t)indexOfWidgetDescriptorMatchingDescriptor:(id)a3
{
  v4 = [a3 sbh_galleryItemIdentifier];
  v5 = [(SBHApplicationWidgetCollection *)self widgetDescriptors];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__SBHApplicationWidgetCollection_indexOfWidgetDescriptorMatchingDescriptor___block_invoke;
  v9[3] = &unk_1E808BD08;
  v10 = v4;
  v6 = v4;
  v7 = [v5 indexOfObjectPassingTest:v9];

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
  v2 = [(SBHApplicationWidgetCollection *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHApplicationWidgetCollection *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBHApplicationWidgetCollection *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__SBHApplicationWidgetCollection_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E8088F18;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
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