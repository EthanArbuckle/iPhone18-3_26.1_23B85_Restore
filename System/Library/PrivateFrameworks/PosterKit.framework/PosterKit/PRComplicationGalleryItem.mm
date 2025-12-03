@interface PRComplicationGalleryItem
- (BOOL)isEqual:(id)equal;
- (PRComplicationGalleryItem)initWithApplicationWidgetCollection:(id)collection;
- (PRComplicationGalleryItem)initWithWidgetItem:(id)item;
- (id)description;
- (unint64_t)hash;
@end

@implementation PRComplicationGalleryItem

- (PRComplicationGalleryItem)initWithWidgetItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = PRComplicationGalleryItem;
  v6 = [(PRComplicationGalleryItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_widgetItem, item);
  }

  return v7;
}

- (PRComplicationGalleryItem)initWithApplicationWidgetCollection:(id)collection
{
  collectionCopy = collection;
  v9.receiver = self;
  v9.super_class = PRComplicationGalleryItem;
  v6 = [(PRComplicationGalleryItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applicationWidgetCollection, collection);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:self ofExpectedClass:objc_opt_class()];
  widgetItem = self->_widgetItem;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __37__PRComplicationGalleryItem_isEqual___block_invoke;
  v18[3] = &unk_1E78438D8;
  v7 = equalCopy;
  v19 = v7;
  v8 = [v5 appendObject:widgetItem counterpart:v18];
  applicationWidgetCollection = self->_applicationWidgetCollection;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __37__PRComplicationGalleryItem_isEqual___block_invoke_2;
  v16 = &unk_1E78438D8;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendObject:applicationWidgetCollection counterpart:&v13];
  LOBYTE(applicationWidgetCollection) = [v5 isEqual];

  return applicationWidgetCollection;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendObject:self->_widgetItem];
  v5 = [builder appendObject:self->_applicationWidgetCollection];
  v6 = [builder hash];

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_widgetItem withName:@"widgetItem" skipIfNil:1];
  v5 = [v3 appendObject:self->_applicationWidgetCollection withName:@"applicationWidgetCollection" skipIfNil:1];
  build = [v3 build];

  return build;
}

@end