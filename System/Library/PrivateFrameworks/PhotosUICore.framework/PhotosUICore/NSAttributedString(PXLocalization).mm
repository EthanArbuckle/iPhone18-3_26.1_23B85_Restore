@interface NSAttributedString(PXLocalization)
+ (id)px_localizedAttributedStringForInvitationResponseReceivedWithInviteeFullName:()PXLocalization sharedAlbumName:accepted:defaultTextAttributes:posterTextAttributes:albumTextAttributes:;
+ (id)px_localizedAttributedStringForInvitationResponseReceivedWithInviteeFullName:()PXLocalization streamName:accepted:defaultTextAttributes:emphasizedTextAttributes:streamNameAttributes:;
+ (id)px_localizedAttributedStringForLikesFromUser:()PXLocalization otherPeopleFullNames:isVideo:defaultTextAttributes:emphasizedTextAttributes:;
+ (id)px_localizedAttributedStringForPostAttributionOfAssetWithDisplayType:()PXLocalization postedByUserOrSubjectWithFullName:atDate:nameAttributes:dateAttributes:;
+ (id)px_localizedAttributedStringForPostWithSubjectFullName:()PXLocalization photoCount:videoCount:defaultTextAttributes:emphasizedTextAttributes:;
+ (id)px_localizedAttributedStringForUserCommentWithText:()PXLocalization defaultTextAttributes:emphasizedTextAttributes:;
+ (id)px_localizedAttributedStringForUserCreatingStreamWithName:()PXLocalization defaultTextAttributes:emphasizedTextAttributes:;
+ (id)px_localizedAttributedStringForUserInvitedToStreamWithName:()PXLocalization inviterName:defaultTextAttributes:emphasizedTextAttributes:;
+ (id)px_localizedAttributedStringForUserJoiningSharedAlbumWithName:()PXLocalization defaultTextAttributes:posterTextAttributes:albumTextAttributes:;
+ (id)px_localizedAttributedStringForUserJoiningStreamWithName:()PXLocalization defaultTextAttributes:emphasizedTextAttributes:;
+ (id)px_localizedAttributedStringForUserPostWithPhotoCount:()PXLocalization videoCount:defaultTextAttributes:emphasizedTextAttributes:;
+ (void)px_localizedAttributedStringForCommentWithCommenterFullName:()PXLocalization text:defaultTextAttributes:emphasizedTextAttributes:;
+ (void)px_localizedAttributedStringForLikesFromUser:()PXLocalization orPersonFullName:photoCount:videoCount:streamName:defaultTextAttributes:emphasizedTextAttributes:italicizedTextAttributes:;
+ (void)px_localizedAttributedStringForLikesWithLikerCount:()PXLocalization isVideo:defaultTextAttributes:emphasizedTextAttributes:;
+ (void)px_localizedAttributedStringForUserPostWithCountsSet:()PXLocalization subjectName:captionText:defaultTextAttributes:posterTextAttributes:captionTextAttributes:;
@end

@implementation NSAttributedString(PXLocalization)

+ (id)px_localizedAttributedStringForUserInvitedToStreamWithName:()PXLocalization inviterName:defaultTextAttributes:emphasizedTextAttributes:
{
  v25[2] = *MEMORY[0x1E69E9840];
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = PXLocalizedStringFromTable(@"CLOUD_FEED_INBOX_INVITATION_PHRASE_FORMAT", @"PhotosUICore");
  v14 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = &stru_1F1741150;
  }

  v16 = [v14 initWithString:v15 attributes:v9];

  v17 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = &stru_1F1741150;
  }

  v19 = [v17 initWithString:v18 attributes:v9];

  v20 = MEMORY[0x1E696AAB0];
  if (v13)
  {
    v21 = v13;
  }

  else
  {
    v21 = &stru_1F1741150;
  }

  v25[0] = v19;
  v25[1] = v16;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v23 = [v20 px_stringWithFormat:v21 defaultAttributes:v10 arguments:v22];

  return v23;
}

