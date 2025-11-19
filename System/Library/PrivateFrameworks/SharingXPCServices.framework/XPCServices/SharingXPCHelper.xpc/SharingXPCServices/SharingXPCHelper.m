@interface SharingXPCHelper
- (SharingXPCHelper)init;
- (id)_groupMonogramImageDataForContactsSync:(id)a3 style:(int64_t)a4 diameter:(double)a5 backgroundStyle:(unint64_t)a6 monogramsAsFlatImages:(BOOL)a7;
- (id)_imageTitleData:(id)a3 foregroundColor:(id)a4;
- (id)perspectiveDataItemForRenderingCommand:(id)a3;
- (void)CGImgDataForActionPlatterWithTitle:(id)a3 tintColor:(id)a4 replyHandler:(id)a5;
- (void)CGImgDataForActivityMoreListEntryForActivityTitle:(id)a3 labelColor:(id)a4 activityCategory:(int64_t)a5 replyHandler:(id)a6;
- (void)CGImgDataForNearbyBadgeWithCount:(int64_t)a3 replyHandler:(id)a4;
- (void)CGImgDataForUIActivityTitles:(id)a3 foregroundColor:(id)a4 replyHandler:(id)a5;
- (void)_updateTraitCollection;
- (void)groupMonogramImageDataForContactsSync:(id)a3 style:(int64_t)a4 diameter:(double)a5 backgroundStyle:(unint64_t)a6 monogramsAsFlatImages:(BOOL)a7 replyHandler:(id)a8;
- (void)monogramImageDataForContactSync:(id)a3 style:(int64_t)a4 diameter:(double)a5 monogramsAsFlatImages:(BOOL)a6 replyHandler:(id)a7;
- (void)monogramImagesForMultipleContactsSync:(id)a3 style:(int64_t)a4 diameter:(double)a5 monogramAsFlatImages:(BOOL)a6 replyHandler:(id)a7;
- (void)perspectiveDataForActionPlatterWithTitle:(id)a3 tintColor:(id)a4 replyHandler:(id)a5;
- (void)perspectiveDataForActivityMoreListEntryForActivityTitle:(id)a3 labelColor:(id)a4 activityCategory:(int64_t)a5 replyHandler:(id)a6;
- (void)perspectiveDataForNearbyBadgeWithCount:(int64_t)a3 replyHandler:(id)a4;
- (void)perspectiveDataForUIActivityTitle:(id)a3 textColor:(id)a4 replyHandler:(id)a5;
- (void)securityScopedURLForDownloadsFolderWithReplyHandler:(id)a3;
- (void)setSessionKeepAliveTransactionIdentifier:(id)a3;
- (void)updateShareSheetHostConfiguration:(id)a3;
- (void)urlToCGImgDataForCallHandoffIconWithAppIconImageData:(id)a3 contact:(id)a4 replyHandler:(id)a5;
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

- (void)securityScopedURLForDownloadsFolderWithReplyHandler:(id)a3
{
  v3 = a3;
  v4 = sharingXPCHelperLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_100005688(v4);
  }

  v3[2](v3, 0);
}

- (void)monogramImageDataForContactSync:(id)a3 style:(int64_t)a4 diameter:(double)a5 monogramsAsFlatImages:(BOOL)a6 replyHandler:(id)a7
{
  v10 = a3;
  v11 = a7;
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
    v15 = [CNAvatarImageRenderingScope scopeWithPointSize:0 scale:0 rightToLeft:a5 style:a5, sub_1000021EC()];
    if (v10)
    {
      v16 = v10;
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

        v11[2](v11, v22, 0);
      }

      else
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "monogramImageDataForContactSync: SFDataFromCGImage returned nil", v27, 2u);
        }

        v11[2](v11, 0, 0);
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

      v11[2](v11, 0, 0);
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

    v11[2](v11, 0, 0);
  }
}

