@interface PPSource
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSource:(id)source;
- (NSSet)featureNames;
- (PPSource)initWithBundleId:(id)id groupId:(id)groupId documentId:(id)documentId date:(id)date;
- (PPSource)initWithBundleId:(id)id groupId:(id)groupId documentId:(id)documentId date:(id)date relevanceDate:(id)relevanceDate contactHandles:(id)handles language:(id)language metadata:(id)self0;
- (PPSource)initWithCoder:(id)coder;
- (id)description;
- (id)featureValueForName:(id)name;
- (id)sha256;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPSource

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"bundleId"])
  {
    v5 = MEMORY[0x1E695FE60];
    bundleId = self->_bundleId;
LABEL_7:
    v7 = [v5 featureValueWithString:bundleId];
LABEL_8:
    v8 = v7;
    goto LABEL_9;
  }

  if ([nameCopy isEqualToString:@"groupId"])
  {
    v5 = MEMORY[0x1E695FE60];
    bundleId = self->_groupId;
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"documentId"])
  {
    v5 = MEMORY[0x1E695FE60];
    bundleId = self->_documentId;
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"date"])
  {
    v10 = MEMORY[0x1E695FE60];
    date = self->_date;
LABEL_16:
    [(NSDate *)date timeIntervalSince1970];
    v12 = v10;
LABEL_17:
    v7 = [v12 featureValueWithDouble:?];
    goto LABEL_8;
  }

  if ([nameCopy isEqualToString:@"relevanceDate"])
  {
    v10 = MEMORY[0x1E695FE60];
    date = self->_relevanceDate;
    goto LABEL_16;
  }

  if ([nameCopy isEqualToString:@"contactHandles"])
  {
    v13 = MEMORY[0x1E695FE60];
    v14 = [MEMORY[0x1E695FF10] sequenceWithStringArray:self->_contactHandles];
    v8 = [v13 featureValueWithSequence:v14];
  }

  else
  {
    if ([nameCopy isEqualToString:@"language"])
    {
      v5 = MEMORY[0x1E695FE60];
      bundleId = self->_language;
      goto LABEL_7;
    }

    if ([nameCopy hasPrefix:@"meta_"])
    {
      metadata = self->_metadata;
      if (!metadata)
      {
        v12 = MEMORY[0x1E695FE60];
        goto LABEL_17;
      }

      v16 = [nameCopy substringFromIndex:{objc_msgSend(@"meta_", "length")}];
      v8 = [(PPSourceMetadata *)metadata featureValueForName:v16];
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_9:

  return v8;
}

- (NSSet)featureNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__PPSource_featureNames__block_invoke;
  block[3] = &unk_1E77F7CC8;
  block[4] = self;
  if (featureNames__pasOnceToken12 != -1)
  {
    dispatch_once(&featureNames__pasOnceToken12, block);
  }

  return featureNames__pasExprOnceResult_4146;
}

void __24__PPSource_featureNames__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 8) featureNames];
  v4 = [v3 allObjects];

  v5 = [v4 _pas_mappedArrayWithTransform:&__block_literal_global_4147];

  v6 = objc_autoreleasePoolPush();
  v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"bundleId", @"groupId", @"documentId", @"date", @"relevanceDate", @"contactHandles", @"language", 0}];
  objc_autoreleasePoolPop(v6);
  v8 = [v7 setByAddingObjectsFromArray:v5];

  v9 = featureNames__pasExprOnceResult_4146;
  featureNames__pasExprOnceResult_4146 = v8;

  objc_autoreleasePoolPop(v2);
}

- (id)sha256
{
  v3 = objc_autoreleasePoolPush();
  v11 = 0;
  v12 = &v11;
  v13 = 0x8810000000;
  v14 = &unk_1A8044C0E;
  memset(&v15, 0, sizeof(v15));
  CC_SHA256_Init(&v15);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __18__PPSource_sha256__block_invoke;
  v10[3] = &unk_1E77F6C80;
  v10[4] = &v11;
  v4 = MEMORY[0x1AC568040](v10);
  (v4)[2](v4, self->_bundleId);
  (v4)[2](v4, self->_groupId);
  (v4)[2](v4, self->_documentId);
  [(NSDate *)self->_date timeIntervalSince1970];
  if (v5 < 0.0)
  {
    v5 = 0.0;
  }

  data = fmin(v5, 4294967300.0);
  CC_SHA256_Update((v12 + 4), &data, 4u);
  v6 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:32];
  mutableBytes = [v6 mutableBytes];
  CC_SHA256_Final(mutableBytes, (v12 + 4));

  _Block_object_dispose(&v11, 8);
  objc_autoreleasePoolPop(v3);

  return v6;
}

