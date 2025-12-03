@interface PGFlexMusicCacher
+ (void)cacheSongAudioAndArtworkForUIDs:(id)ds;
- (PGFlexMusicCacher)init;
@end

@implementation PGFlexMusicCacher

+ (void)cacheSongAudioAndArtworkForUIDs:(id)ds
{
  v3 = sub_22F741180();
  v4 = sub_22F35B860(v3);

  if (v4 >> 62)
  {
    v5 = sub_22F741A00();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2319016F0](i, v4);
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    [v7 pg_requestDownloadIfNeeded];
  }

LABEL_10:
}

- (PGFlexMusicCacher)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGFlexMusicCacher *)&v3 init];
}

@end