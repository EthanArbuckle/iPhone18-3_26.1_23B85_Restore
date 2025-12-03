@interface PXBookmarkUtilities
+ (BOOL)canAddBookmarkForObject:(id)object;
+ (BOOL)hasBookmarkForObject:(id)object;
+ (id)suggestedObjectsForPhotoLibrary:(id)library;
+ (void)flushCachedBookmarksForPhotoLibrary:(id)library;
- (PXBookmarkUtilities)init;
@end

@implementation PXBookmarkUtilities

+ (id)suggestedObjectsForPhotoLibrary:(id)library
{
  libraryCopy = library;
  sub_1A4114470(libraryCopy);

  sub_1A3C52C70(0, &qword_1EB1265D0);
  v4 = sub_1A524CA14();

  return v4;
}

+ (void)flushCachedBookmarksForPhotoLibrary:(id)library
{
  libraryCopy = library;
  PHPhotoLibrary.flushBookmarksManager()();
}

+ (BOOL)hasBookmarkForObject:(id)object
{
  objectCopy = object;
  v4 = sub_1A4114654(objectCopy);

  return v4 & 1;
}

+ (BOOL)canAddBookmarkForObject:(id)object
{
  sub_1A3CA09D8(0, &qword_1EB125B40, sub_1A3FA099C);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  objectCopy = object;
  sub_1A3F9E7D0(objectCopy, v6);

  sub_1A3FA099C();
  LOBYTE(objectCopy) = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  sub_1A3CA0A80(v6, &qword_1EB125B40, sub_1A3FA099C);
  return objectCopy;
}

- (PXBookmarkUtilities)init
{
  v3.receiver = self;
  v3.super_class = PXBookmarkUtilities;
  return [(PXBookmarkUtilities *)&v3 init];
}

@end