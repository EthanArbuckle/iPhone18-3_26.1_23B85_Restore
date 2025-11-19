@interface CLLocation(PLLocationHash)
- (id)pl_newSurroundingLocationsHashes;
- (uint64_t)pl_locationHash;
@end

@implementation CLLocation(PLLocationHash)

- (id)pl_newSurroundingLocationsHashes
{
  v9[16] = *MEMORY[0x1E69E9840];
  v1 = [a1 pl_locationHash];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:v1];
  [v2 addObject:v3];

  PLGetGeohashCoordinates(v1);
  v4 = 0;
  *v9 = v5;
  *&v9[1] = v6 + 1.0;
  *&v9[2] = v5;
  *&v9[3] = v6 + -1.0;
  *&v9[4] = v5 + 1.0;
  *&v9[5] = v6;
  *&v9[6] = v5 + -1.0;
  *&v9[7] = v6;
  *&v9[8] = v5 + 1.0;
  *&v9[9] = v6 + 1.0;
  *&v9[10] = v5 + -1.0;
  *&v9[11] = v6 + 1.0;
  *&v9[12] = v5 + 1.0;
  *&v9[13] = v6 + -1.0;
  *&v9[14] = v5 + -1.0;
  *&v9[15] = v6 + -1.0;
  do
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{PLGetCoordinatesGeohash(*&v9[v4], *&v9[v4 + 1])}];
    [v2 addObject:v7];

    v4 += 2;
  }

  while (v4 != 16);

  return v2;
}

- (uint64_t)pl_locationHash
{
  [a1 coordinate];

  return PLCalculateAreaHashImpl(14, 0, 0, v1, v2, 90.0, -180.0, -90.0, 180.0);
}

@end