+ (id)px_localizedAttributedStringForPostAttributionOfAssetWithDisplayType:()PXLocalization postedByUserOrSubjectWithFullName:atDate:nameAttributes:dateAttributes:
{
  v35[2] = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v34 = v13;
  if (a3 > 3)
  {
    switch(a3)
    {
      case 4:
        v17 = v16;
        if (v13)
        {
          v18 = @"LOOP_POSTED_BY_SOMEONE";
          goto LABEL_20;
        }

        v19 = @"LOOP_POSTED_BY_YOU";
        break;
      case 5:
        v17 = v16;
        if (v13)
        {
          v18 = @"LONGEXP_POSTED_BY_SOMEONE";
          goto LABEL_20;
        }

        v19 = @"LONGEXP_POSTED_BY_YOU";
        break;
      case 6:
        v17 = v16;
        if (v13)
        {
          v18 = @"GIF_POSTED_BY_SOMEONE";
          goto LABEL_20;
        }

        v19 = @"GIF_POSTED_BY_YOU";
        break;
      default:
        goto LABEL_35;
    }

LABEL_28:
    v20 = PXLocalizedStringFromTable(v19, @"PhotosUICore");
    goto LABEL_29;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v17 = v16;
      if (v13)
      {
        v18 = @"VIDEO_POSTED_BY_SOMEONE";
        goto LABEL_20;
      }

      v19 = @"VIDEO_POSTED_BY_YOU";
    }

    else
    {
      v17 = v16;
      if (v13)
      {
        v18 = @"BOUNCE_POSTED_BY_SOMEONE";
LABEL_20:
        PXLocalizedStringFromTable(v18, @"PhotosUICore");
        objc_claimAutoreleasedReturnValue();
        goto LABEL_21;
      }

      v19 = @"BOUNCE_POSTED_BY_YOU";
    }

    goto LABEL_28;
  }

  if (a3 == 1)
  {
    v17 = v16;
    if (v13)
    {
      v18 = @"PHOTO_POSTED_BY_SOMEONE";
      goto LABEL_20;
    }

    v19 = @"PHOTO_POSTED_BY_YOU";
    goto LABEL_28;
  }

  if (!a3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXLocalization.m" lineNumber:1041 description:@"Code which should be unreachable has been reached"];

    abort();
  }

LABEL_35:
  v17 = v16;
  v20 = 0;
  if (v13)
  {
LABEL_21:
    PXStringWithValidatedFormat();
  }

LABEL_29:
  v21 = v20;
  v22 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v21 attributes:v15];
  v23 = PLRelativePrettyDateForDate();
  v24 = v14;
  v25 = v23;
  v26 = &stru_1F1741150;
  if (v23)
  {
    v26 = v23;
  }

  v27 = v26;

  v28 = MEMORY[0x1E696AAB0];
  v29 = PXLocalizedStringFromTable(@"POSTED_BY_ON_DATE", @"PhotosUICore");
  v35[0] = v22;
  v35[1] = v27;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v31 = [v28 px_stringWithFormat:v29 defaultAttributes:v17 arguments:v30];

  return v31;
}

+ (void)px_localizedAttributedStringForUserPostWithCountsSet:()PXLocalization subjectName:captionText:defaultTextAttributes:posterTextAttributes:captionTextAttributes:
{
  v35 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v29 = a5;
  a6;
  a7;
  a8;
  v15 = [v13 count];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = v13;
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v31;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v19 += [v16 countForObject:*(*(&v30 + 1) + 8 * i)];
      }

      v18 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v18);
  }

  if (v15 == 1)
  {
    anyObject = [v16 anyObject];
    integerValue = [anyObject integerValue];

    v24 = 0;
    if (integerValue <= 2)
    {
      v25 = v29;
      if (integerValue)
      {
        if (integerValue == 1)
        {
          v26 = @"ICLOUD_SOMEONE_SHARED_PHOTO";
          v27 = @"ICLOUD_YOU_SHARED_PHOTO";
        }

        else
        {
          if (integerValue != 2)
          {
            goto LABEL_30;
          }

          v26 = @"ICLOUD_SOMEONE_SHARED_VIDEO";
          v27 = @"ICLOUD_YOU_SHARED_VIDEO";
        }
      }

      else
      {
        v26 = @"ICLOUD_SOMEONE_SHARED_ITEM";
        v27 = @"ICLOUD_YOU_SHARED_ITEM";
      }
    }

    else
    {
      v25 = v29;
      if (integerValue > 4)
      {
        if (integerValue == 5)
        {
          v26 = @"ICLOUD_SOMEONE_SHARED_LONGEXP";
          v27 = @"ICLOUD_YOU_SHARED_LONGEXP";
        }

        else
        {
          if (integerValue != 6)
          {
            goto LABEL_30;
          }

          v26 = @"ICLOUD_SOMEONE_SHARED_GIF";
          v27 = @"ICLOUD_YOU_SHARED_GIF";
        }
      }

      else if (integerValue == 3)
      {
        v26 = @"ICLOUD_SOMEONE_SHARED_BOUNCE";
        v27 = @"ICLOUD_YOU_SHARED_BOUNCE";
      }

      else
      {
        v26 = @"ICLOUD_SOMEONE_SHARED_LOOP";
        v27 = @"ICLOUD_YOU_SHARED_LOOP";
      }
    }

    if (!v14)
    {
      v26 = v27;
    }
  }

  else
  {
    v26 = @"ICLOUD_SOMEONE_SHARED_ITEM";
    if (!v14)
    {
      v26 = @"ICLOUD_YOU_SHARED_ITEM";
    }

    v25 = v29;
  }

  v24 = v26;
LABEL_30:
  if (v25)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_CAPTION", v24];

    v24 = v28;
  }

  PXLocalizedStringFromTable(v24, @"PhotosUICore");
  objc_claimAutoreleasedReturnValue();
  if (v14)
  {
    [v14 px_stringConvertedToHTMLString];
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringWithValidatedFormat();
  }

  PXLocalizedStringWithValidatedFormat();
}

