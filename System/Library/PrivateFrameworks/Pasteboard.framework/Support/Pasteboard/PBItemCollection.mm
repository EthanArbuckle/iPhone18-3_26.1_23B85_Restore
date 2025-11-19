@interface PBItemCollection
+ (id)unserializeCollectionFromBaseURL:(id)a3 persistenceName:(id)a4 outError:(id *)a5;
+ (id)unserializeCollectionFromPasteboardURL:(id)a3 baseURL:(id)a4 outError:(id *)a5;
- (id)directoryName;
- (unint64_t)authorizationDecisionForAuditTokenInfo:(id)a3 timestamp:(unint64_t)a4;
- (void)recordUserAuthorizationDecision:(BOOL)a3 auditTokenInfo:(id)a4;
- (void)setStorageBaseURL:(id)a3;
@end

@implementation PBItemCollection

+ (id)unserializeCollectionFromBaseURL:(id)a3 persistenceName:(id)a4 outError:(id *)a5
{
  v7 = a3;
  v8 = PBSHA1HashOfString();
  v9 = [v7 URLByAppendingPathComponent:v8 isDirectory:1];
  v10 = [a1 unserializeCollectionFromPasteboardURL:v9 baseURL:v7 outError:a5];

  if (a5)
  {
    *a5 = 0;
  }

  return v10;
}

+ (id)unserializeCollectionFromPasteboardURL:(id)a3 baseURL:(id)a4 outError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 URLByAppendingPathComponent:@"Manifest.plist" isDirectory:0];
  v11 = [NSData dataWithContentsOfURL:v10];
  if (v11)
  {
    v19[0] = 0;
    v12 = [[PBKeyedUnarchiver alloc] initForReadingFromData:v11 error:v19];
    v13 = v19[0];
    [v12 setDecodingFailurePolicy:0];
    v14 = [a1 allowedClassesForSecureCoding];
    [v12 setAllowedClasses:v14];

    v15 = [v12 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
    [v12 finishDecoding];
    v16 = v15;
    [v15 setStorageBaseURL:v9];

    if (!a5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = PBCannotUnserializePasteboardError();
    v16 = 0;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  if (v13)
  {
    v17 = v13;
    *a5 = v13;
  }

LABEL_7:

  return v16;
}

- (id)directoryName
{
  v2 = [(PBItemCollection *)self persistenceName];
  v3 = PBSHA1HashOfString();

  return v3;
}

- (void)setStorageBaseURL:(id)a3
{
  v4 = a3;
  v5 = [(PBItemCollection *)self persistenceName];
  v6 = PBSHA1HashOfString();

  v7 = [v4 URLByAppendingPathComponent:v6 isDirectory:1];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(PBItemCollection *)self items];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) setStorageBaseURL:v7];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (unint64_t)authorizationDecisionForAuditTokenInfo:(id)a3 timestamp:(unint64_t)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 42;
  v7 = PBItemQueue();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001A9D0;
  v11[3] = &unk_100031D28;
  v11[4] = self;
  v12 = v6;
  v13 = &v15;
  v14 = a4;
  v8 = v6;
  dispatch_sync(v7, v11);

  v9 = v16[3];
  _Block_object_dispose(&v15, 8);
  return v9;
}

- (void)recordUserAuthorizationDecision:(BOOL)a3 auditTokenInfo:(id)a4
{
  v6 = a4;
  v7 = PBItemQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001AAF8;
  block[3] = &unk_100031D50;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_sync(v7, block);
}

@end