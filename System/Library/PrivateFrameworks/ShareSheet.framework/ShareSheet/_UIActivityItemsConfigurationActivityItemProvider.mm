@interface _UIActivityItemsConfigurationActivityItemProvider
+ (id)metadataForKey:(id)a3 expectedClass:(Class)a4 activityItemsConfiguration:(id)a5 itemAtSourceIndex:(int64_t)a6;
- (_UIActivityItemsConfigurationActivityItemProvider)initWithActivityItemsConfiguration:(id)a3 itemAtSourceIndex:(int64_t)a4;
- (id)_title;
- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4;
- (id)activityViewControllerLinkMetadata:(id)a3;
- (id)activityViewControllerRecipients:(id)a3;
- (id)activityViewControllerShareRecipients:(id)a3;
@end

@implementation _UIActivityItemsConfigurationActivityItemProvider

- (_UIActivityItemsConfigurationActivityItemProvider)initWithActivityItemsConfiguration:(id)a3 itemAtSourceIndex:(int64_t)a4
{
  v7 = a3;
  v8 = [_UIActivityItemsConfigurationActivityItemProvider metadataForKey:@"linkPresentationMetadata" expectedClass:getLPLinkMetadataClass_1() activityItemsConfiguration:v7 itemAtSourceIndex:a4];
  v9 = [_UIActivityItemsConfigurationActivityItemProvider metadataForKey:@"collaborationModeRestrictions" expectedClass:objc_opt_class() activityItemsConfiguration:v7 itemAtSourceIndex:a4];
  v10 = [v7 itemProvidersForActivityItemsConfiguration];
  v11 = [v10 objectAtIndexedSubscript:a4];

  v15.receiver = self;
  v15.super_class = _UIActivityItemsConfigurationActivityItemProvider;
  v12 = [(UIActivityItemProvider *)&v15 initWithPlaceholderItem:v11];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activityItemsConfiguration, a3);
    objc_storeStrong(&v13->_item, v11);
    objc_storeStrong(&v13->_linkMetadata, v8);
    objc_storeStrong(&v13->_collaborationModeRestrictions, v9);
    v13->_sourceIndex = a4;
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
    v5 = [v4 string];

    v4 = v5;
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

- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4
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
          v8 = [v6 string];

          v6 = v8;
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

    v7 = v9;

    goto LABEL_15;
  }

  v7 = [(_UIActivityItemsConfigurationActivityItemProvider *)self _title];
LABEL_15:

  return v7;
}

- (id)activityViewControllerLinkMetadata:(id)a3
{
  linkMetadata = self->_linkMetadata;
  if (linkMetadata)
  {
    v4 = linkMetadata;
  }

  else
  {
    v4 = objc_alloc_init(getLPLinkMetadataClass_1());
    v6 = [(_UIActivityItemsConfigurationActivityItemProvider *)self _title];
    [(LPLinkMetadata *)v4 setTitle:v6];

    if (objc_opt_respondsToSelector())
    {
      v7 = [(UIActivityItemsConfigurationReading *)self->_activityItemsConfiguration activityItemsConfigurationPreviewForItemAtIndex:self->_sourceIndex intent:*MEMORY[0x1E69DDA88] suggestedSize:64.0, 64.0];
      [(LPLinkMetadata *)v4 setIconProvider:v7];

      v8 = [(UIActivityItemsConfigurationReading *)self->_activityItemsConfiguration activityItemsConfigurationPreviewForItemAtIndex:self->_sourceIndex intent:*MEMORY[0x1E69DDA80] suggestedSize:512.0, 512.0];
      [(LPLinkMetadata *)v4 setImageProvider:v8];
    }

    v9 = [(LPLinkMetadata *)v4 title];
    if (v9 || ([(LPLinkMetadata *)v4 iconProvider], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v11 = [(LPLinkMetadata *)v4 imageProvider];

      if (!v11)
      {

        v4 = 0;
      }
    }
  }

  return v4;
}

- (id)activityViewControllerRecipients:(id)a3
{
  v4 = objc_opt_class();
  activityItemsConfiguration = self->_activityItemsConfiguration;

  return [_UIActivityItemsConfigurationActivityItemProvider metadataForKey:@"recipients" expectedClass:v4 activityItemsConfiguration:activityItemsConfiguration itemAtSourceIndex:0];
}

- (id)activityViewControllerShareRecipients:(id)a3
{
  v4 = objc_opt_class();
  activityItemsConfiguration = self->_activityItemsConfiguration;

  return [_UIActivityItemsConfigurationActivityItemProvider metadataForKey:@"shareRecipients" expectedClass:v4 activityItemsConfiguration:activityItemsConfiguration itemAtSourceIndex:0];
}

+ (id)metadataForKey:(id)a3 expectedClass:(Class)a4 activityItemsConfiguration:(id)a5 itemAtSourceIndex:(int64_t)a6
{
  v8 = a3;
  v9 = a5;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v9 activityItemsConfigurationMetadataForItemAtIndex:a6 key:v8], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [v9 activityItemsConfigurationMetadataForKey:v8];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end