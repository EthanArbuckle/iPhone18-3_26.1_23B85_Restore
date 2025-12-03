@interface SREMusicModelQuery
- (SREMusicModelQuery)initWithGenreID:(id)d;
@end

@implementation SREMusicModelQuery

- (SREMusicModelQuery)initWithGenreID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = SREMusicModelQuery;
  v6 = [(SREMusicModelQuery *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_genreID, d);
  }

  return v7;
}

@end