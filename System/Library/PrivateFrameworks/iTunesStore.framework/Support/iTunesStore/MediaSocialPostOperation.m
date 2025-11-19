@interface MediaSocialPostOperation
- (MediaSocialPostOperation)initWithPostDescription:(id)a3;
- (MediaSocialPostOperation)initWithPostEntity:(id)a3;
- (NSString)userAgent;
- (id)_attachmentDictionaryWithAttachment:(id)a3;
- (id)_externalServiceDictionaryWithDestination:(id)a3;
- (id)_requestBodyDictionary;
- (id)_targetDictionaryWithContentItem:(id)a3;
- (id)resultBlock;
- (void)run;
- (void)setResultBlock:(id)a3;
- (void)setUserAgent:(id)a3;
@end

@implementation MediaSocialPostOperation

- (MediaSocialPostOperation)initWithPostDescription:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = MediaSocialPostOperation;
  v5 = [(MediaSocialPostOperation *)&v20 init];
  if (v5)
  {
    v6 = [v4 accountIdentifier];
    accountID = v5->_accountID;
    v5->_accountID = v6;

    v8 = [v4 authorIdentifier];
    authorID = v5->_authorID;
    v5->_authorID = v8;

    v10 = [v4 authorType];
    authorType = v5->_authorType;
    v5->_authorType = v10;

    v12 = [v4 contentItems];
    contentItems = v5->_contentItems;
    v5->_contentItems = v12;

    v14 = [v4 externalServiceDestinations];
    externalServiceDestinations = v5->_externalServiceDestinations;
    v5->_externalServiceDestinations = v14;

    v16 = [v4 text];
    text = v5->_text;
    v5->_text = v16;

    v18 = CFUUIDCreate(0);
    v5->_postIdentifier = *&CFUUIDGetUUIDBytes(v18);
    CFRelease(v18);
  }

  return v5;
}

- (MediaSocialPostOperation)initWithPostEntity:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MediaSocialPostOperation;
  v5 = [(MediaSocialPostOperation *)&v17 init];
  if (v5)
  {
    v22[0] = @"account_id";
    v22[1] = @"author_id";
    v22[2] = @"author_type";
    v22[3] = @"is_attributed";
    v22[4] = @"message";
    v22[5] = @"source_app";
    v22[6] = @"creation_time";
    v21 = 0;
    *v19 = 0u;
    *v20 = 0u;
    *obj = 0u;
    [v4 getValues:obj forProperties:v22 count:7];
    objc_storeStrong(&v5->_accountID, obj[0]);
    objc_storeStrong(&v5->_authorID, obj[1]);
    objc_storeStrong(&v5->_authorType, v19[0]);
    [v21 doubleValue];
    v5->_createTime = v6;
    v5->_isAttributed = [v19[1] BOOLValue];
    v5->_postIdentifier = [v4 persistentID];
    objc_storeStrong(&v5->_text, v20[0]);
    v7 = [v4 uploadedAttachments];
    attachments = v5->_attachments;
    v5->_attachments = v7;

    v9 = [v4 contentItems];
    contentItems = v5->_contentItems;
    v5->_contentItems = v9;

    v11 = [v4 externalServiceDestinations];
    externalServiceDestinations = v5->_externalServiceDestinations;
    v5->_externalServiceDestinations = v11;

    if (v20[1])
    {
      v13 = sub_1001FBA18(v20[1]);
      userAgent = v5->_userAgent;
      v5->_userAgent = v13;
    }

    for (i = 6; i != -1; --i)
    {
    }
  }

  return v5;
}

- (id)resultBlock
{
  [(MediaSocialPostOperation *)self lock];
  v3 = [self->_resultBlock copy];
  [(MediaSocialPostOperation *)self unlock];
  v4 = objc_retainBlock(v3);

  return v4;
}

