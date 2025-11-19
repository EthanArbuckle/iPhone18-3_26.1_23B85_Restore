@interface PHAPhotoStyle
- (BOOL)updateStyleStreamWithProgressReporter:(id)a3 error:(id *)a4;
- (PHAPhotoStyle)init;
- (PHAPhotoStyle)initWithphotoLibrary:(id)a3;
@end

@implementation PHAPhotoStyle

- (PHAPhotoStyle)initWithphotoLibrary:(id)a3
{
  v3 = a3;
  v4 = sub_22FA88FDC(v3);

  return v4;
}

- (BOOL)updateStyleStreamWithProgressReporter:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  sub_22FA86548(v5);

  return 1;
}

- (PHAPhotoStyle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end