+ (id)px_localizedAttributedStringForUserCreatingStreamWithName:()PXLocalization defaultTextAttributes:emphasizedTextAttributes:
{
  v21[2] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = PXLocalizedStringFromTable(@"CLOUD_FEED_YOU_CREATED_STREAM_NAMED_PHRASE_FORMAT", @"PhotosUICore");
  v11 = PXLocalizedStringFromTable(@"CLOUD_FEED_YOU_CREATED_STREAM_NAMED_SUBJECT", @"PhotosUICore");
  v12 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1F1741150;
  }

  v14 = [v12 initWithString:v13 attributes:v7];

  v15 = MEMORY[0x1E696AAB0];
  if (v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = &stru_1F1741150;
  }

  if (v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = &stru_1F1741150;
  }

  v21[0] = v14;
  v21[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v19 = [v15 px_stringWithFormat:v16 defaultAttributes:v8 arguments:v18];

  return v19;
}

+ (id)px_localizedAttributedStringForInvitationResponseReceivedWithInviteeFullName:()PXLocalization sharedAlbumName:accepted:defaultTextAttributes:posterTextAttributes:albumTextAttributes:
{
  v32[2] = *MEMORY[0x1E69E9840];
  v13 = MEMORY[0x1E696AAB0];
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a4;
  v18 = a3;
  v19 = [v13 alloc];
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = &stru_1F1741150;
  }

  v21 = [v19 initWithString:v20 attributes:v15];

  if (a5)
  {
    v22 = @"CLOUD_FEED_SOMEONE_JOINED_STREAM_NAMED_PHRASE_FORMAT";
  }

  else
  {
    v22 = @"CLOUD_FEED_SOMEONE_DECLINED_TO_JOIN_STREAM_NAMED_PHRASE_FORMAT";
  }

  v23 = PXLocalizedStringFromTable(v22, @"PhotosUICore");
  v24 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (v17)
  {
    v25 = v17;
  }

  else
  {
    v25 = &stru_1F1741150;
  }

  v26 = [v24 initWithString:v25 attributes:v14];

  v27 = MEMORY[0x1E696AAB0];
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = &stru_1F1741150;
  }

  v32[0] = v21;
  v32[1] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v30 = [v27 px_stringWithFormat:v23 defaultAttributes:v16 arguments:v29];

  return v30;
}

+ (id)px_localizedAttributedStringForInvitationResponseReceivedWithInviteeFullName:()PXLocalization streamName:accepted:defaultTextAttributes:emphasizedTextAttributes:streamNameAttributes:
{
  v31[2] = *MEMORY[0x1E69E9840];
  v13 = MEMORY[0x1E696AAB0];
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a4;
  v18 = a3;
  v19 = [v13 alloc];
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = &stru_1F1741150;
  }

  v21 = [v19 initWithString:v20 attributes:v15];

  v22 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (v17)
  {
    v23 = v17;
  }

  else
  {
    v23 = &stru_1F1741150;
  }

  v24 = [v22 initWithString:v23 attributes:v14];

  if (a5)
  {
    v25 = @"CLOUD_FEED_SOMEONE_JOINED_STREAM_NAMED_PHRASE_FORMAT";
  }

  else
  {
    v25 = @"CLOUD_FEED_SOMEONE_DECLINED_TO_JOIN_STREAM_NAMED_PHRASE_FORMAT";
  }

  v26 = PXLocalizedStringFromTable(v25, @"PhotosUICore");
  v27 = MEMORY[0x1E696AAB0];
  v31[0] = v21;
  v31[1] = v24;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v29 = [v27 px_stringWithFormat:v26 defaultAttributes:v16 arguments:v28];

  return v29;
}

+ (id)px_localizedAttributedStringForUserJoiningSharedAlbumWithName:()PXLocalization defaultTextAttributes:posterTextAttributes:albumTextAttributes:
{
  v27[2] = *MEMORY[0x1E69E9840];
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = PXLocalizedStringFromTable(@"CLOUD_FEED_YOU_JOINED_STREAM_NAMED_PHRASE_FORMAT", @"PhotosUICore");
  v14 = PXLocalizedStringFromTable(@"CLOUD_FEED_YOU_JOINED_STREAM_NAMED_SUBJECT", @"PhotosUICore");
  v15 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_1F1741150;
  }

  v17 = [v15 initWithString:v16 attributes:v10];

  v18 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = &stru_1F1741150;
  }

  v20 = [v18 initWithString:v19 attributes:v9];

  v21 = MEMORY[0x1E696AAB0];
  if (v13)
  {
    v22 = v13;
  }

  else
  {
    v22 = &stru_1F1741150;
  }

  if (v20)
  {
    v23 = v20;
  }

  else
  {
    v23 = &stru_1F1741150;
  }

  v27[0] = v17;
  v27[1] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v25 = [v21 px_stringWithFormat:v22 defaultAttributes:v11 arguments:v24];

  return v25;
}