- (void)setResultBlock:(id)a3
{
  v6 = a3;
  [(MediaSocialPostOperation *)self lock];
  if (self->_resultBlock != v6)
  {
    v4 = [v6 copy];
    resultBlock = self->_resultBlock;
    self->_resultBlock = v4;
  }

  [(MediaSocialPostOperation *)self unlock];
}

- (void)setUserAgent:(id)a3
{
  v6 = a3;
  [(MediaSocialPostOperation *)self lock];
  if (self->_userAgent != v6)
  {
    v4 = [(NSString *)v6 copy];
    userAgent = self->_userAgent;
    self->_userAgent = v4;
  }

  [(MediaSocialPostOperation *)self unlock];
}

- (NSString)userAgent
{
  [(MediaSocialPostOperation *)self lock];
  v3 = [(NSString *)self->_userAgent copy];
  [(MediaSocialPostOperation *)self unlock];

  return v3;
}

- (void)run
{
  v65 = objc_alloc_init(MediaSocialPostResponse);
  v3 = [(MediaSocialPostOperation *)self _requestBodyDictionary];
  v67 = 0;
  v4 = [NSJSONSerialization dataWithJSONObject:v3 options:0 error:&v67];
  v5 = v67;
  if (v4)
  {
    v6 = [(MediaSocialPostOperation *)self userAgent];
    v7 = [SSURLBagContext contextWithBagType:0];
    v8 = SSHTTPHeaderUserAgent;
    [v7 setValue:v6 forHTTPHeaderField:SSHTTPHeaderUserAgent];
    [v7 setIgnoresCaches:1];
    v64 = [(MediaSocialPostOperation *)self loadedURLBagWithContext:v7 returningError:0];
    if (!v64)
    {
      goto LABEL_46;
    }

    v9 = [v64 valueForKey:SSVURLBagKeyMusicConnect];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 objectForKey:@"createSocialPost"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v62 = [[NSURL alloc] initWithString:v10];

        if (v62)
        {
          v63 = objc_alloc_init(ISStoreURLOperation);
          v60 = [NSNumber numberWithInteger:409];
          v68[0] = v60;
          v11 = [NSNumber numberWithInteger:500];
          v68[1] = v11;
          v12 = [NSNumber numberWithInteger:502];
          v68[2] = v12;
          v13 = [NSArray arrayWithObjects:v68 count:3];
          [v63 setPassThroughErrors:v13];

          v14 = +[DaemonProtocolDataProvider provider];
          [v63 setDataProvider:v14];

          v15 = objc_alloc_init(SSMutableURLRequestProperties);
          [v15 setHTTPBody:v4];
          [v15 setHTTPMethod:@"POST"];
          [v15 setURL:v62];
          [v15 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
          [v15 setValue:v6 forHTTPHeaderField:v8];
          SSVAddMediaSocialHeadersToURLRequestProperties();
          [v63 setRequestProperties:v15];
          v61 = v15;
          v16 = +[SSLogConfig sharedDaemonConfig];
          if (!v16)
          {
            v16 = +[SSLogConfig sharedConfig];
          }

          v17 = [v16 shouldLog];
          v18 = [v16 shouldLogToDisk];
          v19 = [v16 OSLogObject];
          v20 = v19;
          if (v18)
          {
            v17 |= 2u;
          }

          if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v17 &= 2u;
          }

          if (v17)
          {
            v21 = objc_opt_class();
            postIdentifier = self->_postIdentifier;
            v69 = 138412546;
            v70 = v21;
            v71 = 2048;
            v72 = postIdentifier;
            v23 = v21;
            LODWORD(v54) = 22;
            v53 = &v69;
            v24 = _os_log_send_and_compose_impl();

            if (!v24)
            {
              goto LABEL_16;
            }

            v20 = [NSString stringWithCString:v24 encoding:4, &v69, v54];
            free(v24);
            v53 = v20;
            SSFileLog();
          }

LABEL_16:
          v66 = v5;
          v25 = [(MediaSocialPostOperation *)self runSubOperation:v63 returningError:&v66];
          v26 = v66;

          if (!v25)
          {
LABEL_33:

            v5 = v62;
LABEL_57:

            v5 = v26;
            goto LABEL_58;
          }

          v27 = [v63 dataProvider];
          v28 = [v27 output];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
LABEL_32:

            goto LABEL_33;
          }

          v59 = [v28 objectForKey:@"status"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![v59 isEqualToString:@"error"])
          {
LABEL_31:
            v36 = [v63 response];
            -[MediaSocialPostResponse setStatusCode:](v65, "setStatusCode:", [v36 itunes_statusCode]);

            [(MediaSocialPostResponse *)v65 setValuesWithResponseDictionary:v28];
            goto LABEL_32;
          }

          v58 = [v28 objectForKey:@"error"];
          v29 = +[SSLogConfig sharedDaemonConfig];
          if (!v29)
          {
            v29 = +[SSLogConfig sharedConfig];
          }

          v30 = [v29 shouldLog];
          v55 = [v29 shouldLogToDisk];
          v57 = v29;
          v31 = [v29 OSLogObject];
          v32 = v31;
          if (v55)
          {
            v30 |= 2u;
          }

          if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v30 &= 2u;
          }

          if (v30)
          {
            v33 = objc_opt_class();
            v69 = 138412546;
            v70 = v33;
            v71 = 2112;
            v72 = v58;
            v56 = v33;
            LODWORD(v54) = 22;
            v53 = &v69;
            v34 = _os_log_send_and_compose_impl();

            if (!v34)
            {
LABEL_30:

              v35 = SSError();

              v26 = v35;
              goto LABEL_31;
            }

            v32 = [NSString stringWithCString:v34 encoding:4, &v69, v54];
            free(v34);
            v53 = v32;
            SSFileLog();
          }

          goto LABEL_30;
        }