void __18__PPSource_sha256__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [v3 dataUsingEncoding:4];
    v6 = v5;
    if (v5)
    {
      CC_SHA256_Update((*(*(a1 + 32) + 8) + 32), [v5 bytes], objc_msgSend(v5, "length"));
    }

    else
    {
      v7 = pp_default_log_handle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_1A7FD3000, v7, OS_LOG_TYPE_DEFAULT, "Unable to hash bad string ivar on PPSource", v8, 2u);
      }
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PPSource *)self isEqualToSource:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToSource:(id)source
{
  sourceCopy = source;
  p_isa = &sourceCopy->super.isa;
  if (sourceCopy == self)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    if (sourceCopy)
    {
      v6 = self->_bundleId;
      v7 = p_isa[5];
      if (v6 | v7)
      {
        v15 = v7;
        LOBYTE(v16) = 0;
        if (!v6 || !v7)
        {
          goto LABEL_45;
        }

        v16 = [(NSDate *)v6 isEqualToString:v7];

        if (!v16)
        {
          goto LABEL_46;
        }
      }

      v6 = self->_groupId;
      v8 = p_isa[6];
      if (v6 | v8)
      {
        v15 = v8;
        LOBYTE(v16) = 0;
        if (!v6 || !v8)
        {
          goto LABEL_45;
        }

        v16 = [(NSDate *)v6 isEqualToString:v8];

        if (!v16)
        {
          goto LABEL_46;
        }
      }

      v6 = self->_documentId;
      v9 = p_isa[7];
      if (v6 | v9)
      {
        v15 = v9;
        LOBYTE(v16) = 0;
        if (!v6 || !v9)
        {
          goto LABEL_45;
        }

        v16 = [(NSDate *)v6 isEqualToString:v9];

        if (!v16)
        {
          goto LABEL_46;
        }
      }

      v6 = self->_date;
      v10 = p_isa[8];
      if (v6 | v10)
      {
        v15 = v10;
        LOBYTE(v16) = 0;
        if (!v6 || !v10)
        {
          goto LABEL_45;
        }

        v16 = [(NSDate *)v6 isEqualToDate:v10];

        if (!v16)
        {
          goto LABEL_46;
        }
      }

      v6 = self->_relevanceDate;
      v11 = p_isa[2];
      if (v6 | v11)
      {
        v15 = v11;
        LOBYTE(v16) = 0;
        if (!v6 || !v11)
        {
          goto LABEL_45;
        }

        v16 = [(NSDate *)v6 isEqualToDate:v11];

        if (!v16)
        {
          goto LABEL_46;
        }
      }

      v6 = self->_contactHandles;
      v12 = p_isa[3];
      if (v6 | v12)
      {
        v15 = v12;
        LOBYTE(v16) = 0;
        if (!v6 || !v12)
        {
          goto LABEL_45;
        }

        v16 = [(NSDate *)v6 isEqualToArray:v12];

        if (!v16)
        {
          goto LABEL_46;
        }
      }

      v6 = self->_language;
      v13 = p_isa[4];
      if (!(v6 | v13))
      {
LABEL_10:
        v6 = self->_metadata;
        v14 = p_isa[1];
        if (v6 | v14)
        {
          v15 = v14;
          LOBYTE(v16) = 0;
          if (v6 && v14)
          {
            LOBYTE(v16) = [(NSDate *)v6 isEqualToSourceMetadata:v14];
          }
        }

        else
        {
          v15 = 0;
          v6 = 0;
          LOBYTE(v16) = 1;
        }

        goto LABEL_45;
      }

      v15 = v13;
      LOBYTE(v16) = 0;
      if (v6 && v13)
      {
        v16 = [(NSDate *)v6 isEqualToString:v13];

        if (!v16)
        {
          goto LABEL_46;
        }

        goto LABEL_10;
      }

LABEL_45:

      goto LABEL_46;
    }

    LOBYTE(v16) = 0;
  }

LABEL_46:

  return v16;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleId hash];
  v4 = [(NSString *)self->_groupId hash]^ v3;
  v5 = [(NSString *)self->_documentId hash];
  v6 = v4 ^ v5 ^ [(NSDate *)self->_date hash];
  v7 = [(NSDate *)self->_relevanceDate hash];
  v8 = v7 ^ [(NSString *)self->_language hash];
  return v6 ^ v8 ^ [(PPSourceMetadata *)self->_metadata hash];
}

