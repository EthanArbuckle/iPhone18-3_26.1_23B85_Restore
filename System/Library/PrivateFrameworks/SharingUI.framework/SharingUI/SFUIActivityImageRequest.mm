@interface SFUIActivityImageRequest
- (SFUIActivityImageRequest)initWithRequestID:(int)d activity:(id)activity contentSizeCategory:(id)category userInterfaceStyle:(int64_t)style imageSymbolConfiguration:(id)configuration synchronous:(BOOL)synchronous resultHandler:(id)handler;
- (SFUIActivityImageRequest)initWithRequestID:(int)d identifier:(id)identifier activityCategory:(int64_t)category contentSizeCategory:(id)sizeCategory userInterfaceStyle:(int64_t)style iconFormat:(int)format synchronous:(BOOL)synchronous resultHandler:(id)self0;
- (SFUIActivityImageRequest)initWithRequestID:(int)d uti:(id)uti activityCategory:(int64_t)category contentSizeCategory:(id)sizeCategory userInterfaceStyle:(int64_t)style iconFormat:(int)format synchronous:(BOOL)synchronous resultHandler:(id)self0;
@end

@implementation SFUIActivityImageRequest

- (SFUIActivityImageRequest)initWithRequestID:(int)d identifier:(id)identifier activityCategory:(int64_t)category contentSizeCategory:(id)sizeCategory userInterfaceStyle:(int64_t)style iconFormat:(int)format synchronous:(BOOL)synchronous resultHandler:(id)self0
{
  v15 = *&d;
  sizeCategoryCopy = sizeCategory;
  v21.receiver = self;
  v21.super_class = SFUIActivityImageRequest;
  v18 = [(SFUIImageRequest *)&v21 initWithRequestID:v15 identifier:identifier synchronous:synchronous resultHandler:handler];
  v19 = v18;
  if (v18)
  {
    v18->_activityCategory = category;
    objc_storeStrong(&v18->_contentSizeCategory, sizeCategory);
    v19->_userInterfaceStyle = style;
    v19->_iconFormat = format;
  }

  return v19;
}

- (SFUIActivityImageRequest)initWithRequestID:(int)d uti:(id)uti activityCategory:(int64_t)category contentSizeCategory:(id)sizeCategory userInterfaceStyle:(int64_t)style iconFormat:(int)format synchronous:(BOOL)synchronous resultHandler:(id)self0
{
  v14 = *&d;
  utiCopy = uti;
  sizeCategoryCopy = sizeCategory;
  v22.receiver = self;
  v22.super_class = SFUIActivityImageRequest;
  v18 = [(SFUIImageRequest *)&v22 initWithRequestID:v14 identifier:utiCopy synchronous:synchronous resultHandler:handler];
  v19 = v18;
  if (v18)
  {
    v18->_activityCategory = category;
    objc_storeStrong(&v18->_contentSizeCategory, sizeCategory);
    v19->_userInterfaceStyle = style;
    v19->_iconFormat = format;
    objc_storeStrong(&v19->_uti, uti);
  }

  return v19;
}

- (SFUIActivityImageRequest)initWithRequestID:(int)d activity:(id)activity contentSizeCategory:(id)category userInterfaceStyle:(int64_t)style imageSymbolConfiguration:(id)configuration synchronous:(BOOL)synchronous resultHandler:(id)handler
{
  synchronousCopy = synchronous;
  v13 = *&d;
  activityCopy = activity;
  categoryCopy = category;
  configurationCopy = configuration;
  handlerCopy = handler;
  activityUUID = [activityCopy activityUUID];
  uUIDString = [activityUUID UUIDString];
  v24.receiver = self;
  v24.super_class = SFUIActivityImageRequest;
  v19 = [(SFUIImageRequest *)&v24 initWithRequestID:v13 identifier:uUIDString synchronous:synchronousCopy resultHandler:handlerCopy];

  if (v19)
  {
    objc_storeStrong(&v19->_activity, activity);
    objc_storeStrong(&v19->_contentSizeCategory, category);
    v19->_userInterfaceStyle = style;
    objc_storeStrong(&v19->_imageSymbolConfiguration, configuration);
  }

  return v19;
}

@end