LABEL_46:
        v43 = +[SSLogConfig sharedDaemonConfig];
        if (!v43)
        {
          v43 = +[SSLogConfig sharedConfig];
        }

        v44 = [v43 shouldLog];
        v45 = [v43 shouldLogToDisk];
        v46 = [v43 OSLogObject];
        v47 = v46;
        if (v45)
        {
          v44 |= 2u;
        }

        if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v44 &= 2u;
        }

        if (v44)
        {
          v48 = objc_opt_class();
          v69 = 138412290;
          v70 = v48;
          v49 = v48;
          LODWORD(v54) = 12;
          v50 = _os_log_send_and_compose_impl();

          if (!v50)
          {
LABEL_56:

            v26 = SSError();
            v25 = 0;
            goto LABEL_57;
          }

          v47 = [NSString stringWithCString:v50 encoding:4, &v69, v54];
          free(v50);
          SSFileLog();
        }

        goto LABEL_56;
      }
    }

    goto LABEL_46;
  }

  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v37 = [v6 shouldLog];
  v38 = [v6 shouldLogToDisk];
  v39 = [v6 OSLogObject];
  v7 = v39;
  if (v38)
  {
    v37 |= 2u;
  }

  if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v37 &= 2u;
  }

  if (!v37)
  {
LABEL_43:
    v25 = 0;
LABEL_58:

    goto LABEL_59;
  }

  v40 = objc_opt_class();
  v69 = 138412546;
  v70 = v40;
  v71 = 2112;
  v72 = v5;
  v41 = v40;
  LODWORD(v54) = 22;
  v42 = _os_log_send_and_compose_impl();

  if (v42)
  {
    v7 = [NSString stringWithCString:v42 encoding:4, &v69, v54];
    free(v42);
    SSFileLog();
    goto LABEL_43;
  }

  v25 = 0;
LABEL_59:

  [(MediaSocialPostOperation *)self setError:v5];
  [(MediaSocialPostOperation *)self setSuccess:v25];
  [(MediaSocialPostResponse *)v65 setError:v5];
  v51 = [(MediaSocialPostOperation *)self resultBlock];
  v52 = v51;
  if (v51)
  {
    (*(v51 + 16))(v51, v65);
    [(MediaSocialPostOperation *)self setResultBlock:0];
  }
}

