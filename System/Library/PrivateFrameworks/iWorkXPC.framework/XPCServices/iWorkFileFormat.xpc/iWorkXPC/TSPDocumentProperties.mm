@interface TSPDocumentProperties
+ (BOOL)documentIsEncryptedAtURL:(id)l;
+ (id)documentPropertiesRelativePath;
+ (id)documentRevisionAtURL:(id)l;
+ (id)documentUUIDAtURL:(id)l;
+ (id)keychainGenericItemForDocumentUUID:(id)d;
+ (id)shareIdentifierRelativePath;
- (BOOL)writeToDocumentBundleURL:(id)l error:(id *)error;
- (BOOL)writeToDocumentURL:(id)l writerBlock:(id)block error:(id *)error;
- (BOOL)writeToPackageWriter:(id)writer error:(id *)error;
- (BOOL)writeToPropertiesURL:(id)l error:(id *)error;
- (NSUUID)shareUUID;
- (NSUUID)stableDocumentUUID;
- (NSUUID)versionUUID;
- (TSPDocumentProperties)init;
- (TSPDocumentProperties)initWithDocumentBundleURL:(id)l allowMissingPropertyList:(BOOL)list error:(id *)error;
- (TSPDocumentProperties)initWithFilePackageURL:(id)l zipArchive:(id)archive allowMissingPropertyList:(BOOL)list error:(id *)error;
- (TSPDocumentProperties)initWithPropertiesURL:(id)l error:(id *)error;
- (id)UUIDFromDocumentProperties:(id)properties key:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)encodedPropertyListWithError:(id *)error;
- (id)hashPrivateUUIDWithDigest:(id)digest;
- (void)clearIsNotClean;
- (void)readDocumentPropertiesFromDictionary:(id)dictionary;
- (void)resetDocumentRevision;
- (void)setAdditionalProperties:(id)properties;
- (void)updateDocumentUUID;
- (void)updateDocumentUUIDAndPreserveShareUUID:(BOOL)d preserveStableDocumentUUID:(BOOL)iD;
- (void)updateVersionUUID;
@end

@implementation TSPDocumentProperties

- (TSPDocumentProperties)init
{
  v5.receiver = self;
  v5.super_class = TSPDocumentProperties;
  v2 = [(TSPDocumentProperties *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TSPDocumentProperties *)v2 updateDocumentUUIDAndPreserveShareUUID:0 preserveStableDocumentUUID:1];
  }

  return v3;
}

- (TSPDocumentProperties)initWithDocumentBundleURL:(id)l allowMissingPropertyList:(BOOL)list error:(id *)error
{
  listCopy = list;
  lCopy = l;
  v14.receiver = self;
  v14.super_class = TSPDocumentProperties;
  v9 = [(TSPDocumentProperties *)&v14 init];
  if (v9)
  {
    documentPropertiesRelativePath = [objc_opt_class() documentPropertiesRelativePath];
    v11 = [lCopy URLByAppendingPathComponent:documentPropertiesRelativePath isDirectory:0];

    v12 = [NSPropertyListSerialization tsu_propertyListWithContentsOfURL:v11 options:0 error:error];
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(TSPDocumentProperties *)v9 readDocumentPropertiesFromDictionary:v12];
LABEL_8:

        goto LABEL_9;
      }
    }

    else if (listCopy)
    {
      [(TSPDocumentProperties *)v9 updateDocumentUUIDAndPreserveShareUUID:0 preserveStableDocumentUUID:1];
      goto LABEL_8;
    }

    v9 = 0;
    goto LABEL_8;
  }

LABEL_9:

  return v9;
}

- (TSPDocumentProperties)initWithFilePackageURL:(id)l zipArchive:(id)archive allowMissingPropertyList:(BOOL)list error:(id *)error
{
  listCopy = list;
  lCopy = l;
  archiveCopy = archive;
  if (!archiveCopy)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100154B14();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100154B28();
    }

    v12 = [NSString stringWithUTF8String:"[TSPDocumentProperties initWithFilePackageURL:zipArchive:allowMissingPropertyList:error:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDocumentProperties.mm"];
    [TSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:147 isFatal:0 description:"invalid nil value for '%{public}s'", "zipArchive"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v22.receiver = self;
  v22.super_class = TSPDocumentProperties;
  v14 = [(TSPDocumentProperties *)&v22 init];
  if (v14)
  {
    documentPropertiesRelativePath = [objc_opt_class() documentPropertiesRelativePath];
    v16 = [archiveCopy entryForName:documentPropertiesRelativePath];

    v17 = [archiveCopy tsp_dataForEntry:v16];
    if (v17 && (v18 = objc_opt_class(), [NSPropertyListSerialization propertyListWithData:v17 options:0 format:0 error:error], v19 = objc_claimAutoreleasedReturnValue(), TSUDynamicCast(v18, v19), v20 = objc_claimAutoreleasedReturnValue(), v19, v20))
    {
      [(TSPDocumentProperties *)v14 readDocumentPropertiesFromDictionary:v20];
    }

    else
    {
      if (listCopy)
      {
        [(TSPDocumentProperties *)v14 updateDocumentUUIDAndPreserveShareUUID:0 preserveStableDocumentUUID:1];
LABEL_15:

        goto LABEL_16;
      }

      v20 = v14;
      v14 = 0;
    }

    goto LABEL_15;
  }

LABEL_16:

  return v14;
}

