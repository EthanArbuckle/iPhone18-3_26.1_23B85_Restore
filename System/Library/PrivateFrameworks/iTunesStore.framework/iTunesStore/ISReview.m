@interface ISReview
- (BOOL)hasSavedDraft;
- (BOOL)removeDraft;
- (BOOL)restoreFromDraft;
- (BOOL)saveAsDraft;
- (ISReview)init;
- (ISReview)initWithCoder:(id)a3;
- (id)_draftsDirectoryPath;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)loadFromDictionary:(id)a3;
- (void)mergeWithReview:(id)a3 preferLocalValues:(BOOL)a4;
@end

@implementation ISReview

- (ISReview)init
{
  __ISRecordSPIClassUsage(self);
  v4.receiver = self;
  v4.super_class = ISReview;
  return [(ISReview *)&v4 init];
}

- (ISReview)initWithCoder:(id)a3
{
  v4 = [(ISReview *)self init];
  if (v4)
  {
    v4->_assetType = [a3 decodeIntegerForKey:@"assetType"];
    v4->_body = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"body"];
    v4->_bodyMaxLength = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"body-max-length", "unsignedIntegerValue"}];
    v4->_infoURL = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"infoURL"];
    v4->_itemIdentifier = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"itemID", "itemIdentifierValue"}];
    v4->_nickname = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"nickname"];
    v4->_nicknameIsConfirmed = [a3 decodeBoolForKey:@"nicknameConfirmed"];
    v4->_nicknameMaxLength = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"nickname-max-length", "unsignedIntegerValue"}];
    [a3 decodeFloatForKey:@"rating"];
    v4->_rating = v5;
    v4->_submitURL = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"save-user-review-url"];
    v4->_title = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    v4->_titleMaxLength = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"title-max-length", "unsignedIntegerValue"}];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = self->_assetType;
  *(v5 + 16) = [(NSString *)self->_body copyWithZone:a3];
  *(v5 + 24) = self->_bodyMaxLength;
  *(v5 + 32) = [(NSURL *)self->_infoURL copyWithZone:a3];
  *(v5 + 40) = self->_itemIdentifier;
  *(v5 + 48) = [(NSString *)self->_nickname copyWithZone:a3];
  *(v5 + 56) = self->_nicknameIsConfirmed;
  *(v5 + 64) = self->_nicknameMaxLength;
  *(v5 + 72) = self->_rating;
  *(v5 + 80) = [(NSURL *)self->_submitURL copyWithZone:a3];
  *(v5 + 88) = [(NSString *)self->_title copyWithZone:a3];
  *(v5 + 96) = self->_titleMaxLength;
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInteger:self->_assetType forKey:@"assetType"];
  [a3 encodeObject:self->_body forKey:@"body"];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", self->_bodyMaxLength), @"body-max-length"}];
  [a3 encodeObject:self->_infoURL forKey:@"infoURL"];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithItemIdentifier:", self->_itemIdentifier), @"itemID"}];
  [a3 encodeObject:self->_nickname forKey:@"nickname"];
  [a3 encodeBool:self->_nicknameIsConfirmed forKey:@"nicknameConfirmed"];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", self->_nicknameMaxLength), @"nickname-max-length"}];
  *&v5 = self->_rating;
  [a3 encodeFloat:@"rating" forKey:v5];
  [a3 encodeObject:self->_submitURL forKey:@"save-user-review-url"];
  [a3 encodeObject:self->_title forKey:@"title"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_titleMaxLength];

  [a3 encodeObject:v6 forKey:@"title-max-length"];
}

- (BOOL)hasSavedDraft
{
  v2 = [-[ISReview _draftsDirectoryPath](self "_draftsDirectoryPath")];
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x277CCAA00] defaultManager];

    LOBYTE(v2) = [v4 fileExistsAtPath:v3];
  }

  return v2;
}

- (void)loadFromDictionary:(id)a3
{
  v5 = [a3 objectForKey:@"metadata"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 objectForKey:@"body-max-length"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 unsignedIntegerValue];
      v8 = 0x7FFFFFFFFFFFFFFFLL;
      if (v7)
      {
        v8 = v7;
      }

      self->_bodyMaxLength = v8;
    }

    v9 = [v5 objectForKey:@"nickname-max-length"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 unsignedIntegerValue];
      v11 = 0x7FFFFFFFFFFFFFFFLL;
      if (v10)
      {
        v11 = v10;
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
      v14 = [v13 unsignedIntegerValue];
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      if (v14)
      {
        v15 = v14;
      }

      self->_titleMaxLength = v15;
    }
  }

  v16 = [a3 objectForKey:@"review-info"];
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