- (void)groupMonogramImageDataForContactsSync:(id)a3 style:(int64_t)a4 diameter:(double)a5 backgroundStyle:(unint64_t)a6 monogramsAsFlatImages:(BOOL)a7 replyHandler:(id)a8
{
  v29 = a7;
  v12 = a3;
  v25 = a8;
  v27 = objc_alloc_init(NSMutableArray);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v12;
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
        v18 = [v17 contacts];
        v19 = [(SharingXPCHelper *)self _groupMonogramImageDataForContactsSync:v18 style:a4 diameter:a6 backgroundStyle:v29 monogramsAsFlatImages:a5];

        if (v19)
        {
          v20 = [SharingXPCHelperGroupContactIcon alloc];
          v21 = [v17 contacts];
          v22 = [v17 iconIndex];
          v23 = [v17 cacheLookupKey];
          v24 = [(SharingXPCHelperGroupContactIcon *)v20 initWithContacts:v21 iconData:v19 atIndex:v22 cacheLookupKey:v23];

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

  v25[2](v25, v27, 0);
}

- (id)_groupMonogramImageDataForContactsSync:(id)a3 style:(int64_t)a4 diameter:(double)a5 backgroundStyle:(unint64_t)a6 monogramsAsFlatImages:(BOOL)a7
{
  v10 = a3;
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
    v14 = [CNAvatarImageRenderingScope scopeWithPointSize:0 scale:0 rightToLeft:a6 style:a5 backgroundStyle:a5, sub_1000021EC()];
    imageRenderer = self->_imageRenderer;
    if (v10)
    {
      v16 = [(CNAvatarImageRenderer *)self->_imageRenderer avatarImageForContacts:v10 scope:v14];
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

- (void)urlToCGImgDataForCallHandoffIconWithAppIconImageData:(id)a3 contact:(id)a4 replyHandler:(id)a5
{
  v7 = a3;
  v48 = a4;
  v8 = a5;
  v9 = sharingXPCHelperLog();
  v10 = v9;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "urlToCGImgDataForCallHandoffIconWithAppIconImageData", &unk_100006E66, buf, 2u);
  }

  v47 = [[CNMonogrammer alloc] initWithStyle:3 diameter:256.0];
  if (!v48 || ([v47 monogramForContact:v48], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12 = [v47 silhouetteMonogram];
  }

  [v12 size];
  v14 = v13;
  [v12 size];
  v16 = v15;
  v17 = v12;
  v18 = v7;
  v19 = v17;
  if (v7)
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
    v35 = [v34 UUIDString];
    v36 = [NSString stringWithFormat:@"%@.png", v35];

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

    (v8)[2](v8, v45);
  }

  else
  {
    v8[2](v8, 0);
  }
}

- (void)monogramImagesForMultipleContactsSync:(id)a3 style:(int64_t)a4 diameter:(double)a5 monogramAsFlatImages:(BOOL)a6 replyHandler:(id)a7
{
  v9 = a3;
  v10 = a7;
  if (qword_100011638 != -1)
  {
    sub_100005744();
  }

  if (byte_100011630)
  {
    v31 = v10;
    v34 = [CNAvatarImageRenderingScope scopeWithPointSize:0 scale:0 rightToLeft:a5 style:a5, sub_1000021EC()];
    +[NSMutableArray array];
    v33 = v32 = v9;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v11 = v9;
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
          v17 = [v16 contact];
          v18 = v17;
          if (v17)
          {
            imageRenderer = self->_imageRenderer;
            v42 = v17;
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
            v26 = [v16 iconIndex];
            v27 = [v16 cacheLookupKey];
            v28 = [(SharingXPCHelperContactIcon *)v24 initWithContact:v18 iconData:v25 atIndex:v26 cacheLookupKey:v27];

            [v33 addObject:v28];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v36 objects:v43 count:16];
      }

      while (v13);
    }

    v10 = v31;
    (v31)[2](v31, v33);

    v9 = v32;
  }

  else
  {
    v29 = sharingXPCHelperLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "ContactsUI not available. Returning early.", buf, 2u);
    }

    v10[2](v10, 0);
  }
}