- (TSPDocumentProperties)initWithPropertiesURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = objc_opt_class();
  v8 = [NSPropertyListSerialization tsu_propertyListWithContentsOfURL:lCopy options:0 error:error];
  v9 = TSUDynamicCast(v7, v8);

  if (v9)
  {
    v13.receiver = self;
    v13.super_class = TSPDocumentProperties;
    v10 = [(TSPDocumentProperties *)&v13 init];
    v11 = v10;
    if (v10)
    {
      [(TSPDocumentProperties *)v10 readDocumentPropertiesFromDictionary:v9];
    }
  }

  else
  {

    v11 = 0;
  }

  return v11;
}

- (void)readDocumentPropertiesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(TSPDocumentProperties *)self UUIDFromDocumentProperties:dictionaryCopy key:@"documentUUID"];
  documentUUID = self->_documentUUID;
  self->_documentUUID = v5;

  v7 = [(TSPDocumentProperties *)self UUIDFromDocumentProperties:dictionaryCopy key:@"versionUUID"];
  versionUUID = self->_versionUUID;
  self->_versionUUID = v7;

  v9 = [(TSPDocumentProperties *)self UUIDFromDocumentProperties:dictionaryCopy key:@"shareUUID"];
  shareUUID = self->_shareUUID;
  self->_shareUUID = v9;

  v11 = [(TSPDocumentProperties *)self UUIDFromDocumentProperties:dictionaryCopy key:@"stableDocumentUUID"];
  stableDocumentUUID = self->_stableDocumentUUID;
  self->_stableDocumentUUID = v11;

  v13 = [(TSPDocumentProperties *)self UUIDFromDocumentProperties:dictionaryCopy key:@"privateUUID"];
  privateUUID = self->_privateUUID;
  self->_privateUUID = v13;

  v15 = [dictionaryCopy objectForKeyedSubscript:@"fileFormatVersion"];
  self->_fileFormatVersion = UnsafePointer(v15);

  v16 = [TSPDocumentRevision alloc];
  v17 = [dictionaryCopy objectForKeyedSubscript:@"revision"];
  v18 = [(TSPDocumentRevision *)v16 initWithRevisionString:v17];
  revision = self->_revision;
  self->_revision = v18;

  if (!self->_documentUUID)
  {
    [(TSPDocumentProperties *)self updateDocumentUUID];
  }

  if (!self->_shareUUID)
  {
    objc_storeStrong(&self->_shareUUID, self->_documentUUID);
  }

  if (!self->_stableDocumentUUID)
  {
    objc_storeStrong(&self->_stableDocumentUUID, self->_documentUUID);
  }

  if (!self->_privateUUID)
  {
    v20 = +[NSUUID UUID];
    v21 = self->_privateUUID;
    self->_privateUUID = v20;
  }

  v22 = [dictionaryCopy mutableCopy];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v23 = sub_10002CA60();
  v24 = [v23 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v24)
  {
    v25 = *v29;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(v23);
        }

        [(NSDictionary *)v22 removeObjectForKey:*(*(&v28 + 1) + 8 * i), v28];
      }

      v24 = [v23 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v24);
  }

  additionalProperties = self->_additionalProperties;
  self->_additionalProperties = v22;
}