- (id)_attachmentDictionaryWithAttachment:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [v4 albumIdentifier];
  if (v6)
  {
    [v5 setObject:v6 forKey:@"albumId"];
  }

  v7 = [v4 assetToken];

  if (v7)
  {
    [v5 setObject:v7 forKey:@"contentToken"];
  }

  v8 = [v4 assetTokenType];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = @"AssetToken";
  }

  [v5 setObject:v9 forKey:@"contentTokenType"];
  v10 = [v4 categoryName];

  if (v10)
  {
    [v5 setObject:v10 forKey:@"category"];
  }

  v11 = [v4 attachmentDescription];

  if (v11)
  {
    [v5 setObject:v11 forKey:@"description"];
  }

  if ([v4 isExplicitContent])
  {
    [v5 setObject:@"Explicit" forKey:@"parentalAdvisoryType"];
  }

  v12 = [v4 title];

  if (v12)
  {
    [v5 setObject:v12 forKey:@"title"];
  }

  authorID = self->_authorID;
  if (authorID)
  {
    [v5 setObject:authorID forKey:@"artistAdamId"];
  }

  else
  {
    accountID = self->_accountID;
    if (accountID)
    {
      v15 = [(NSNumber *)accountID stringValue];
      [v5 setObject:v15 forKey:@"artistAdamId"];
    }
  }

  v16 = objc_alloc_init(NSMutableArray);
  v17 = [v4 artists];
  v32 = _NSConcreteStackBlock;
  v33 = 3221225472;
  v34 = sub_1001FCBEC;
  v35 = &unk_10032C310;
  v18 = v16;
  v36 = v18;
  [v17 enumerateObjectsUsingBlock:&v32];

  if ([v18 count])
  {
    [v5 setObject:v18 forKey:@"allArtistAdamIds"];
  }

  v19 = [v4 attachmentType];
  if (v19 <= 2)
  {
    if (v19 != 1)
    {
      if (v19 != 2)
      {
        goto LABEL_33;
      }

      v20 = @"Image";
      goto LABEL_32;
    }

    v24 = @"Song";
LABEL_31:
    [v5 setObject:v24 forKey:@"audioType"];
    v20 = @"Audio";
LABEL_32:
    [v5 setObject:v20 forKey:@"requestType"];
    goto LABEL_33;
  }

  if (v19 == 3)
  {
    v24 = @"SoundBite";
    goto LABEL_31;
  }

  if (v19 == 4)
  {
    v21 = [NSString alloc];
    [v4 previewFrameTimestamp];
    v23 = [v21 initWithFormat:@"%.0f", v22, v32, v33, v34, v35];
    [v5 setObject:v23 forKey:@"previewFrameTimeCode"];
    [v5 setObject:@"Video" forKey:@"requestType"];
    [v5 setObject:@"VideoClip" forKey:@"videoType"];
  }

LABEL_33:
  v25 = [v4 childAttachmentForRelationship:SSVMediaSocialPostAttachmentRelationshipCoverImage];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 assetToken];
    if (v27)
    {
      [v5 setObject:v27 forKey:@"coverArtToken"];
    }

    v28 = [v26 assetTokenType];

    if (v28)
    {
      [v5 setObject:v28 forKey:@"coverArtTokenType"];
    }
  }

  [v4 uploadTime];
  v30 = [[NSNumber alloc] initWithLongLong:1000 * v29];
  [v5 setObject:v30 forKey:@"uploadTimestamp"];

  return v5;
}

