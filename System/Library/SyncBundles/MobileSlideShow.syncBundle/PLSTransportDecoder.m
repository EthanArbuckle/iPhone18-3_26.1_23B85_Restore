@interface PLSTransportDecoder
+ (id)decoder;
- (id)_itemFromPropertyList:(id)a3;
- (id)decodeSnapshotFromFile:(id)a3 error:(id *)a4;
- (id)decodeSnapshotFromPropertyList:(id)a3 error:(id *)a4;
@end

@implementation PLSTransportDecoder

- (id)_itemFromPropertyList:(id)a3
{
  v5 = kPLSTransportItemTypeKey;
  v6 = a3;
  v7 = [v6 objectForKey:v5];
  if ([v7 isEqualToString:kPLSTransportAlbumItemType] || objc_msgSend(v7, "isEqualToString:", kPLSTransportAssetItemType) || objc_msgSend(v7, "isEqualToString:", kPLSTransportEventItemType))
  {
    v8 = objc_opt_class();
  }

  else
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PLSTransportDecoder.m" lineNumber:137 description:@"Unknown object type"];

    v8 = 0;
  }

  v9 = [[v8 alloc] initFromPropertyList:v6];

  return v9;
}

- (id)decodeSnapshotFromFile:(id)a3 error:(id *)a4
{
  v6 = [NSInputStream inputStreamWithURL:a3];
  [v6 open];
  v7 = [NSPropertyListSerialization propertyListWithStream:v6 options:0 format:0 error:a4];
  [v6 close];
  if (v7)
  {
    v8 = [(PLSTransportDecoder *)self decodeSnapshotFromPropertyList:v7 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)decodeSnapshotFromPropertyList:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[PLSLibraryChangeSnapshot librarySnapshot];
  context = objc_autoreleasePoolPush();
  v7 = [v5 objectForKey:kPLSTransportLibraryUUIDKey];
  [v6 setLibraryUUID:v7];

  v8 = [v5 objectForKey:kPLSTransportLibraryKindKey];
  [v6 setLibraryKind:v8];

  v9 = [v6 libraryKind];
  v34 = v6;
  [v6 setIsFolderSync:{objc_msgSend(v9, "isEqualToString:", kPLSTransportLibraryKindFolderKey)}];

  v35 = +[NSMutableDictionary dictionary];
  v10 = +[NSMutableDictionary dictionary];
  v11 = +[NSMutableArray array];
  v33 = v5;
  [v5 objectForKey:kPLSTransportUpdatesKey];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v44 = 0u;
  v12 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v42;
    do
    {
      v15 = 0;
      do
      {
        if (*v42 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = [(PLSTransportDecoder *)self _itemFromPropertyList:*(*(&v41 + 1) + 8 * v15)];
        v17 = [v16 uuid];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [v11 addObject:v16];
          v18 = v10;
LABEL_9:
          [v18 setObject:v16 forKey:v17];
          goto LABEL_10;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v18 = v35;
        if (isKindOfClass)
        {
          goto LABEL_9;
        }

LABEL_10:

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v20 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      v13 = v20;
    }

    while (v20);
  }

  [v6 setAssetsByUUID:v35];
  [v6 setAlbumsAndEventsByUUID:v10];
  [v6 setOrderedAlbums:v11];
  [v6 setUpdates:0];
  v21 = +[NSMutableDictionary dictionary];
  v22 = [v33 objectForKey:kPLSTransportDeletesKey];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v23 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v38;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [(PLSTransportDecoder *)self _itemFromPropertyList:*(*(&v37 + 1) + 8 * i)];
        v28 = [v27 uuid];
        [v21 setObject:v27 forKey:v28];
      }

      v24 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v24);
  }

  [v34 setDeletes:v21];
  if ([v34 isFolderSync])
  {
    v29 = [v34 orderedAlbums];
    v30 = [NSMutableArray arrayWithArray:v29];

    [v30 sortUsingComparator:&stru_246E0];
    [v34 setOrderedAlbums:v30];
  }

  objc_autoreleasePoolPop(context);

  return v34;
}

+ (id)decoder
{
  v2 = objc_alloc_init(PLSTransportDecoder);

  return v2;
}

@end