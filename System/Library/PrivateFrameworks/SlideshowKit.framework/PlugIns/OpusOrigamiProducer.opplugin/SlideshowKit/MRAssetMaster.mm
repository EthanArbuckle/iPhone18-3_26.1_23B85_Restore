@interface MRAssetMaster
- (BOOL)purgeResources;
- (CGSize)originalSize;
- (MRAssetMaster)initWithPath:(id)path originalSize:(CGSize)size isEmbeddedAsset:(BOOL)asset isSupportedMovie:(BOOL)movie andImageManager:(id)manager;
- (MRImage)thumbnail;
- (NSString)path;
- (id)retainedByUserPlayerForSize:(CGSize)size andOptions:(id)options;
- (id)thumbnailForFlagsMonochromatic:(BOOL)monochromatic mipmap:(BOOL)mipmap powerOfTwo:(BOOL)two;
- (void)dealloc;
- (void)invalidate;
- (void)relinquishPlayer:(id)player;
@end

@implementation MRAssetMaster

- (MRAssetMaster)initWithPath:(id)path originalSize:(CGSize)size isEmbeddedAsset:(BOOL)asset isSupportedMovie:(BOOL)movie andImageManager:(id)manager
{
  height = size.height;
  width = size.width;
  v16.receiver = self;
  v16.super_class = MRAssetMaster;
  v13 = [(MRAssetMaster *)&v16 init];
  if (v13)
  {
    v13->_path = [path copy];
    v13->_originalSize.width = width;
    v13->_originalSize.height = height;
    v13->_imageManager = manager;
    v14 = v13->_originalSize.width > 0.0 && v13->_originalSize.height > 0.0;
    v13->_isValid = v14;
    v13->_isEmbeddedAsset = asset;
    v13->_isSupportedMovie = movie;
    v13->_players = objc_alloc_init(NSMutableDictionary);
    v13->_unusedPlayers = objc_alloc_init(NSMutableSet);
  }

  return v13;
}

- (void)dealloc
{
  self->_path = 0;
  [(MRImage *)self->_thumbnail releaseByUser];
  self->_thumbnail = 0;
  self->_originalSize = CGSizeZero;
  self->_isValid = 0;

  self->_players = 0;
  self->_unusedPlayers = 0;

  self->_imageManager = 0;
  v3.receiver = self;
  v3.super_class = MRAssetMaster;
  [(MRAssetMaster *)&v3 dealloc];
}

- (void)invalidate
{
  objc_sync_enter(self);

  self->_path = [NSString stringWithFormat:@"invalid %p", self];

  objc_sync_exit(self);
}

- (NSString)path
{
  objc_sync_enter(self);
  v3 = self->_path;
  objc_sync_exit(self);
  return v3;
}

