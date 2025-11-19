@interface PXBookmarkUtilities
+ (BOOL)canAddBookmarkForObject:(id)a3;
+ (BOOL)hasBookmarkForObject:(id)a3;
+ (id)suggestedObjectsForPhotoLibrary:(id)a3;
+ (void)flushCachedBookmarksForPhotoLibrary:(id)a3;
- (PXBookmarkUtilities)init;
@end

@implementation PXBookmarkUtilities

+ (id)suggestedObjectsForPhotoLibrary:(id)a3
{
  v3 = a3;
  sub_1A4114470(v3);

  sub_1A3C52C70(0, &qword_1EB1265D0);
  v4 = sub_1A524CA14();

  return v4;
}

+ (void)flushCachedBookmarksForPhotoLibrary:(id)a3
{
  v3 = a3;
  PHPhotoLibrary.flushBookmarksManager()();
}

+ (BOOL)hasBookmarkForObject:(id)a3
{
  v3 = a3;
  v4 = sub_1A4114654(v3);

  return v4 & 1;
}

+ (BOOL)canAddBookmarkForObject:(id)a3
{
  sub_1A3CA09D8(0, &qword_1EB125B40, sub_1A3FA099C);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = a3;
  sub_1A3F9E7D0(v7, v6);

  sub_1A3FA099C();
  LOBYTE(v7) = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  sub_1A3CA0A80(v6, &qword_1EB125B40, sub_1A3FA099C);
  return v7;
}

- (PXBookmarkUtilities)init
{
  v3.receiver = self;
  v3.super_class = PXBookmarkUtilities;
  return [(PXBookmarkUtilities *)&v3 init];
}

@end