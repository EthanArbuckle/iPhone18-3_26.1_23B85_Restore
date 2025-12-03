@interface SharingXPCHelper
- (SharingXPCHelper)init;
- (id)_groupMonogramImageDataForContactsSync:(id)sync style:(int64_t)style diameter:(double)diameter backgroundStyle:(unint64_t)backgroundStyle monogramsAsFlatImages:(BOOL)images;
- (id)_imageTitleData:(id)data foregroundColor:(id)color;
- (id)perspectiveDataItemForRenderingCommand:(id)command;
- (void)CGImgDataForActionPlatterWithTitle:(id)title tintColor:(id)color replyHandler:(id)handler;
- (void)CGImgDataForActivityMoreListEntryForActivityTitle:(id)title labelColor:(id)color activityCategory:(int64_t)category replyHandler:(id)handler;
- (void)CGImgDataForNearbyBadgeWithCount:(int64_t)count replyHandler:(id)handler;
- (void)CGImgDataForUIActivityTitles:(id)titles foregroundColor:(id)color replyHandler:(id)handler;
- (void)_updateTraitCollection;
- (void)groupMonogramImageDataForContactsSync:(id)sync style:(int64_t)style diameter:(double)diameter backgroundStyle:(unint64_t)backgroundStyle monogramsAsFlatImages:(BOOL)images replyHandler:(id)handler;
- (void)monogramImageDataForContactSync:(id)sync style:(int64_t)style diameter:(double)diameter monogramsAsFlatImages:(BOOL)images replyHandler:(id)handler;
- (void)monogramImagesForMultipleContactsSync:(id)sync style:(int64_t)style diameter:(double)diameter monogramAsFlatImages:(BOOL)images replyHandler:(id)handler;
- (void)perspectiveDataForActionPlatterWithTitle:(id)title tintColor:(id)color replyHandler:(id)handler;
- (void)perspectiveDataForActivityMoreListEntryForActivityTitle:(id)title labelColor:(id)color activityCategory:(int64_t)category replyHandler:(id)handler;
- (void)perspectiveDataForNearbyBadgeWithCount:(int64_t)count replyHandler:(id)handler;
- (void)perspectiveDataForUIActivityTitle:(id)title textColor:(id)color replyHandler:(id)handler;
- (void)securityScopedURLForDownloadsFolderWithReplyHandler:(id)handler;
- (void)setSessionKeepAliveTransactionIdentifier:(id)identifier;
- (void)updateShareSheetHostConfiguration:(id)configuration;
- (void)urlToCGImgDataForCallHandoffIconWithAppIconImageData:(id)data contact:(id)contact replyHandler:(id)handler;
@end

@implementation SharingXPCHelper

- (SharingXPCHelper)init
{
  v9.receiver = self;
  v9.super_class = SharingXPCHelper;
  v2 = [(SharingXPCHelper *)&v9 init];
  if (v2)
  {
    v3 = sharingXPCHelperLog();
    v2->_intervalID = os_signpost_id_generate(v3);

    if (qword_100011638 != -1)
    {
      sub_100005660();
    }

    if (byte_100011630 == 1)
    {
      v4 = [CNAvatarImageRenderer alloc];
      v5 = +[CNAvatarImageRendererSettings defaultSettings];
      v6 = [v4 initWithSettings:v5];
      imageRenderer = v2->_imageRenderer;
      v2->_imageRenderer = v6;
    }
  }

  return v2;
}

- (void)securityScopedURLForDownloadsFolderWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v4 = sharingXPCHelperLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_100005688(v4);
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)monogramImageDataForContactSync:(id)sync style:(int64_t)style diameter:(double)diameter monogramsAsFlatImages:(BOOL)images replyHandler:(id)handler
{
  syncCopy = sync;
  handlerCopy = handler;
  v12 = sharingXPCHelperLog();
  v13 = v12;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *v27 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "monogramImageDataForContactSync", &unk_100006E66, v27, 2u);
  }

  if (qword_100011638 != -1)
  {
    sub_100005660();
  }

  if (byte_100011630)
  {
    v15 = [CNAvatarImageRenderingScope scopeWithPointSize:0 scale:0 rightToLeft:diameter style:diameter, sub_1000021EC()];
    if (syncCopy)
    {
      v16 = syncCopy;
    }

    else
    {
      v16 = objc_opt_new();
    }

    v18 = v16;
    imageRenderer = self->_imageRenderer;
    v28 = v16;
    v20 = [NSArray arrayWithObjects:&v28 count:1];
    v21 = [(CNAvatarImageRenderer *)imageRenderer avatarImageForContacts:v20 scope:v15];

    if (v21)
    {
      [v21 CGImage];
      v22 = SFDataFromCGImage();
      v23 = sharingXPCHelperLog();
      v24 = v23;
      if (v22)
      {
        v25 = self->_intervalID;
        if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
        {
          *v27 = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_END, v25, "monogramImageDataForContactSync", &unk_100006E66, v27, 2u);
        }

        handlerCopy[2](handlerCopy, v22, 0);
      }

      else
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "monogramImageDataForContactSync: SFDataFromCGImage returned nil", v27, 2u);
        }

        handlerCopy[2](handlerCopy, 0, 0);
      }
    }

    else
    {
      v26 = sharingXPCHelperLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "monogramImageDataForContactSync: avatarImageForContacts returned nil", v27, 2u);
      }

      handlerCopy[2](handlerCopy, 0, 0);
    }
  }

  else
  {
    v17 = sharingXPCHelperLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "ContactsUI not available. Returning early.", v27, 2u);
    }

    handlerCopy[2](handlerCopy, 0, 0);
  }
}

- (void)groupMonogramImageDataForContactsSync:(id)sync style:(int64_t)style diameter:(double)diameter backgroundStyle:(unint64_t)backgroundStyle monogramsAsFlatImages:(BOOL)images replyHandler:(id)handler
{
  imagesCopy = images;
  syncCopy = sync;
  handlerCopy = handler;
  v27 = objc_alloc_init(NSMutableArray);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = syncCopy;
  v13 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        contacts = [v17 contacts];
        v19 = [(SharingXPCHelper *)self _groupMonogramImageDataForContactsSync:contacts style:style diameter:backgroundStyle backgroundStyle:imagesCopy monogramsAsFlatImages:diameter];

        if (v19)
        {
          v20 = [SharingXPCHelperGroupContactIcon alloc];
          contacts2 = [v17 contacts];
          iconIndex = [v17 iconIndex];
          cacheLookupKey = [v17 cacheLookupKey];
          v24 = [(SharingXPCHelperGroupContactIcon *)v20 initWithContacts:contacts2 iconData:v19 atIndex:iconIndex cacheLookupKey:cacheLookupKey];

          [v27 addObject:v24];
        }

        else
        {
          v24 = share_sheet_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138477827;
            v35 = v17;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to get group icon for suggestion %{private}@", buf, 0xCu);
          }
        }
      }

      v14 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v14);
  }

  handlerCopy[2](handlerCopy, v27, 0);
}

- (id)_groupMonogramImageDataForContactsSync:(id)sync style:(int64_t)style diameter:(double)diameter backgroundStyle:(unint64_t)backgroundStyle monogramsAsFlatImages:(BOOL)images
{
  syncCopy = sync;
  v11 = sharingXPCHelperLog();
  v12 = v11;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v25 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "groupMonogramImageDataForContactsSync", &unk_100006E66, v25, 2u);
  }

  if (qword_100011638 != -1)
  {
    sub_100005660();
  }

  if (byte_100011630)
  {
    v14 = [CNAvatarImageRenderingScope scopeWithPointSize:0 scale:0 rightToLeft:backgroundStyle style:diameter backgroundStyle:diameter, sub_1000021EC()];
    imageRenderer = self->_imageRenderer;
    if (syncCopy)
    {
      v16 = [(CNAvatarImageRenderer *)self->_imageRenderer avatarImageForContacts:syncCopy scope:v14];
      if (v16)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v22 = objc_opt_new();
      v26 = v22;
      v23 = [NSArray arrayWithObjects:&v26 count:1];
      v16 = [(CNAvatarImageRenderer *)imageRenderer avatarImageForContacts:v23 scope:v14];

      if (v16)
      {
LABEL_9:
        [v16 CGImage];
        v17 = SFDataFromCGImage();
        v18 = sharingXPCHelperLog();
        v19 = v18;
        if (v17)
        {
          v20 = self->_intervalID;
          if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
          {
            *v25 = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, v20, "groupMonogramImageDataForContactsSync", &unk_100006E66, v25, 2u);
          }

          v17 = v17;
          v21 = v17;
        }

        else
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *v25 = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "groupMonogramImageDataForContactsSync: SFDataFromCGImage returned nil", v25, 2u);
          }

          v21 = 0;
        }

