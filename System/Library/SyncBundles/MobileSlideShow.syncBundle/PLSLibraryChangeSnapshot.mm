@interface PLSLibraryChangeSnapshot
+ (BOOL)number:(id)number equalsNumber:(id)equalsNumber;
+ (BOOL)string:(id)string equalsString:(id)equalsString;
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
+ (id)librarySnapshot;
- (BOOL)hasChangedObjects;
- (BOOL)isEqualToSnapshot:(id)snapshot;
- (PLSLibraryChangeSnapshot)init;
- (PLSLibraryChangeSnapshot)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLSLibraryChangeSnapshot

+ (BOOL)number:(id)number equalsNumber:(id)equalsNumber
{
  if (number | equalsNumber)
  {
    return [number isEqualToNumber:equalsNumber];
  }

  else
  {
    return 1;
  }
}

+ (BOOL)string:(id)string equalsString:(id)equalsString
{
  if (string | equalsString)
  {
    return [string isEqualToString:equalsString];
  }

  else
  {
    return 1;
  }
}

+ (id)librarySnapshot
{
  v2 = objc_alloc_init(PLSLibraryChangeSnapshot);

  return v2;
}

- (BOOL)isEqualToSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v5 = snapshotCopy;
  if (!snapshotCopy)
  {
    goto LABEL_19;
  }

  if (snapshotCopy == self)
  {
    v23 = 1;
    goto LABEL_20;
  }

  libraryKind = [(PLSLibraryChangeSnapshot *)self libraryKind];
  libraryKind2 = [(PLSLibraryChangeSnapshot *)v5 libraryKind];
  v8 = [PLSLibraryChangeSnapshot string:libraryKind equalsString:libraryKind2];

  if ((v8 & 1) == 0)
  {
    v25 = [NSString stringWithFormat:@"snapshot libraryKind not equal"];
    v26 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v25;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
    }

    goto LABEL_12;
  }

  libraryUUID = [(PLSLibraryChangeSnapshot *)self libraryUUID];
  libraryUUID2 = [(PLSLibraryChangeSnapshot *)v5 libraryUUID];
  v11 = [PLSLibraryChangeSnapshot string:libraryUUID equalsString:libraryUUID2];

  if ((v11 & 1) == 0)
  {
    v25 = [NSString stringWithFormat:@"snapshot libraryUUID not equal"];
    v26 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v25;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
    }

LABEL_12:

    goto LABEL_19;
  }

  v12 = objc_autoreleasePoolPush();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x2020000000;
  v41 = 1;
  orderedAlbums = [(PLSLibraryChangeSnapshot *)v5 orderedAlbums];
  orderedAlbums2 = [(PLSLibraryChangeSnapshot *)self orderedAlbums];
  v15 = [orderedAlbums2 count];
  LOBYTE(v15) = v15 == [orderedAlbums count];

  if ((v15 & 1) == 0)
  {
    v27 = [NSString stringWithFormat:@"snapshot orderedAlbums count not equal"];
    v28 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *v37 = 138412290;
      v38 = v27;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "%@", v37, 0xCu);
    }

    _Block_object_dispose(&buf, 8);
    objc_autoreleasePoolPop(v12);
    goto LABEL_19;
  }

  orderedAlbums3 = [(PLSLibraryChangeSnapshot *)self orderedAlbums];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_4694;
  v34[3] = &unk_24BC8;
  v17 = orderedAlbums;
  v35 = v17;
  p_buf = &buf;
  [orderedAlbums3 enumerateObjectsUsingBlock:v34];

  LOBYTE(orderedAlbums3) = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  objc_autoreleasePoolPop(v12);
  if ((orderedAlbums3 & 1) == 0)
  {
LABEL_19:
    v23 = 0;
    goto LABEL_20;
  }

  v18 = objc_autoreleasePoolPush();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x2020000000;
  v41 = 1;
  assetsByUUID = [(PLSLibraryChangeSnapshot *)v5 assetsByUUID];
  assetsByUUID2 = [(PLSLibraryChangeSnapshot *)self assetsByUUID];
  v21 = [assetsByUUID2 count];
  LOBYTE(v21) = v21 == [assetsByUUID count];

  if (v21)
  {
    assetsByUUID3 = [(PLSLibraryChangeSnapshot *)self assetsByUUID];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_481C;
    v31[3] = &unk_246A0;
    v32 = assetsByUUID;
    v33 = &buf;
    [assetsByUUID3 enumerateKeysAndObjectsUsingBlock:v31];

    v23 = *(*(&buf + 1) + 24);
    v24 = v32;
  }

  else
  {
    v24 = [NSString stringWithFormat:@"snapshot assetsByUUID count not equal"];
    v30 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *v37 = 138412290;
      v38 = v24;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEBUG, "%@", v37, 0xCu);
    }

    v23 = 0;
  }

  _Block_object_dispose(&buf, 8);
  objc_autoreleasePoolPop(v18);
