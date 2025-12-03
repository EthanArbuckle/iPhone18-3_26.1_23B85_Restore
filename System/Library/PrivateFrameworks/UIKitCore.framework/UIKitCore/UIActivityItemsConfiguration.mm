@interface UIActivityItemsConfiguration
+ (UIActivityItemsConfiguration)activityItemsConfigurationWithItemProviders:(NSArray *)itemProviders;
+ (UIActivityItemsConfiguration)activityItemsConfigurationWithObjects:(NSArray *)objects;
+ (id)_itemsForSystemSharingFromActivityItemsConfiguration:(id)configuration wrapperBlock:(id)block;
- (BOOL)_hasItemsForActivityItemsConfiguration;
- (BOOL)activityItemsConfigurationSupportsInteraction:(id)interaction;
- (NSArray)_activityItems;
- (NSArray)_excludedActivityTypes;
- (NSArray)applicationActivitiesForActivityItemsConfiguration;
- (NSArray)itemProvidersForActivityItemsConfiguration;
- (UIActivityItemsConfiguration)initWithItemProviders:(NSArray *)itemProviders;
- (UIActivityItemsConfiguration)initWithObjects:(NSArray *)objects;
- (id)_initWithActivityItemSources:(id)sources;
- (id)_initWithActivityItems:(id)items applicationActivities:(id)activities;
- (id)activityItemsConfigurationMetadataForItemAtIndex:(int64_t)index key:(id)key;
- (id)activityItemsConfigurationMetadataForKey:(id)key;
- (id)activityItemsConfigurationPreviewForItemAtIndex:(int64_t)index intent:(id)intent suggestedSize:(CGSize)size;
- (void)_commonInit;
- (void)_setExcludedActivityTypes:(id)types;
@end

@implementation UIActivityItemsConfiguration

+ (UIActivityItemsConfiguration)activityItemsConfigurationWithObjects:(NSArray *)objects
{
  v4 = objects;
  v5 = [[self alloc] initWithObjects:v4];

  return v5;
}

+ (UIActivityItemsConfiguration)activityItemsConfigurationWithItemProviders:(NSArray *)itemProviders
{
  v4 = itemProviders;
  v5 = [[self alloc] initWithItemProviders:v4];

  return v5;
}

- (void)_commonInit
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"share";
  v5[1] = @"copy";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  supportedInteractions = self->_supportedInteractions;
  self->_supportedInteractions = v3;
}

- (UIActivityItemsConfiguration)initWithObjects:(NSArray *)objects
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = objects;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIActivityItemsConfiguration.m" lineNumber:59 description:{@"%s: objects parameter cannot be nil.", "-[UIActivityItemsConfiguration initWithObjects:]"}];
  }

  v22.receiver = self;
  v22.super_class = UIActivityItemsConfiguration;
  v6 = [(UIActivityItemsConfiguration *)&v22 init];
  v7 = v6;
  if (v6)
  {
    [(UIActivityItemsConfiguration *)v6 _commonInit];
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](v5, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v5;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:*(*(&v18 + 1) + 8 * i)];
          [(NSArray *)v8 addObject:v14];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }

    itemProviders = v7->_itemProviders;
    v7->_itemProviders = v8;
  }

  return v7;
}

- (UIActivityItemsConfiguration)initWithItemProviders:(NSArray *)itemProviders
{
  v5 = itemProviders;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIActivityItemsConfiguration.m" lineNumber:79 description:{@"%s: itemProviders parameter cannot be nil.", "-[UIActivityItemsConfiguration initWithItemProviders:]"}];
  }

  v12.receiver = self;
  v12.super_class = UIActivityItemsConfiguration;
  v6 = [(UIActivityItemsConfiguration *)&v12 init];
  v7 = v6;
  if (v6)
  {
    [(UIActivityItemsConfiguration *)v6 _commonInit];
    v8 = [(NSArray *)v5 copy];
    v9 = v7->_itemProviders;
    v7->_itemProviders = v8;
  }

  return v7;
}

