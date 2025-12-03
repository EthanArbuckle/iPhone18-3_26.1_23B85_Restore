@interface ISReview
- (BOOL)hasSavedDraft;
- (BOOL)removeDraft;
- (BOOL)restoreFromDraft;
- (BOOL)saveAsDraft;
- (ISReview)init;
- (ISReview)initWithCoder:(id)coder;
- (id)_draftsDirectoryPath;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)loadFromDictionary:(id)dictionary;
- (void)mergeWithReview:(id)review preferLocalValues:(BOOL)values;
@end

@implementation ISReview

- (ISReview)init
{
  __ISRecordSPIClassUsage(self);
  v4.receiver = self;
  v4.super_class = ISReview;
  return [(ISReview *)&v4 init];
}

- (ISReview)initWithCoder:(id)coder
{
  v4 = [(ISReview *)self init];
  if (v4)
  {
    v4->_assetType = [coder decodeIntegerForKey:@"assetType"];
    v4->_body = [coder decodeObjectOfClass:objc_opt_class() forKey:@"body"];
    v4->_bodyMaxLength = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"body-max-length", "unsignedIntegerValue"}];
    v4->_infoURL = [coder decodeObjectOfClass:objc_opt_class() forKey:@"infoURL"];
    v4->_itemIdentifier = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"itemID", "itemIdentifierValue"}];
    v4->_nickname = [coder decodeObjectOfClass:objc_opt_class() forKey:@"nickname"];
    v4->_nicknameIsConfirmed = [coder decodeBoolForKey:@"nicknameConfirmed"];
    v4->_nicknameMaxLength = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"nickname-max-length", "unsignedIntegerValue"}];
    [coder decodeFloatForKey:@"rating"];
    v4->_rating = v5;
    v4->_submitURL = [coder decodeObjectOfClass:objc_opt_class() forKey:@"save-user-review-url"];
    v4->_title = [coder decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    v4->_titleMaxLength = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"title-max-length", "unsignedIntegerValue"}];
  }

  return v4;
}

- (void)dealloc
{
  self->_body = 0;

  self->_infoURL = 0;
  self->_nickname = 0;

  self->_submitURL = 0;
  self->_title = 0;
  v3.receiver = self;
  v3.super_class = ISReview;
  [(ISReview *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = self->_assetType;
  *(v5 + 16) = [(NSString *)self->_body copyWithZone:zone];
  *(v5 + 24) = self->_bodyMaxLength;
  *(v5 + 32) = [(NSURL *)self->_infoURL copyWithZone:zone];
  *(v5 + 40) = self->_itemIdentifier;
  *(v5 + 48) = [(NSString *)self->_nickname copyWithZone:zone];
  *(v5 + 56) = self->_nicknameIsConfirmed;
  *(v5 + 64) = self->_nicknameMaxLength;
  *(v5 + 72) = self->_rating;
  *(v5 + 80) = [(NSURL *)self->_submitURL copyWithZone:zone];
  *(v5 + 88) = [(NSString *)self->_title copyWithZone:zone];
  *(v5 + 96) = self->_titleMaxLength;
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInteger:self->_assetType forKey:@"assetType"];
  [coder encodeObject:self->_body forKey:@"body"];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", self->_bodyMaxLength), @"body-max-length"}];
  [coder encodeObject:self->_infoURL forKey:@"infoURL"];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithItemIdentifier:", self->_itemIdentifier), @"itemID"}];
  [coder encodeObject:self->_nickname forKey:@"nickname"];
  [coder encodeBool:self->_nicknameIsConfirmed forKey:@"nicknameConfirmed"];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", self->_nicknameMaxLength), @"nickname-max-length"}];
  *&v5 = self->_rating;
  [coder encodeFloat:@"rating" forKey:v5];
  [coder encodeObject:self->_submitURL forKey:@"save-user-review-url"];
  [coder encodeObject:self->_title forKey:@"title"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_titleMaxLength];

  [coder encodeObject:v6 forKey:@"title-max-length"];
}

- (BOOL)hasSavedDraft
{
  v2 = [-[ISReview _draftsDirectoryPath](self "_draftsDirectoryPath")];
  if (v2)
  {
    v3 = v2;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];

    LOBYTE(v2) = [defaultManager fileExistsAtPath:v3];
  }

  return v2;
}