LABEL_20:

  return v23 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  updates = [(PLSLibraryChangeSnapshot *)self updates];
  [coderCopy encodeObject:updates forKey:@"PLSLibrarySnapshotUpdatesKey"];

  deletes = [(PLSLibraryChangeSnapshot *)self deletes];
  [coderCopy encodeObject:deletes forKey:@"PLSLibrarySnapshotDeletesKey"];

  libraryUUID = [(PLSLibraryChangeSnapshot *)self libraryUUID];
  [coderCopy encodeObject:libraryUUID forKey:@"PLSLibraryChangeSnapshotLibraryUUIDKey"];

  libraryKind = [(PLSLibraryChangeSnapshot *)self libraryKind];
  [coderCopy encodeObject:libraryKind forKey:@"PLSLibraryChangeSnapshotLibraryKindKey"];
}

- (PLSLibraryChangeSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = PLSLibraryChangeSnapshot;
  v5 = [(PLSLibraryChangeSnapshot *)&v20 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [NSSet setWithObjects:v6, v7, v8, v9, objc_opt_class(), 0];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"PLSLibrarySnapshotUpdatesKey"];
    updates = v5->_updates;
    v5->_updates = v11;

    v13 = [coderCopy decodeObjectOfClasses:v10 forKey:@"PLSLibrarySnapshotDeletesKey"];
    deletes = v5->_deletes;
    v5->_deletes = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PLSLibraryChangeSnapshotLibraryUUIDKey"];
    libraryUUID = v5->_libraryUUID;
    v5->_libraryUUID = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PLSLibraryChangeSnapshotLibraryKindKey"];
    libraryKind = v5->_libraryKind;
    v5->_libraryKind = v17;
  }

  return v5;
}

- (BOOL)hasChangedObjects
{
  updates = [(PLSLibraryChangeSnapshot *)self updates];
  if ([updates count])
  {
    v4 = 1;
  }

  else
  {
    deletes = [(PLSLibraryChangeSnapshot *)self deletes];
    v4 = [deletes count] != 0;
  }

  return v4;
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = PLSLibraryChangeSnapshot;
  v3 = [(PLSLibraryChangeSnapshot *)&v10 description];
  libraryUUID = [(PLSLibraryChangeSnapshot *)self libraryUUID];
  libraryKind = [(PLSLibraryChangeSnapshot *)self libraryKind];
  updates = [(PLSLibraryChangeSnapshot *)self updates];
  deletes = [(PLSLibraryChangeSnapshot *)self deletes];
  v8 = [NSString stringWithFormat:@"%@, libraryUUID: %@ libraryKind:%@\nupdates: %@\ndeletes: %@", v3, libraryUUID, libraryKind, updates, deletes];

  return v8;
}

- (PLSLibraryChangeSnapshot)init
{
  v14.receiver = self;
  v14.super_class = PLSLibraryChangeSnapshot;
  v2 = [(PLSLibraryChangeSnapshot *)&v14 init];
  v3 = v2;
  if (v2)
  {
    updates = v2->_updates;
    v2->_updates = &__NSDictionary0__struct;

    deletes = v3->_deletes;
    v3->_deletes = &__NSDictionary0__struct;

    libraryUUID = v3->_libraryUUID;
    v3->_libraryUUID = &stru_24CF0;

    libraryKind = v3->_libraryKind;
    v3->_libraryKind = &stru_24CF0;

    orderedAlbums = v3->_orderedAlbums;
    v3->_orderedAlbums = &__NSArray0__struct;

    v9 = +[NSMutableDictionary dictionary];
    albumsAndEventsByUUID = v3->_albumsAndEventsByUUID;
    v3->_albumsAndEventsByUUID = v9;

    v11 = +[NSMutableDictionary dictionary];
    assetsByUUID = v3->_assetsByUUID;
    v3->_assetsByUUID = v11;
  }

  return v3;
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___PLSLibraryChangeSnapshot;
  keyCopy = key;
  v4 = objc_msgSendSuper2(&v9, "keyPathsForValuesAffectingValueForKey:", keyCopy);
  v5 = [keyCopy isEqualToString:@"hasChangedObjects"];

  if (v5)
  {
    v6 = [NSSet setWithObjects:@"updates", @"deletes", 0, v9.receiver, v9.super_class];
    v7 = [v4 setByAddingObjectsFromSet:v6];

    v4 = v7;
  }

  return v4;
}

@end