LABEL_24:

        goto LABEL_25;
      }
    }

    v17 = sharingXPCHelperLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "groupMonogramImageDataForContactsSync: avatarImageForContacts returned nil", v25, 2u);
    }

    v21 = 0;
    goto LABEL_24;
  }

  v14 = sharingXPCHelperLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ContactsUI not available. Returning early.", v25, 2u);
  }

  v21 = 0;
LABEL_25:

  return v21;
}

- (void)urlToCGImgDataForCallHandoffIconWithAppIconImageData:(id)data contact:(id)contact replyHandler:(id)handler
{
  dataCopy = data;
  contactCopy = contact;
  handlerCopy = handler;
  v9 = sharingXPCHelperLog();
  v10 = v9;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "urlToCGImgDataForCallHandoffIconWithAppIconImageData", &unk_100006E66, buf, 2u);
  }

  v47 = [[CNMonogrammer alloc] initWithStyle:3 diameter:256.0];
  if (!contactCopy || ([v47 monogramForContact:contactCopy], (silhouetteMonogram = objc_claimAutoreleasedReturnValue()) == 0))
  {
    silhouetteMonogram = [v47 silhouetteMonogram];
  }

  [silhouetteMonogram size];
  v14 = v13;
  [silhouetteMonogram size];
  v16 = v15;
  v17 = silhouetteMonogram;
  v18 = dataCopy;
  v19 = v17;
  if (dataCopy)
  {
    v20 = SFCreateCGImageFromData();
    v21 = v20;
    v19 = v17;
    if (v20)
    {
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_100002D08;
      v60[3] = &unk_10000C328;
      v60[4] = v20;
      v22 = objc_retainBlock(v60);
      v23 = [UIImage imageWithCGImage:v21];
      v19 = v17;
      if (v23)
      {
        v24 = v14 + v14;
        v25 = v16 + v16;
        v26 = [[UIGraphicsImageRenderer alloc] initWithSize:{v24, v25}];
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_100002D10;
        v49[3] = &unk_10000C350;
        v27 = v17;
        v52 = 0;
        v53 = 0;
        v54 = v24;
        v55 = v25;
        v50 = v27;
        v51 = v23;
        v56 = v24 * 0.666666667;
        v57 = v24 * 0.666666667;
        v58 = v24 / 3.0;
        v59 = v25 / 3.0;
        v28 = [v26 imageWithActions:v49];
        v29 = v28;
        if (v28)
        {
          v30 = v28;
        }

        else
        {
          v30 = v27;
        }

        v19 = v30;
      }

      (v22[2])(v22);
    }
  }

  v31 = v19;
  v32 = v31;
  if (v31)
  {
    v33 = UIImagePNGRepresentation(v31);
    v34 = +[NSUUID UUID];
    uUIDString = [v34 UUIDString];
    v36 = [NSString stringWithFormat:@"%@.png", uUIDString];

    v37 = NSTemporaryDirectory();
    v38 = [NSURL fileURLWithPath:v37];

    v39 = [v38 URLByAppendingPathComponent:v36];
    v40 = [v33 writeToURL:v39 atomically:1];
    v41 = sharingXPCHelperLog();
    v42 = v41;
    if (v40)
    {
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v62 = v39;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "CallHandoff: Wrote thumbnail to: %@\n", buf, 0xCu);
      }

      v43 = sharingXPCHelperLog();
      v42 = v43;
      v44 = self->_intervalID;
      if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, OS_SIGNPOST_INTERVAL_END, v44, "urlToCGImgDataForCallHandoffIconWithAppIconImageData", &unk_100006E66, buf, 2u);
      }

      v45 = v39;
    }

    else
    {
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_1000056CC(v39, v42);
      }

      v45 = 0;
    }

    (handlerCopy)[2](handlerCopy, v45);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)monogramImagesForMultipleContactsSync:(id)sync style:(int64_t)style diameter:(double)diameter monogramAsFlatImages:(BOOL)images replyHandler:(id)handler
{
  syncCopy = sync;
  handlerCopy = handler;
  if (qword_100011638 != -1)
  {
    sub_100005744();
  }

  if (byte_100011630)
  {
    v31 = handlerCopy;
    v34 = [CNAvatarImageRenderingScope scopeWithPointSize:0 scale:0 rightToLeft:diameter style:diameter, sub_1000021EC()];
    +[NSMutableArray array];
    v33 = v32 = syncCopy;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v11 = syncCopy;
    v12 = [v11 countByEnumeratingWithState:&v36 objects:v43 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v37;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v36 + 1) + 8 * i);
          contact = [v16 contact];
          v18 = contact;
          if (contact)
          {
            imageRenderer = self->_imageRenderer;
            v42 = contact;
            v20 = [NSArray arrayWithObjects:&v42 count:1];
            v21 = [(CNAvatarImageRenderer *)imageRenderer avatarImageForContacts:v20 scope:v34];

            v22 = v21;
            if (!v22)
            {
              while (1)
              {
                v30 = sharingXPCHelperLog();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138477827;
                  v41 = v18;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "monogramImagesForMultipleContacts: Avatar image for contact %{private}@ not available", buf, 0xCu);
                }

                [NSException raise:@"CUGuardLetNoReturn" format:@"CUGuardLet with no return"];
              }
            }

            v23 = v22;
            v24 = [SharingXPCHelperContactIcon alloc];
            [v23 CGImage];
            v25 = SFDataFromCGImage();
            iconIndex = [v16 iconIndex];
            cacheLookupKey = [v16 cacheLookupKey];
            v28 = [(SharingXPCHelperContactIcon *)v24 initWithContact:v18 iconData:v25 atIndex:iconIndex cacheLookupKey:cacheLookupKey];

            [v33 addObject:v28];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v36 objects:v43 count:16];
      }

      while (v13);
    }

    handlerCopy = v31;
    (v31)[2](v31, v33);

    syncCopy = v32;
  }

  else
  {
    v29 = sharingXPCHelperLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "ContactsUI not available. Returning early.", buf, 2u);
    }

    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)CGImgDataForNearbyBadgeWithCount:(int64_t)count replyHandler:(id)handler
{
  handlerCopy = handler;
  v7 = sharingXPCHelperLog();
  v8 = v7;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "CGImgDataForNearbyBadgeWithCount", &unk_100006E66, buf, 2u);
  }

  v10 = [SFShareSheetRendering drawingCommandsForNearbyBadgeWithCount:count hostConfig:self->_uiConfig];
  v11 = [UIGraphicsImageRenderer alloc];
  [v10 contextSize];
  v12 = [v11 initWithSize:?];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100003308;
  v19[3] = &unk_10000C378;
  v20 = v10;
  v13 = v10;
  v14 = [v12 imageWithActions:v19];
  if ([v14 CGImage])
  {
    v15 = SFDataFromCGImage();
    if (v15)
    {
      v16 = sharingXPCHelperLog();
      v17 = v16;
      v18 = self->_intervalID;
      if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v18, "CGImgDataForNearbyBadgeWithCount", &unk_100006E66, buf, 2u);
      }

      handlerCopy[2](handlerCopy, v15);
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)CGImgDataForUIActivityTitles:(id)titles foregroundColor:(id)color replyHandler:(id)handler
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003424;
  v10[3] = &unk_10000C3A0;
  v10[4] = self;
  colorCopy = color;
  v7 = colorCopy;
  handlerCopy = handler;
  v9 = [titles cuFilteredArrayUsingBlock:v10];
  handlerCopy[2](handlerCopy, v9);
}

