@interface UISUIActivityExtensionItemDataRequest
+ (id)requestForActivity:(id)activity activityType:(id)type activitySpecificMetadata:(id)metadata;
+ (id)requestForActivity:(id)activity activityType:(id)type sourceAppIsManaged:(BOOL)managed;
- (CGSize)thumbnailSize;
- (UISUIActivityExtensionItemDataRequest)initWithCoder:(id)coder;
- (id)_initWithClassForPreparingExtensionItemData:(Class)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UISUIActivityExtensionItemDataRequest

+ (id)requestForActivity:(id)activity activityType:(id)type sourceAppIsManaged:(BOOL)managed
{
  managedCopy = managed;
  v6 = [self requestForActivity:activity activityType:type];
  [v6 setSourceAppIsManaged:managedCopy];

  return v6;
}

+ (id)requestForActivity:(id)activity activityType:(id)type activitySpecificMetadata:(id)metadata
{
  metadataCopy = metadata;
  typeCopy = type;
  activityCopy = activity;
  activityType = [activityCopy activityType];
  v12 = [activityType isEqualToString:@"com.apple.UIKit.activity.AirDrop"];

  v13 = [[self alloc] _initWithClassForPreparingExtensionItemData:{objc_msgSend(objc_opt_class(), "classForPreparingExtensionItemData")}];
  activityUUID = [activityCopy activityUUID];
  [v13 setActivityUUID:activityUUID];

  [v13 setActivityCategory:{objc_msgSend(objc_opt_class(), "activityCategory")}];
  applicationExtension = [activityCopy applicationExtension];
  identifier = [applicationExtension identifier];
  [v13 setExtensionIdentifier:identifier];

  [v13 setIsAirDropActivity:v12];
  [activityCopy _thumbnailSize];
  [v13 setThumbnailSize:?];
  [v13 setWantsThumbnailItemData:{objc_msgSend(activityCopy, "_wantsThumbnailItemData")}];
  [v13 setWantsAttachmentURLItemData:{objc_msgSend(activityCopy, "_wantsAttachmentURLItemData")}];
  [v13 setActivitySupportsPromiseURLs:{objc_msgSend(activityCopy, "_activitySupportsPromiseURLs")}];
  [v13 setActivityType:typeCopy];

  [v13 setActivitySpecificMetadata:metadataCopy];
  maxPreviews = [activityCopy maxPreviews];

  [v13 setMaxPreviews:maxPreviews];

  return v13;
}

- (id)_initWithClassForPreparingExtensionItemData:(Class)data
{
  v5.receiver = self;
  v5.super_class = UISUIActivityExtensionItemDataRequest;
  result = [(UISUIActivityExtensionItemDataRequest *)&v5 init];
  if (result)
  {
    *(result + 2) = data;
  }

  return result;
}

- (UISUIActivityExtensionItemDataRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_classNameForPreparingExtensionItemData);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = [(UISUIActivityExtensionItemDataRequest *)self _initWithClassForPreparingExtensionItemData:NSClassFromString(v7)];
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_activityUUID);
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    [(UISUIActivityExtensionItemDataRequest *)v8 setActivityUUID:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_activityType);
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
    [(UISUIActivityExtensionItemDataRequest *)v8 setActivityType:v14];

    v15 = NSStringFromSelector(sel_activityCategory);
    -[UISUIActivityExtensionItemDataRequest setActivityCategory:](v8, "setActivityCategory:", [coderCopy decodeIntegerForKey:v15]);

    v16 = objc_opt_class();
    v17 = NSStringFromSelector(sel_extensionIdentifier);
    v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];
    [(UISUIActivityExtensionItemDataRequest *)v8 setExtensionIdentifier:v18];

    v19 = NSStringFromSelector(sel_isAirDropActivity);
    -[UISUIActivityExtensionItemDataRequest setIsAirDropActivity:](v8, "setIsAirDropActivity:", [coderCopy decodeBoolForKey:v19]);

    v20 = NSStringFromSelector(sel_thumbnailSize);
    [(UISUIActivityExtensionItemDataRequest *)v8 setThumbnailSize:_UISecureDecodeCGSizeWithKeyAndDefaultSize(coderCopy, v20, *MEMORY[0x1E695F060])];

    v21 = NSStringFromSelector(sel_wantsThumbnailItemData);
    -[UISUIActivityExtensionItemDataRequest setWantsThumbnailItemData:](v8, "setWantsThumbnailItemData:", [coderCopy decodeBoolForKey:v21]);

    v22 = NSStringFromSelector(sel_wantsAttachmentURLItemData);
    -[UISUIActivityExtensionItemDataRequest setWantsAttachmentURLItemData:](v8, "setWantsAttachmentURLItemData:", [coderCopy decodeBoolForKey:v22]);

    v23 = NSStringFromSelector(sel_activitySupportsPromiseURLs);
    -[UISUIActivityExtensionItemDataRequest setActivitySupportsPromiseURLs:](v8, "setActivitySupportsPromiseURLs:", [coderCopy decodeBoolForKey:v23]);

    v24 = _UISecureStandardPropertyListClasses();
    v25 = NSStringFromSelector(sel_activitySpecificMetadata);
    v26 = [coderCopy decodeObjectOfClasses:v24 forKey:v25];
    [(UISUIActivityExtensionItemDataRequest *)v8 setActivitySpecificMetadata:v26];

    v27 = NSStringFromSelector(sel_maxPreviews);
    -[UISUIActivityExtensionItemDataRequest setMaxPreviews:](v8, "setMaxPreviews:", [coderCopy decodeIntegerForKey:v27]);

    v28 = NSStringFromSelector(sel_sourceAppIsManaged);
    -[UISUIActivityExtensionItemDataRequest setSourceAppIsManaged:](v8, "setSourceAppIsManaged:", [coderCopy decodeBoolForKey:v28]);
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v33 = NSStringFromClass([(UISUIActivityExtensionItemDataRequest *)self classForPreparingExtensionItemData]);
  v5 = NSStringFromSelector(sel_classNameForPreparingExtensionItemData);
  [coderCopy encodeObject:v33 forKey:v5];

  activityType = [(UISUIActivityExtensionItemDataRequest *)self activityType];
  v7 = NSStringFromSelector(sel_activityType);
  [coderCopy encodeObject:activityType forKey:v7];

  activityUUID = [(UISUIActivityExtensionItemDataRequest *)self activityUUID];
  v9 = NSStringFromSelector(sel_activityUUID);
  [coderCopy encodeObject:activityUUID forKey:v9];

  activityCategory = [(UISUIActivityExtensionItemDataRequest *)self activityCategory];
  v11 = NSStringFromSelector(sel_activityCategory);
  [coderCopy encodeInteger:activityCategory forKey:v11];

  extensionIdentifier = [(UISUIActivityExtensionItemDataRequest *)self extensionIdentifier];
  v13 = NSStringFromSelector(sel_isPhotoServiceAccessGranted);
  [coderCopy encodeObject:extensionIdentifier forKey:v13];

  isAirDropActivity = [(UISUIActivityExtensionItemDataRequest *)self isAirDropActivity];
  v15 = NSStringFromSelector(sel_isAirDropActivity);
  [coderCopy encodeBool:isAirDropActivity forKey:v15];

  [(UISUIActivityExtensionItemDataRequest *)self thumbnailSize];
  v17 = v16;
  v19 = v18;
  v20 = NSStringFromSelector(sel_thumbnailSize);
  _UISecureEncodeCGSizeWithKey(coderCopy, v20, v17, v19);

  wantsThumbnailItemData = [(UISUIActivityExtensionItemDataRequest *)self wantsThumbnailItemData];
  v22 = NSStringFromSelector(sel_wantsThumbnailItemData);
  [coderCopy encodeBool:wantsThumbnailItemData forKey:v22];

  wantsAttachmentURLItemData = [(UISUIActivityExtensionItemDataRequest *)self wantsAttachmentURLItemData];
  v24 = NSStringFromSelector(sel_wantsAttachmentURLItemData);
  [coderCopy encodeBool:wantsAttachmentURLItemData forKey:v24];

  activitySupportsPromiseURLs = [(UISUIActivityExtensionItemDataRequest *)self activitySupportsPromiseURLs];
  v26 = NSStringFromSelector(sel_activitySupportsPromiseURLs);
  [coderCopy encodeBool:activitySupportsPromiseURLs forKey:v26];

  activitySpecificMetadata = [(UISUIActivityExtensionItemDataRequest *)self activitySpecificMetadata];
  v28 = NSStringFromSelector(sel_activitySpecificMetadata);
  [coderCopy encodeObject:activitySpecificMetadata forKey:v28];

  maxPreviews = [(UISUIActivityExtensionItemDataRequest *)self maxPreviews];
  v30 = NSStringFromSelector(sel_maxPreviews);
  [coderCopy encodeInteger:maxPreviews forKey:v30];

  sourceAppIsManaged = [(UISUIActivityExtensionItemDataRequest *)self sourceAppIsManaged];
  v32 = NSStringFromSelector(sel_sourceAppIsManaged);
  [coderCopy encodeBool:sourceAppIsManaged forKey:v32];
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