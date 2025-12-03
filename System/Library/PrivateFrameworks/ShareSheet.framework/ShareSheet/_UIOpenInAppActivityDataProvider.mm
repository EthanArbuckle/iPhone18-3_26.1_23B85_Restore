@interface _UIOpenInAppActivityDataProvider
+ (id)preparedActivityExtensionItemDataForActivityItemValues:(id)values extensionItemDataRequest:(id)request;
@end

@implementation _UIOpenInAppActivityDataProvider

+ (id)preparedActivityExtensionItemDataForActivityItemValues:(id)values extensionItemDataRequest:(id)request
{
  v25 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  requestCopy = request;
  v7 = objc_alloc_init(UISUIActivityExtensionItemData);
  v8 = _NSExtensionItemsFromActivityItemValuesForExtensionItemDataRequestWithProcessingBlock(valuesCopy, requestCopy, &__block_literal_global_51);
  [(UISUIActivityExtensionItemData *)v7 setExtensionItems:v8];

  v19 = requestCopy;
  activityType = [requestCopy activityType];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = valuesCopy;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = [_UIActivityItemMapping _openURLAnnotationForActivityItem:v16 activityType:activityType];
          if (v17)
          {
            [dictionary setObject:v17 forKeyedSubscript:v16];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  [(UISUIActivityExtensionItemData *)v7 setOpenURLAnnotationsByURL:dictionary];

  return v7;
}

@end