- (id)_imageTitleData:(id)data foregroundColor:(id)color
{
  colorCopy = color;
  dataCopy = data;
  v8 = sharingXPCHelperLog();
  v9 = v8;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "CGImgDataForUIActivityTitle", &unk_100006E66, buf, 2u);
  }

  v11 = [SFShareSheetRendering drawingCommandsForUIActivityTitle:dataCopy foregroundColor:colorCopy hostConfig:self->_uiConfig];

  v12 = [UIGraphicsImageRenderer alloc];
  [v11 contextSize];
  v13 = [v12 initWithSize:?];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10000377C;
  v26[3] = &unk_10000C378;
  v27 = v11;
  v14 = v11;
  v15 = [v13 imageWithActions:v26];
  v16 = sharingXPCHelperLog();
  v17 = v16;
  v18 = self->_intervalID;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v18, "CGImgDataForUIActivityTitle", &unk_100006E66, buf, 2u);
  }

  cGImage = [v15 CGImage];
  if (cGImage)
  {
    v20 = cGImage;
    v21 = SFDataFromCGImage();
    v22 = v21;
    if (v21)
    {
      v22 = v21;
      v23 = v22;
    }

    else
    {
      v24 = sharingXPCHelperLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        sub_100005758(v20, v24);
      }

      v23 = 0;
    }
  }

  else
  {
    v22 = sharingXPCHelperLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1000057D0(v15, v22);
    }

    v23 = 0;
  }

  return v23;
}

