@interface PGSocialGroupsPromoter
+ (id)ingestUserVerifiedSocialGroupsFromPhotoLibrary:(id)library intoGraph:(id)graph progressReporter:(id)reporter error:(id *)error;
+ (id)promoteSocialGroupsInGraph:(id)graph photoLibrary:(id)library maxNumberOfElectedSocialGroups:(int64_t)groups progressReporter:(id)reporter persistGroups:(BOOL)persistGroups error:(id *)error;
- (PGSocialGroupsPromoter)init;
@end

@implementation PGSocialGroupsPromoter

+ (id)promoteSocialGroupsInGraph:(id)graph photoLibrary:(id)library maxNumberOfElectedSocialGroups:(int64_t)groups progressReporter:(id)reporter persistGroups:(BOOL)persistGroups error:(id *)error
{
  swift_getObjCClassMetadata();
  graphCopy = graph;
  libraryCopy = library;
  reporterCopy = reporter;
  v16 = static SocialGroupsPromoter.promoteSocialGroups(in:photoLibrary:maxNumberOfElectedSocialGroups:progressReporter:persistGroups:)(graphCopy, libraryCopy, groups, reporterCopy, persistGroups);

  return v16;
}

+ (id)ingestUserVerifiedSocialGroupsFromPhotoLibrary:(id)library intoGraph:(id)graph progressReporter:(id)reporter error:(id *)error
{
  swift_getObjCClassMetadata();
  libraryCopy = library;
  graphCopy = graph;
  reporterCopy = reporter;
  static SocialGroupsPromoter.ingestUserVerifiedSocialGroups(from:into:progressReporter:)(libraryCopy, graphCopy);

  v12 = sub_22F741160();

  return v12;
}

- (PGSocialGroupsPromoter)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGSocialGroupsPromoter *)&v3 init];
}

@end