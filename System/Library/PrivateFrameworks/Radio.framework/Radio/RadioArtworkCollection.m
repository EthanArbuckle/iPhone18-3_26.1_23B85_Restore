@interface RadioArtworkCollection
- (BOOL)isEqual:(id)a3;
- (RadioArtworkCollection)initWithArtworkVariants:(id)a3;
- (RadioArtworkCollection)initWithArtworks:(id)a3;
- (id)bestArtworkForPixelSize:(CGSize)a3;
- (id)bestArtworkForPointSize:(CGSize)a3;
@end

@implementation RadioArtworkCollection

uint64_t __53__RadioArtworkCollection__artworksBySortingArtworks___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 pixelSize];
  v6 = v5;
  v8 = v7;
  [v4 pixelSize];
  v11 = v8 < v10 || v6 < v9;
  v12 = v8 <= v10 && v6 <= v9;
  v13 = v11 << 63 >> 63;
  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (id)bestArtworkForPointSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  GSMainScreenScaleFactor();
  v7 = v6;
  v8 = width * v6;
  v9 = height * v7;

  return [(RadioArtworkCollection *)self bestArtworkForPixelSize:v8, v9];
}

- (id)bestArtworkForPixelSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self->_artworks;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v18 + 1) + 8 * v10);
      [v11 pixelSize];
      if (v13 >= width || v12 >= height)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    v15 = v11;

    if (v15)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_13:
  }

  v15 = [(NSArray *)self->_artworks lastObject];
LABEL_16:
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
      goto LABEL_7;
    }

    artworks = self->_artworks;
    if (artworks | v4->_artworks)
    {
      v6 = [(NSArray *)artworks isEqual:?];
      goto LABEL_7;
    }
  }

  v6 = 1;
LABEL_7:

  return v6;
}

- (RadioArtworkCollection)initWithArtworkVariants:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [[RadioArtwork alloc] initWithArtworkDictionary:v11];
          if (v12)
          {
            [v5 addObject:v12];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v20.receiver = self;
    v20.super_class = RadioArtworkCollection;
    v13 = [(RadioArtworkCollection *)&v20 init];
    v14 = v13;
    if (v13)
    {
      v15 = [(RadioArtworkCollection *)v13 _artworksBySortingArtworks:v5];
      artworks = v14->_artworks;
      v14->_artworks = v15;
    }

    self = v14;
    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (RadioArtworkCollection)initWithArtworks:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RadioArtworkCollection;
  v5 = [(RadioArtworkCollection *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(RadioArtworkCollection *)v5 _artworksBySortingArtworks:v4];
    v8 = [v7 copy];
    artworks = v6->_artworks;
    v6->_artworks = v8;
  }

  return v6;
}

@end