- (void)encodeWithCoder:(id)coder
{
  bundleId = self->_bundleId;
  coderCopy = coder;
  [coderCopy encodeObject:bundleId forKey:@"bid"];
  [coderCopy encodeObject:self->_groupId forKey:@"gid"];
  [coderCopy encodeObject:self->_documentId forKey:@"did"];
  [coderCopy encodeObject:self->_date forKey:@"date"];
  [coderCopy encodeObject:self->_relevanceDate forKey:@"reld"];
  [coderCopy encodeObject:self->_contactHandles forKey:@"cnh"];
  [coderCopy encodeObject:self->_language forKey:@"lan"];
  [coderCopy encodeObject:self->_metadata forKey:@"met"];
}

- (PPSource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:v4 forKey:@"bid"];
  v26 = [coderCopy decodeObjectOfClass:v4 forKey:@"gid"];
  v6 = [coderCopy decodeObjectOfClass:v4 forKey:@"did"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reld"];
  v9 = objc_autoreleasePoolPush();
  v10 = objc_alloc(MEMORY[0x1E695DFD8]);
  v11 = objc_opt_class();
  v12 = [v10 initWithObjects:{v11, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v9);
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"cnh"];

  v14 = [coderCopy decodeObjectOfClass:v4 forKey:@"lan"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"met"];
  v25 = v5;
  if (v5 && v6 && v7)
  {
    v16 = v15;
    v17 = v5;
    v18 = v26;
    selfCopy = [(PPSource *)self initWithBundleId:v17 groupId:v26 documentId:v6 date:v7 relevanceDate:v8 contactHandles:v13 language:v14 metadata:v15];
    v20 = selfCopy;
  }

  else
  {
    v23 = v15;
    v24 = v13;
    v21 = pp_default_log_handle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1A7FD3000, v21, OS_LOG_TYPE_ERROR, "PPSource:initWithCoder: decoded illegal nil property", buf, 2u);
    }

    v20 = 0;
    v18 = v26;
    selfCopy = self;
    v13 = v24;
    v16 = v23;
  }

  return v20;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  bundleId = [(PPSource *)self bundleId];
  groupId = [(PPSource *)self groupId];
  documentId = [(PPSource *)self documentId];
  date = [(PPSource *)self date];
  v8 = [v3 initWithFormat:@"<PPSource bi:%@ gi:%@ di:%@ da:%@>", bundleId, groupId, documentId, date];

  return v8;
}

- (PPSource)initWithBundleId:(id)id groupId:(id)groupId documentId:(id)documentId date:(id)date relevanceDate:(id)relevanceDate contactHandles:(id)handles language:(id)language metadata:(id)self0
{
  relevanceDateCopy = relevanceDate;
  handlesCopy = handles;
  languageCopy = language;
  metadataCopy = metadata;
  v18 = [(PPSource *)self initWithBundleId:id groupId:groupId documentId:documentId date:date];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_relevanceDate, relevanceDate);
    objc_storeStrong(&v19->_language, language);
    objc_storeStrong(&v19->_metadata, metadata);
    objc_storeStrong(&v19->_contactHandles, handles);
  }

  return v19;
}

- (PPSource)initWithBundleId:(id)id groupId:(id)groupId documentId:(id)documentId date:(id)date
{
  v37 = *MEMORY[0x1E69E9840];
  idCopy = id;
  groupIdCopy = groupId;
  documentIdCopy = documentId;
  dateCopy = date;
  if (idCopy)
  {
    if (documentIdCopy)
    {
      goto LABEL_3;
    }

LABEL_14:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPSource.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"documentId"}];

    if (dateCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PPSource.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];

  if (!documentIdCopy)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (dateCopy)
  {
    goto LABEL_4;
  }

LABEL_15:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PPSource.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"date"}];

LABEL_4:
  [dateCopy timeIntervalSinceReferenceDate];
  if (fabs(v15) == INFINITY)
  {
    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v36 = idCopy;
      _os_log_fault_impl(&dword_1A7FD3000, v16, OS_LOG_TYPE_FAULT, "Constructing PPSource with Inf date associated with bundleId: %@", buf, 0xCu);
    }
  }

  v34.receiver = self;
  v34.super_class = PPSource;
  v17 = [(PPSource *)&v34 init];
  if (v17)
  {
    v33 = documentIdCopy;
    dateCopy2 = date;
    v19 = groupIdCopy;
    v20 = PPGetStringInternPool();
    v21 = idCopy;
    v22 = [v20 intern:idCopy];
    if (!v22)
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler4 handleFailureInMethod:a2 object:v17 file:@"PPSource.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"internedBundleId"}];
    }

    bundleId = v17->_bundleId;
    v17->_bundleId = v22;
    v24 = v22;

    groupIdCopy = v19;
    v25 = [v20 intern:v19];
    groupId = v17->_groupId;
    v17->_groupId = v25;

    objc_storeStrong(&v17->_documentId, documentId);
    objc_storeStrong(&v17->_date, dateCopy2);

    documentIdCopy = v33;
    idCopy = v21;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v17;
}

@end