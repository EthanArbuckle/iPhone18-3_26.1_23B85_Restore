@interface MediaSocialPostOperation
- (MediaSocialPostOperation)initWithPostDescription:(id)description;
- (MediaSocialPostOperation)initWithPostEntity:(id)entity;
- (NSString)userAgent;
- (id)_attachmentDictionaryWithAttachment:(id)attachment;
- (id)_externalServiceDictionaryWithDestination:(id)destination;
- (id)_requestBodyDictionary;
- (id)_targetDictionaryWithContentItem:(id)item;
- (id)resultBlock;
- (void)run;
- (void)setResultBlock:(id)block;
- (void)setUserAgent:(id)agent;
@end

@implementation MediaSocialPostOperation

- (MediaSocialPostOperation)initWithPostDescription:(id)description
{
  descriptionCopy = description;
  v20.receiver = self;
  v20.super_class = MediaSocialPostOperation;
  v5 = [(MediaSocialPostOperation *)&v20 init];
  if (v5)
  {
    accountIdentifier = [descriptionCopy accountIdentifier];
    accountID = v5->_accountID;
    v5->_accountID = accountIdentifier;

    authorIdentifier = [descriptionCopy authorIdentifier];
    authorID = v5->_authorID;
    v5->_authorID = authorIdentifier;

    authorType = [descriptionCopy authorType];
    authorType = v5->_authorType;
    v5->_authorType = authorType;

    contentItems = [descriptionCopy contentItems];
    contentItems = v5->_contentItems;
    v5->_contentItems = contentItems;

    externalServiceDestinations = [descriptionCopy externalServiceDestinations];
    externalServiceDestinations = v5->_externalServiceDestinations;
    v5->_externalServiceDestinations = externalServiceDestinations;

    text = [descriptionCopy text];
    text = v5->_text;
    v5->_text = text;

    v18 = CFUUIDCreate(0);
    v5->_postIdentifier = *&CFUUIDGetUUIDBytes(v18);
    CFRelease(v18);
  }

  return v5;
}

