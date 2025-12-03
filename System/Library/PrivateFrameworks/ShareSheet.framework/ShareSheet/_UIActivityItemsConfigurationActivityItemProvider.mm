@interface _UIActivityItemsConfigurationActivityItemProvider
+ (id)metadataForKey:(id)key expectedClass:(Class)class activityItemsConfiguration:(id)configuration itemAtSourceIndex:(int64_t)index;
- (_UIActivityItemsConfigurationActivityItemProvider)initWithActivityItemsConfiguration:(id)configuration itemAtSourceIndex:(int64_t)index;
- (id)_title;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
- (id)activityViewControllerLinkMetadata:(id)metadata;
- (id)activityViewControllerRecipients:(id)recipients;
- (id)activityViewControllerShareRecipients:(id)recipients;
@end

@implementation _UIActivityItemsConfigurationActivityItemProvider

- (_UIActivityItemsConfigurationActivityItemProvider)initWithActivityItemsConfiguration:(id)configuration itemAtSourceIndex:(int64_t)index
{
  configurationCopy = configuration;
  v8 = [_UIActivityItemsConfigurationActivityItemProvider metadataForKey:@"linkPresentationMetadata" expectedClass:getLPLinkMetadataClass_1() activityItemsConfiguration:configurationCopy itemAtSourceIndex:index];
  v9 = [_UIActivityItemsConfigurationActivityItemProvider metadataForKey:@"collaborationModeRestrictions" expectedClass:objc_opt_class() activityItemsConfiguration:configurationCopy itemAtSourceIndex:index];
  itemProvidersForActivityItemsConfiguration = [configurationCopy itemProvidersForActivityItemsConfiguration];
  v11 = [itemProvidersForActivityItemsConfiguration objectAtIndexedSubscript:index];

  v15.receiver = self;
  v15.super_class = _UIActivityItemsConfigurationActivityItemProvider;
  v12 = [(UIActivityItemProvider *)&v15 initWithPlaceholderItem:v11];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activityItemsConfiguration, configuration);
    objc_storeStrong(&v13->_item, v11);
    objc_storeStrong(&v13->_linkMetadata, v8);
    objc_storeStrong(&v13->_collaborationModeRestrictions, v9);
    v13->_sourceIndex = index;
  }

  return v13;
}

- (id)_title
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(UIActivityItemsConfigurationReading *)self->_activityItemsConfiguration activityItemsConfigurationMetadataForItemAtIndex:self->_sourceIndex key:*MEMORY[0x1E69DDA78]], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v4 = 0;
      goto LABEL_9;
    }

    v4 = [(UIActivityItemsConfigurationReading *)self->_activityItemsConfiguration activityItemsConfigurationMetadataForKey:*MEMORY[0x1E69DDA78]];
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    string = [v4 string];

    v4 = string;
  }

LABEL_9:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{
  if (dyld_program_sdk_at_least())
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(UIActivityItemsConfigurationReading *)self->_activityItemsConfiguration activityItemsConfigurationMetadataForKey:*MEMORY[0x1E69DDA78]];
      if (v5)
      {
        v6 = v5;
        goto LABEL_8;
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v6 = [(UIActivityItemsConfigurationReading *)self->_activityItemsConfiguration activityItemsConfigurationMetadataForItemAtIndex:self->_sourceIndex key:*MEMORY[0x1E69DDA78]];
      if (v6)
      {
LABEL_8:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          string = [v6 string];

          v6 = string;
        }
      }
    }

    else
    {
      v6 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    _title = v9;

    goto LABEL_15;
  }

  _title = [(_UIActivityItemsConfigurationActivityItemProvider *)self _title];
LABEL_15:

  return _title;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  linkMetadata = self->_linkMetadata;
  if (linkMetadata)
  {
    v4 = linkMetadata;
  }

  else
  {
    v4 = objc_alloc_init(getLPLinkMetadataClass_1());
    _title = [(_UIActivityItemsConfigurationActivityItemProvider *)self _title];
    [(LPLinkMetadata *)v4 setTitle:_title];

    if (objc_opt_respondsToSelector())
    {
      v7 = [(UIActivityItemsConfigurationReading *)self->_activityItemsConfiguration activityItemsConfigurationPreviewForItemAtIndex:self->_sourceIndex intent:*MEMORY[0x1E69DDA88] suggestedSize:64.0, 64.0];
      [(LPLinkMetadata *)v4 setIconProvider:v7];

      v8 = [(UIActivityItemsConfigurationReading *)self->_activityItemsConfiguration activityItemsConfigurationPreviewForItemAtIndex:self->_sourceIndex intent:*MEMORY[0x1E69DDA80] suggestedSize:512.0, 512.0];
      [(LPLinkMetadata *)v4 setImageProvider:v8];
    }

    title = [(LPLinkMetadata *)v4 title];
    if (title || ([(LPLinkMetadata *)v4 iconProvider], (title = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      imageProvider = [(LPLinkMetadata *)v4 imageProvider];

      if (!imageProvider)
      {

        v4 = 0;
      }
    }
  }

  return v4;
}

- (id)activityViewControllerRecipients:(id)recipients
{
  v4 = objc_opt_class();
  activityItemsConfiguration = self->_activityItemsConfiguration;

  return [_UIActivityItemsConfigurationActivityItemProvider metadataForKey:@"recipients" expectedClass:v4 activityItemsConfiguration:activityItemsConfiguration itemAtSourceIndex:0];
}

- (id)activityViewControllerShareRecipients:(id)recipients
{
  v4 = objc_opt_class();
  activityItemsConfiguration = self->_activityItemsConfiguration;

  return [_UIActivityItemsConfigurationActivityItemProvider metadataForKey:@"shareRecipients" expectedClass:v4 activityItemsConfiguration:activityItemsConfiguration itemAtSourceIndex:0];
}

+ (id)metadataForKey:(id)key expectedClass:(Class)class activityItemsConfiguration:(id)configuration itemAtSourceIndex:(int64_t)index
{
  keyCopy = key;
  configurationCopy = configuration;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([configurationCopy activityItemsConfigurationMetadataForItemAtIndex:index key:keyCopy], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [configurationCopy activityItemsConfigurationMetadataForKey:keyCopy];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end