- (void)CGImgDataForActivityMoreListEntryForActivityTitle:(id)title labelColor:(id)color activityCategory:(int64_t)category replyHandler:(id)handler
{
  handlerCopy = handler;
  colorCopy = color;
  titleCopy = title;
  v13 = sharingXPCHelperLog();
  v14 = v13;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "CGImgDataForActivityMoreListEntryForActivityTitle", &unk_100006E66, buf, 2u);
  }

  v16 = [SFShareSheetRendering drawingCommandsForMoreListEntryTitle:titleCopy labelColor:colorCopy hostConfig:self->_uiConfig activityCategory:category];

  v17 = [UIGraphicsImageRenderer alloc];
  [v16 contextSize];
  v18 = [v17 initWithSize:?];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100003D0C;
  v25[3] = &unk_10000C378;
  v26 = v16;
  v19 = v16;
  v20 = [v18 imageWithActions:v25];
  if ([v20 CGImage])
  {
    v21 = SFDataFromCGImage();
    if (v21)
    {
      v22 = sharingXPCHelperLog();
      v23 = v22;
      v24 = self->_intervalID;
      if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, v24, "CGImgDataForActivityMoreListEntryForActivityTitle", &unk_100006E66, buf, 2u);
      }

      handlerCopy[2](handlerCopy, v21);
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)CGImgDataForActionPlatterWithTitle:(id)title tintColor:(id)color replyHandler:(id)handler
{
  handlerCopy = handler;
  colorCopy = color;
  titleCopy = title;
  v11 = sharingXPCHelperLog();
  v12 = v11;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "CGImgDataForActionPlatterWithTitle", &unk_100006E66, buf, 2u);
  }

  v14 = [SFShareSheetRendering drawingCommandsForActionPlatterWithTitle:titleCopy tintColor:colorCopy hostConfig:self->_uiConfig];

  v15 = [UIGraphicsImageRenderer alloc];
  [v14 contextSize];
  v16 = [v15 initWithSize:?];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100003FA0;
  v23[3] = &unk_10000C378;
  v24 = v14;
  v17 = v14;
  v18 = [v16 imageWithActions:v23];
  if ([v18 CGImage])
  {
    v19 = SFDataFromCGImage();
    if (v19)
    {
      v20 = sharingXPCHelperLog();
      v21 = v20;
      v22 = self->_intervalID;
      if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, v22, "CGImgDataForActionPlatterWithTitle", &unk_100006E66, buf, 2u);
      }

      handlerCopy[2](handlerCopy, v19);
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (id)perspectiveDataItemForRenderingCommand:(id)command
{
  v3 = sharingXPCHelperLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100005848(v3);
  }

  return 0;
}

- (void)perspectiveDataForActivityMoreListEntryForActivityTitle:(id)title labelColor:(id)color activityCategory:(int64_t)category replyHandler:(id)handler
{
  handlerCopy = handler;
  colorCopy = color;
  titleCopy = title;
  v13 = sharingXPCHelperLog();
  v14 = v13;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "perspectiveDataForActivityMoreListEntryForActivityTitle", &unk_100006E66, buf, 2u);
  }

  v16 = [SFShareSheetRendering drawingCommandsForMoreListEntryTitle:titleCopy labelColor:colorCopy hostConfig:self->_uiConfig activityCategory:category];

  v17 = [(SharingXPCHelper *)self perspectiveDataItemForRenderingCommand:v16];
  v18 = sharingXPCHelperLog();
  v19 = v18;
  v20 = self->_intervalID;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *v21 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, v20, "perspectiveDataForActivityMoreListEntryForActivityTitle", &unk_100006E66, v21, 2u);
  }

  handlerCopy[2](handlerCopy, v17);
}

- (void)perspectiveDataForNearbyBadgeWithCount:(int64_t)count replyHandler:(id)handler
{
  handlerCopy = handler;
  v7 = sharingXPCHelperLog();
  v8 = v7;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "perspectiveDataForNearbyBadgeWithCount", &unk_100006E66, buf, 2u);
  }

  v10 = [SFShareSheetRendering drawingCommandsForNearbyBadgeWithCount:count hostConfig:self->_uiConfig];
  v11 = [(SharingXPCHelper *)self perspectiveDataItemForRenderingCommand:v10];
  v12 = sharingXPCHelperLog();
  v13 = v12;
  v14 = self->_intervalID;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v14, "perspectiveDataForNearbyBadgeWithCount", &unk_100006E66, v15, 2u);
  }

  handlerCopy[2](handlerCopy, v11);
}

