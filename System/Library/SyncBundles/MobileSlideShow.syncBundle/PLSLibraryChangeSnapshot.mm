@interface PLSLibraryChangeSnapshot
+ (BOOL)number:(id)a3 equalsNumber:(id)a4;
+ (BOOL)string:(id)a3 equalsString:(id)a4;
+ (id)keyPathsForValuesAffectingValueForKey:(id)a3;
+ (id)librarySnapshot;
- (BOOL)hasChangedObjects;
- (BOOL)isEqualToSnapshot:(id)a3;
- (PLSLibraryChangeSnapshot)init;
- (PLSLibraryChangeSnapshot)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PLSLibraryChangeSnapshot

+ (BOOL)number:(id)a3 equalsNumber:(id)a4
{
  if (a3 | a4)
  {
    return [a3 isEqualToNumber:a4];
  }

  else
  {
    return 1;
  }
}

+ (BOOL)string:(id)a3 equalsString:(id)a4
{
  if (a3 | a4)
  {
    return [a3 isEqualToString:a4];
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

- (BOOL)isEqualToSnapshot:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_19;
  }

  if (v4 == self)
  {
    v23 = 1;
    goto LABEL_20;
  }

  v6 = [(PLSLibraryChangeSnapshot *)self libraryKind];
  v7 = [(PLSLibraryChangeSnapshot *)v5 libraryKind];
  v8 = [PLSLibraryChangeSnapshot string:v6 equalsString:v7];

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

  v9 = [(PLSLibraryChangeSnapshot *)self libraryUUID];
  v10 = [(PLSLibraryChangeSnapshot *)v5 libraryUUID];
  v11 = [PLSLibraryChangeSnapshot string:v9 equalsString:v10];

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
  v13 = [(PLSLibraryChangeSnapshot *)v5 orderedAlbums];
  v14 = [(PLSLibraryChangeSnapshot *)self orderedAlbums];
  v15 = [v14 count];
  LOBYTE(v15) = v15 == [v13 count];

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

  v16 = [(PLSLibraryChangeSnapshot *)self orderedAlbums];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_4694;
  v34[3] = &unk_24BC8;
  v17 = v13;
  v35 = v17;
  p_buf = &buf;
  [v16 enumerateObjectsUsingBlock:v34];

  LOBYTE(v16) = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  objc_autoreleasePoolPop(v12);
  if ((v16 & 1) == 0)
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
  v19 = [(PLSLibraryChangeSnapshot *)v5 assetsByUUID];
  v20 = [(PLSLibraryChangeSnapshot *)self assetsByUUID];
  v21 = [v20 count];
  LOBYTE(v21) = v21 == [v19 count];

  if (v21)
  {
    v22 = [(PLSLibraryChangeSnapshot *)self assetsByUUID];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_481C;
    v31[3] = &unk_246A0;
    v32 = v19;
    v33 = &buf;
    [v22 enumerateKeysAndObjectsUsingBlock:v31];

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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PLSLibraryChangeSnapshot *)self updates];
  [v4 encodeObject:v5 forKey:@"PLSLibrarySnapshotUpdatesKey"];

  v6 = [(PLSLibraryChangeSnapshot *)self deletes];
  [v4 encodeObject:v6 forKey:@"PLSLibrarySnapshotDeletesKey"];

  v7 = [(PLSLibraryChangeSnapshot *)self libraryUUID];
  [v4 encodeObject:v7 forKey:@"PLSLibraryChangeSnapshotLibraryUUIDKey"];

  v8 = [(PLSLibraryChangeSnapshot *)self libraryKind];
  [v4 encodeObject:v8 forKey:@"PLSLibraryChangeSnapshotLibraryKindKey"];
}

- (PLSLibraryChangeSnapshot)initWithCoder:(id)a3
{
  v4 = a3;
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
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"PLSLibrarySnapshotUpdatesKey"];
    updates = v5->_updates;
    v5->_updates = v11;

    v13 = [v4 decodeObjectOfClasses:v10 forKey:@"PLSLibrarySnapshotDeletesKey"];
    deletes = v5->_deletes;
    v5->_deletes = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PLSLibraryChangeSnapshotLibraryUUIDKey"];
    libraryUUID = v5->_libraryUUID;
    v5->_libraryUUID = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PLSLibraryChangeSnapshotLibraryKindKey"];
    libraryKind = v5->_libraryKind;
    v5->_libraryKind = v17;
  }

  return v5;
}

- (BOOL)hasChangedObjects
{
  v3 = [(PLSLibraryChangeSnapshot *)self updates];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(PLSLibraryChangeSnapshot *)self deletes];
    v4 = [v5 count] != 0;
  }

  return v4;
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = PLSLibraryChangeSnapshot;
  v3 = [(PLSLibraryChangeSnapshot *)&v10 description];
  v4 = [(PLSLibraryChangeSnapshot *)self libraryUUID];
  v5 = [(PLSLibraryChangeSnapshot *)self libraryKind];
  v6 = [(PLSLibraryChangeSnapshot *)self updates];
  v7 = [(PLSLibraryChangeSnapshot *)self deletes];
  v8 = [NSString stringWithFormat:@"%@, libraryUUID: %@ libraryKind:%@\nupdates: %@\ndeletes: %@", v3, v4, v5, v6, v7];

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

+ (id)keyPathsForValuesAffectingValueForKey:(id)a3
{
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___PLSLibraryChangeSnapshot;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v9, "keyPathsForValuesAffectingValueForKey:", v3);
  v5 = [v3 isEqualToString:@"hasChangedObjects"];

  if (v5)
  {
    v6 = [NSSet setWithObjects:@"updates", @"deletes", 0, v9.receiver, v9.super_class];
    v7 = [v4 setByAddingObjectsFromSet:v6];

    v4 = v7;
  }

  return v4;
}

@end