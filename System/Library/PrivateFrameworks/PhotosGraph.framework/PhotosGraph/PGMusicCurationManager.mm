@interface PGMusicCurationManager
- (PGMusicCurationManager)init;
- (id)adjustCurationForCollection:(id)collection initialCuration:(id)curation cache:(id)cache progressReporter:(id)reporter error:(id *)error;
@end

@implementation PGMusicCurationManager

- (id)adjustCurationForCollection:(id)collection initialCuration:(id)curation cache:(id)cache progressReporter:(id)reporter error:(id *)error
{
  v11 = sub_22F740E20();
  v13 = v12;
  curationCopy = curation;
  cacheCopy = cache;
  reporterCopy = reporter;
  selfCopy = self;
  sub_22F25EA14(v11, v13, curationCopy, cacheCopy);
  v19 = v18;

  return v19;
}

- (PGMusicCurationManager)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGMusicCurationManager *)&v3 init];
}

@end