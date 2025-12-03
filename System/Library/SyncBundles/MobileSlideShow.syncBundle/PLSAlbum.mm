@interface PLSAlbum
+ (id)album;
+ (id)albumWithUUID:(id)d;
- (BOOL)isEqualToAlbum:(id)album;
- (PLSAlbum)init;
- (PLSAlbum)initWithCoder:(id)coder;
- (PLSAlbum)initWithUUID:(id)d;
- (id)description;
- (id)initFromPropertyList:(id)list;
- (id)propertyList;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLSAlbum

- (BOOL)isEqualToAlbum:(id)album
{
  albumCopy = album;
  if (!albumCopy)
  {
    goto LABEL_30;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v27 = [NSString stringWithFormat:@"otherAlbum isn't an album"];
    v28 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v27;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
    }

    goto LABEL_29;
  }

  if (albumCopy == self)
  {
    v25 = 1;
    goto LABEL_31;
  }

  name = [(PLSAlbum *)self name];
  name2 = [(PLSAlbum *)albumCopy name];
  v7 = [PLSLibraryChangeSnapshot string:name equalsString:name2];

  if ((v7 & 1) == 0)
  {
    v27 = [NSString stringWithFormat:@"album name not equal"];
    v28 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v27;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
    }

    goto LABEL_29;
  }

  albumSubclass = [(PLSAlbum *)self albumSubclass];
  albumSubclass2 = [(PLSAlbum *)albumCopy albumSubclass];
  v10 = [PLSLibraryChangeSnapshot number:albumSubclass equalsNumber:albumSubclass2];

  if ((v10 & 1) == 0)
  {
    v27 = [NSString stringWithFormat:@"album albumSubclass not equal"];
    v28 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v27;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
    }

    goto LABEL_29;
  }

  albumKeyAssetFaceIndex = [(PLSAlbum *)self albumKeyAssetFaceIndex];
  albumKeyAssetFaceIndex2 = [(PLSAlbum *)albumCopy albumKeyAssetFaceIndex];
  v13 = [PLSLibraryChangeSnapshot number:albumKeyAssetFaceIndex equalsNumber:albumKeyAssetFaceIndex2];

  if ((v13 & 1) == 0)
  {
    v27 = [NSString stringWithFormat:@"album albumKeyAssetFaceIndex not equal"];
    v28 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v27;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
    }

    goto LABEL_29;
  }

  parentUUID = [(PLSAlbum *)self parentUUID];
  parentUUID2 = [(PLSAlbum *)albumCopy parentUUID];
  v16 = [PLSLibraryChangeSnapshot string:parentUUID equalsString:parentUUID2];

  if ((v16 & 1) == 0)
  {
    v27 = [NSString stringWithFormat:@"album parentUUID not equal"];
    v28 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v27;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
    }

    goto LABEL_29;
  }

  keyAssetUUID = [(PLSAlbum *)self keyAssetUUID];
  keyAssetUUID2 = [(PLSAlbum *)albumCopy keyAssetUUID];
  v19 = [PLSLibraryChangeSnapshot string:keyAssetUUID equalsString:keyAssetUUID2];

  if ((v19 & 1) == 0)
  {
    v27 = [NSString stringWithFormat:@"album keyAssetUUID not equal"];
    v28 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v27;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
    }

LABEL_29:

LABEL_30:
    v25 = 0;
    goto LABEL_31;
  }

  v20 = objc_autoreleasePoolPush();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x2020000000;
  v38 = 1;
  assetUUIDs = [(PLSAlbum *)albumCopy assetUUIDs];
  assetUUIDs2 = [(PLSAlbum *)self assetUUIDs];
  v23 = [assetUUIDs2 count];
  LOBYTE(v23) = v23 == [assetUUIDs count];

  if (v23)
  {
    assetUUIDs3 = [(PLSAlbum *)self assetUUIDs];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_209C;
    v31[3] = &unk_24BC8;
    v32 = assetUUIDs;
    p_buf = &buf;
    [assetUUIDs3 enumerateObjectsUsingBlock:v31];

    v25 = *(*(&buf + 1) + 24);
    v26 = v32;
  }

  else
  {
    v26 = [NSString stringWithFormat:@"album assetUUIDs count not equal"];
    v30 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *v34 = 138412290;
      v35 = v26;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEBUG, "%@", v34, 0xCu);
    }

    v25 = 0;
  }

  _Block_object_dispose(&buf, 8);
  objc_autoreleasePoolPop(v20);
LABEL_31:

  return v25 & 1;
}

- (id)propertyList
{
  v12.receiver = self;
  v12.super_class = PLSAlbum;
  propertyList = [(PLSItem *)&v12 propertyList];
  v4 = [NSMutableDictionary dictionaryWithDictionary:propertyList];

  name = self->_name;
  if (name)
  {
    [v4 setObject:name forKey:kPLSAlbumNameKey];
  }

  assetUUIDs = self->_assetUUIDs;
  if (assetUUIDs)
  {
    [v4 setObject:assetUUIDs forKey:kPLSAlbumAssetUUIDsKey];
  }

  parentUUID = self->_parentUUID;
  if (parentUUID)
  {
    [v4 setObject:parentUUID forKey:kPLSAlbumParentUUIDKey];
  }

  albumSubclass = self->_albumSubclass;
  if (albumSubclass)
  {
    [v4 setObject:albumSubclass forKey:kPLSAlbumSubclassKey];
  }

  albumKeyAssetFaceIndex = self->_albumKeyAssetFaceIndex;
  if (albumKeyAssetFaceIndex)
  {
    [v4 setObject:albumKeyAssetFaceIndex forKey:kPLSAlbumKeyAssetFaceIndexKey];
  }

  keyAssetUUID = self->_keyAssetUUID;
  if (keyAssetUUID)
  {
    [v4 setObject:keyAssetUUID forKey:kPLSKeyAssetUUIDKey];
  }

  return v4;
}