- (id)_initWithActivityItemSources:(id)sources
{
  sourcesCopy = sources;
  if (!sourcesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIActivityItemsConfiguration.m" lineNumber:102 description:{@"%s: activityItemSources parameter cannot be nil.", "-[UIActivityItemsConfiguration _initWithActivityItemSources:]"}];
  }

  v14.receiver = self;
  v14.super_class = UIActivityItemsConfiguration;
  v6 = [(UIActivityItemsConfiguration *)&v14 init];
  v7 = v6;
  if (v6)
  {
    [(UIActivityItemsConfiguration *)v6 _commonInit];
    v8 = [sourcesCopy copy];
    activityItems = v7->_activityItems;
    v7->_activityItems = v8;

    v10 = [objc_alloc(MEMORY[0x1E69CD9F8]) initWithActivityItems:sourcesCopy applicationActivities:0];
    vc = v7->_vc;
    v7->_vc = v10;
  }

  return v7;
}

- (id)_initWithActivityItems:(id)items applicationActivities:(id)activities
{
  itemsCopy = items;
  activitiesCopy = activities;
  v19.receiver = self;
  v19.super_class = UIActivityItemsConfiguration;
  v8 = [(UIActivityItemsConfiguration *)&v19 init];
  v9 = v8;
  if (v8)
  {
    [(UIActivityItemsConfiguration *)v8 _commonInit];
    v10 = [itemsCopy copy];
    activityItems = v9->_activityItems;
    v9->_activityItems = v10;

    v12 = [objc_alloc(MEMORY[0x1E69CD9F8]) initWithActivityItems:itemsCopy applicationActivities:activitiesCopy];
    vc = v9->_vc;
    v9->_vc = v12;

    if ([activitiesCopy count])
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __77__UIActivityItemsConfiguration__initWithActivityItems_applicationActivities___block_invoke;
      aBlock[3] = &unk_1E70F6AA8;
      v18 = activitiesCopy;
      v14 = _Block_copy(aBlock);
      applicationActivitiesProvider = v9->_applicationActivitiesProvider;
      v9->_applicationActivitiesProvider = v14;
    }
  }

  return v9;
}

- (BOOL)activityItemsConfigurationSupportsInteraction:(id)interaction
{
  interactionCopy = interaction;
  supportedInteractions = [(UIActivityItemsConfiguration *)self supportedInteractions];
  v6 = [supportedInteractions containsObject:interactionCopy];

  return v6;
}

- (id)activityItemsConfigurationMetadataForKey:(id)key
{
  metadataProvider = self->_metadataProvider;
  if (metadataProvider)
  {
    metadataProvider = (metadataProvider)[2](metadataProvider, key);
    v3 = vars8;
  }

  return metadataProvider;
}

- (id)activityItemsConfigurationMetadataForItemAtIndex:(int64_t)index key:(id)key
{
  perItemMetadataProvider = self->_perItemMetadataProvider;
  if (perItemMetadataProvider)
  {
    perItemMetadataProvider = (perItemMetadataProvider)[2](perItemMetadataProvider, index, key);
    v4 = vars8;
  }

  return perItemMetadataProvider;
}

- (id)activityItemsConfigurationPreviewForItemAtIndex:(int64_t)index intent:(id)intent suggestedSize:(CGSize)size
{
  previewProvider = self->_previewProvider;
  if (previewProvider)
  {
    previewProvider = (previewProvider)[2](previewProvider, index, intent, size, *&size.height);
    v5 = vars8;
  }

  return previewProvider;
}

