@interface UISUIActivityExtensionItemDataRequest
+ (id)requestForActivity:(id)a3 activityType:(id)a4 activitySpecificMetadata:(id)a5;
+ (id)requestForActivity:(id)a3 activityType:(id)a4 sourceAppIsManaged:(BOOL)a5;
- (CGSize)thumbnailSize;
- (UISUIActivityExtensionItemDataRequest)initWithCoder:(id)a3;
- (id)_initWithClassForPreparingExtensionItemData:(Class)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UISUIActivityExtensionItemDataRequest

+ (id)requestForActivity:(id)a3 activityType:(id)a4 sourceAppIsManaged:(BOOL)a5
{
  v5 = a5;
  v6 = [a1 requestForActivity:a3 activityType:a4];
  [v6 setSourceAppIsManaged:v5];

  return v6;
}

+ (id)requestForActivity:(id)a3 activityType:(id)a4 activitySpecificMetadata:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 activityType];
  v12 = [v11 isEqualToString:@"com.apple.UIKit.activity.AirDrop"];

  v13 = [[a1 alloc] _initWithClassForPreparingExtensionItemData:{objc_msgSend(objc_opt_class(), "classForPreparingExtensionItemData")}];
  v14 = [v10 activityUUID];
  [v13 setActivityUUID:v14];

  [v13 setActivityCategory:{objc_msgSend(objc_opt_class(), "activityCategory")}];
  v15 = [v10 applicationExtension];
  v16 = [v15 identifier];
  [v13 setExtensionIdentifier:v16];

  [v13 setIsAirDropActivity:v12];
  [v10 _thumbnailSize];
  [v13 setThumbnailSize:?];
  [v13 setWantsThumbnailItemData:{objc_msgSend(v10, "_wantsThumbnailItemData")}];
  [v13 setWantsAttachmentURLItemData:{objc_msgSend(v10, "_wantsAttachmentURLItemData")}];
  [v13 setActivitySupportsPromiseURLs:{objc_msgSend(v10, "_activitySupportsPromiseURLs")}];
  [v13 setActivityType:v9];

  [v13 setActivitySpecificMetadata:v8];
  v17 = [v10 maxPreviews];

  [v13 setMaxPreviews:v17];

  return v13;
}

- (id)_initWithClassForPreparingExtensionItemData:(Class)a3
{
  v5.receiver = self;
  v5.super_class = UISUIActivityExtensionItemDataRequest;
  result = [(UISUIActivityExtensionItemDataRequest *)&v5 init];
  if (result)
  {
    *(result + 2) = a3;
  }

  return result;
}

- (UISUIActivityExtensionItemDataRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_classNameForPreparingExtensionItemData);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = [(UISUIActivityExtensionItemDataRequest *)self _initWithClassForPreparingExtensionItemData:NSClassFromString(v7)];
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_activityUUID);
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    [(UISUIActivityExtensionItemDataRequest *)v8 setActivityUUID:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_activityType);
    v14 = [v4 decodeObjectOfClass:v12 forKey:v13];
    [(UISUIActivityExtensionItemDataRequest *)v8 setActivityType:v14];

    v15 = NSStringFromSelector(sel_activityCategory);
    -[UISUIActivityExtensionItemDataRequest setActivityCategory:](v8, "setActivityCategory:", [v4 decodeIntegerForKey:v15]);

    v16 = objc_opt_class();
    v17 = NSStringFromSelector(sel_extensionIdentifier);
    v18 = [v4 decodeObjectOfClass:v16 forKey:v17];
    [(UISUIActivityExtensionItemDataRequest *)v8 setExtensionIdentifier:v18];

    v19 = NSStringFromSelector(sel_isAirDropActivity);
    -[UISUIActivityExtensionItemDataRequest setIsAirDropActivity:](v8, "setIsAirDropActivity:", [v4 decodeBoolForKey:v19]);

    v20 = NSStringFromSelector(sel_thumbnailSize);
    [(UISUIActivityExtensionItemDataRequest *)v8 setThumbnailSize:_UISecureDecodeCGSizeWithKeyAndDefaultSize(v4, v20, *MEMORY[0x1E695F060])];

    v21 = NSStringFromSelector(sel_wantsThumbnailItemData);
    -[UISUIActivityExtensionItemDataRequest setWantsThumbnailItemData:](v8, "setWantsThumbnailItemData:", [v4 decodeBoolForKey:v21]);

    v22 = NSStringFromSelector(sel_wantsAttachmentURLItemData);
    -[UISUIActivityExtensionItemDataRequest setWantsAttachmentURLItemData:](v8, "setWantsAttachmentURLItemData:", [v4 decodeBoolForKey:v22]);

    v23 = NSStringFromSelector(sel_activitySupportsPromiseURLs);
    -[UISUIActivityExtensionItemDataRequest setActivitySupportsPromiseURLs:](v8, "setActivitySupportsPromiseURLs:", [v4 decodeBoolForKey:v23]);

    v24 = _UISecureStandardPropertyListClasses();
    v25 = NSStringFromSelector(sel_activitySpecificMetadata);
    v26 = [v4 decodeObjectOfClasses:v24 forKey:v25];
    [(UISUIActivityExtensionItemDataRequest *)v8 setActivitySpecificMetadata:v26];

    v27 = NSStringFromSelector(sel_maxPreviews);
    -[UISUIActivityExtensionItemDataRequest setMaxPreviews:](v8, "setMaxPreviews:", [v4 decodeIntegerForKey:v27]);

    v28 = NSStringFromSelector(sel_sourceAppIsManaged);
    -[UISUIActivityExtensionItemDataRequest setSourceAppIsManaged:](v8, "setSourceAppIsManaged:", [v4 decodeBoolForKey:v28]);
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v33 = NSStringFromClass([(UISUIActivityExtensionItemDataRequest *)self classForPreparingExtensionItemData]);
  v5 = NSStringFromSelector(sel_classNameForPreparingExtensionItemData);
  [v4 encodeObject:v33 forKey:v5];

  v6 = [(UISUIActivityExtensionItemDataRequest *)self activityType];
  v7 = NSStringFromSelector(sel_activityType);
  [v4 encodeObject:v6 forKey:v7];

  v8 = [(UISUIActivityExtensionItemDataRequest *)self activityUUID];
  v9 = NSStringFromSelector(sel_activityUUID);
  [v4 encodeObject:v8 forKey:v9];

  v10 = [(UISUIActivityExtensionItemDataRequest *)self activityCategory];
  v11 = NSStringFromSelector(sel_activityCategory);
  [v4 encodeInteger:v10 forKey:v11];

  v12 = [(UISUIActivityExtensionItemDataRequest *)self extensionIdentifier];
  v13 = NSStringFromSelector(sel_isPhotoServiceAccessGranted);
  [v4 encodeObject:v12 forKey:v13];

  v14 = [(UISUIActivityExtensionItemDataRequest *)self isAirDropActivity];
  v15 = NSStringFromSelector(sel_isAirDropActivity);
  [v4 encodeBool:v14 forKey:v15];

  [(UISUIActivityExtensionItemDataRequest *)self thumbnailSize];
  v17 = v16;
  v19 = v18;
  v20 = NSStringFromSelector(sel_thumbnailSize);
  _UISecureEncodeCGSizeWithKey(v4, v20, v17, v19);

  v21 = [(UISUIActivityExtensionItemDataRequest *)self wantsThumbnailItemData];
  v22 = NSStringFromSelector(sel_wantsThumbnailItemData);
  [v4 encodeBool:v21 forKey:v22];

  v23 = [(UISUIActivityExtensionItemDataRequest *)self wantsAttachmentURLItemData];
  v24 = NSStringFromSelector(sel_wantsAttachmentURLItemData);
  [v4 encodeBool:v23 forKey:v24];

  v25 = [(UISUIActivityExtensionItemDataRequest *)self activitySupportsPromiseURLs];
  v26 = NSStringFromSelector(sel_activitySupportsPromiseURLs);
  [v4 encodeBool:v25 forKey:v26];

  v27 = [(UISUIActivityExtensionItemDataRequest *)self activitySpecificMetadata];
  v28 = NSStringFromSelector(sel_activitySpecificMetadata);
  [v4 encodeObject:v27 forKey:v28];

  v29 = [(UISUIActivityExtensionItemDataRequest *)self maxPreviews];
  v30 = NSStringFromSelector(sel_maxPreviews);
  [v4 encodeInteger:v29 forKey:v30];

  v31 = [(UISUIActivityExtensionItemDataRequest *)self sourceAppIsManaged];
  v32 = NSStringFromSelector(sel_sourceAppIsManaged);
  [v4 encodeBool:v31 forKey:v32];
}

- (CGSize)thumbnailSize
{
  width = self->_thumbnailSize.width;
  height = self->_thumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end