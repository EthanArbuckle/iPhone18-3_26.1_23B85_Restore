@interface PLDuplicateDetectorLivePhotoContextData
+ (id)dataWithSubtype:(signed __int16)a3 isSharedLibrary:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation PLDuplicateDetectorLivePhotoContextData

- (id)description
{
  v9.receiver = self;
  v9.super_class = PLDuplicateDetectorLivePhotoContextData;
  v3 = [(PLDuplicateDetectorLivePhotoContextData *)&v9 description];
  v4 = [(PLDuplicateDetectorLivePhotoContextData *)self subtype];
  v5 = [(PLDuplicateDetectorLivePhotoContextData *)self isSharedLibrary];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  v7 = [v3 stringByAppendingFormat:@" subType: %d, isSharedLibrary: %@", v4, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(PLDuplicateDetectorLivePhotoContextData *)self subtype];
  if (v5 == [v4 subtype])
  {
    v6 = [(PLDuplicateDetectorLivePhotoContextData *)self isSharedLibrary];
    v7 = v6 ^ [v4 isSharedLibrary] ^ 1;
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

+ (id)dataWithSubtype:(signed __int16)a3 isSharedLibrary:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_alloc_init(PLDuplicateDetectorLivePhotoContextData);
  [(PLDuplicateDetectorLivePhotoContextData *)v6 setSubtype:v5];
  [(PLDuplicateDetectorLivePhotoContextData *)v6 setIsSharedLibrary:v4];

  return v6;
}

@end