+ (id)px_localizedAttributedStringForUserJoiningStreamWithName:()PXLocalization defaultTextAttributes:emphasizedTextAttributes:
{
  v21[2] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = PXLocalizedStringFromTable(@"CLOUD_FEED_YOU_JOINED_STREAM_NAMED_PHRASE_FORMAT", @"PhotosUICore");
  v11 = PXLocalizedStringFromTable(@"CLOUD_FEED_YOU_JOINED_STREAM_NAMED_SUBJECT", @"PhotosUICore");
  v12 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1F1741150;
  }

  v14 = [v12 initWithString:v13 attributes:v7];

  v15 = MEMORY[0x1E696AAB0];
  if (v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = &stru_1F1741150;
  }

  if (v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = &stru_1F1741150;
  }

  v21[0] = v14;
  v21[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v19 = [v15 px_stringWithFormat:v16 defaultAttributes:v8 arguments:v18];

  return v19;
}

+ (void)px_localizedAttributedStringForLikesWithLikerCount:()PXLocalization isVideo:defaultTextAttributes:emphasizedTextAttributes:
{
  v9 = a6;
  v10 = a5;
  if (a4)
  {
    v11 = @"CLOUD_FEED_MANY_PEOPLE_LIKED_THIS_VIDEO_PHRASE_FORMAT";
  }

  else
  {
    v11 = @"CLOUD_FEED_MANY_PEOPLE_LIKED_THIS_PHOTO_PHRASE_FORMAT";
  }

  if (a4)
  {
    v12 = @"CLOUD_FEED_MANY_PEOPLE_LIKED_THIS_VIDEO_SUBJECT";
  }

  else
  {
    v12 = @"CLOUD_FEED_MANY_PEOPLE_LIKED_THIS_PHOTO_SUBJECT";
  }

  PXLocalizedStringFromTable(v11, @"PhotosUICore");
  objc_claimAutoreleasedReturnValue();
  PXLocalizedStringFromTable(v12, @"PhotosUICore");
  objc_claimAutoreleasedReturnValue();
  PXLocalizedStringFromInteger(a3);
  objc_claimAutoreleasedReturnValue();
  PXStringWithValidatedFormat();
}

