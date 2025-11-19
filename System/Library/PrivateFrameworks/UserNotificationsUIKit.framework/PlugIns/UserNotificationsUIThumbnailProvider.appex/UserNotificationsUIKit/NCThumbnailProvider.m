@interface NCThumbnailProvider
+ (void)initialize;
- (void)provideThumbnailForFileRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation NCThumbnailProvider

+ (void)initialize
{
  if (qword_100008180 != -1)
  {
    sub_100001834();
  }
}

- (void)provideThumbnailForFileRequest:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v59 = _os_activity_create(&_mh_execute_header, "com.apple.UserNotificationsUI.ThumbnailProvider.provideThumbnail", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v59, &state);
  [v5 maximumSize];
  v8 = v7;
  v10 = v9;
  [v5 scale];
  v12 = v11;
  v13 = [v5 fileURL];
  inTag = [v13 pathExtension];
  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, inTag, 0);
  v14 = UNNotificationAttachmentFamilyFromTypeIdentifier();
  v15 = [v5 generationData];
  dict = [v15 bs_safeDictionaryForKey:UNNotificationAttachmentOptionsThumbnailClippingRectKey];
  size = CGRectZero.size;
  origin = CGRectZero.origin;
  rect.origin = CGRectZero.origin;
  rect.size = size;
  if (!CGRectMakeWithDictionaryRepresentation(dict, &rect))
  {
    rect.origin = origin;
    rect.size = size;
  }

  if (CGRectIsEmpty(rect))
  {
    rect.origin.x = 0.0;
    rect.origin.y = 0.0;
    __asm { FMOV            V0.2D, #1.0 }

    rect.size = _Q0;
  }

  v21 = NCLogThumbnailProvider;
  if (os_log_type_enabled(NCLogThumbnailProvider, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    v23 = UNNotificationAttachmentFamilyToString();
    *buf = 138544130;
    *&buf[4] = v13;
    *&buf[12] = 2114;
    *&buf[14] = v23;
    *&buf[22] = 2114;
    v67 = PreferredIdentifierForTag;
    v68 = 2114;
    v69 = v15;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Will generate thumbnail for attachment: fileURL=%{public}@ family=%{public}@, typeIdentifier=%{public}@, generatorOptions=%{public}@", buf, 0x2Au);
  }

  v24 = v8 * v12;
  v25 = v10 * v12;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v67 = 0;
  if (v14 == 3)
  {
    v36 = [v15 bs_safeDictionaryForKey:UNNotificationAttachmentOptionsThumbnailTimeKey];
    x = rect.origin.x;
    y = rect.origin.y;
    width = rect.size.width;
    height = rect.size.height;
    v56 = v13;
    v31 = v36;
    context = objc_autoreleasePoolPush();
    v73 = AVURLAssetReferenceRestrictionsKey;
    v41 = [NSNumber numberWithUnsignedInteger:0xFFFFLL];
    v74 = v41;
    v58 = [NSDictionary dictionaryWithObjects:&v74 forKeys:&v73 count:1];

    v42 = [[AVURLAsset alloc] initWithURL:v56 options:v58];
    v43 = [v42 tracksWithMediaType:AVMediaTypeVideo];
    v44 = [v43 firstObject];

    if (v44)
    {
      v45 = [AVAssetImageGenerator assetImageGeneratorWithAsset:v42];
      memset(&v72, 0, sizeof(v72));
      if (v31)
      {
        CMTimeMakeFromDictionary(&v72, v31);
      }

      else
      {
        v72 = kCMTimeInvalid;
      }

      if ((v72.flags & 1) == 0)
      {
        if (v42)
        {
          [v42 duration];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        CMTimeMultiplyByFloat64(&v71, &time, 0.5);
        v72 = v71;
      }

      v71 = v72;
      v51 = [v45 copyCGImageAtTime:&v71 actualTime:0 error:0];
      v52 = v51;
      if (v51)
      {
        v46 = sub_1000016A4(v51, x, y, width, height, v24, v25);
        CFRelease(v52);
      }

      else
      {
        v46 = 0;
      }
    }

    else
    {
      v46 = 0;
    }

    objc_autoreleasePoolPop(context);
  }

  else
  {
    if (v14 != 2)
    {
      goto LABEL_35;
    }

    v26 = [v15 bs_safeNumberForKey:UNNotificationAttachmentOptionsThumbnailTimeKey];
    v27 = rect.origin.x;
    v28 = rect.origin.y;
    v29 = rect.size.width;
    v30 = rect.size.height;
    v31 = v26;
    v74 = kCGImageSourceShouldCache;
    time.value = kCFBooleanFalse;
    v32 = v13;
    v33 = [NSDictionary dictionaryWithObjects:&time forKeys:&v74 count:1];
    v34 = CGImageSourceCreateWithURL(v32, v33);

    if (v34)
    {
      if (v31)
      {
        v35 = [(__CFDictionary *)v31 unsignedIntegerValue];
      }

      else
      {
        v35 = vcvtd_n_f64_u64(CGImageSourceGetCount(v34), 1uLL);
      }

      v71.value = kCGImageSourceThumbnailMaxPixelSize;
      v47 = [NSNumber numberWithDouble:v24];
      v72.value = v47;
      *&v72.timescale = kCFBooleanTrue;
      *&v71.timescale = kCGImageSourceCreateThumbnailFromImageAlways;
      v71.epoch = kCGImageSourceCreateThumbnailWithTransform;
      v72.epoch = kCFBooleanTrue;
      v48 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:3];

      ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v34, v35, v48);
      v50 = ThumbnailAtIndex;
      if (ThumbnailAtIndex)
      {
        v46 = sub_1000016A4(ThumbnailAtIndex, v27, v28, v29, v30, v24, v25);
        CFRelease(v50);
      }

      else
      {
        v46 = 0;
      }

      CFRelease(v34);
    }

    else
    {
      v46 = 0;
    }
  }

  *(*&buf[8] + 24) = v46;

LABEL_35:
  if (*(*&buf[8] + 24))
  {
    [v5 maximumSize];
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_10000164C;
    v63[3] = &unk_100004290;
    *&v63[5] = v24;
    *&v63[6] = v25;
    v63[4] = buf;
    v53 = [QLThumbnailReply replyWithContextSize:v63 drawingBlock:?];
    v6[2](v6, v53, 0);
  }

  else
  {
    v6[2](v6, 0, 0);
  }

  os_activity_scope_leave(&state);
  _Block_object_dispose(buf, 8);
}

@end