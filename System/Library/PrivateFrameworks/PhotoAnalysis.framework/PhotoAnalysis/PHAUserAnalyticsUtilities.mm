@interface PHAUserAnalyticsUtilities
- (BOOL)updateUserAnalyticsStreamWithProgressReporter:(id)a3 error:(id *)a4;
- (PHAUserAnalyticsUtilities)init;
- (PHAUserAnalyticsUtilities)initWithPhotoLibrary:(id)a3;
@end

@implementation PHAUserAnalyticsUtilities

- (PHAUserAnalyticsUtilities)initWithPhotoLibrary:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___PHAUserAnalyticsUtilities_photoLibrary) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for UserAnalyticsUtilities();
  v4 = a3;
  return [(PHAUserAnalyticsUtilities *)&v6 init];
}

- (BOOL)updateUserAnalyticsStreamWithProgressReporter:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  sub_22FC2F83C();

  return 1;
}

- (PHAUserAnalyticsUtilities)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end