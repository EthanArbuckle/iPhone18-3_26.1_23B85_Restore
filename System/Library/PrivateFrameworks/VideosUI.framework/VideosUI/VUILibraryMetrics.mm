@interface VUILibraryMetrics
+ (id)getMediaEntityContentType:(id)type;
+ (id)getMediaItemContentType:(id)type;
+ (id)pageStringForLibraryCategoryType:(int64_t)type;
+ (id)pageStringForLibraryShelfType:(int64_t)type;
+ (void)recordClickOnMediaEntity:(id)entity;
+ (void)recordPageEventWithPageId:(id)id andPageType:(id)type;
+ (void)recordPlayOfMediaEntity:(id)entity isLaunchingExtras:(BOOL)extras;
+ (void)recordPlayOfMediaItem:(id)item;
+ (void)recordPlayOfTVPMediaItem:(id)item;
@end

@implementation VUILibraryMetrics

+ (void)recordPlayOfMediaEntity:(id)entity isLaunchingExtras:(BOOL)extras
{
  v11[3] = *MEMORY[0x1E69E9840];
  v5 = VUIMetricsMediaActionTypePlay;
  if (extras)
  {
    v5 = VUIMetricsMediaActionTypeExtras;
  }

  v6 = *v5;
  if (entity)
  {
    v7 = [VUILibraryMetrics getMediaEntityContentType:entity];
  }

  else
  {
    v7 = @"library";
  }

  v10[0] = @"contentType";
  v10[1] = @"actionType";
  v11[0] = v7;
  v11[1] = v6;
  v10[2] = @"targetId";
  v11[2] = @"libraryItem";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v9 = +[VUIMetricsController sharedInstance];
  [v9 recordMedia:v8];
}

+ (void)recordPlayOfMediaItem:(id)item
{
  v9[3] = *MEMORY[0x1E69E9840];
  v4 = @"play";
  if (item)
  {
    v5 = [VUILibraryMetrics getMediaItemContentType:item];
  }

  else
  {
    v5 = @"library";
  }

  v8[0] = @"contentType";
  v8[1] = @"actionType";
  v9[0] = v5;
  v9[1] = v4;
  v8[2] = @"targetId";
  v9[2] = @"libraryItem";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
  v7 = +[VUIMetricsController sharedInstance];
  [v7 recordMedia:v6];
}

+ (void)recordPlayOfTVPMediaItem:(id)item
{
  v12[3] = *MEMORY[0x1E69E9840];
  v4 = @"play";
  if (item)
  {
    v5 = [item mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
    if ([v5 isEqualToString:*MEMORY[0x1E69D5EB8]])
    {
      v6 = +[VUIMediaEntityType movie];
    }

    else if ([v5 isEqualToString:*MEMORY[0x1E69D5EC8]])
    {
      v6 = +[VUIMediaEntityType movieRental];
    }

    else if ([v5 isEqualToString:*MEMORY[0x1E69D5ED0]])
    {
      v6 = +[VUIMediaEntityType episode];
    }

    else
    {
      if (![v5 isEqualToString:*MEMORY[0x1E69D5EB0]])
      {
        stringDescription = @"library";
        goto LABEL_12;
      }

      v6 = +[VUIMediaEntityType homeVideo];
    }

    v8 = v6;
    stringDescription = [v6 stringDescription];

LABEL_12:
    goto LABEL_13;
  }

  stringDescription = @"library";
LABEL_13:
  v11[0] = @"contentType";
  v11[1] = @"actionType";
  v12[0] = stringDescription;
  v12[1] = v4;
  v11[2] = @"targetId";
  v12[2] = @"libraryItem";
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v10 = +[VUIMetricsController sharedInstance];
  [v10 recordMedia:v9];
}

+ (void)recordClickOnMediaEntity:(id)entity
{
  v3 = MEMORY[0x1E695DF90];
  entityCopy = entity;
  v7 = objc_alloc_init(v3);
  [v7 setValue:@"lockup" forKey:@"targetType"];
  [v7 setValue:@"navigate" forKey:@"actionType"];
  v5 = [VUILibraryMetrics getMediaEntityContentType:entityCopy];

  [v7 setValue:v5 forKey:@"contentType"];
  v6 = +[VUIMetricsController sharedInstance];
  [v6 recordClick:v7];
}

+ (void)recordPageEventWithPageId:(id)id andPageType:(id)type
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = @"pageContext";
  v12[0] = @"library";
  v5 = MEMORY[0x1E695DF20];
  typeCopy = type;
  idCopy = id;
  v8 = [v5 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [VUIMetricsPageEventData createWithPageId:idCopy andPageType:typeCopy andEventData:v8];

  v10 = +[VUIMetricsController sharedInstance];
  [v10 recordPage:v9];
}

+ (id)getMediaItemContentType:(id)type
{
  vui_mediaEntityType = [type vui_mediaEntityType];
  stringDescription = [vui_mediaEntityType stringDescription];

  return stringDescription;
}

+ (id)getMediaEntityContentType:(id)type
{
  type = [type type];
  stringDescription = [type stringDescription];

  return stringDescription;
}

+ (id)pageStringForLibraryShelfType:(int64_t)type
{
  if (type > 3)
  {
    return &stru_1F5DB25C0;
  }

  else
  {
    return off_1E8735430[type];
  }
}

+ (id)pageStringForLibraryCategoryType:(int64_t)type
{
  if (type > 0xA)
  {
    return &stru_1F5DB25C0;
  }

  else
  {
    return off_1E8735450[type];
  }
}

@end