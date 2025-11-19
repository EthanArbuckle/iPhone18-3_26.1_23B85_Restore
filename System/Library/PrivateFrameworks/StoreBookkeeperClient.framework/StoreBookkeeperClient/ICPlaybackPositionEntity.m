@interface ICPlaybackPositionEntity
@end

@implementation ICPlaybackPositionEntity

void __49__ICPlaybackPositionEntity_SBCPrivate__sbcEntity__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = [v12 libraryUID];
  v7 = [*(a1 + 32) libraryIdentifier];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = [v12 databasePath];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a4 = 1;
  }
}

@end