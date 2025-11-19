@interface SFUIActivityImageRequest
- (SFUIActivityImageRequest)initWithRequestID:(int)a3 activity:(id)a4 contentSizeCategory:(id)a5 userInterfaceStyle:(int64_t)a6 imageSymbolConfiguration:(id)a7 synchronous:(BOOL)a8 resultHandler:(id)a9;
- (SFUIActivityImageRequest)initWithRequestID:(int)a3 identifier:(id)a4 activityCategory:(int64_t)a5 contentSizeCategory:(id)a6 userInterfaceStyle:(int64_t)a7 iconFormat:(int)a8 synchronous:(BOOL)a9 resultHandler:(id)a10;
- (SFUIActivityImageRequest)initWithRequestID:(int)a3 uti:(id)a4 activityCategory:(int64_t)a5 contentSizeCategory:(id)a6 userInterfaceStyle:(int64_t)a7 iconFormat:(int)a8 synchronous:(BOOL)a9 resultHandler:(id)a10;
@end

@implementation SFUIActivityImageRequest

- (SFUIActivityImageRequest)initWithRequestID:(int)a3 identifier:(id)a4 activityCategory:(int64_t)a5 contentSizeCategory:(id)a6 userInterfaceStyle:(int64_t)a7 iconFormat:(int)a8 synchronous:(BOOL)a9 resultHandler:(id)a10
{
  v15 = *&a3;
  v17 = a6;
  v21.receiver = self;
  v21.super_class = SFUIActivityImageRequest;
  v18 = [(SFUIImageRequest *)&v21 initWithRequestID:v15 identifier:a4 synchronous:a9 resultHandler:a10];
  v19 = v18;
  if (v18)
  {
    v18->_activityCategory = a5;
    objc_storeStrong(&v18->_contentSizeCategory, a6);
    v19->_userInterfaceStyle = a7;
    v19->_iconFormat = a8;
  }

  return v19;
}

- (SFUIActivityImageRequest)initWithRequestID:(int)a3 uti:(id)a4 activityCategory:(int64_t)a5 contentSizeCategory:(id)a6 userInterfaceStyle:(int64_t)a7 iconFormat:(int)a8 synchronous:(BOOL)a9 resultHandler:(id)a10
{
  v14 = *&a3;
  v16 = a4;
  v17 = a6;
  v22.receiver = self;
  v22.super_class = SFUIActivityImageRequest;
  v18 = [(SFUIImageRequest *)&v22 initWithRequestID:v14 identifier:v16 synchronous:a9 resultHandler:a10];
  v19 = v18;
  if (v18)
  {
    v18->_activityCategory = a5;
    objc_storeStrong(&v18->_contentSizeCategory, a6);
    v19->_userInterfaceStyle = a7;
    v19->_iconFormat = a8;
    objc_storeStrong(&v19->_uti, a4);
  }

  return v19;
}

- (SFUIActivityImageRequest)initWithRequestID:(int)a3 activity:(id)a4 contentSizeCategory:(id)a5 userInterfaceStyle:(int64_t)a6 imageSymbolConfiguration:(id)a7 synchronous:(BOOL)a8 resultHandler:(id)a9
{
  v9 = a8;
  v13 = *&a3;
  v15 = a4;
  v23 = a5;
  v22 = a7;
  v16 = a9;
  v17 = [v15 activityUUID];
  v18 = [v17 UUIDString];
  v24.receiver = self;
  v24.super_class = SFUIActivityImageRequest;
  v19 = [(SFUIImageRequest *)&v24 initWithRequestID:v13 identifier:v18 synchronous:v9 resultHandler:v16];

  if (v19)
  {
    objc_storeStrong(&v19->_activity, a4);
    objc_storeStrong(&v19->_contentSizeCategory, a5);
    v19->_userInterfaceStyle = a6;
    objc_storeStrong(&v19->_imageSymbolConfiguration, a7);
  }

  return v19;
}

@end