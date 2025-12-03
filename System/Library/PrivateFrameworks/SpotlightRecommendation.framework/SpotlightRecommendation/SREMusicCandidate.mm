@interface SREMusicCandidate
- (SREMusicCandidate)init;
- (id)debugString;
- (id)genresDebugString;
@end

@implementation SREMusicCandidate

- (SREMusicCandidate)init
{
  v3.receiver = self;
  v3.super_class = SREMusicCandidate;
  return [(SREMusicCandidate *)&v3 init];
}

- (id)genresDebugString
{
  genreIDs = [(SREMusicCandidate *)self genreIDs];
  v3 = [genreIDs componentsJoinedByString:{@", "}];

  return v3;
}

- (id)debugString
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"trackId=%ld", -[SREMusicCandidate trackId](self, "trackId")];
  [array addObject:v4];

  trackName = [(SREMusicCandidate *)self trackName];

  if (trackName)
  {
    v6 = MEMORY[0x277CCACA8];
    trackName2 = [(SREMusicCandidate *)self trackName];
    v8 = [v6 stringWithFormat:@"trackName=%@", trackName2];
    [array addObject:v8];
  }

  artistName = [(SREMusicCandidate *)self artistName];

  if (artistName)
  {
    v10 = MEMORY[0x277CCACA8];
    artistName2 = [(SREMusicCandidate *)self artistName];
    v12 = [v10 stringWithFormat:@"artistName=%@", artistName2];
    [array addObject:v12];
  }

  if ([(SREMusicCandidate *)self collectionId])
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"collectionId=%ld", -[SREMusicCandidate collectionId](self, "collectionId")];
    [array addObject:v13];
  }

  collectionName = [(SREMusicCandidate *)self collectionName];

  if (collectionName)
  {
    v15 = MEMORY[0x277CCACA8];
    collectionName2 = [(SREMusicCandidate *)self collectionName];
    v17 = [v15 stringWithFormat:@"collectionName=%@", collectionName2];
    [array addObject:v17];
  }

  genreIDs = [(SREMusicCandidate *)self genreIDs];
  v19 = [genreIDs count];

  if (v19)
  {
    v20 = MEMORY[0x277CCACA8];
    genresDebugString = [(SREMusicCandidate *)self genresDebugString];
    v22 = [v20 stringWithFormat:@"genreID=%@", genresDebugString];
    [array addObject:v22];
  }

  artworkURL = [(SREMusicCandidate *)self artworkURL];

  if (artworkURL)
  {
    v24 = MEMORY[0x277CCACA8];
    artworkURL2 = [(SREMusicCandidate *)self artworkURL];
    v26 = [v24 stringWithFormat:@"artworkURL=%@", artworkURL2];
    [array addObject:v26];
  }

  if ([(SREMusicCandidate *)self trackTimeMillis])
  {
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"trackTimeMillis=%ld", -[SREMusicCandidate trackTimeMillis](self, "trackTimeMillis")];
    [array addObject:v27];
  }

  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"trackExplicitness=%d", -[SREMusicCandidate trackExplicitness](self, "trackExplicitness")];
  [array addObject:v28];

  v29 = [array componentsJoinedByString:@"  "];

  return v29;
}

@end