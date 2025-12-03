@interface MediaSocialErrorCoordinator
- (BOOL)addDialogForPost:(id)post;
- (BOOL)addDialogForPost:(id)post errorMessage:(id)message canRetry:(BOOL)retry;
- (BOOL)addDialogForUpload:(id)upload;
- (BOOL)addDialogForUploadIdentifiers:(id)identifiers;
- (MediaSocialErrorCoordinator)initWithDispatchQueue:(id)queue;
- (MediaSocialErrorDelegate)delegate;
- (NSArray)postIdentifiers;
- (NSArray)uploadIdentifiers;
- (id)_newErrorDialogWithServerMessageWithPost:(id)post erroMessage:(id)message canRetry:(BOOL)retry;
- (id)_newPluralErrorDialogWithCount:(int64_t)count formatString:(id)string;
- (id)_newPluralErrorDialogWithPostCount:(int64_t)count;
- (id)_newPluralErrorDialogWithPostCount:(int64_t)count uploadCount:(int64_t)uploadCount;
- (id)_newPluralErrorDialogWithUploadCount:(int64_t)count;
- (id)_newSingleErrorDialogWithPost:(id)post;
- (id)_newSingleErrorDialogWithUpload:(id)upload;
- (void)_sendDidFinishWithResponseFlags:(unint64_t)flags;
- (void)_showDialog:(id)dialog;
- (void)dismissAllDialogs;
@end

@implementation MediaSocialErrorCoordinator

- (MediaSocialErrorCoordinator)initWithDispatchQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = MediaSocialErrorCoordinator;
  v6 = [(MediaSocialErrorCoordinator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, queue);
  }

  return v7;
}

- (BOOL)addDialogForPost:(id)post
{
  postCopy = post;
  v5 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(postCopy, "persistentID")}];
  postIDs = self->_postIDs;
  if (!postIDs)
  {
    v7 = objc_alloc_init(NSMutableOrderedSet);
    v8 = self->_postIDs;
    self->_postIDs = v7;

    postIDs = self->_postIDs;
  }

  [(NSMutableOrderedSet *)postIDs addObject:v5];
  v9 = [(NSMutableOrderedSet *)self->_uploadIDs count];
  v10 = [(NSMutableOrderedSet *)self->_postIDs count];
  if (v9)
  {
    v11 = [(MediaSocialErrorCoordinator *)self _newPluralErrorDialogWithPostCount:v10 uploadCount:[(NSMutableOrderedSet *)self->_uploadIDs count]];
  }

  else if (v10 < 2)
  {
    v11 = [(MediaSocialErrorCoordinator *)self _newSingleErrorDialogWithPost:postCopy];
  }

  else
  {
    v11 = [(MediaSocialErrorCoordinator *)self _newPluralErrorDialogWithPostCount:[(NSMutableOrderedSet *)self->_postIDs count]];
  }

  v12 = v11;
  if (v11)
  {
    [(MediaSocialErrorCoordinator *)self _showDialog:v11];
  }

  return v12 != 0;
}

- (BOOL)addDialogForPost:(id)post errorMessage:(id)message canRetry:(BOOL)retry
{
  retryCopy = retry;
  postCopy = post;
  messageCopy = message;
  v10 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(postCopy, "persistentID")}];
  postIDs = self->_postIDs;
  if (!postIDs)
  {
    v12 = objc_alloc_init(NSMutableOrderedSet);
    v13 = self->_postIDs;
    self->_postIDs = v12;

    postIDs = self->_postIDs;
  }

  [(NSMutableOrderedSet *)postIDs addObject:v10];
  v14 = [(MediaSocialErrorCoordinator *)self _newErrorDialogWithServerMessageWithPost:postCopy erroMessage:messageCopy canRetry:retryCopy];

  if (v14)
  {
    [(MediaSocialErrorCoordinator *)self _showDialog:v14];
  }

  return v14 != 0;
}