+ (void)px_localizedAttributedStringForLikesFromUser:()PXLocalization orPersonFullName:photoCount:videoCount:streamName:defaultTextAttributes:emphasizedTextAttributes:italicizedTextAttributes:
{
  v15 = a4;
  v16 = a10;
  v17 = a9;
  v18 = a8;
  px_stringConvertedToHTMLString = [a7 px_stringConvertedToHTMLString];
  v20 = px_stringConvertedToHTMLString;
  if (px_stringConvertedToHTMLString)
  {
    v21 = px_stringConvertedToHTMLString;
  }

  else
  {
    v21 = &stru_1F1741150;
  }

  v21;

  v22 = a5 > 0;
  v23 = a5 == 0;
  if (a6)
  {
    v22 = 0;
  }

  if (a6 <= 0)
  {
    v23 = 0;
  }

  if (a3)
  {
    if (v23)
    {
      v24 = @"CLOUD_FEED_YOU_LIKED_THESE_N_VIDEOS_IN_STREAM_NAMED_HTML_FORMAT";
    }

    else
    {
      v24 = @"CLOUD_FEED_YOU_LIKED_THESE_N_ITEMS_IN_STREAM_NAMED_HTML_FORMAT";
    }

    if (v22)
    {
      v25 = @"CLOUD_FEED_YOU_LIKED_THESE_N_PHOTOS_IN_STREAM_NAMED_HTML_FORMAT";
    }

    else
    {
      v25 = v24;
    }

    PXLocalizedStringFromTable(v25, @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringWithValidatedFormat();
  }

  if (v23)
  {
    v26 = @"CLOUD_FEED_SOMEONE_LIKED_THESE_N_VIDEOS_IN_STREAM_NAMED_HTML_FORMAT";
  }

  else
  {
    v26 = @"CLOUD_FEED_SOMEONE_LIKED_THESE_N_ITEMS_IN_STREAM_NAMED_HTML_FORMAT";
  }

  if (v22)
  {
    v27 = @"CLOUD_FEED_SOMEONE_LIKED_THESE_N_PHOTOS_IN_STREAM_NAMED_HTML_FORMAT";
  }

  else
  {
    v27 = v26;
  }

  PXLocalizedStringFromTable(v27, @"PhotosUICore");
  objc_claimAutoreleasedReturnValue();
  [v15 px_stringConvertedToHTMLString];
  objc_claimAutoreleasedReturnValue();
  PXLocalizedStringWithValidatedFormat();
}

+ (id)px_localizedAttributedStringForLikesFromUser:()PXLocalization otherPeopleFullNames:isVideo:defaultTextAttributes:emphasizedTextAttributes:
{
  v120[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a6;
  v13 = a7;
  v14 = [v11 count];
  if (a3)
  {
    if (v14 != 2)
    {
      v15 = v14 - 1;
      if (v14 == 1)
      {
        if (a5)
        {
          v58 = @"CLOUD_FEED_YOU_AND_ONE_PERSON_LIKED_THIS_VIDEO_PHRASE_FORMAT";
        }

        else
        {
          v58 = @"CLOUD_FEED_YOU_AND_ONE_PERSON_LIKED_THIS_PHOTO_PHRASE_FORMAT";
        }

        if (a5)
        {
          v59 = @"CLOUD_FEED_YOU_AND_ONE_PERSON_LIKED_THIS_VIDEO_YOU_SUBJECT";
        }

        else
        {
          v59 = @"CLOUD_FEED_YOU_AND_ONE_PERSON_LIKED_THIS_PHOTO_YOU_SUBJECT";
        }

        v18 = PXLocalizedStringFromTable(v58, @"PhotosUICore");
        v19 = PXLocalizedStringFromTable(v59, @"PhotosUICore");
        v60 = objc_alloc(MEMORY[0x1E696AAB0]);
        v61 = v12;
        if (v19)
        {
          v62 = v19;
        }

        else
        {
          v62 = &stru_1F1741150;
        }

        v24 = [v60 initWithString:v62 attributes:v13];
        v63 = objc_alloc(MEMORY[0x1E696AAB0]);
        v64 = [v11 objectAtIndex:0];
        v26 = [v63 initWithString:v64 attributes:v13];

        v65 = MEMORY[0x1E696AAB0];
        if (v18)
        {
          v66 = v18;
        }

        else
        {
          v66 = &stru_1F1741150;
        }

        v119[0] = v24;
        v119[1] = v26;
        v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:2];
        v27 = [v65 px_stringWithFormat:v66 defaultAttributes:v61 arguments:v67];

        v12 = v61;
LABEL_60:

LABEL_96:
        goto LABEL_97;
      }

      if (!v14)
      {
        if (a5)
        {
          v16 = @"CLOUD_FEED_YOU_LIKED_THIS_VIDEO_PHRASE_FORMAT";
        }

        else
        {
          v16 = @"CLOUD_FEED_YOU_LIKED_THIS_PHOTO_PHRASE_FORMAT";
        }

        if (a5)
        {
          v17 = @"CLOUD_FEED_YOU_LIKED_THIS_VIDEO_SUBJECT";
        }

        else
        {
          v17 = @"CLOUD_FEED_YOU_LIKED_THIS_PHOTO_SUBJECT";
        }

        v18 = PXLocalizedStringFromTable(v16, @"PhotosUICore");
        v19 = PXLocalizedStringFromTable(v17, @"PhotosUICore");
        v20 = objc_alloc(MEMORY[0x1E696AAB0]);
        v21 = &stru_1F1741150;
        if (v19)
        {
          v22 = v19;
        }

        else
        {
          v22 = &stru_1F1741150;
        }

        v23 = [v20 initWithString:v22 attributes:v13];
        v24 = v23;
        v25 = MEMORY[0x1E696AAB0];
        if (v18)
        {
          v21 = v18;
        }

        v120[0] = v23;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:1];
        v27 = [v25 px_stringWithFormat:v21 defaultAttributes:v12 arguments:v26];
        goto LABEL_60;
      }

      if (v14 >= 3)
      {
        if (a5)
        {
          v82 = @"CLOUD_FEED_YOU_AND_MORE_PERSONS_LIKED_THIS_VIDEO_PHRASE_FORMAT";
        }

        else
        {
          v82 = @"CLOUD_FEED_YOU_AND_MORE_PERSONS_LIKED_THIS_PHOTO_PHRASE_FORMAT";
        }

        if (a5)
        {
          v83 = @"CLOUD_FEED_YOU_AND_MORE_PERSONS_LIKED_THIS_VIDEO_YOU_SUBJECT";
        }

        else
        {
          v83 = @"CLOUD_FEED_YOU_AND_MORE_PERSONS_LIKED_THIS_PHOTO_YOU_SUBJECT";
        }

        if (a5)
        {
          v84 = @"CLOUD_FEED_YOU_AND_MORE_PERSONS_LIKED_THIS_VIDEO_LIST_SEPARATOR";
        }

        else
        {
          v84 = @"CLOUD_FEED_YOU_AND_MORE_PERSONS_LIKED_THIS_PHOTO_LIST_SEPARATOR";
        }

        v18 = PXLocalizedStringFromTable(v82, @"PhotosUICore");
        v19 = PXLocalizedStringFromTable(v83, @"PhotosUICore");
        v24 = PXLocalizedStringFromTable(v84, @"PhotosUICore");
        v85 = objc_alloc(MEMORY[0x1E696AAB0]);
        if (v19)
        {
          v86 = v19;
        }

        else
        {
          v86 = &stru_1F1741150;
        }

        v102 = [v85 initWithString:v86 attributes:v13];
        v105 = v12;
        v87 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1F1741150];
        v88 = objc_alloc(MEMORY[0x1E696AAB0]);
        if (v24)
        {
          v89 = v24;
        }

        else
        {
          v89 = &stru_1F1741150;
        }

        v90 = [v88 initWithString:v89 attributes:v105];
        v91 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, v15}];
        v110[0] = MEMORY[0x1E69E9820];
        v110[1] = 3221225472;
        v110[2] = __159__NSAttributedString_PXLocalization__px_localizedAttributedStringForLikesFromUser_otherPeopleFullNames_isVideo_defaultTextAttributes_emphasizedTextAttributes___block_invoke;
        v110[3] = &unk_1E774BF90;
        v111 = v87;
        v112 = v90;
        v92 = v13;
        v113 = v92;
        v101 = v90;
        v93 = v87;
        [v11 enumerateObjectsAtIndexes:v91 options:0 usingBlock:v110];

        v94 = objc_alloc(MEMORY[0x1E696AAB0]);
        lastObject = [v11 lastObject];
        v96 = [v94 initWithString:lastObject attributes:v92];

        v97 = MEMORY[0x1E696AAB0];
        if (v18)
        {
          v98 = v18;
        }

        else
        {
          v98 = &stru_1F1741150;
        }

        v117[0] = v102;
        v117[1] = v93;
        v117[2] = v96;
        v99 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:3];
        v27 = [v97 px_stringWithFormat:v98 defaultAttributes:v105 arguments:v99];

        v57 = v102;
        v12 = v105;
