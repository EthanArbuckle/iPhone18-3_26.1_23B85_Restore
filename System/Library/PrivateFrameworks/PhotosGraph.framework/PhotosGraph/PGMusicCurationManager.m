@interface PGMusicCurationManager
- (PGMusicCurationManager)init;
- (id)adjustCurationForCollection:(id)a3 initialCuration:(id)a4 cache:(id)a5 progressReporter:(id)a6 error:(id *)a7;
@end

@implementation PGMusicCurationManager

- (id)adjustCurationForCollection:(id)a3 initialCuration:(id)a4 cache:(id)a5 progressReporter:(id)a6 error:(id *)a7
{
  v11 = sub_22F740E20();
  v13 = v12;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = self;
  sub_22F25EA14(v11, v13, v14, v15);
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