- (void)CGImgDataForNearbyBadgeWithCount:(int64_t)a3 replyHandler:(id)a4
{
  v6 = a4;
  v7 = sharingXPCHelperLog();
  v8 = v7;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "CGImgDataForNearbyBadgeWithCount", &unk_100006E66, buf, 2u);
  }

  v10 = [SFShareSheetRendering drawingCommandsForNearbyBadgeWithCount:a3 hostConfig:self->_uiConfig];
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

      v6[2](v6, v15);
    }

    else
    {
      v6[2](v6, 0);
    }
  }

  else
  {
    v6[2](v6, 0);
  }
}

- (void)CGImgDataForUIActivityTitles:(id)a3 foregroundColor:(id)a4 replyHandler:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003424;
  v10[3] = &unk_10000C3A0;
  v10[4] = self;
  v11 = a4;
  v7 = v11;
  v8 = a5;
  v9 = [a3 cuFilteredArrayUsingBlock:v10];
  v8[2](v8, v9);
}

- (id)_imageTitleData:(id)a3 foregroundColor:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sharingXPCHelperLog();
  v9 = v8;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "CGImgDataForUIActivityTitle", &unk_100006E66, buf, 2u);
  }

  v11 = [SFShareSheetRendering drawingCommandsForUIActivityTitle:v7 foregroundColor:v6 hostConfig:self->_uiConfig];

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

  v19 = [v15 CGImage];
  if (v19)
  {
    v20 = v19;
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

- (void)CGImgDataForActivityMoreListEntryForActivityTitle:(id)a3 labelColor:(id)a4 activityCategory:(int64_t)a5 replyHandler:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = sharingXPCHelperLog();
  v14 = v13;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "CGImgDataForActivityMoreListEntryForActivityTitle", &unk_100006E66, buf, 2u);
  }

  v16 = [SFShareSheetRendering drawingCommandsForMoreListEntryTitle:v12 labelColor:v11 hostConfig:self->_uiConfig activityCategory:a5];

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

      v10[2](v10, v21);
    }

    else
    {
      v10[2](v10, 0);
    }
  }

  else
  {
    v10[2](v10, 0);
  }
}

- (void)CGImgDataForActionPlatterWithTitle:(id)a3 tintColor:(id)a4 replyHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = sharingXPCHelperLog();
  v12 = v11;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "CGImgDataForActionPlatterWithTitle", &unk_100006E66, buf, 2u);
  }

  v14 = [SFShareSheetRendering drawingCommandsForActionPlatterWithTitle:v10 tintColor:v9 hostConfig:self->_uiConfig];

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

      v8[2](v8, v19);
    }

    else
    {
      v8[2](v8, 0);
    }
  }

  else
  {
    v8[2](v8, 0);
  }
}

- (id)perspectiveDataItemForRenderingCommand:(id)a3
{
  v3 = sharingXPCHelperLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100005848(v3);
  }

  return 0;
}

- (void)perspectiveDataForActivityMoreListEntryForActivityTitle:(id)a3 labelColor:(id)a4 activityCategory:(int64_t)a5 replyHandler:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = sharingXPCHelperLog();
  v14 = v13;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "perspectiveDataForActivityMoreListEntryForActivityTitle", &unk_100006E66, buf, 2u);
  }

  v16 = [SFShareSheetRendering drawingCommandsForMoreListEntryTitle:v12 labelColor:v11 hostConfig:self->_uiConfig activityCategory:a5];

  v17 = [(SharingXPCHelper *)self perspectiveDataItemForRenderingCommand:v16];
  v18 = sharingXPCHelperLog();
  v19 = v18;
  v20 = self->_intervalID;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *v21 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, v20, "perspectiveDataForActivityMoreListEntryForActivityTitle", &unk_100006E66, v21, 2u);
  }

  v10[2](v10, v17);
}

