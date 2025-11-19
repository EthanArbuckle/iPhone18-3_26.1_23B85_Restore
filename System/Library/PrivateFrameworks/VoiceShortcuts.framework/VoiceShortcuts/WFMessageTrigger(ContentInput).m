@interface WFMessageTrigger(ContentInput)
- (id)contentCollectionWithEventInfo:()ContentInput;
@end

@implementation WFMessageTrigger(ContentInput)

- (id)contentCollectionWithEventInfo:()ContentInput
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = getWFTriggersLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v19 = "[WFMessageTrigger(ContentInput) contentCollectionWithEventInfo:]";
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_DEBUG, "%s Creating WFMessageContentItem from eventinfo: %@", buf, 0x16u);
  }

  v5 = v3;
  if (v5 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass & 1) != 0))
  {
    v7 = [v5 objectForKey:@"NewValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      if (v8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      v17 = v10;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v7;
      if (v7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v7;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      v15 = v11;

      v16 = [v15 if_map:&__block_literal_global_260];
      v12 = [MEMORY[0x277CFC2E0] collectionWithItems:v16];

      goto LABEL_20;
    }
  }

  else
  {
    v7 = getWFTriggersLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[WFMessageTrigger(ContentInput) contentCollectionWithEventInfo:]";
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_ERROR, "%s Event info (%@) was not of type NSDictionary", buf, 0x16u);
    }
  }

  v12 = 0;
LABEL_20:

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end