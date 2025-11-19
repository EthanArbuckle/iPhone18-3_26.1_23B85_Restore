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
  v2 = [(SREMusicCandidate *)self genreIDs];
  v3 = [v2 componentsJoinedByString:{@", "}];

  return v3;
}

- (id)debugString
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"trackId=%ld", -[SREMusicCandidate trackId](self, "trackId")];
  [v3 addObject:v4];

  v5 = [(SREMusicCandidate *)self trackName];

  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [(SREMusicCandidate *)self trackName];
    v8 = [v6 stringWithFormat:@"trackName=%@", v7];
    [v3 addObject:v8];
  }

  v9 = [(SREMusicCandidate *)self artistName];

  if (v9)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [(SREMusicCandidate *)self artistName];
    v12 = [v10 stringWithFormat:@"artistName=%@", v11];
    [v3 addObject:v12];
  }

  if ([(SREMusicCandidate *)self collectionId])
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"collectionId=%ld", -[SREMusicCandidate collectionId](self, "collectionId")];
    [v3 addObject:v13];
  }

  v14 = [(SREMusicCandidate *)self collectionName];

  if (v14)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [(SREMusicCandidate *)self collectionName];
    v17 = [v15 stringWithFormat:@"collectionName=%@", v16];
    [v3 addObject:v17];
  }

  v18 = [(SREMusicCandidate *)self genreIDs];
  v19 = [v18 count];

  if (v19)
  {
    v20 = MEMORY[0x277CCACA8];
    v21 = [(SREMusicCandidate *)self genresDebugString];
    v22 = [v20 stringWithFormat:@"genreID=%@", v21];
    [v3 addObject:v22];
  }

  v23 = [(SREMusicCandidate *)self artworkURL];

  if (v23)
  {
    v24 = MEMORY[0x277CCACA8];
    v25 = [(SREMusicCandidate *)self artworkURL];
    v26 = [v24 stringWithFormat:@"artworkURL=%@", v25];
    [v3 addObject:v26];
  }

  if ([(SREMusicCandidate *)self trackTimeMillis])
  {
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"trackTimeMillis=%ld", -[SREMusicCandidate trackTimeMillis](self, "trackTimeMillis")];
    [v3 addObject:v27];
  }

  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"trackExplicitness=%d", -[SREMusicCandidate trackExplicitness](self, "trackExplicitness")];
  [v3 addObject:v28];

  v29 = [v3 componentsJoinedByString:@"  "];

  return v29;
}

@end