- (id)retainedByUserPlayerForSize:(CGSize)size andOptions:(id)options
{
  if (!self->_isValid)
  {
    return 0;
  }

  height = size.height;
  width = size.width;
  v8 = @"liveCamera";
  v9 = [(NSString *)self->_path isEqualToString:@"liveCamera"];
  if (v9)
  {
    isStill = 0;
    goto LABEL_31;
  }

  v12 = width == CGSizeZero.width;
  v13 = height == CGSizeZero.height;
  v14 = self->_originalSize.width;
  if (v12 && v13)
  {
    v15 = self->_originalSize.width;
  }

  else
  {
    v15 = width;
  }

  if (v12 && v13)
  {
    v16 = self->_originalSize.height;
  }

  else
  {
    v16 = height;
  }

  v17 = v14 / self->_originalSize.height;
  if (v15 == 0.0)
  {
    v15 = v16 * v17;
  }

  else if (v16 == 0.0)
  {
    v16 = v15 / v17;
  }

  else
  {
    v18 = v15 / v16;
    v19 = v17;
    if (v18 <= v17)
    {
      v15 = v16 * v19;
    }

    else
    {
      v16 = v15 / v19;
    }
  }

  if (v15 <= v14)
  {
    width = v15;
  }

  else
  {
    width = self->_originalSize.width;
  }

  if (v15 <= v14)
  {
    height = v16;
  }

  else
  {
    height = self->_originalSize.height;
  }

  isStill = [options isStill];
  if (isStill)
  {
    if (self->_isSupportedMovie)
    {
      wantsMonochromatic = [options wantsMonochromatic];
      wantsMipmap = [options wantsMipmap];
      wantsPowerOfTwo = [options wantsPowerOfTwo];
      [options stillTime];
      v8 = [NSString stringWithFormat:@"%d-%d%d%d%f", width, wantsMonochromatic, wantsMipmap, wantsPowerOfTwo, v23];
      isStill = 1;
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (!self->_isSupportedMovie)
  {
LABEL_29:
    v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d-%d%d%d", width, [options wantsMonochromatic], objc_msgSend(options, "wantsMipmap"), objc_msgSend(options, "wantsPowerOfTwo"));
    goto LABEL_30;
  }

  v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d%d%d", [options wantsMonochromatic], objc_msgSend(options, "wantsMipmap"), objc_msgSend(options, "wantsPowerOfTwo"), v48);
LABEL_30:
  v8 = v24;
LABEL_31:
  players = self->_players;
  objc_sync_enter(players);
  v26 = [(NSMutableDictionary *)self->_players objectForKey:v8];
  [options isForExport];
  v27 = objc_opt_class();
  while (v26)
  {
    if (objc_opt_isKindOfClass() & 1) == 0 || v26 == [options playerHint] || (-[NSMutableSet containsObject:](self->_unusedPlayers, "containsObject:", v26))
    {
      [(NSMutableSet *)self->_unusedPlayers removeObject:v26];
      goto LABEL_69;
    }

    v8 = [(__CFString *)v8 stringByAppendingString:@"."];
    v26 = [(NSMutableDictionary *)self->_players objectForKey:v8];
  }

  if (v9)
  {
    v26 = 0;
  }

  else
  {
    if ((isStill & 1) != 0 || !self->_isSupportedMovie)
    {
      if ([options thumbnailIsOK])
      {
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        objectEnumerator = [(NSMutableDictionary *)self->_players objectEnumerator];
        v29 = [objectEnumerator countByEnumeratingWithState:&v50 objects:v54 count:16];
        if (v29)
        {
          retainByUser = 0;
          v30 = *v51;
          do
          {
            for (i = 0; i != v29; i = i + 1)
            {
              if (*v51 != v30)
              {
                objc_enumerationMutation(objectEnumerator);
              }

              v32 = *(*(&v50 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                wantsMonochromatic2 = [options wantsMonochromatic];
                if (wantsMonochromatic2 == [v32 isMonochromatic])
                {
                  wantsMipmap2 = [options wantsMipmap];
                  if (wantsMipmap2 == [v32 generatesMipmap])
                  {
                    wantsPowerOfTwo2 = [options wantsPowerOfTwo];
                    if (wantsPowerOfTwo2 == [v32 usesPowerOfTwo])
                    {
                      retainedByUserCurrentImage = [v32 retainedByUserCurrentImage];
                      v37 = retainedByUserCurrentImage;
                      if (retainedByUserCurrentImage)
                      {
                        if (!retainByUser || ([retainedByUserCurrentImage size], v39 = v38, objc_msgSend(retainByUser, "size"), v41 = v40, v42 = fabs(log2(v39 / width)), v42 < fabs(log2(v41 / width))))
                        {
                          [retainByUser releaseByUser];
                          retainByUser = [v37 retainByUser];
                        }

                        [v37 releaseByUser];
                      }
                    }
                  }
                }
              }
            }

            v29 = [objectEnumerator countByEnumeratingWithState:&v50 objects:v54 count:16];
          }

          while (v29);
        }

        else
        {
          retainByUser = 0;
        }

        [options setInitialImage:retainByUser];
        [retainByUser releaseByUser];
      }

      height = [[MRAssetPlayerStillImage alloc] initWithPath:self->_path size:self master:options andOptions:width, height];
    }

    else
    {
      if (self->_isEmbeddedAsset || (v44 = -[MRContext assetManager](-[MRImageManager baseContext](self->_imageManager, "baseContext"), "assetManager"), !-[MZMediaManagement avAssetForAssetAtPath:](v44, "avAssetForAssetAtPath:", self->_path)) && ((v46 = -[MZMediaManagement absolutePathForAssetAtPath:andSize:](v44, "absolutePathForAssetAtPath:andSize:", self->_path, width, height), (v47 = v46) == 0) || ![v46 isAbsolutePath] || !-[NSFileManager fileExistsAtPath:isDirectory:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:isDirectory:", v47, 0)))
      {
        v27 = MRAssetPlayerStillImage;
      }

      height = [[v27 alloc] initWithPath:self->_path size:self master:options andOptions:{width, height}];
    }

    v26 = height;
  }

  [(NSMutableDictionary *)self->_players setObject:v26 forKey:v8];

LABEL_69:
  retainByUser2 = [(MRAssetPlayer *)v26 retainByUser];
  objc_sync_exit(players);
  return retainByUser2;
}

- (void)relinquishPlayer:(id)player
{
  players = self->_players;
  objc_sync_enter(players);
  [(NSMutableSet *)self->_unusedPlayers addObject:player];

  objc_sync_exit(players);
}

- (MRImage)thumbnail
{
  objc_sync_enter(self);
  thumbnail = self->_thumbnail;
  if (!thumbnail)
  {
    width = self->_originalSize.width;
    height = self->_originalSize.height;
    v6 = width < height;
    v7 = height / width * 256.0;
    v8 = width / height;
    v9 = 256.0;
    v10 = v8 * 256.0;
    if (v6)
    {
      v10 = 256.0;
      v9 = v7;
    }

    thumbnail = [(CGImage *)_GetImage(self retainByUser:0];
    self->_thumbnail = thumbnail;
  }

  v11 = thumbnail;
  objc_sync_exit(self);
  return v11;
}

- (id)thumbnailForFlagsMonochromatic:(BOOL)monochromatic mipmap:(BOOL)mipmap powerOfTwo:(BOOL)two
{
  twoCopy = two;
  mipmapCopy = mipmap;
  monochromaticCopy = monochromatic;
  if (monochromatic || mipmap || two)
  {
    objc_sync_enter(self);
    width = self->_originalSize.width;
    height = self->_originalSize.height;
    v12 = width < height;
    v13 = height / width * 256.0;
    v14 = width / height;
    v15 = 256.0;
    v16 = v14 * 256.0;
    if (v12)
    {
      v15 = v13;
      v16 = 256.0;
    }

    v17 = _GetImage(self, monochromaticCopy, mipmapCopy, twoCopy, 1, 1, v16, v15, 0.0);
    objc_sync_exit(self);
    return v17;
  }

  else
  {

    return [(MRAssetMaster *)self thumbnail];
  }
}

- (BOOL)purgeResources
{
  if (![(NSMutableSet *)self->_unusedPlayers count])
  {
    return 0;
  }

  players = self->_players;
  objc_sync_enter(players);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  unusedPlayers = self->_unusedPlayers;
  v5 = [(NSMutableSet *)unusedPlayers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(unusedPlayers);
        }

        v8 = [-[NSMutableDictionary allKeysForObject:](self->_players allKeysForObject:{*(*(&v11 + 1) + 8 * i)), "lastObject"}];
        if (v8)
        {
          [(NSMutableDictionary *)self->_players removeObjectForKey:v8];
        }
      }

      v5 = [(NSMutableSet *)unusedPlayers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->_unusedPlayers removeAllObjects];
  v9 = [(NSMutableDictionary *)self->_players count]== 0;
  objc_sync_exit(players);
  return v9;
}

- (CGSize)originalSize
{
  objc_copyStruct(v4, &self->_originalSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end