- (void)loadFromDictionary:(id)dictionary
{
  v5 = [dictionary objectForKey:@"metadata"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 objectForKey:@"body-max-length"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [v6 unsignedIntegerValue];
      v8 = 0x7FFFFFFFFFFFFFFFLL;
      if (unsignedIntegerValue)
      {
        v8 = unsignedIntegerValue;
      }

      self->_bodyMaxLength = v8;
    }

    v9 = [v5 objectForKey:@"nickname-max-length"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue2 = [v9 unsignedIntegerValue];
      v11 = 0x7FFFFFFFFFFFFFFFLL;
      if (unsignedIntegerValue2)
      {
        v11 = unsignedIntegerValue2;
      }

      self->_nicknameMaxLength = v11;
    }

    v12 = [v5 objectForKey:@"save-user-review-url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      self->_submitURL = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v12];
    }

    v13 = [v5 objectForKey:@"title-max-length"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue3 = [v13 unsignedIntegerValue];
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      if (unsignedIntegerValue3)
      {
        v15 = unsignedIntegerValue3;
      }

      self->_titleMaxLength = v15;
    }
  }

  v16 = [dictionary objectForKey:@"review-info"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [v16 objectForKey:@"body"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v17 length])
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      [(ISReview *)self setBody:v18];
    }

    v19 = [v16 objectForKey:@"nickname"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ISReview setNicknameIsConfirmed:](self, "setNicknameIsConfirmed:", [v19 length] != 0);
      if ([v19 length])
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      [(ISReview *)self setNickname:v20];
    }

    v21 = [v16 objectForKey:@"rating"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v21 floatValue];
      [(ISReview *)self setRating:?];
    }

    v22 = [v16 objectForKey:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v22 length])
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      [(ISReview *)self setTitle:v23];
    }
  }
}

- (void)mergeWithReview:(id)review preferLocalValues:(BOOL)values
{
  valuesCopy = values;
  if (values)
  {
    if (![(NSString *)self->_body length])
    {
      -[ISReview setBody:](self, "setBody:", [review body]);
    }

    if (self->_bodyMaxLength)
    {
LABEL_8:
      if (!self->_infoURL)
      {
        -[ISReview setInfoURL:](self, "setInfoURL:", [review infoURL]);
      }

      if (self->_itemIdentifier)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else
  {
    -[ISReview setBody:](self, "setBody:", [review body]);
  }

  -[ISReview setBodyMaxLength:](self, "setBodyMaxLength:", [review bodyMaxLength]);
  if (valuesCopy)
  {
    goto LABEL_8;
  }

  -[ISReview setInfoURL:](self, "setInfoURL:", [review infoURL]);
LABEL_13:
  -[ISReview setItemIdentifier:](self, "setItemIdentifier:", [review itemIdentifier]);
  if (!valuesCopy)
  {
    -[ISReview setNicknameIsConfirmed:](self, "setNicknameIsConfirmed:", [review nicknameIsConfirmed]);
    -[ISReview setNickname:](self, "setNickname:", [review nickname]);
    goto LABEL_19;
  }

LABEL_14:
  if (![(NSString *)self->_nickname length])
  {
    -[ISReview setNicknameIsConfirmed:](self, "setNicknameIsConfirmed:", [review nicknameIsConfirmed]);
    -[ISReview setNickname:](self, "setNickname:", [review nickname]);
  }

  if (self->_nicknameMaxLength)
  {
LABEL_20:
    if (self->_rating < 0.00000011921)
    {
      [review rating];
      [(ISReview *)self setRating:?];
    }

    if (self->_submitURL)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_19:
  -[ISReview setNicknameMaxLength:](self, "setNicknameMaxLength:", [review nicknameMaxLength]);
  if (valuesCopy)
  {
    goto LABEL_20;
  }

  [review rating];
  [(ISReview *)self setRating:?];
LABEL_25:
  -[ISReview setSubmitURL:](self, "setSubmitURL:", [review submitURL]);
  if (!valuesCopy)
  {
    -[ISReview setTitle:](self, "setTitle:", [review title]);
LABEL_31:
    titleMaxLength = [review titleMaxLength];

    [(ISReview *)self setTitleMaxLength:titleMaxLength];
    return;
  }

LABEL_26:
  if (![(NSString *)self->_title length])
  {
    -[ISReview setTitle:](self, "setTitle:", [review title]);
  }

  if (!self->_titleMaxLength)
  {
    goto LABEL_31;
  }
}

- (BOOL)removeDraft
{
  v21 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [-[ISReview _draftsDirectoryPath](self "_draftsDirectoryPath")];
  if (v4 && (v5 = v4, [defaultManager fileExistsAtPath:v4]))
  {
    v16 = 0;
    v6 = [defaultManager removeItemAtPath:v5 error:&v16];
    if ((v6 & 1) == 0)
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38] shouldLog];
      if ([mEMORY[0x277D69B38] shouldLogToDisk])
      {
        v9 = shouldLog | 2;
      }

      else
      {
        v9 = shouldLog;
      }

      if (!os_log_type_enabled([mEMORY[0x277D69B38] OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v9 &= 2u;
      }

      if (v9)
      {
        v10 = objc_opt_class();
        v17 = 138412546;
        v18 = v10;
        v19 = 2112;
        v20 = v16;
        LODWORD(v15) = 22;
        v11 = _os_log_send_and_compose_impl();
        if (v11)
        {
          v12 = v11;
          [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:{4, &v17, v15}];
          free(v12);
          SSFileLog();
        }
      }
    }
  }

  else
  {
    v6 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)restoreFromDraft
{
  v23 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [-[ISReview _draftsDirectoryPath](self "_draftsDirectoryPath")];
  if (v4)
  {
    v5 = v4;
    if ([defaultManager fileExistsAtPath:v4])
    {
      v18 = 0;
      v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v5];
      if (!v6 || (v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v18]) == 0)
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38])
        {
          mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog = [mEMORY[0x277D69B38] shouldLog];
        if ([mEMORY[0x277D69B38] shouldLogToDisk])
        {
          v13 = shouldLog | 2;
        }

        else
        {
          v13 = shouldLog;
        }

        if (!os_log_type_enabled([mEMORY[0x277D69B38] OSLogObject], OS_LOG_TYPE_DEFAULT))
        {
          v13 &= 2u;
        }

        if (v13)
        {
          v14 = objc_opt_class();
          v19 = 138412546;
          v20 = v14;
          v21 = 2114;
          v22 = v18;
          LODWORD(v17) = 22;
          v9 = _os_log_send_and_compose_impl();
          if (!v9)
          {
            goto LABEL_7;
          }

          v15 = v9;
          [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:{4, &v19, v17}];
          free(v15);
          SSFileLog();
        }

        LOBYTE(v9) = 0;
        goto LABEL_7;
      }

      v8 = v7;
      [v7 setSubmitURL:0];
      [(ISReview *)self mergeWithReview:v8 preferLocalValues:0];
    }
  }

  LOBYTE(v9) = 1;
