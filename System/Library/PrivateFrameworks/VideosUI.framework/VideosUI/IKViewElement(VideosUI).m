@interface IKViewElement(VideosUI)
+ (id)_vui_updateEventDescriptorWithType:()VideosUI;
- (VUIViewElementDataSource)vui_DataSource;
- (id)vui_description;
- (id)vui_imageURL;
- (id)vui_title;
- (id)vui_updateEventDescriptors;
- (void)_parseElementIfNecessary;
@end

@implementation IKViewElement(VideosUI)

- (VUIViewElementDataSource)vui_DataSource
{
  v2 = [a1 objectForKeyedSubscript:@"ViewElementDataSourceKey"];
  if (!v2)
  {
    v3 = [a1 dataDictionary];
    v2 = [[VUIViewElementDataSource alloc] initWithDataDictionary:v3 viewElement:a1];
    if (v2)
    {
      [a1 setObject:v2 forKeyedSubscript:@"ViewElementDataSourceKey"];
    }
  }

  return v2;
}

- (id)vui_updateEventDescriptors
{
  v51 = *MEMORY[0x1E69E9840];
  v38 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1 = [a1 attributes];
  v2 = [v1 vui_stringForKey:@"vui-update-events"];
  v3 = v2;
  if (v2)
  {
    v33 = v2;
    v34 = v1;
    v4 = [v2 componentsSeparatedByString:{@", "}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (!v5)
    {
      goto LABEL_36;
    }

    v6 = v5;
    v7 = *v47;
    v36 = v4;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v47 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v46 + 1) + 8 * i) componentsSeparatedByString:@":"];
        v10 = [v9 count];
        if (v10)
        {
          v11 = v10;
          v45 = 0;
          v12 = [v9 objectAtIndex:0];
          v13 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
          v14 = [v12 stringByTrimmingCharactersInSet:v13];

          if (!VUIAppDocumentUpdateEventTypeFromStringRepresentation(v14, &v45))
          {
            goto LABEL_33;
          }

          if (v45 <= 2)
          {
            if (v11 == 1)
            {
              v15 = VUIDefaultLogObject();
              if (os_log_type_enabled(&v15->super.super, OS_LOG_TYPE_ERROR))
              {
                [(IKViewElement(VideosUI) *)&v43 vui_updateEventDescriptors];
              }

              goto LABEL_32;
            }

            v16 = [v9 objectAtIndex:1];
            v17 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
            v15 = [v16 stringByTrimmingCharactersInSet:v17];

            v18 = [MEMORY[0x1E696AB90] decimalNumberWithString:v15];
            v19 = [v18 unsignedIntegerValue];
            if (v19)
            {
              v20 = v19;
              if (v11 < 3)
              {
                v22 = 0;
              }

              else
              {
                v35 = [v9 objectAtIndex:2];
                v21 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
                v22 = [v35 stringByTrimmingCharactersInSet:v21];
              }

              v29 = [VUIAppDocumentRefreshEventDescriptor alloc];
              v30 = [(VUIAppDocumentRefreshEventDescriptor *)v29 initWithEventType:v45 delayInSeconds:v20 name:v22];

              v15 = v30;
              v4 = v36;
              goto LABEL_30;
            }

            v25 = VUIDefaultLogObject();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              [(IKViewElement(VideosUI) *)&v41 vui_updateEventDescriptors];
            }

LABEL_32:
LABEL_33:

            goto LABEL_34;
          }

          if (v45 == 17)
          {
            v23 = objc_opt_class();
            v24 = 17;
          }

          else
          {
            if (v45 == 4)
            {
              if (v11 == 1)
              {
                v15 = VUIDefaultLogObject();
                if (os_log_type_enabled(&v15->super.super, OS_LOG_TYPE_ERROR))
                {
                  [(IKViewElement(VideosUI) *)&v39 vui_updateEventDescriptors];
                }

                goto LABEL_32;
              }

              v26 = [v9 objectAtIndex:1];
              v27 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
              v28 = [v26 stringByTrimmingCharactersInSet:v27];

              v4 = v36;
              v15 = [[VUIAppDocumentPurchaseEventDescriptor alloc] initWithCanonicalID:v28];

              goto LABEL_30;
            }

            v23 = objc_opt_class();
            v24 = v45;
          }

          v15 = [v23 _vui_updateEventDescriptorWithType:v24];
LABEL_30:
          if (v15)
          {
            [v38 addObject:v15];
            goto LABEL_32;
          }

          goto LABEL_33;
        }

LABEL_34:
      }

      v6 = [v4 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (!v6)
      {
LABEL_36:

        v3 = v33;
        v1 = v34;
        break;
      }
    }
  }

  v31 = [v38 copy];

  return v31;
}

- (id)vui_title
{
  [a1 _parseElementIfNecessary];

  return objc_getAssociatedObject(a1, @"VideosTitle");
}

- (id)vui_description
{
  [a1 _parseElementIfNecessary];

  return objc_getAssociatedObject(a1, @"VideosDescription");
}

