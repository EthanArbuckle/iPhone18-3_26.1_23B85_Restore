@interface PHAPhotoStyle
- (BOOL)updateStyleStreamWithProgressReporter:(id)reporter error:(id *)error;
- (PHAPhotoStyle)init;
- (PHAPhotoStyle)initWithphotoLibrary:(id)library;
@end

@implementation PHAPhotoStyle

- (PHAPhotoStyle)initWithphotoLibrary:(id)library
{
  libraryCopy = library;
  v4 = sub_22FA88FDC(libraryCopy);

  return v4;
}

- (BOOL)updateStyleStreamWithProgressReporter:(id)reporter error:(id *)error
{
  reporterCopy = reporter;
  selfCopy = self;
  sub_22FA86548(reporterCopy);

  return 1;
}

- (PHAPhotoStyle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end