LABEL_95:

        goto LABEL_96;
      }

      goto LABEL_100;
    }

    if (a5)
    {
      v68 = @"CLOUD_FEED_YOU_AND_TWO_PERSONS_LIKED_THIS_VIDEO_PHRASE_FORMAT";
    }

    else
    {
      v68 = @"CLOUD_FEED_YOU_AND_TWO_PERSONS_LIKED_THIS_PHOTO_PHRASE_FORMAT";
    }

    if (a5)
    {
      v69 = @"CLOUD_FEED_YOU_AND_TWO_PERSONS_LIKED_THIS_VIDEO_YOU_SUBJECT";
    }

    else
    {
      v69 = @"CLOUD_FEED_YOU_AND_TWO_PERSONS_LIKED_THIS_PHOTO_YOU_SUBJECT";
    }

    v18 = PXLocalizedStringFromTable(v68, @"PhotosUICore");
    v19 = PXLocalizedStringFromTable(v69, @"PhotosUICore");
    v70 = objc_alloc(MEMORY[0x1E696AAB0]);
    if (v19)
    {
      v71 = v19;
    }

    else
    {
      v71 = &stru_1F1741150;
    }

    v24 = [v70 initWithString:v71 attributes:v13];
    v72 = objc_alloc(MEMORY[0x1E696AAB0]);
    v73 = [v11 objectAtIndex:0];
    v41 = [v72 initWithString:v73 attributes:v13];

    v74 = objc_alloc(MEMORY[0x1E696AAB0]);
    v75 = [v11 objectAtIndex:1];
    v76 = [v74 initWithString:v75 attributes:v13];
    v104 = v13;
    v77 = v12;
    v78 = v76;

    v79 = MEMORY[0x1E696AAB0];
    if (v18)
    {
      v80 = v18;
    }

    else
    {
      v80 = &stru_1F1741150;
    }

    v118[0] = v24;
    v118[1] = v41;
    v118[2] = v78;
    v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:3];
    v27 = [v79 px_stringWithFormat:v80 defaultAttributes:v77 arguments:v81];

    v12 = v77;
    v13 = v104;
