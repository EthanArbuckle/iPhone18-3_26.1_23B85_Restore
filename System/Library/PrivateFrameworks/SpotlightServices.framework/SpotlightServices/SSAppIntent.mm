@interface SSAppIntent
+ (id)sharedInstance;
- (BOOL)filterEvent:(id)event;
- (SSAppIntent)init;
- (id)_attributesUpdatesForEvent:(id)event;
- (id)_extractIdentifiersForIndex:(id)index interaction:(id)interaction;
- (id)_getInteraction:(id)interaction;
- (id)_itemUpdatesForEvent:(id)event itemIdentifiers:(id)identifiers bundleToUpdate:(id)update;
- (id)stream;
- (void)handleEvent:(id)event;
@end

@implementation SSAppIntent

- (id)stream
{
  v2 = BiomeLibrary();
  v3 = [v2 App];
  intent = [v3 Intent];

  return intent;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[SSAppIntent sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_2;

  return v3;
}

uint64_t __29__SSAppIntent_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_2 = objc_alloc_init(SSAppIntent);

  return MEMORY[0x1EEE66BB8]();
}

- (SSAppIntent)init
{
  v6.receiver = self;
  v6.super_class = SSAppIntent;
  v2 = [(SSBaseConsumer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (BOOL)filterEvent:(id)event
{
  intentClass = [event intentClass];
  v4 = [objc_opt_class() description];
  if ([intentClass isEqualToString:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = [objc_opt_class() description];
    if ([intentClass isEqualToString:v6])
    {
      v5 = 0;
    }

    else
    {
      v7 = [objc_opt_class() description];
      v8 = [intentClass isEqualToString:v7];

      v5 = v8 ^ 1;
    }
  }

  return v5;
}

- (void)handleEvent:(id)event
{
  v28 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = eventCopy;
    bundleID = [v5 bundleID];
    if (!bundleID)
    {
      goto LABEL_21;
    }

    v7 = bundleID;
    bundleID2 = [v5 bundleID];
    v9 = [bundleID2 length];

    if (!v9 || [(SSAppIntent *)self filterEvent:v5])
    {
      goto LABEL_21;
    }

    v10 = [(SSAppIntent *)self _getInteraction:v5];
    intent = [v10 intent];
    v12 = [(SSAppIntent *)self _extractIdentifiersForIndex:v5 interaction:v10];
    bundleID3 = [v5 bundleID];
    v14 = SSRedactString(bundleID3, 1);

    if (v14)
    {
      v15 = SSGeneralLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [(SSBaseConsumer *)self identifier];
        v22 = 138412802;
        v23 = identifier;
        v24 = 2112;
        v25 = v14;
        v26 = 2112;
        v27 = objc_opt_class();
        _os_log_impl(&dword_1D9F69000, v15, OS_LOG_TYPE_DEFAULT, "%@: processing event for bundle %@ with intent: %@", &v22, 0x20u);
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = SSShortcutsBundleIdentifier;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v19 = 0;
LABEL_20:

LABEL_21:
          goto LABEL_22;
        }
      }

      v17 = SSContactsBundleIdentifier;
    }

    v18 = *v17;
    v19 = v18;
    if (v18 && [(__CFString *)v18 length])
    {
      v20 = [(SSAppIntent *)self _itemUpdatesForEvent:v5 itemIdentifiers:v12 bundleToUpdate:v19];
      if ([v20 count])
      {
        [(SSBaseConsumer *)self indexItems:v20 protectionClass:@"Priority" bundleID:v19];
      }
    }

    goto LABEL_20;
  }

LABEL_22:

  v21 = *MEMORY[0x1E69E9840];
}

- (id)_attributesUpdatesForEvent:(id)event
{
  v11[2] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  absoluteTimestamp = [eventCopy absoluteTimestamp];

  if (absoluteTimestamp)
  {
    v10[0] = @"_kMDItemLastOutOfSpotlightEngagementDate";
    absoluteTimestamp2 = [eventCopy absoluteTimestamp];
    v11[0] = absoluteTimestamp2;
    v10[1] = *MEMORY[0x1E6964548];
    absoluteTimestamp3 = [eventCopy absoluteTimestamp];
    v11[1] = absoluteTimestamp3;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_itemUpdatesForEvent:(id)event itemIdentifiers:(id)identifiers bundleToUpdate:(id)update
{
  v29 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  identifiersCopy = identifiers;
  updateCopy = update;
  array = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = identifiersCopy;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = [(SSAppIntent *)self _attributesUpdatesForEvent:eventCopy];
        v18 = v17;
        if (v17 && [v17 count])
        {
          v19 = objc_alloc_init(MEMORY[0x1E6964E80]);
          [v19 setUniqueIdentifier:v16];
          [v19 setBundleID:updateCopy];
          [v19 setIsUpdate:1];
          v20 = [objc_alloc(MEMORY[0x1E6964E90]) initWithAttributes:v18];
          [v19 setAttributeSet:v20];

          [array addObject:v19];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  v21 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)_getInteraction:(id)interaction
{
  v4 = MEMORY[0x1E696ACD0];
  interactionCopy = interaction;
  v6 = objc_opt_class();
  interaction = [interactionCopy interaction];

  v13 = 0;
  v8 = [v4 unarchivedObjectOfClass:v6 fromData:interaction error:&v13];
  v9 = v13;

  if (v8)
  {
    v10 = v8;
  }

  else if (v9)
  {
    v11 = SSGeneralLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SSAppIntent *)self _getInteraction:v9, v11];
    }
  }

  return v8;
}

- (id)_extractIdentifiersForIndex:(id)index interaction:(id)interaction
{
  v43[1] = *MEMORY[0x1E69E9840];
  indexCopy = index;
  interactionCopy = interaction;
  array = [MEMORY[0x1E695DF70] array];
  intent = [interactionCopy intent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    groupIdentifier = [indexCopy groupIdentifier];
    v10 = [groupIdentifier length];

    if (!v10)
    {
      goto LABEL_31;
    }

    groupIdentifier2 = [indexCopy groupIdentifier];
    [array addObject:groupIdentifier2];
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = intent;
    v32 = v12;
    if ([interactionCopy direction] == 2)
    {
      sender = [v12 sender];

      if (sender)
      {
        sender2 = [v12 sender];
        v43[0] = sender2;
        sender = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
      }
    }

    else
    {
      sender = [v12 recipients];
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v22 = sender;
    v23 = [v22 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v38;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v38 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v37 + 1) + 8 * i);
          contactIdentifier = [v27 contactIdentifier];

          if (contactIdentifier)
          {
            contactIdentifier2 = [v27 contactIdentifier];
            [array addObject:contactIdentifier2];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v24);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      groupIdentifier2 = [intent contacts];
      v15 = [groupIdentifier2 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v34;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v34 != v17)
            {
              objc_enumerationMutation(groupIdentifier2);
            }

            v19 = *(*(&v33 + 1) + 8 * j);
            contactIdentifier3 = [v19 contactIdentifier];

            if (contactIdentifier3)
            {
              contactIdentifier4 = [v19 contactIdentifier];
              [array addObject:contactIdentifier4];
            }
          }

          v16 = [groupIdentifier2 countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v16);
      }

LABEL_4:
    }
  }

LABEL_31:

  v30 = *MEMORY[0x1E69E9840];

  return array;
}

@end