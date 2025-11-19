@interface SXMosaicGalleryCluster
- (BOOL)clusterIsEqualToTileTypes:(id)a3;
- (BOOL)isClusterOfType:(int)a3;
- (BOOL)isEqual:(id)a3;
- (SXMosaicGalleryCluster)initWithItems:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation SXMosaicGalleryCluster

- (SXMosaicGalleryCluster)initWithItems:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXMosaicGalleryCluster;
  v6 = [(SXMosaicGalleryCluster *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_items, a3);
  }

  return v7;
}

- (BOOL)isClusterOfType:(int)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(SXMosaicGalleryCluster *)self items];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * i) tileType] != a3)
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SXMosaicGalleryCluster *)self items];
    v7 = [v5 items];

    v8 = [v6 isEqualToArray:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)clusterIsEqualToTileTypes:(id)a3
{
  v4 = a3;
  v5 = [(SXMosaicGalleryCluster *)self items];
  v6 = [v5 count];

  if ([v4 count] == v6)
  {
    if (v6)
    {
      v7 = 0;
      v8 = v6 - 1;
      v9 = 1;
      v10 = 1;
      while (1)
      {
        v11 = v8;
        v12 = [(SXMosaicGalleryCluster *)self items];
        v13 = [v12 objectAtIndex:v7];

        if (v9)
        {
          v14 = [v4 objectAtIndex:v7];
          v15 = [v14 intValue];

          v9 = [v13 tileType] == v15;
          if (!v10)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v9 = 0;
          if (!v10)
          {
LABEL_6:
            v10 = 0;
            goto LABEL_9;
          }
        }

        v16 = [v4 objectAtIndex:v11];
        v17 = [v16 intValue];

        v10 = [v13 tileType] == v17;
LABEL_9:
        v18 = v9 || v10;

        if (v9 || v10)
        {
          ++v7;
          v8 = v11 - 1;
          if (v11)
          {
            continue;
          }
        }

        goto LABEL_14;
      }
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

LABEL_14:

  return v18 & 1;
}

- (unint64_t)hash
{
  v2 = [(SXMosaicGalleryCluster *)self items];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(SXMosaicGalleryCluster *)self items];
  v4 = [v2 stringWithFormat:@"Cluster: %@", v3];

  return v4;
}

@end