- (id)UUIDFromDocumentProperties:(id)properties key:(id)key
{
  propertiesCopy = properties;
  keyCopy = key;
  if (keyCopy)
  {
    v7 = [propertiesCopy objectForKeyedSubscript:keyCopy];
    if (v7)
    {
      v8 = [[NSUUID alloc] initWithUUIDString:v7];
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

- (BOOL)writeToDocumentURL:(id)l writerBlock:(id)block error:(id *)error
{
  blockCopy = block;
  v8 = [(TSPDocumentProperties *)self encodedPropertyListWithError:error];
  if (v8 && ([objc_opt_class() documentPropertiesRelativePath], v9 = objc_claimAutoreleasedReturnValue(), v10 = blockCopy[2](blockCopy, v8, v9), v9, v10))
  {
    shareUUID = [(TSPDocumentProperties *)self shareUUID];
    uUIDString = [shareUUID UUIDString];
    v13 = [uUIDString dataUsingEncoding:4];

    shareIdentifierRelativePath = [objc_opt_class() shareIdentifierRelativePath];
    v15 = blockCopy[2](blockCopy, v13, shareIdentifierRelativePath);

    if (error)
    {
      v16 = v15;
    }

    else
    {
      v16 = 1;
    }

    if ((v16 & 1) == 0)
    {
      *error = [NSError tsp_saveDocumentErrorWithUserInfo:0];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)writeToPackageWriter:(id)writer error:(id *)error
{
  writerCopy = writer;
  v7 = [writerCopy URL];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002CDDC;
  v10[3] = &unk_1001C74E8;
  v8 = writerCopy;
  v11 = v8;
  errorCopy = error;
  LOBYTE(error) = [(TSPDocumentProperties *)self writeToDocumentURL:v7 writerBlock:v10 error:error];

  return error;
}

- (BOOL)writeToDocumentBundleURL:(id)l error:(id *)error
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002CEBC;
  v8[3] = &unk_1001C74E8;
  lCopy = l;
  errorCopy = error;
  v6 = lCopy;
  LOBYTE(error) = [(TSPDocumentProperties *)self writeToDocumentURL:v6 writerBlock:v8 error:error];

  return error;
}

- (id)encodedPropertyListWithError:(id *)error
{
  v5 = self->_additionalProperties;
  v6 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSDictionary count](v5, "count") + 5}];
  documentUUID = [(TSPDocumentProperties *)self documentUUID];
  uUIDString = [documentUUID UUIDString];
  [v6 setObject:uUIDString forKeyedSubscript:@"documentUUID"];

  versionUUID = [(TSPDocumentProperties *)self versionUUID];
  uUIDString2 = [versionUUID UUIDString];
  [v6 setObject:uUIDString2 forKeyedSubscript:@"versionUUID"];

  shareUUID = [(TSPDocumentProperties *)self shareUUID];
  uUIDString3 = [shareUUID UUIDString];
  [v6 setObject:uUIDString3 forKeyedSubscript:@"shareUUID"];

  stableDocumentUUID = [(TSPDocumentProperties *)self stableDocumentUUID];
  uUIDString4 = [stableDocumentUUID UUIDString];
  [v6 setObject:uUIDString4 forKeyedSubscript:@"stableDocumentUUID"];

  uUIDString5 = [(NSUUID *)self->_privateUUID UUIDString];
  [v6 setObject:uUIDString5 forKeyedSubscript:@"privateUUID"];

  v16 = NSStringFromTSPVersion([(TSPDocumentProperties *)self fileFormatVersion]);
  [v6 setObject:v16 forKeyedSubscript:@"fileFormatVersion"];

  v17 = self->_revision;
  v18 = v17;
  if (v17)
  {
    revisionString = [(TSPDocumentRevision *)v17 revisionString];
    [v6 setObject:revisionString forKeyedSubscript:@"revision"];
  }

  if (v5)
  {
    [v6 addEntriesFromDictionary:v5];
  }

  v20 = [NSPropertyListSerialization dataWithPropertyList:v6 format:200 options:0 error:error];

  return v20;
}

- (BOOL)writeToPropertiesURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = [(TSPDocumentProperties *)self encodedPropertyListWithError:error];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 writeToURL:lCopy options:0 error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)documentUUIDAtURL:(id)l
{
  lCopy = l;
  value[0] = 0;
  value[1] = 0;
  path = [lCopy path];
  v5 = getxattr([path UTF8String], "com.apple.iwork.documentUUID", value, 0x10uLL, 0, 0) == 16;

  if (v5)
  {
    documentUUID = [[NSUUID alloc] initWithUUIDBytes:value];
  }

  else
  {
    v7 = [[TSPDocumentProperties alloc] initWithDocumentURL:lCopy error:0];
    documentUUID = [(TSPDocumentProperties *)v7 documentUUID];
  }

  return documentUUID;
}