LABEL_74:

    goto LABEL_96;
  }

  if (v14 == 2)
  {
    if (a5)
    {
      v34 = @"CLOUD_FEED_TWO_PERSONS_LIKED_THIS_VIDEO_PHRASE_FORMAT";
    }

    else
    {
      v34 = @"CLOUD_FEED_TWO_PERSONS_LIKED_THIS_PHOTO_PHRASE_FORMAT";
    }

    v18 = PXLocalizedStringFromTable(v34, @"PhotosUICore");
    v35 = objc_alloc(MEMORY[0x1E696AAB0]);
    v36 = [v11 objectAtIndex:0];
    v19 = [v35 initWithString:v36 attributes:v13];

    v37 = objc_alloc(MEMORY[0x1E696AAB0]);
    v38 = [v11 objectAtIndex:1];
    v24 = [v37 initWithString:v38 attributes:v13];

    v39 = MEMORY[0x1E696AAB0];
    if (v18)
    {
      v40 = v18;
    }

    else
    {
      v40 = &stru_1F1741150;
    }

    v115[0] = v19;
    v115[1] = v24;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:2];
    v27 = [v39 px_stringWithFormat:v40 defaultAttributes:v12 arguments:v41];
    goto LABEL_74;
  }

  v28 = v14 - 1;
  if (v14 == 1)
  {
    if (a5)
    {
      v29 = @"CLOUD_FEED_SOMEONE_LIKED_THIS_VIDEO_PHRASE_FORMAT";
    }

    else
    {
      v29 = @"CLOUD_FEED_SOMEONE_LIKED_THIS_PHOTO_PHRASE_FORMAT";
    }

    v18 = PXLocalizedStringFromTable(v29, @"PhotosUICore");
    v30 = objc_alloc(MEMORY[0x1E696AAB0]);
    firstObject = [v11 firstObject];
    v19 = [v30 initWithString:firstObject attributes:v13];

    v32 = MEMORY[0x1E696AAB0];
    if (v18)
    {
      v33 = v18;
    }

    else
    {
      v33 = &stru_1F1741150;
    }

    v116 = v19;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v116 count:1];
    v27 = [v32 px_stringWithFormat:v33 defaultAttributes:v12 arguments:v24];
    goto LABEL_96;
  }

  if (v14 >= 3)
  {
    if (a5)
    {
      v42 = @"CLOUD_FEED_MORE_PERSONS_LIKED_THIS_VIDEO_PHRASE_FORMAT";
    }

    else
    {
      v42 = @"CLOUD_FEED_MORE_PERSONS_LIKED_THIS_PHOTO_PHRASE_FORMAT";
    }

    if (a5)
    {
      v43 = @"CLOUD_FEED_MORE_PERSONS_LIKED_THIS_VIDEO_LIST_SEPARATOR";
    }

    else
    {
      v43 = @"CLOUD_FEED_MORE_PERSONS_LIKED_THIS_PHOTO_LIST_SEPARATOR";
    }

    v18 = PXLocalizedStringFromTable(v42, @"PhotosUICore");
    v19 = PXLocalizedStringFromTable(v43, @"PhotosUICore");
    v44 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:?];
    v45 = objc_alloc(MEMORY[0x1E696AAB0]);
    if (v19)
    {
      v46 = v19;
    }

    else
    {
      v46 = &stru_1F1741150;
    }

    v47 = [v45 initWithString:v46 attributes:v12];
    [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, v28}];
    v49 = v48 = v12;
    v106[0] = MEMORY[0x1E69E9820];
    v106[1] = 3221225472;
    v106[2] = __159__NSAttributedString_PXLocalization__px_localizedAttributedStringForLikesFromUser_otherPeopleFullNames_isVideo_defaultTextAttributes_emphasizedTextAttributes___block_invoke_2;
    v106[3] = &unk_1E774BF90;
    v107 = v44;
    v108 = v47;
    v50 = v13;
    v109 = v50;
    v103 = v47;
    v24 = v44;
    [v11 enumerateObjectsAtIndexes:v49 options:0 usingBlock:v106];

    v51 = objc_alloc(MEMORY[0x1E696AAB0]);
    lastObject2 = [v11 lastObject];
    v53 = [v51 initWithString:lastObject2 attributes:v50];

    v54 = MEMORY[0x1E696AAB0];
    if (v18)
    {
      v55 = v18;
    }

    else
    {
      v55 = &stru_1F1741150;
    }

    v114[0] = v24;
    v114[1] = v53;
    v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:2];
    v27 = [v54 px_stringWithFormat:v55 defaultAttributes:v48 arguments:v56];

    v12 = v48;
    v57 = v103;
    goto LABEL_95;
  }

LABEL_100:
  v27 = 0;
LABEL_97:

  return v27;
}

