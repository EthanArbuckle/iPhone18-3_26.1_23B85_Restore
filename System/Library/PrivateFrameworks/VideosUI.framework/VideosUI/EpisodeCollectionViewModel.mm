@interface EpisodeCollectionViewModel
- (id)seasonCanonicalIdForSeasonIndex:(int64_t)index;
- (id)tvShowCanonicalId;
- (int64_t)episodeCountForSeasonIndex:(int64_t)index;
- (int64_t)totalEpisodeCount;
- (int64_t)totalSeasonCount;
@end

@implementation EpisodeCollectionViewModel

- (id)tvShowCanonicalId
{

  sub_1E3CCB1A0();

  v2 = sub_1E4205ED4();

  return v2;
}

- (int64_t)totalSeasonCount
{

  sub_1E3CCB2F4();
  OUTLINED_FUNCTION_12_1();

  return v2;
}

- (int64_t)totalEpisodeCount
{

  sub_1E3CCB3A4();
  OUTLINED_FUNCTION_12_1();

  return v2;
}

- (id)seasonCanonicalIdForSeasonIndex:(int64_t)index
{

  sub_1E3CCB428(index);

  v4 = sub_1E4205ED4();

  return v4;
}

- (int64_t)episodeCountForSeasonIndex:(int64_t)index
{

  sub_1E3CCB580(index);
  OUTLINED_FUNCTION_12_1();

  return index;
}

@end