+ (id)documentRevisionAtURL:(id)l
{
  lCopy = l;
  v13 = 0;
  v4 = [[TSPDocumentProperties alloc] initWithDocumentURL:lCopy error:&v13];
  v5 = v13;
  if (v5)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_100154BD8();
    }

    v6 = TSUDefaultCat_log_t;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      domain = [v5 domain];
      code = [v5 code];
      *buf = 138544130;
      v15 = v10;
      v16 = 2114;
      v17 = domain;
      v18 = 2048;
      v19 = code;
      v20 = 2112;
      v21 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to read TSPDocumentProperties with error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x2Au);
    }

    revision = 0;
  }

  else
  {
    revision = [(TSPDocumentProperties *)v4 revision];
  }

  return revision;
}

+ (BOOL)documentIsEncryptedAtURL:(id)l
{
  lCopy = l;
  path = [lCopy path];
  v5 = +[NSFileManager defaultManager];
  v11 = 0;
  if (![v5 fileExistsAtPath:path isDirectory:&v11])
  {
    goto LABEL_10;
  }

  if (v11 != 1)
  {
    if ([SFUZipArchive isZipArchiveAtPath:path])
    {
      v6 = [[SFUZipArchive alloc] initWithPath:path collapseCommonRootDirectory:1];
      if (![(SFUZipArchive *)v6 isEncrypted])
      {
        v9 = [(SFUZipArchive *)v6 entryWithName:@".iwpv2"];
        v8 = v9 != 0;

        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v6 = [path stringByAppendingPathComponent:@".iwpv2"];
  if ([v5 fileExistsAtPath:v6])
  {
LABEL_7:
    v8 = 1;
    goto LABEL_9;
  }

  v7 = [path stringByAppendingPathComponent:@".iwpv"];
  v8 = [v5 fileExistsAtPath:v7];

LABEL_9:
LABEL_11:

  return v8;
}

+ (id)keychainGenericItemForDocumentUUID:(id)d
{
  uUIDString = [d UUIDString];
  v4 = [uUIDString dataUsingEncoding:4];

  return v4;
}

+ (id)documentPropertiesRelativePath
{
  if (qword_1001EAA18 != -1)
  {
    sub_100154C00();
  }

  v3 = qword_1001EAA10;

  return v3;
}

+ (id)shareIdentifierRelativePath
{
  if (qword_1001EAA28 != -1)
  {
    sub_100154C14();
  }

  v3 = qword_1001EAA20;

  return v3;
}

- (void)updateDocumentUUID
{
  v3 = +[NSUUID UUID];
  documentUUID = self->_documentUUID;
  self->_documentUUID = v3;

  v5 = +[NSUUID UUID];
  privateUUID = self->_privateUUID;
  self->_privateUUID = v5;

  _objc_release_x1();
}

- (void)updateDocumentUUIDAndPreserveShareUUID:(BOOL)d preserveStableDocumentUUID:(BOOL)iD
{
  [(TSPDocumentProperties *)self updateDocumentUUID];
  if (!d)
  {
    objc_storeStrong(&self->_shareUUID, self->_documentUUID);
  }

  if (!iD)
  {
    documentUUID = self->_documentUUID;

    objc_storeStrong(&self->_stableDocumentUUID, documentUUID);
  }
}

- (NSUUID)versionUUID
{
  versionUUID = self->_versionUUID;
  if (!versionUUID)
  {
    [(TSPDocumentProperties *)self updateVersionUUID];
    versionUUID = self->_versionUUID;
  }

  return versionUUID;
}

- (void)updateVersionUUID
{
  v3 = +[NSUUID UUID];
  versionUUID = self->_versionUUID;
  self->_versionUUID = v3;

  _objc_release_x1();
}

- (NSUUID)shareUUID
{
  shareUUID = self->_shareUUID;
  p_shareUUID = &self->_shareUUID;
  v4 = shareUUID;
  if (!shareUUID)
  {
    objc_storeStrong(p_shareUUID, self->_documentUUID);
    v4 = self->_shareUUID;
  }

  return v4;
}

- (NSUUID)stableDocumentUUID
{
  stableDocumentUUID = self->_stableDocumentUUID;
  p_stableDocumentUUID = &self->_stableDocumentUUID;
  v4 = stableDocumentUUID;
  if (!stableDocumentUUID)
  {
    objc_storeStrong(p_stableDocumentUUID, self->_documentUUID);
    v4 = self->_stableDocumentUUID;
  }

  return v4;
}

- (id)hashPrivateUUIDWithDigest:(id)digest
{
  digestCopy = digest;
  if (!self->_privateUUID)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100154C28();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100154C3C();
    }

    v5 = [NSString stringWithUTF8String:"[TSPDocumentProperties hashPrivateUUIDWithDigest:]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDocumentProperties.mm"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:437 isFatal:0 description:"invalid nil value for '%{public}s'", "_privateUUID"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (!digestCopy)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100154CD8();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100154D00();
    }

    v7 = [NSString stringWithUTF8String:"[TSPDocumentProperties hashPrivateUUIDWithDigest:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDocumentProperties.mm"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:438 isFatal:0 description:"invalid nil value for '%{public}s'", "digest"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v9 = +[NSUUID tsu_UUIDWithNamespaceUUID:bytes:size:](NSUUID, "tsu_UUIDWithNamespaceUUID:bytes:size:", self->_privateUUID, [digestCopy digestData], 20);

  return v9;
}

- (void)setAdditionalProperties:(id)properties
{
  propertiesCopy = properties;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = sub_10002CA60();
  v4 = [obj countByEnumeratingWithState:&v18 objects:v32 count:16];
  if (v4)
  {
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v8 = [propertiesCopy objectForKeyedSubscript:v7];
        v9 = v8 == 0;

        if (!v9)
        {
          v10 = +[TSUAssertionHandler _atomicIncrementAssertCount];
          if (TSUAssertCat_init_token != -1)
          {
            sub_100154D9C();
          }

          v11 = TSUAssertCat_log_t;
          if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            v23 = v10;
            v24 = 2082;
            v25 = "[TSPDocumentProperties setAdditionalProperties:]";
            v26 = 2082;
            v27 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDocumentProperties.mm";
            v28 = 1024;
            v29 = 447;
            v30 = 2114;
            v31 = v7;
            _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Added property overwrites %{public}@", buf, 0x2Cu);
          }

          v12 = [NSString stringWithUTF8String:"[TSPDocumentProperties setAdditionalProperties:]"];
          v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDocumentProperties.mm"];
          [TSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:447 isFatal:0 description:"Added property overwrites %{public}@", v7];

          +[TSUAssertionHandler logBacktraceThrottled];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v18 objects:v32 count:16];
    }

    while (v4);
  }

  v14 = [propertiesCopy copy];
  additionalProperties = self->_additionalProperties;
  self->_additionalProperties = v14;
}

- (void)resetDocumentRevision
{
  [(TSPDocumentProperties *)self updateVersionUUID];
  v3 = [TSPDocumentRevision alloc];
  versionUUID = [(TSPDocumentProperties *)self versionUUID];
  v4 = [(TSPDocumentRevision *)v3 initWithSequence:0 identifier:?];
  revision = self->_revision;
  self->_revision = v4;
}

- (void)clearIsNotClean
{
  v3 = [NSMutableDictionary dictionaryWithDictionary:self->_additionalProperties];
  [(NSDictionary *)v3 removeObjectForKey:@"isNotClean"];
  additionalProperties = self->_additionalProperties;
  self->_additionalProperties = v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(TSPDocumentProperties);
  if (v5)
  {
    v6 = [(NSUUID *)self->_documentUUID copyWithZone:zone];
    documentUUID = v5->_documentUUID;
    v5->_documentUUID = v6;

    v8 = [(NSUUID *)self->_versionUUID copyWithZone:zone];
    versionUUID = v5->_versionUUID;
    v5->_versionUUID = v8;

    v10 = [(NSUUID *)self->_shareUUID copyWithZone:zone];
    shareUUID = v5->_shareUUID;
    v5->_shareUUID = v10;

    v12 = [(NSUUID *)self->_stableDocumentUUID copyWithZone:zone];
    stableDocumentUUID = v5->_stableDocumentUUID;
    v5->_stableDocumentUUID = v12;

    v14 = [(NSUUID *)self->_privateUUID copyWithZone:zone];
    privateUUID = v5->_privateUUID;
    v5->_privateUUID = v14;

    v5->_fileFormatVersion = self->_fileFormatVersion;
    v16 = [(TSPDocumentRevision *)self->_revision copyWithZone:zone];
    revision = v5->_revision;
    v5->_revision = v16;

    v18 = [(NSDictionary *)self->_additionalProperties copyWithZone:zone];
    additionalProperties = v5->_additionalProperties;
    v5->_additionalProperties = v18;
  }

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  documentUUID = [(TSPDocumentProperties *)self documentUUID];
  versionUUID = [(TSPDocumentProperties *)self versionUUID];
  shareUUID = [(TSPDocumentProperties *)self shareUUID];
  stableDocumentUUID = [(TSPDocumentProperties *)self stableDocumentUUID];
  revision = [(TSPDocumentProperties *)self revision];
  v10 = [NSString stringWithFormat:@"<%@ %p documentUUID:%@, versionUUID:%@, shareUUID:%@, stableDocumentUUID:%@, revision:%@>", v4, self, documentUUID, versionUUID, shareUUID, stableDocumentUUID, revision];

  return v10;
}

@end