+ (void)px_localizedAttributedStringForCommentWithCommenterFullName:()PXLocalization text:defaultTextAttributes:emphasizedTextAttributes:
{
  v9 = a4;
  v10 = MEMORY[0x1E696AB08];
  v11 = a6;
  v12 = a5;
  a3;
  whitespaceAndNewlineCharacterSet = [v10 whitespaceAndNewlineCharacterSet];
  v14 = [v9 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if (![v14 length])
  {
    v9;
  }

  PXLocalizedStringFromTable(@"CLOUD_FEED_SOMEONE_SAID_SOMETHING_PHRASE_FORMAT", @"PhotosUICore");
  objc_claimAutoreleasedReturnValue();
  PXLocalizedStringWithValidatedFormat();
}

+ (id)px_localizedAttributedStringForUserCommentWithText:()PXLocalization defaultTextAttributes:emphasizedTextAttributes:
{
  v26[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = MEMORY[0x1E696AB08];
  v9 = a5;
  v10 = a4;
  whitespaceAndNewlineCharacterSet = [v8 whitespaceAndNewlineCharacterSet];
  v12 = [v7 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if (![(__CFString *)v12 length])
  {
    v13 = v7;

    v12 = v13;
  }

  if ([(__CFString *)v12 px_endsWithFullStopOrEquivalentPunctuationMark])
  {
    v14 = @"CLOUD_FEED_YOU_SAID_SOMETHING_WITH_FULL_STOP_PHRASE_FORMAT";
  }

  else
  {
    v14 = @"CLOUD_FEED_YOU_SAID_SOMETHING_PHRASE_FORMAT";
  }

  v15 = PXLocalizedStringFromTable(v14, @"PhotosUICore");
  v16 = PXLocalizedStringFromTable(@"CLOUD_FEED_YOU_SAID_SOMETHING_SUBJECT", @"PhotosUICore");
  v17 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_1F1741150;
  }

  v19 = [v17 initWithString:v18 attributes:v9];

  v20 = MEMORY[0x1E696AAB0];
  if (v15)
  {
    v21 = v15;
  }

  else
  {
    v21 = &stru_1F1741150;
  }

  if (v12)
  {
    v22 = v12;
  }

  else
  {
    v22 = &stru_1F1741150;
  }

  v26[0] = v19;
  v26[1] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v24 = [v20 px_stringWithFormat:v21 defaultAttributes:v10 arguments:v23];

  return v24;
}

+ (id)px_localizedAttributedStringForPostWithSubjectFullName:()PXLocalization photoCount:videoCount:defaultTextAttributes:emphasizedTextAttributes:
{
  v27[2] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  v13 = a7;
  if (a4 != 1 || a5)
  {
    if (a4 || a5 != 1)
    {
      if (a4 < 2 || a5)
      {
        if (a5 > 1 && a4 == 0)
        {
          v14 = @"CLOUD_FEED_SOMEONE_POSTED_N_VIDEOS_PHRASE_FORMAT";
        }

        else
        {
          v14 = @"CLOUD_FEED_SOMEONE_POSTED_N_ITEMS_PHRASE_FORMAT";
        }
      }

      else
      {
        v14 = @"CLOUD_FEED_SOMEONE_POSTED_N_PHOTOS_PHRASE_FORMAT";
      }
    }

    else
    {
      v14 = @"CLOUD_FEED_SOMEONE_POSTED_1_VIDEO_PHRASE_FORMAT";
    }
  }

  else
  {
    v14 = @"CLOUD_FEED_SOMEONE_POSTED_1_PHOTO_PHRASE_FORMAT";
  }

  v16 = PXLocalizedStringFromTable(v14, @"PhotosUICore");
  v17 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = &stru_1F1741150;
  }

  v19 = [v17 initWithString:v18 attributes:v13];
  v20 = PXLocalizedStringFromInteger(a5 + a4);
  v21 = v20;
  v22 = MEMORY[0x1E696AAB0];
  if (v16)
  {
    v23 = v16;
  }

  else
  {
    v23 = &stru_1F1741150;
  }

  v27[0] = v19;
  v27[1] = v20;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v25 = [v22 px_stringWithFormat:v23 defaultAttributes:v12 arguments:v24];

  return v25;
}

+ (id)px_localizedAttributedStringForUserPostWithPhotoCount:()PXLocalization videoCount:defaultTextAttributes:emphasizedTextAttributes:
{
  v27[2] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a6;
  if (a3 != 1 || a4)
  {
    if (a3 || a4 != 1)
    {
      if (a3 < 2 || a4)
      {
        v13 = a3 == 0;
        v14 = a4 > 1;
        if (v13 && v14)
        {
          v12 = @"CLOUD_FEED_YOU_POSTED_N_VIDEOS_PHRASE_FORMAT";
        }

        else
        {
          v12 = @"CLOUD_FEED_YOU_POSTED_N_ITEMS_PHRASE_FORMAT";
        }

        if (v13 && v14)
        {
          v11 = @"CLOUD_FEED_YOU_POSTED_N_VIDEOS_SUBJECT";
        }

        else
        {
          v11 = @"CLOUD_FEED_YOU_POSTED_N_ITEMS_SUBJECT";
        }
      }

      else
      {
        v11 = @"CLOUD_FEED_YOU_POSTED_N_PHOTOS_SUBJECT";
        v12 = @"CLOUD_FEED_YOU_POSTED_N_PHOTOS_PHRASE_FORMAT";
      }
    }

    else
    {
      v11 = @"CLOUD_FEED_YOU_POSTED_1_VIDEO_SUBJECT";
      v12 = @"CLOUD_FEED_YOU_POSTED_1_VIDEO_PHRASE_FORMAT";
    }
  }

  else
  {
    v11 = @"CLOUD_FEED_YOU_POSTED_1_PHOTO_SUBJECT";
    v12 = @"CLOUD_FEED_YOU_POSTED_1_PHOTO_PHRASE_FORMAT";
  }

  v15 = PXLocalizedStringFromTable(v12, @"PhotosUICore");
  v16 = PXLocalizedStringFromTable(v11, @"PhotosUICore");
  v17 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_1F1741150;
  }

  v19 = [v17 initWithString:v18 attributes:v10];
  v20 = PXLocalizedStringFromInteger(a4 + a3);
  v21 = v20;
  v22 = MEMORY[0x1E696AAB0];
  if (v15)
  {
    v23 = v15;
  }

  else
  {
    v23 = &stru_1F1741150;
  }

  v27[0] = v19;
  v27[1] = v20;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v25 = [v22 px_stringWithFormat:v23 defaultAttributes:v9 arguments:v24];

  return v25;
}

@end