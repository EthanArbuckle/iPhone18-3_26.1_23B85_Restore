@interface PLDuplicateDetectorLivePhotoContextData
+ (id)dataWithSubtype:(signed __int16)subtype isSharedLibrary:(BOOL)library;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation PLDuplicateDetectorLivePhotoContextData

- (id)description
{
  v9.receiver = self;
  v9.super_class = PLDuplicateDetectorLivePhotoContextData;
  v3 = [(PLDuplicateDetectorLivePhotoContextData *)&v9 description];
  subtype = [(PLDuplicateDetectorLivePhotoContextData *)self subtype];
  isSharedLibrary = [(PLDuplicateDetectorLivePhotoContextData *)self isSharedLibrary];
  v6 = @"NO";
  if (isSharedLibrary)
  {
    v6 = @"YES";
  }

  v7 = [v3 stringByAppendingFormat:@" subType: %d, isSharedLibrary: %@", subtype, v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  subtype = [(PLDuplicateDetectorLivePhotoContextData *)self subtype];
  if (subtype == [equalCopy subtype])
  {
    isSharedLibrary = [(PLDuplicateDetectorLivePhotoContextData *)self isSharedLibrary];
    v7 = isSharedLibrary ^ [equalCopy isSharedLibrary] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLDuplicateDetectorLivePhotoContextData subtype](self, "subtype") + 1}];
  v4 = [v3 hash];
  v5 = MEMORY[0x1E696AD98];
  if ([(PLDuplicateDetectorLivePhotoContextData *)self isSharedLibrary])
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = [v5 numberWithInt:v6];
  v8 = [v7 hash];

  return v8 + v4;
}

+ (id)dataWithSubtype:(signed __int16)subtype isSharedLibrary:(BOOL)library
{
  libraryCopy = library;
  subtypeCopy = subtype;
  v6 = objc_alloc_init(PLDuplicateDetectorLivePhotoContextData);
  [(PLDuplicateDetectorLivePhotoContextData *)v6 setSubtype:subtypeCopy];
  [(PLDuplicateDetectorLivePhotoContextData *)v6 setIsSharedLibrary:libraryCopy];

  return v6;
}

@end