- (void)mergeWithReview:(id)a3 preferLocalValues:(BOOL)a4
{
  v4 = a4;
  if (a4)
  {
    if (![(NSString *)self->_body length])
    {
      -[ISReview setBody:](self, "setBody:", [a3 body]);
    }

    if (self->_bodyMaxLength)
    {
LABEL_8:
      if (!self->_infoURL)
      {
        -[ISReview setInfoURL:](self, "setInfoURL:", [a3 infoURL]);
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
    -[ISReview setBody:](self, "setBody:", [a3 body]);
  }

  -[ISReview setBodyMaxLength:](self, "setBodyMaxLength:", [a3 bodyMaxLength]);
  if (v4)
  {
    goto LABEL_8;
  }

  -[ISReview setInfoURL:](self, "setInfoURL:", [a3 infoURL]);
LABEL_13:
  -[ISReview setItemIdentifier:](self, "setItemIdentifier:", [a3 itemIdentifier]);
  if (!v4)
  {
    -[ISReview setNicknameIsConfirmed:](self, "setNicknameIsConfirmed:", [a3 nicknameIsConfirmed]);
    -[ISReview setNickname:](self, "setNickname:", [a3 nickname]);
    goto LABEL_19;
  }

LABEL_14:
  if (![(NSString *)self->_nickname length])
  {
    -[ISReview setNicknameIsConfirmed:](self, "setNicknameIsConfirmed:", [a3 nicknameIsConfirmed]);
    -[ISReview setNickname:](self, "setNickname:", [a3 nickname]);
  }

  if (self->_nicknameMaxLength)
  {
LABEL_20:
    if (self->_rating < 0.00000011921)
    {
      [a3 rating];
      [(ISReview *)self setRating:?];
    }

    if (self->_submitURL)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_19:
  -[ISReview setNicknameMaxLength:](self, "setNicknameMaxLength:", [a3 nicknameMaxLength]);
  if (v4)
  {
    goto LABEL_20;
  }

  [a3 rating];
  [(ISReview *)self setRating:?];
LABEL_25:
  -[ISReview setSubmitURL:](self, "setSubmitURL:", [a3 submitURL]);
  if (!v4)
  {
    -[ISReview setTitle:](self, "setTitle:", [a3 title]);
LABEL_31:
    v7 = [a3 titleMaxLength];

    [(ISReview *)self setTitleMaxLength:v7];
    return;
  }

LABEL_26:
  if (![(NSString *)self->_title length])
  {
    -[ISReview setTitle:](self, "setTitle:", [a3 title]);
  }

  if (!self->_titleMaxLength)
  {
    goto LABEL_31;
  }
}

- (BOOL)removeDraft
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [-[ISReview _draftsDirectoryPath](self "_draftsDirectoryPath")];
  if (v4 && (v5 = v4, [v3 fileExistsAtPath:v4]))
  {
    v16 = 0;
    v6 = [v3 removeItemAtPath:v5 error:&v16];
    if ((v6 & 1) == 0)
    {
      v7 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!v7)
      {
        v7 = [MEMORY[0x277D69B38] sharedConfig];
      }

      v8 = [v7 shouldLog];
      if ([v7 shouldLogToDisk])
      {
        v9 = v8 | 2;
      }

      else
      {
        v9 = v8;
      }

      if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_ERROR))
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
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [-[ISReview _draftsDirectoryPath](self "_draftsDirectoryPath")];
  if (v4)
  {
    v5 = v4;
    if ([v3 fileExistsAtPath:v4])
    {
      v18 = 0;
      v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v5];
      if (!v6 || (v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v18]) == 0)
      {
        v11 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!v11)
        {
          v11 = [MEMORY[0x277D69B38] sharedConfig];
        }

        v12 = [v11 shouldLog];
        if ([v11 shouldLogToDisk])
        {
          v13 = v12 | 2;
        }

        else
        {
          v13 = v12;
        }

        if (!os_log_type_enabled([v11 OSLogObject], OS_LOG_TYPE_DEFAULT))
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
  v3 = [(ISReview *)self _draftsDirectoryPath];
  if (!v3 || ([MEMORY[0x277CCAA00] ensureDirectoryExists:v3] & 1) == 0)
  {
    v15 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v15)
    {
      v15 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v16 = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v17 = v16 | 2;
    }

    else
    {
      v17 = v16;
    }

    if (!os_log_type_enabled([v15 OSLogObject], OS_LOG_TYPE_ERROR))
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
    v27 = v3;
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

  if (!v5 || (v6 = v4, v7 = [v3 stringByAppendingPathComponent:{-[ISReview _draftFileName](self, "_draftFileName")}], v8 = 1, (objc_msgSend(v6, "writeToFile:options:error:", v7, 1, &v23) & 1) == 0))
  {
    v9 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v9)
    {
      v9 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_ERROR))
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
  v2 = [-[NSArray lastObject](NSSearchPathForDirectoriesInDomains(NSLibraryDirectory 1uLL];

  return [v2 stringByAppendingPathComponent:@"Reviews"];
}

@end