- (BOOL)addDialogForUpload:(id)upload
{
  uploadCopy = upload;
  v5 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(uploadCopy, "persistentID")}];
  uploadIDs = self->_uploadIDs;
  if (!uploadIDs)
  {
    v7 = objc_alloc_init(NSMutableOrderedSet);
    v8 = self->_uploadIDs;
    self->_uploadIDs = v7;

    uploadIDs = self->_uploadIDs;
  }

  [(NSMutableOrderedSet *)uploadIDs addObject:v5];
  if ([(NSMutableOrderedSet *)self->_postIDs count])
  {
    v9 = [(MediaSocialErrorCoordinator *)self _newPluralErrorDialogWithPostCount:[(NSMutableOrderedSet *)self->_postIDs count] uploadCount:[(NSMutableOrderedSet *)self->_uploadIDs count]];
  }

  else if ([(NSMutableOrderedSet *)self->_uploadIDs count]< 2)
  {
    v9 = [(MediaSocialErrorCoordinator *)self _newSingleErrorDialogWithUpload:uploadCopy];
  }

  else
  {
    v9 = [(MediaSocialErrorCoordinator *)self _newPluralErrorDialogWithUploadCount:[(NSMutableOrderedSet *)self->_uploadIDs count]];
  }

  v10 = v9;
  if (v9)
  {
    [(MediaSocialErrorCoordinator *)self _showDialog:v9];
  }

  return v10 != 0;
}

- (BOOL)addDialogForUploadIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [(NSMutableOrderedSet *)self->_postIDs count];
  v6 = &v5[[(NSMutableOrderedSet *)self->_uploadIDs count]];
  if ([identifiersCopy count] + v6 < 2)
  {
    v11 = 0;
  }

  else
  {
    uploadIDs = self->_uploadIDs;
    if (!uploadIDs)
    {
      v8 = objc_alloc_init(NSMutableOrderedSet);
      v9 = self->_uploadIDs;
      self->_uploadIDs = v8;

      uploadIDs = self->_uploadIDs;
    }

    [(NSMutableOrderedSet *)uploadIDs addObjectsFromArray:identifiersCopy];
    if ([(NSMutableOrderedSet *)self->_postIDs count])
    {
      v10 = [(MediaSocialErrorCoordinator *)self _newPluralErrorDialogWithPostCount:[(NSMutableOrderedSet *)self->_postIDs count] uploadCount:[(NSMutableOrderedSet *)self->_uploadIDs count]];
    }

    else
    {
      v10 = [(MediaSocialErrorCoordinator *)self _newPluralErrorDialogWithUploadCount:[(NSMutableOrderedSet *)self->_uploadIDs count]];
    }

    v12 = v10;
    v11 = v10 != 0;
    if (v10)
    {
      [(MediaSocialErrorCoordinator *)self _showDialog:v10];
    }
  }

  return v11;
}

- (void)dismissAllDialogs
{
  if (self->_notification)
  {
    v3 = +[UserNotificationCenter defaultCenter];
    [v3 cancelUserNotification:self->_notification];

    notification = self->_notification;
    self->_notification = 0;
  }

  postIDs = self->_postIDs;
  self->_postIDs = 0;

  temporaryPostIDs = self->_temporaryPostIDs;
  self->_temporaryPostIDs = 0;

  temporaryUploadIDs = self->_temporaryUploadIDs;
  self->_temporaryUploadIDs = 0;

  uploadIDs = self->_uploadIDs;
  self->_uploadIDs = 0;
}

- (NSArray)postIdentifiers
{
  temporaryPostIDs = self->_temporaryPostIDs;
  if (temporaryPostIDs)
  {
    array = [(NSArray *)temporaryPostIDs copy];
  }

  else
  {
    array = [(NSMutableOrderedSet *)self->_postIDs array];
  }

  return array;
}

- (NSArray)uploadIdentifiers
{
  temporaryUploadIDs = self->_temporaryUploadIDs;
  if (temporaryUploadIDs)
  {
    array = [(NSArray *)temporaryUploadIDs copy];
  }

  else
  {
    array = [(NSMutableOrderedSet *)self->_uploadIDs array];
  }

  return array;
}