- (id)initFromPropertyList:(id)list
{
  listCopy = list;
  v19.receiver = self;
  v19.super_class = PLSAlbum;
  v5 = [(PLSItem *)&v19 initFromPropertyList:listCopy];
  if (v5)
  {
    v6 = [listCopy objectForKey:kPLSAlbumNameKey];
    v7 = v5[4];
    v5[4] = v6;

    v8 = [listCopy objectForKey:kPLSAlbumAssetUUIDsKey];
    v9 = v5[5];
    v5[5] = v8;

    v10 = [listCopy objectForKey:kPLSAlbumParentUUIDKey];
    v11 = v5[6];
    v5[6] = v10;

    v12 = [listCopy objectForKey:kPLSAlbumSubclassKey];
    v13 = v5[7];
    v5[7] = v12;

    v14 = [listCopy objectForKey:kPLSAlbumKeyAssetFaceIndexKey];
    v15 = v5[8];
    v5[8] = v14;

    v16 = [listCopy objectForKey:kPLSKeyAssetUUIDKey];
    v17 = v5[9];
    v5[9] = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(PLSAlbum *)self name];
  [coderCopy encodeObject:name forKey:kPLSAlbumNameKey];

  assetUUIDs = [(PLSAlbum *)self assetUUIDs];
  [coderCopy encodeObject:assetUUIDs forKey:kPLSAlbumAssetUUIDsKey];

  parentUUID = [(PLSAlbum *)self parentUUID];
  [coderCopy encodeObject:parentUUID forKey:kPLSAlbumParentUUIDKey];

  albumSubclass = [(PLSAlbum *)self albumSubclass];
  [coderCopy encodeObject:albumSubclass forKey:kPLSAlbumSubclassKey];

  albumKeyAssetFaceIndex = [(PLSAlbum *)self albumKeyAssetFaceIndex];
  [coderCopy encodeObject:albumKeyAssetFaceIndex forKey:kPLSAlbumKeyAssetFaceIndexKey];

  keyAssetUUID = [(PLSAlbum *)self keyAssetUUID];
  [coderCopy encodeObject:keyAssetUUID forKey:kPLSKeyAssetUUIDKey];

  v11.receiver = self;
  v11.super_class = PLSAlbum;
  [(PLSItem *)&v11 encodeWithCoder:coderCopy];
}

- (PLSAlbum)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PLSAlbum;
  v5 = [(PLSItem *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:kPLSAlbumNameKey];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodePropertyListForKey:kPLSAlbumAssetUUIDsKey];
    assetUUIDs = v5->_assetUUIDs;
    v5->_assetUUIDs = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:kPLSAlbumParentUUIDKey];
    parentUUID = v5->_parentUUID;
    v5->_parentUUID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:kPLSAlbumSubclassKey];
    albumSubclass = v5->_albumSubclass;
    v5->_albumSubclass = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:kPLSAlbumKeyAssetFaceIndexKey];
    albumKeyAssetFaceIndex = v5->_albumKeyAssetFaceIndex;
    v5->_albumKeyAssetFaceIndex = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:kPLSKeyAssetUUIDKey];
    keyAssetUUID = v5->_keyAssetUUID;
    v5->_keyAssetUUID = v16;
  }

  return v5;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = PLSAlbum;
  v3 = [(PLSItem *)&v8 description];
  name = [(PLSAlbum *)self name];
  albumSubclass = [(PLSAlbum *)self albumSubclass];
  v6 = [NSString stringWithFormat:@"Album - %@, name: %@ subclass type:(%@)", v3, name, albumSubclass];

  return v6;
}

- (PLSAlbum)initWithUUID:(id)d
{
  v12.receiver = self;
  v12.super_class = PLSAlbum;
  v3 = [(PLSItem *)&v12 initWithUUID:d];
  v4 = v3;
  if (v3)
  {
    name = v3->_name;
    v3->_name = &stru_24CF0;

    assetUUIDs = v4->_assetUUIDs;
    v4->_assetUUIDs = &__NSArray0__struct;

    parentUUID = v4->_parentUUID;
    v4->_parentUUID = 0;

    albumSubclass = v4->_albumSubclass;
    v4->_albumSubclass = &off_25CD0;

    albumKeyAssetFaceIndex = v4->_albumKeyAssetFaceIndex;
    v4->_albumKeyAssetFaceIndex = 0;

    keyAssetUUID = v4->_keyAssetUUID;
    v4->_keyAssetUUID = 0;
  }

  return v4;
}

- (PLSAlbum)init
{
  v3 = +[PLSUUID generateUUIDAsString];
  v4 = [(PLSAlbum *)self initWithUUID:v3];

  return v4;
}

+ (id)albumWithUUID:(id)d
{
  dCopy = d;
  v4 = [[PLSAlbum alloc] initWithUUID:dCopy];

  return v4;
}

+ (id)album
{
  v2 = objc_alloc_init(PLSAlbum);

  return v2;
}

@end