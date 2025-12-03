@interface PHAUserAnalyticsUtilities
- (BOOL)updateUserAnalyticsStreamWithProgressReporter:(id)reporter error:(id *)error;
- (PHAUserAnalyticsUtilities)init;
- (PHAUserAnalyticsUtilities)initWithPhotoLibrary:(id)library;
@end

@implementation PHAUserAnalyticsUtilities

- (PHAUserAnalyticsUtilities)initWithPhotoLibrary:(id)library
{
  *(&self->super.isa + OBJC_IVAR___PHAUserAnalyticsUtilities_photoLibrary) = library;
  v6.receiver = self;
  v6.super_class = type metadata accessor for UserAnalyticsUtilities();
  libraryCopy = library;
  return [(PHAUserAnalyticsUtilities *)&v6 init];
}

- (BOOL)updateUserAnalyticsStreamWithProgressReporter:(id)reporter error:(id *)error
{
  reporterCopy = reporter;
  selfCopy = self;
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