- (NSArray)applicationActivitiesForActivityItemsConfiguration
{
  applicationActivitiesProvider = [(UIActivityItemsConfiguration *)self applicationActivitiesProvider];
  v3 = applicationActivitiesProvider;
  if (applicationActivitiesProvider)
  {
    v4 = (*(applicationActivitiesProvider + 16))(applicationActivitiesProvider);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)itemProvidersForActivityItemsConfiguration
{
  selfCopy = self;
  v33 = *MEMORY[0x1E69E9840];
  itemProviders = self->_itemProviders;
  if (itemProviders)
  {
    v4 = [(NSArray *)itemProviders copy];
    goto LABEL_27;
  }

  if ([(NSArray *)selfCopy->_activityItems count])
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](selfCopy->_activityItems, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = selfCopy->_activityItems;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (!v6)
    {
      goto LABEL_25;
    }

    v7 = v6;
    v8 = *v29;
    v24 = *MEMORY[0x1E69CDAB0];
    v20 = v26;
    v9 = &selRef_visitPredicateExpression_keyPathScope_key_;
    v21 = selfCopy;
    v23 = v5;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v4 addObject:v11];
          continue;
        }

        if ([v11 conformsToProtocol:{&unk_1EFF7D6D0, v20}])
        {
          v12 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v11];
          [v4 addObject:v12];

          continue;
        }

        if ([v11 conformsToProtocol:v9[419]])
        {
          v13 = v11;
          v14 = v24;
          v15 = selfCopy;
          v16 = [v13 activityViewController:selfCopy->_vc itemForActivityType:v14];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v4 addObject:v16];
LABEL_22:

            v9 = &selRef_visitPredicateExpression_keyPathScope_key_;
            selfCopy = v15;
            v5 = v23;
            continue;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [v13 activityViewController:v15->_vc dataTypeIdentifierForActivityType:v14];
            if ([v17 length])
            {
              v22 = v17;
              v18 = objc_alloc_init(MEMORY[0x1E696ACA0]);
              v25[0] = MEMORY[0x1E69E9820];
              v25[1] = 3221225472;
              v26[0] = __74__UIActivityItemsConfiguration_itemProvidersForActivityItemsConfiguration__block_invoke;
              v26[1] = &unk_1E70F6AD0;
              v27 = v16;
              [v18 registerDataRepresentationForTypeIdentifier:v22 visibility:0 loadHandler:v25];
              [v4 addObject:v18];

              v17 = v22;
            }
          }

          else
          {
            if (![v16 conformsToProtocol:&unk_1EFF7D6D0])
            {
              goto LABEL_22;
            }

            v17 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v16];
            [v4 addObject:v17];
          }

          v15 = v21;
          goto LABEL_22;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (!v7)
      {
LABEL_25:

        goto LABEL_27;
      }
    }
  }

  v4 = MEMORY[0x1E695E0F0];
LABEL_27:

  return v4;
}

+ (id)_itemsForSystemSharingFromActivityItemsConfiguration:(id)configuration wrapperBlock:(id)block
{
  configurationCopy = configuration;
  blockCopy = block;
  v16 = objc_opt_respondsToSelector();
  v7 = objc_opt_respondsToSelector();
  itemProvidersForActivityItemsConfiguration = [configurationCopy itemProvidersForActivityItemsConfiguration];
  v9 = [itemProvidersForActivityItemsConfiguration count];

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:(2 * v9) | 1];
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      v12 = blockCopy[2](blockCopy, configurationCopy, i);
      [v10 addObject:v12];

      if (v7)
      {
        v13 = [configurationCopy activityItemsConfigurationMetadataForItemAtIndex:i key:@"messageBody"];
        if (v13)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            [v10 addObject:v13];
          }
        }
      }

      else
      {
        v13 = 0;
      }
    }
  }

  if (v16)
  {
    v14 = [configurationCopy activityItemsConfigurationMetadataForKey:@"messageBody"];
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        [v10 addObject:v14];
      }
    }
  }

  return v10;
}

- (BOOL)_hasItemsForActivityItemsConfiguration
{
  if ([(NSArray *)self->_activityItems count])
  {
    return 1;
  }

  itemProvidersForActivityItemsConfiguration = [(UIActivityItemsConfiguration *)self itemProvidersForActivityItemsConfiguration];
  v3 = [itemProvidersForActivityItemsConfiguration count] != 0;

  return v3;
}

- (NSArray)_activityItems
{
  v2 = [(NSArray *)self->_activityItems copy];

  return v2;
}

- (NSArray)_excludedActivityTypes
{
  v2 = [(NSArray *)self->_excludedActivityTypes copy];

  return v2;
}

- (void)_setExcludedActivityTypes:(id)types
{
  v4 = [types copy];
  excludedActivityTypes = self->_excludedActivityTypes;
  self->_excludedActivityTypes = v4;
}

@end