- (id)vui_imageURL
{
  [a1 _parseElementIfNecessary];

  return objc_getAssociatedObject(a1, @"VideosImageURL");
}

+ (id)_vui_updateEventDescriptorWithType:()VideosUI
{
  v3 = 0;
  switch(a3)
  {
    case 3:
      v3 = +[VUIAppDocumentUpdateEventDescriptor purchases];
      break;
    case 5:
      v3 = +[VUIAppDocumentUpdateEventDescriptor playActivity];
      break;
    case 6:
      v3 = +[VUIAppDocumentUpdateEventDescriptor settings];
      break;
    case 7:
      v3 = +[VUIAppDocumentUpdateEventDescriptor upNext];
      break;
    case 9:
      v3 = +[VUIAppDocumentUpdateEventDescriptor favorites];
      break;
    case 11:
      v3 = +[VUIAppDocumentUpdateEventDescriptor accountChanged];
      break;
    case 12:
      v3 = +[VUIAppDocumentUpdateEventDescriptor removeFromPlayHistory];
      break;
    case 13:
      v3 = +[VUIAppDocumentUpdateEventDescriptor entitlements];
      break;
    case 14:
      v3 = +[VUIAppDocumentUpdateEventDescriptor utsk];
      break;
    case 15:
      v3 = +[VUIAppDocumentUpdateEventDescriptor restrictions];
      break;
    case 16:
      v3 = +[VUIAppDocumentUpdateEventDescriptor preferredVideoFormat];
      break;
    case 17:
      v3 = +[VUIAppDocumentUpdateEventDescriptor postPlay];
      break;
    case 18:
      v3 = +[VUIAppDocumentUpdateEventDescriptor appDidBecomeActive];
      break;
    case 19:
      v3 = +[VUIAppDocumentUpdateEventDescriptor playHistoryUpdated];
      break;
    case 20:
      v3 = +[VUIAppDocumentUpdateEventDescriptor clearPlayHistory];
      break;
    case 21:
      v3 = +[VUIAppDocumentUpdateEventDescriptor appRefresh];
      break;
    case 22:
      v3 = +[VUIAppDocumentUpdateEventDescriptor locationAuthorizationChanged];
      break;
    case 23:
      v3 = +[VUIAppDocumentUpdateEventDescriptor locationRetrieved];
      break;
    default:
      break;
  }

  return v3;
}

- (void)_parseElementIfNecessary
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = objc_getAssociatedObject(a1, @"VideosHasParsedElement");
  v3 = [v2 BOOLValue];

  if ((v3 & 1) == 0)
  {
    objc_setAssociatedObject(a1, @"VideosHasParsedElement", MEMORY[0x1E695E118], 1);
    if (objc_opt_respondsToSelector())
    {
      v4 = a1;
      [a1 relatedContent];
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v32 = v46 = 0u;
      obj = [v32 children];
      v5 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (!v5)
      {
        goto LABEL_29;
      }

      v6 = v5;
      v7 = *v44;
      v8 = *MEMORY[0x1E69A86E8];
      v9 = *MEMORY[0x1E69A8798];
      v10 = *MEMORY[0x1E69A8680];
      v38 = *MEMORY[0x1E69A86C0];
      v33 = *MEMORY[0x1E69A86E8];
      v34 = *v44;
      while (1)
      {
        v11 = 0;
        v35 = v6;
        do
        {
          if (*v44 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v43 + 1) + 8 * v11);
          v13 = [v12 elementName];
          v14 = [v13 isEqualToString:v8];

          if (v14)
          {
            v37 = v11;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v15 = [v12 children];
            v16 = [v15 countByEnumeratingWithState:&v39 objects:v47 count:16];
            if (!v16)
            {
              goto LABEL_26;
            }

            v17 = v16;
            v18 = *v40;
            while (1)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v40 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v39 + 1) + 8 * i);
                v21 = [v20 elementName];
                v22 = [v21 isEqualToString:v9];

                if (v22)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    continue;
                  }

                  v23 = [v20 text];
                  v24 = [v23 string];

                  v25 = v4;
                  v26 = @"VideosTitle";
                  goto LABEL_23;
                }

                v27 = [v20 elementName];
                v28 = [v27 isEqualToString:v10];

                if (v28)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    continue;
                  }

                  v29 = [v20 text];
                  v24 = [v29 string];

                  v25 = v4;
                  v26 = @"VideosDescription";
                  goto LABEL_23;
                }

                v30 = [v20 elementName];
                v31 = [v30 isEqualToString:v38];

                if (v31)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v24 = [v20 url];
                    v25 = v4;
                    v26 = @"VideosImageURL";
LABEL_23:
                    objc_setAssociatedObject(v25, v26, v24, 1);

                    continue;
                  }
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v39 objects:v47 count:16];
              if (!v17)
              {
LABEL_26:

                v8 = v33;
                v7 = v34;
                v6 = v35;
                v11 = v37;
                break;
              }
            }
          }

          ++v11;
        }

        while (v11 != v6);
        v6 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
        if (!v6)
        {
LABEL_29:

          return;
        }
      }
    }
  }
}

@end