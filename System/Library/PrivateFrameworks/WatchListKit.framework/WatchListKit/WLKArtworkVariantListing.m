@interface WLKArtworkVariantListing
- (WLKArtworkVariantListing)initWithArtworkDictionary:(id)a3;
- (id)artworkVariantOfType:(int64_t)a3;
- (id)bestArtworkVariantOfType:(int64_t)a3 forSize:(CGSize)a4;
@end

@implementation WLKArtworkVariantListing

- (WLKArtworkVariantListing)initWithArtworkDictionary:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 count])
  {
    v14.receiver = self;
    v14.super_class = WLKArtworkVariantListing;
    v5 = [(WLKArtworkVariantListing *)&v14 init];
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __54__WLKArtworkVariantListing_initWithArtworkDictionary___block_invoke;
      v12[3] = &unk_279E5F110;
      v13 = v6;
      v7 = v6;
      [v4 enumerateKeysAndObjectsUsingBlock:v12];
      v8 = [v7 copy];
      artworkVariants = v5->_artworkVariants;
      v5->_artworkVariants = v8;
    }

    self = v5;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __54__WLKArtworkVariantListing_initWithArtworkDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [WLKArtworkVariant alloc];
    v11 = v5;
    v12[0] = v6;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [(WLKArtworkVariant *)v7 initWithDictionary:v8];

    if (v9)
    {
      [*(a1 + 32) addObject:v9];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) addObject:v6];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)bestArtworkVariantOfType:(int64_t)a3 forSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v39 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = self->_artworkVariants;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v35;
    v13 = INFINITY;
    v14 = INFINITY;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v16 = *(*(&v34 + 1) + 8 * i);
        if (!a3 || [*(*(&v34 + 1) + 8 * i) artworkType] == a3)
        {
          [v16 artworkSize];
          v19 = v18;
          v20 = v17;
          v22 = vabdd_f64(v18, width) < 2.22044605e-16;
          v21 = vabdd_f64(v17, height);
          v22 = v22 && v21 < 2.22044605e-16;
          if (v22)
          {
            v31 = v16;

            v11 = v31;
            goto LABEL_34;
          }

          if (v19 >= width && v13 > v19 && v17 >= height && v14 > v17)
          {
            v26 = v16;

            v13 = v19;
            v14 = v20;
            v11 = v26;
          }

          [v10 artworkSize];
          if (!v10 || (v27 >= v19 ? (v29 = v28 < v20) : (v29 = 1), v29))
          {
            v30 = v16;

            v10 = v30;
          }
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

LABEL_34:

    if (v10 && !v11)
    {
      v10 = v10;
      v11 = v10;
    }
  }

  else
  {

    v10 = 0;
    v11 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)artworkVariantOfType:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_artworkVariants;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 artworkType] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end