- (id)_newPluralErrorDialogWithCount:(int64_t)count formatString:(id)string
{
  stringCopy = string;
  v6 = [LSApplicationProxy applicationProxyForIdentifier:@"com.apple.Music"];
  if (v6)
  {
    v7 = [NSBundle bundleWithIdentifier:@"com.apple.storeservices"];
    if (v7)
    {
      v8 = objc_alloc_init(ISDialog);
      v9 = [v7 localizedStringForKey:@"MEDIA_SOCIAL_ERROR_BUTTON_TRY_LATER" value:&stru_10033CC30 table:@"MediaSocial"];
      v18[0] = v9;
      v10 = [v7 localizedStringForKey:@"MEDIA_SOCIAL_ERROR_BUTTON_DELETE" value:&stru_10033CC30 table:@"MediaSocial"];
      v18[1] = v10;
      v11 = [NSArray arrayWithObjects:v18 count:2];
      [v8 setButtonsWithTitles:v11];

      localizedShortName = [v6 localizedShortName];
      [v8 setTitle:localizedShortName];

      v13 = objc_alloc_init(NSNumberFormatter);
      [v13 setNumberStyle:1];
      v14 = [NSNumber numberWithInteger:count];
      v15 = [v13 stringFromNumber:v14];
      v16 = [NSString stringWithValidatedFormat:stringCopy validFormatSpecifiers:@"%@" error:0, v15];
      [v8 setMessage:v16];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_newPluralErrorDialogWithPostCount:(int64_t)count
{
  v5 = [NSBundle bundleWithIdentifier:@"com.apple.storeservices"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 localizedStringForKey:@"MEDIA_SOCIAL_ERROR_MESSAGE_FORMAT_PLURAL_%@" value:&stru_10033CC30 table:@"MediaSocial"];
    v8 = [(MediaSocialErrorCoordinator *)self _newPluralErrorDialogWithCount:count formatString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_newPluralErrorDialogWithPostCount:(int64_t)count uploadCount:(int64_t)uploadCount
{
  v6 = [LSApplicationProxy applicationProxyForIdentifier:@"com.apple.Music"];
  v7 = [NSBundle bundleWithIdentifier:@"com.apple.storeservices"];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = @"MEDIA_SOCIAL_COMBINED_ERROR_%@_POST_%@_UPLOADS";
    if (uploadCount == 1)
    {
      v11 = @"MEDIA_SOCIAL_COMBINED_ERROR_%@_POST_%@_UPLOAD";
    }

    v12 = @"MEDIA_SOCIAL_COMBINED_ERROR_%@_POSTS_%@_UPLOAD";
    if (uploadCount != 1)
    {
      v12 = @"MEDIA_SOCIAL_COMBINED_ERROR_%@_POSTS_%@_UPLOADS";
    }

    if (count == 1)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    v14 = [v7 localizedStringForKey:v13 value:&stru_10033CC30 table:@"MediaSocial"];
    v15 = objc_alloc_init(NSNumberFormatter);
    [v15 setNumberStyle:1];
    v16 = [NSNumber numberWithInteger:count];
    v17 = [v15 stringFromNumber:v16];

    v18 = [NSNumber numberWithInteger:uploadCount];
    v19 = [v15 stringFromNumber:v18];

    v10 = objc_alloc_init(ISDialog);
    v20 = [v8 localizedStringForKey:@"MEDIA_SOCIAL_ERROR_BUTTON_TRY_LATER" value:&stru_10033CC30 table:@"MediaSocial"];
    v26[0] = v20;
    v21 = [v8 localizedStringForKey:@"MEDIA_SOCIAL_ERROR_BUTTON_DELETE" value:&stru_10033CC30 table:@"MediaSocial"];
    v26[1] = v21;
    v22 = [NSArray arrayWithObjects:v26 count:2];
    [v10 setButtonsWithTitles:v22];

    v23 = [NSString stringWithValidatedFormat:v14 validFormatSpecifiers:@"%@%@" error:0, v17, v19];
    [v10 setMessage:v23];

    localizedShortName = [v6 localizedShortName];
    [v10 setTitle:localizedShortName];
  }

  return v10;
}

- (id)_newPluralErrorDialogWithUploadCount:(int64_t)count
{
  v5 = [NSBundle bundleWithIdentifier:@"com.apple.storeservices"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 localizedStringForKey:@"UPLOAD_ERROR_MESSAGE_FORMAT_PLURAL_%@" value:&stru_10033CC30 table:@"MediaSocial"];
    v8 = [(MediaSocialErrorCoordinator *)self _newPluralErrorDialogWithCount:count formatString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_newSingleErrorDialogWithPost:(id)post
{
  postCopy = post;
  v4 = [LSApplicationProxy applicationProxyForIdentifier:@"com.apple.Music"];
  v5 = [postCopy valueForProperty:@"message"];

  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [NSBundle bundleWithIdentifier:@"com.apple.storeservices"];
    v9 = v8;
    if (v8)
    {
      v7 = objc_alloc_init(ISDialog);
      v10 = [v9 localizedStringForKey:@"MEDIA_SOCIAL_ERROR_BUTTON_TRY_LATER" value:&stru_10033CC30 table:@"MediaSocial"];
      v24[0] = v10;
      v11 = [v9 localizedStringForKey:@"MEDIA_SOCIAL_ERROR_BUTTON_DELETE" value:&stru_10033CC30 table:@"MediaSocial"];
      v24[1] = v11;
      v12 = [NSArray arrayWithObjects:v24 count:2];
      [v7 setButtonsWithTitles:v12];

      localizedShortName = [v4 localizedShortName];
      [v7 setTitle:localizedShortName];

      v14 = [v5 length];
      if (v14 >= 0x29)
      {
        v15 = [v5 substringToIndex:40];

        v5 = v15;
      }

      v16 = +[NSCharacterSet newlineCharacterSet];
      v17 = [v5 componentsSeparatedByCharactersInSet:v16];
      v18 = [v17 componentsJoinedByString:@" "];

      v19 = +[NSCharacterSet whitespaceCharacterSet];
      v5 = [v18 stringByTrimmingCharactersInSet:v19];

      if (v14 >= 0x29)
      {
        v20 = [v5 stringByAppendingString:@"…"];

        v5 = v20;
      }

      v21 = [v9 localizedStringForKey:@"MEDIA_SOCIAL_ERROR_MESSAGE_FORMAT_%@" value:&stru_10033CC30 table:@"MediaSocial"];
      v22 = [NSString stringWithFormat:v21, v5];
      [v7 setMessage:v22];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_newSingleErrorDialogWithUpload:(id)upload
{
  uploadCopy = upload;
  v4 = [NSBundle bundleWithIdentifier:@"com.apple.storeservices"];
  if (!v4)
  {
    v8 = 0;
    goto LABEL_23;
  }

  v19[0] = @"title";
  v19[1] = @"uti";
  v18 = 0uLL;
  [uploadCopy getValues:&v18 forProperties:v19 count:2];
  if (v18 != 0)
  {
    if (v18)
    {
      v5 = [v4 localizedStringForKey:@"UPLOAD_ERROR_MESSAGE_FORMAT_%@" value:&stru_10033CC30 table:@"MediaSocial"];
      v6 = [NSString stringWithFormat:v5, v18];

      if (v6)
      {
LABEL_5:
        v7 = [LSApplicationProxy applicationProxyForIdentifier:@"com.apple.Music"];
        if (v7)
        {
          v8 = objc_alloc_init(ISDialog);
          v9 = [v4 localizedStringForKey:@"MEDIA_SOCIAL_ERROR_BUTTON_TRY_LATER" value:&stru_10033CC30 table:@"MediaSocial"];
          v17[0] = v9;
          v10 = [v4 localizedStringForKey:@"MEDIA_SOCIAL_ERROR_BUTTON_DELETE" value:&stru_10033CC30 table:@"MediaSocial"];
          v17[1] = v10;
          v11 = [NSArray arrayWithObjects:v17 count:2];
          [v8 setButtonsWithTitles:v11];

          [v8 setMessage:v6];
          localizedShortName = [v7 localizedShortName];
          [v8 setTitle:localizedShortName];
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = SSVMediaSocialAttachmentTypeForTypeIdentifier();
      v8 = 0;
      if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = @"UPLOAD_ERROR_MESSAGE_SOUND_BITE";
        }

        else
        {
          if (v13 != 4)
          {
            goto LABEL_21;
          }

          v14 = @"UPLOAD_ERROR_MESSAGE_VIDEO";
        }
      }

      else if (v13 == 1)
      {
        v14 = @"UPLOAD_ERROR_MESSAGE_AUDIO";
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_21;
        }

        v14 = @"UPLOAD_ERROR_MESSAGE_IMAGE";
      }

      v6 = [v4 localizedStringForKey:v14 value:&stru_10033CC30 table:@"MediaSocial"];
      if (v6)
      {
        goto LABEL_5;
      }
    }
  }

  v8 = 0;
LABEL_21:
  for (i = 1; i != -1; --i)
  {
  }

LABEL_23:

  return v8;
}

- (id)_newErrorDialogWithServerMessageWithPost:(id)post erroMessage:(id)message canRetry:(BOOL)retry
{
  retryCopy = retry;
  messageCopy = message;
  postCopy = post;
  v9 = [LSApplicationProxy applicationProxyForIdentifier:@"com.apple.Music"];
  v10 = [postCopy valueForProperty:@"message"];

  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = [NSBundle bundleWithIdentifier:@"com.apple.storeservices"];
    v14 = v13;
    if (v13)
    {
      v12 = objc_alloc_init(ISDialog);
      if (retryCopy)
      {
        v15 = [v14 localizedStringForKey:@"MEDIA_SOCIAL_ERROR_BUTTON_TRY_LATER" value:&stru_10033CC30 table:@"MediaSocial"];
        v30[0] = v15;
        v16 = [v14 localizedStringForKey:@"MEDIA_SOCIAL_ERROR_BUTTON_DELETE" value:&stru_10033CC30 table:@"MediaSocial"];
        v30[1] = v16;
        v17 = [NSArray arrayWithObjects:v30 count:2];
        [v12 setButtonsWithTitles:v17];
      }

      else
      {
        v15 = [v14 localizedStringForKey:@"MEDIA_SOCIAL_ERROR_BUTTON_OK" value:&stru_10033CC30 table:@"MediaSocial"];
        v29 = v15;
        v16 = [NSArray arrayWithObjects:&v29 count:1];
        [v12 setButtonsWithTitles:v16];
      }

      localizedShortName = [v9 localizedShortName];
      [v12 setTitle:localizedShortName];

      v19 = [v10 length];
      if (v19 >= 0x29)
      {
        v20 = [v10 substringToIndex:40];

        v10 = v20;
      }

      v21 = +[NSCharacterSet newlineCharacterSet];
      v22 = [v10 componentsSeparatedByCharactersInSet:v21];
      v23 = [v22 componentsJoinedByString:@" "];

      v24 = +[NSCharacterSet whitespaceCharacterSet];
      v10 = [v23 stringByTrimmingCharactersInSet:v24];

      if (v19 >= 0x29)
      {
        v25 = [v10 stringByAppendingString:@"…"];

        v10 = v25;
      }

      v26 = [v14 localizedStringForKey:@"MEDIA_SOCIAL_ERROR_MESSAGE_FORMAT_%@_DUE_TO_ERROR_%@" value:&stru_10033CC30 table:@"MediaSocial"];
      messageCopy = [NSString stringWithFormat:v26, v10, messageCopy];
      [v12 setMessage:messageCopy];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)_sendDidFinishWithResponseFlags:(unint64_t)flags
{
  array = [(NSMutableOrderedSet *)self->_postIDs array];
  temporaryPostIDs = self->_temporaryPostIDs;
  self->_temporaryPostIDs = array;

  array2 = [(NSMutableOrderedSet *)self->_uploadIDs array];
  temporaryUploadIDs = self->_temporaryUploadIDs;
  self->_temporaryUploadIDs = array2;

  postIDs = self->_postIDs;
  self->_postIDs = 0;

  uploadIDs = self->_uploadIDs;
  self->_uploadIDs = 0;

  delegate = [(MediaSocialErrorCoordinator *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate mediaSocialErrorCoordinator:self didFinishWithResult:flags != 0];
  }

  v11 = self->_temporaryPostIDs;
  self->_temporaryPostIDs = 0;

  v12 = self->_temporaryUploadIDs;
  self->_temporaryUploadIDs = 0;
}

- (void)_showDialog:(id)dialog
{
  notification = self->_notification;
  dialogCopy = dialog;
  v6 = +[UserNotificationCenter defaultCenter];
  v9 = v6;
  if (notification)
  {
    [v6 updateUserNotification:self->_notification withDialog:dialogCopy];
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001835BC;
    v10[3] = &unk_100328FC0;
    v10[4] = self;
    v7 = [v6 showDialog:dialogCopy withCompletionBlock:v10];

    v8 = self->_notification;
    self->_notification = v7;
  }
}

- (MediaSocialErrorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end