LABEL_7:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)saveAsDraft
{
  v28 = *MEMORY[0x277D85DE8];
  _draftsDirectoryPath = [(ISReview *)self _draftsDirectoryPath];
  if (!_draftsDirectoryPath || ([MEMORY[0x277CCAA00] ensureDirectoryExists:_draftsDirectoryPath] & 1) == 0)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v17 = shouldLog | 2;
    }

    else
    {
      v17 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x277D69B38] OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v17 &= 2u;
    }

    if (!v17)
    {
      goto LABEL_30;
    }

    v24 = 138412546;
    v25 = objc_opt_class();
    v26 = 2112;
    v27 = _draftsDirectoryPath;
    LODWORD(v22) = 22;
    v18 = _os_log_send_and_compose_impl();
    if (!v18)
    {
      goto LABEL_30;
    }

    v19 = v18;
    [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:{4, &v24, v22}];
    free(v19);
    goto LABEL_29;
  }

  v23 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v23];
  if (v4)
  {
    v5 = v23 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5 || (v6 = v4, v7 = [_draftsDirectoryPath stringByAppendingPathComponent:{-[ISReview _draftFileName](self, "_draftFileName")}], v8 = 1, (objc_msgSend(v6, "writeToFile:options:error:", v7, 1, &v23) & 1) == 0))
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      v11 = shouldLog2 | 2;
    }

    else
    {
      v11 = shouldLog2;
    }

    if (!os_log_type_enabled([mEMORY[0x277D69B38]2 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v11 &= 2u;
    }

    if (!v11)
    {
      goto LABEL_30;
    }

    v12 = objc_opt_class();
    v24 = 138543618;
    v25 = v12;
    v26 = 2114;
    v27 = v23;
    LODWORD(v22) = 22;
    v13 = _os_log_send_and_compose_impl();
    if (!v13)
    {
      goto LABEL_30;
    }

    v14 = v13;
    [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:{4, &v24, v22}];
    free(v14);
LABEL_29:
    SSFileLog();
LABEL_30:
    v8 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)_draftsDirectoryPath
{
  1uLL = [-[NSArray lastObject](NSSearchPathForDirectoriesInDomains(NSLibraryDirectory 1uLL];

  return [1uLL stringByAppendingPathComponent:@"Reviews"];
}

@end