- (void)perspectiveDataForUIActivityTitle:(id)title textColor:(id)color replyHandler:(id)handler
{
  handlerCopy = handler;
  colorCopy = color;
  titleCopy = title;
  v11 = sharingXPCHelperLog();
  v12 = v11;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "perspectiveDataForUIActivityTitle", &unk_100006E66, buf, 2u);
  }

  v14 = [SFShareSheetRendering drawingCommandsForUIActivityTitle:titleCopy foregroundColor:colorCopy hostConfig:self->_uiConfig];

  v15 = [(SharingXPCHelper *)self perspectiveDataItemForRenderingCommand:v14];
  v16 = sharingXPCHelperLog();
  v17 = v16;
  v18 = self->_intervalID;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *v19 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v18, "perspectiveDataForUIActivityTitle", &unk_100006E66, v19, 2u);
  }

  handlerCopy[2](handlerCopy, v15);
}

- (void)perspectiveDataForActionPlatterWithTitle:(id)title tintColor:(id)color replyHandler:(id)handler
{
  handlerCopy = handler;
  colorCopy = color;
  titleCopy = title;
  v11 = sharingXPCHelperLog();
  v12 = v11;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "perspectiveDataForActionPlatterWithTitle", &unk_100006E66, buf, 2u);
  }

  v14 = [SFShareSheetRendering drawingCommandsForActionPlatterWithTitle:titleCopy tintColor:colorCopy hostConfig:self->_uiConfig];

  v15 = [(SharingXPCHelper *)self perspectiveDataItemForRenderingCommand:v14];
  v16 = sharingXPCHelperLog();
  v17 = v16;
  v18 = self->_intervalID;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *v19 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v18, "perspectiveDataForActionPlatterWithTitle", &unk_100006E66, v19, 2u);
  }

  handlerCopy[2](handlerCopy, v15);
}

- (void)updateShareSheetHostConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = sharingXPCHelperLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = configurationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "updateShareSheetHostConfiguration: %@", &v7, 0xCu);
  }

  uiConfig = self->_uiConfig;
  self->_uiConfig = configurationCopy;

  [(SharingXPCHelper *)self _updateTraitCollection];
}

- (void)setSessionKeepAliveTransactionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = sharingXPCHelperLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    transaction = self->_transaction;
    v17 = 138412802;
    selfCopy = self;
    v19 = 2112;
    v20 = identifierCopy;
    v21 = 2112;
    v22 = transaction;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ setSessionKeepAliveTransactionIdentifier: '%@',\nexisting transaction: %@", &v17, 0x20u);
  }

  v7 = sharingXPCHelperLog();
  v8 = v7;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "setSessionKeepAliveTransactionIdentifier", &unk_100006E66, &v17, 2u);
  }

  if (identifierCopy && (+[NSNull null](NSNull, "null"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [identifierCopy isEqual:v10], v10, (v11 & 1) == 0))
  {
    [identifierCopy UTF8String];
    v12 = os_transaction_create();
  }

  else
  {
    v12 = 0;
  }

  v13 = self->_transaction;
  self->_transaction = v12;

  v14 = sharingXPCHelperLog();
  v15 = v14;
  v16 = self->_intervalID;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, v16, "setSessionKeepAliveTransactionIdentifier", &unk_100006E66, &v17, 2u);
  }
}

- (void)_updateTraitCollection
{
  hostTraitCollection = [(UISUIActivityViewControllerConfiguration *)self->_uiConfig hostTraitCollection];
  v4 = +[UITraitCollection currentTraitCollection];
  v5 = [v4 isEqual:hostTraitCollection];

  if ((v5 & 1) == 0)
  {
    v6 = share_sheet_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = hostTraitCollection;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SharingXPCHelper: Setting current trait collection: %@", &v8, 0xCu);
    }

    hostTraitCollection2 = [(UISUIActivityViewControllerConfiguration *)self->_uiConfig hostTraitCollection];
    [UITraitCollection setCurrentTraitCollection:hostTraitCollection2];
  }
}

@end