- (MediaSocialPostOperation)initWithPostEntity:(id)entity
{
  entityCopy = entity;
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
    [entityCopy getValues:obj forProperties:v22 count:7];
    objc_storeStrong(&v5->_accountID, obj[0]);
    objc_storeStrong(&v5->_authorID, obj[1]);
    objc_storeStrong(&v5->_authorType, v19[0]);
    [v21 doubleValue];
    v5->_createTime = v6;
    v5->_isAttributed = [v19[1] BOOLValue];
    v5->_postIdentifier = [entityCopy persistentID];
    objc_storeStrong(&v5->_text, v20[0]);
    uploadedAttachments = [entityCopy uploadedAttachments];
    attachments = v5->_attachments;
    v5->_attachments = uploadedAttachments;

    contentItems = [entityCopy contentItems];
    contentItems = v5->_contentItems;
    v5->_contentItems = contentItems;

    externalServiceDestinations = [entityCopy externalServiceDestinations];
    externalServiceDestinations = v5->_externalServiceDestinations;
    v5->_externalServiceDestinations = externalServiceDestinations;

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

- (void)setResultBlock:(id)block
{
  blockCopy = block;
  [(MediaSocialPostOperation *)self lock];
  if (self->_resultBlock != blockCopy)
  {
    v4 = [blockCopy copy];
    resultBlock = self->_resultBlock;
    self->_resultBlock = v4;
  }

  [(MediaSocialPostOperation *)self unlock];
}

- (void)setUserAgent:(id)agent
{
  agentCopy = agent;
  [(MediaSocialPostOperation *)self lock];
  if (self->_userAgent != agentCopy)
  {
    v4 = [(NSString *)agentCopy copy];
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
  _requestBodyDictionary = [(MediaSocialPostOperation *)self _requestBodyDictionary];
  v67 = 0;
  v4 = [NSJSONSerialization dataWithJSONObject:_requestBodyDictionary options:0 error:&v67];
  v5 = v67;
  if (v4)
  {
    userAgent = [(MediaSocialPostOperation *)self userAgent];
    v7 = [SSURLBagContext contextWithBagType:0];
    v8 = SSHTTPHeaderUserAgent;
    [v7 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
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
          [v15 setValue:userAgent forHTTPHeaderField:v8];
          SSVAddMediaSocialHeadersToURLRequestProperties();
          [v63 setRequestProperties:v15];
          v61 = v15;
          v16 = +[SSLogConfig sharedDaemonConfig];
          if (!v16)
          {
            v16 = +[SSLogConfig sharedConfig];
          }

          shouldLog = [v16 shouldLog];
          shouldLogToDisk = [v16 shouldLogToDisk];
          oSLogObject = [v16 OSLogObject];
          v20 = oSLogObject;
          if (shouldLogToDisk)
          {
            shouldLog |= 2u;
          }

          if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
          {
            shouldLog &= 2u;
          }

          if (shouldLog)
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

          dataProvider = [v63 dataProvider];
          output = [dataProvider output];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
LABEL_32:

            goto LABEL_33;
          }

          v59 = [output objectForKey:@"status"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![v59 isEqualToString:@"error"])
          {
LABEL_31:
            response = [v63 response];
            -[MediaSocialPostResponse setStatusCode:](v65, "setStatusCode:", [response itunes_statusCode]);

            [(MediaSocialPostResponse *)v65 setValuesWithResponseDictionary:output];
            goto LABEL_32;
          }

          v58 = [output objectForKey:@"error"];
          v29 = +[SSLogConfig sharedDaemonConfig];
          if (!v29)
          {
            v29 = +[SSLogConfig sharedConfig];
          }

          shouldLog2 = [v29 shouldLog];
          shouldLogToDisk2 = [v29 shouldLogToDisk];
          v57 = v29;
          oSLogObject2 = [v29 OSLogObject];
          v32 = oSLogObject2;
          if (shouldLogToDisk2)
          {
            shouldLog2 |= 2u;
          }

          if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
          {
            shouldLog2 &= 2u;
          }

          if (shouldLog2)
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

        shouldLog3 = [v43 shouldLog];
        shouldLogToDisk3 = [v43 shouldLogToDisk];
        oSLogObject3 = [v43 OSLogObject];
        v47 = oSLogObject3;
        if (shouldLogToDisk3)
        {
          shouldLog3 |= 2u;
        }

        if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
        {
          shouldLog3 &= 2u;
        }

        if (shouldLog3)
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

  userAgent = +[SSLogConfig sharedDaemonConfig];
  if (!userAgent)
  {
    userAgent = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [userAgent shouldLog];
  shouldLogToDisk4 = [userAgent shouldLogToDisk];
  oSLogObject4 = [userAgent OSLogObject];
  v7 = oSLogObject4;
  if (shouldLogToDisk4)
  {
    shouldLog4 |= 2u;
  }

  if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    shouldLog4 &= 2u;
  }

  if (!shouldLog4)
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
  resultBlock = [(MediaSocialPostOperation *)self resultBlock];
  v52 = resultBlock;
  if (resultBlock)
  {
    (*(resultBlock + 16))(resultBlock, v65);
    [(MediaSocialPostOperation *)self setResultBlock:0];
  }
}

- (id)_attachmentDictionaryWithAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v5 = +[NSMutableDictionary dictionary];
  albumIdentifier = [attachmentCopy albumIdentifier];
  if (albumIdentifier)
  {
    [v5 setObject:albumIdentifier forKey:@"albumId"];
  }

  assetToken = [attachmentCopy assetToken];

  if (assetToken)
  {
    [v5 setObject:assetToken forKey:@"contentToken"];
  }

  assetTokenType = [attachmentCopy assetTokenType];

  if (assetTokenType)
  {
    v9 = assetTokenType;
  }

  else
  {
    v9 = @"AssetToken";
  }

  [v5 setObject:v9 forKey:@"contentTokenType"];
  categoryName = [attachmentCopy categoryName];

  if (categoryName)
  {
    [v5 setObject:categoryName forKey:@"category"];
  }

  attachmentDescription = [attachmentCopy attachmentDescription];

  if (attachmentDescription)
  {
    [v5 setObject:attachmentDescription forKey:@"description"];
  }

  if ([attachmentCopy isExplicitContent])
  {
    [v5 setObject:@"Explicit" forKey:@"parentalAdvisoryType"];
  }

  title = [attachmentCopy title];

  if (title)
  {
    [v5 setObject:title forKey:@"title"];
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
      stringValue = [(NSNumber *)accountID stringValue];
      [v5 setObject:stringValue forKey:@"artistAdamId"];
    }
  }

  v16 = objc_alloc_init(NSMutableArray);
  artists = [attachmentCopy artists];
  v32 = _NSConcreteStackBlock;
  v33 = 3221225472;
  v34 = sub_1001FCBEC;
  v35 = &unk_10032C310;
  v18 = v16;
  v36 = v18;
  [artists enumerateObjectsUsingBlock:&v32];

  if ([v18 count])
  {
    [v5 setObject:v18 forKey:@"allArtistAdamIds"];
  }

  attachmentType = [attachmentCopy attachmentType];
  if (attachmentType <= 2)
  {
    if (attachmentType != 1)
    {
      if (attachmentType != 2)
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

  if (attachmentType == 3)
  {
    v24 = @"SoundBite";
    goto LABEL_31;
  }

  if (attachmentType == 4)
  {
    v21 = [NSString alloc];
    [attachmentCopy previewFrameTimestamp];
    v23 = [v21 initWithFormat:@"%.0f", v22, v32, v33, v34, v35];
    [v5 setObject:v23 forKey:@"previewFrameTimeCode"];
    [v5 setObject:@"Video" forKey:@"requestType"];
    [v5 setObject:@"VideoClip" forKey:@"videoType"];
  }

LABEL_33:
  v25 = [attachmentCopy childAttachmentForRelationship:SSVMediaSocialPostAttachmentRelationshipCoverImage];
  v26 = v25;
  if (v25)
  {
    assetToken2 = [v25 assetToken];
    if (assetToken2)
    {
      [v5 setObject:assetToken2 forKey:@"coverArtToken"];
    }

    assetTokenType2 = [v26 assetTokenType];

    if (assetTokenType2)
    {
      [v5 setObject:assetTokenType2 forKey:@"coverArtTokenType"];
    }
  }

  [attachmentCopy uploadTime];
  v30 = [[NSNumber alloc] initWithLongLong:1000 * v29];
  [v5 setObject:v30 forKey:@"uploadTimestamp"];

  return v5;
}

- (id)_externalServiceDictionaryWithDestination:(id)destination
{
  destinationCopy = destination;
  v4 = +[NSMutableDictionary dictionary];
  accessToken = [destinationCopy accessToken];
  if (accessToken)
  {
    [v4 setObject:accessToken forKey:@"accessToken"];
  }

  serviceIdentifier = [destinationCopy serviceIdentifier];
  if ([serviceIdentifier isEqualToString:SSVMediaSocialPostExternalServiceTwitter])
  {
    [v4 setObject:@"twitter" forKey:@"type"];
  }

  else
  {
    pageIdentifier = [destinationCopy pageIdentifier];
    if (pageIdentifier)
    {
      [v4 setObject:pageIdentifier forKey:@"pageId"];
    }

    pageAccessToken = [destinationCopy pageAccessToken];
    if (pageAccessToken)
    {
      [v4 setObject:pageAccessToken forKey:@"pageToken"];
      v9 = @"facebook_page";
    }

    else if (pageIdentifier)
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
    firstObject = [(NSArray *)contentItems firstObject];
    v21 = [(MediaSocialPostOperation *)self _targetDictionaryWithContentItem:firstObject];
    [v3 setObject:v21 forKey:@"target"];
  }

  else
  {
    if ([(NSArray *)contentItems count]< 2)
    {
      goto LABEL_33;
    }

    firstObject = objc_alloc_init(NSMutableArray);
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
          [firstObject addObject:v27];
        }

        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v24);
    }

    [v3 setObject:firstObject forKey:@"target"];
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

- (id)_targetDictionaryWithContentItem:(id)item
{
  itemCopy = item;
  v4 = +[NSMutableDictionary dictionary];
  identifier = [itemCopy identifier];
  if (identifier)
  {
    [v4 setObject:identifier forKey:@"id"];
  }

  type = [itemCopy type];

  if (type)
  {
    [v4 setObject:type forKey:@"type"];
  }

  return v4;
}

@end