- (id)_externalServiceDictionaryWithDestination:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [v3 accessToken];
  if (v5)
  {
    [v4 setObject:v5 forKey:@"accessToken"];
  }

  v6 = [v3 serviceIdentifier];
  if ([v6 isEqualToString:SSVMediaSocialPostExternalServiceTwitter])
  {
    [v4 setObject:@"twitter" forKey:@"type"];
  }

  else
  {
    v7 = [v3 pageIdentifier];
    if (v7)
    {
      [v4 setObject:v7 forKey:@"pageId"];
    }

    v8 = [v3 pageAccessToken];
    if (v8)
    {
      [v4 setObject:v8 forKey:@"pageToken"];
      v9 = @"facebook_page";
    }

    else if (v7)
    {
      v9 = @"facebook_page";
    }

    else
    {
      v9 = @"facebook_wall";
    }

    [v4 setObject:v9 forKey:@"type"];
  }

  return v4;
}

- (id)_requestBodyDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [[NSString alloc] initWithFormat:@"%lld", self->_postIdentifier];
  [v3 setObject:v4 forKey:@"client_post_id"];
  text = self->_text;
  if (text)
  {
    [v3 setObject:text forKey:@"shareText"];
  }

  p_authorID = &self->_authorID;
  if (!self->_authorID || (p_authorType = &self->_authorType, !self->_authorType))
  {
    p_authorID = &self->_accountID;
    if (!self->_accountID)
    {
      goto LABEL_8;
    }

    p_authorType = &SSVMediaSocialPostAuthorTypeUser;
  }

  v8 = [[NSDictionary alloc] initWithObjectsAndKeys:{*p_authorID, @"id", *p_authorType, @"type", 0}];
  [v3 setObject:v8 forKey:@"owner"];

LABEL_8:
  if ([(NSArray *)self->_attachments count])
  {
    v9 = objc_alloc_init(NSMutableArray);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v10 = self->_attachments;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v45;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v45 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [(MediaSocialPostOperation *)self _attachmentDictionaryWithAttachment:*(*(&v44 + 1) + 8 * i)];
          [v9 addObject:v15];
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKey:@"content"];
  }

  createTime = self->_createTime;
  if (createTime > 0.0)
  {
    v17 = [NSNumber numberWithDouble:floor(createTime * 1000.0)];
    [v3 setObject:v17 forKey:@"createTime"];
  }

  if (self->_isAttributed)
  {
    [v3 setObject:&__kCFBooleanTrue forKey:@"isAttributed"];
  }

  v18 = [(NSArray *)self->_contentItems count];
  contentItems = self->_contentItems;
  if (v18 == 1)
  {
    v20 = [(NSArray *)contentItems firstObject];
    v21 = [(MediaSocialPostOperation *)self _targetDictionaryWithContentItem:v20];
    [v3 setObject:v21 forKey:@"target"];
  }

  else
  {
    if ([(NSArray *)contentItems count]< 2)
    {
      goto LABEL_33;
    }

    v20 = objc_alloc_init(NSMutableArray);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v22 = self->_contentItems;
    v23 = [(NSArray *)v22 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v41;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v41 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [(MediaSocialPostOperation *)self _targetDictionaryWithContentItem:*(*(&v40 + 1) + 8 * j)];
          [v20 addObject:v27];
        }

        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v24);
    }

    [v3 setObject:v20 forKey:@"target"];
  }

LABEL_33:
  if ([(NSArray *)self->_externalServiceDestinations count])
  {
    v28 = objc_alloc_init(NSMutableArray);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v29 = self->_externalServiceDestinations;
    v30 = [(NSArray *)v29 countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v37;
      do
      {
        for (k = 0; k != v31; k = k + 1)
        {
          if (*v37 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = [(MediaSocialPostOperation *)self _externalServiceDictionaryWithDestination:*(*(&v36 + 1) + 8 * k)];
          [v28 addObject:v34];
        }

        v31 = [(NSArray *)v29 countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v31);
    }

    [v3 setObject:v28 forKey:@"shareTo"];
  }

  return v3;
}

- (id)_targetDictionaryWithContentItem:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [v3 identifier];
  if (v5)
  {
    [v4 setObject:v5 forKey:@"id"];
  }

  v6 = [v3 type];

  if (v6)
  {
    [v4 setObject:v6 forKey:@"type"];
  }

  return v4;
}

@end