- (void)perspectiveDataForNearbyBadgeWithCount:(int64_t)a3 replyHandler:(id)a4
{
  v6 = a4;
  v7 = sharingXPCHelperLog();
  v8 = v7;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "perspectiveDataForNearbyBadgeWithCount", &unk_100006E66, buf, 2u);
  }

  v10 = [SFShareSheetRendering drawingCommandsForNearbyBadgeWithCount:a3 hostConfig:self->_uiConfig];
  v11 = [(SharingXPCHelper *)self perspectiveDataItemForRenderingCommand:v10];
  v12 = sharingXPCHelperLog();
  v13 = v12;
  v14 = self->_intervalID;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v14, "perspectiveDataForNearbyBadgeWithCount", &unk_100006E66, v15, 2u);
  }

  v6[2](v6, v11);
}

- (void)perspectiveDataForUIActivityTitle:(id)a3 textColor:(id)a4 replyHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = sharingXPCHelperLog();
  v12 = v11;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "perspectiveDataForUIActivityTitle", &unk_100006E66, buf, 2u);
  }

  v14 = [SFShareSheetRendering drawingCommandsForUIActivityTitle:v10 foregroundColor:v9 hostConfig:self->_uiConfig];

  v15 = [(SharingXPCHelper *)self perspectiveDataItemForRenderingCommand:v14];
  v16 = sharingXPCHelperLog();
  v17 = v16;
  v18 = self->_intervalID;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *v19 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v18, "perspectiveDataForUIActivityTitle", &unk_100006E66, v19, 2u);
  }

  v8[2](v8, v15);
}

- (void)perspectiveDataForActionPlatterWithTitle:(id)a3 tintColor:(id)a4 replyHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = sharingXPCHelperLog();
  v12 = v11;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "perspectiveDataForActionPlatterWithTitle", &unk_100006E66, buf, 2u);
  }

  v14 = [SFShareSheetRendering drawingCommandsForActionPlatterWithTitle:v10 tintColor:v9 hostConfig:self->_uiConfig];

  v15 = [(SharingXPCHelper *)self perspectiveDataItemForRenderingCommand:v14];
  v16 = sharingXPCHelperLog();
  v17 = v16;
  v18 = self->_intervalID;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *v19 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v18, "perspectiveDataForActionPlatterWithTitle", &unk_100006E66, v19, 2u);
  }

  v8[2](v8, v15);
}

- (void)updateShareSheetHostConfiguration:(id)a3
{
  v4 = a3;
  v5 = sharingXPCHelperLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "updateShareSheetHostConfiguration: %@", &v7, 0xCu);
  }

  uiConfig = self->_uiConfig;
  self->_uiConfig = v4;

  [(SharingXPCHelper *)self _updateTraitCollection];
}

- (void)setSessionKeepAliveTransactionIdentifier:(id)a3
{
  v4 = a3;
  v5 = sharingXPCHelperLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    transaction = self->_transaction;
    v17 = 138412802;
    v18 = self;
    v19 = 2112;
    v20 = v4;
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

  if (v4 && (+[NSNull null](NSNull, "null"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v4 isEqual:v10], v10, (v11 & 1) == 0))
  {
    [v4 UTF8String];
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
  v3 = [(UISUIActivityViewControllerConfiguration *)self->_uiConfig hostTraitCollection];
  v4 = +[UITraitCollection currentTraitCollection];
  v5 = [v4 isEqual:v3];

  if ((v5 & 1) == 0)
  {
    v6 = share_sheet_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SharingXPCHelper: Setting current trait collection: %@", &v8, 0xCu);
    }

    v7 = [(UISUIActivityViewControllerConfiguration *)self->_uiConfig hostTraitCollection];
    [UITraitCollection setCurrentTraitCollection:v7];
  }
}

@end