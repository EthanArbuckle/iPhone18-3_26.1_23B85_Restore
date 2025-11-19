@interface VSImageElementHelper
- (VSImageElementHelper)init;
- (id)bestMatchingKeyForScale:(double)a3 withSuffix:(id)a4 inKeysSet:(id)a5;
- (id)bestMatchingKeyForSrcset:(id)a3;
- (id)keysForScale:(double)a3 withSuffix:(id)a4;
- (id)matchingKeyForScale:(double)a3 withSuffix:(id)a4 inKeysSet:(id)a5;
@end

@implementation VSImageElementHelper

- (VSImageElementHelper)init
{
  v7.receiver = self;
  v7.super_class = VSImageElementHelper;
  v2 = [(VSImageElementHelper *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 scale];
    v2->_deviceScale = v4;

    v5 = [MEMORY[0x277D75C80] currentTraitCollection];
    v2->_currentUserInterfaceStyle = [v5 userInterfaceStyle];
  }

  return v2;
}

- (id)bestMatchingKeyForSrcset:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v18 = v4;
  v7 = [v4 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 componentsSeparatedByString:@"-"];
        if ([v13 count] <= 1)
        {
          v14 = v5;
        }

        else
        {
          v14 = v6;
        }

        [v14 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  if ([(VSImageElementHelper *)self currentUserInterfaceStyle]!= 2 || ([(VSImageElementHelper *)self deviceScale], [(VSImageElementHelper *)self bestMatchingKeyForScale:@"-dark" withSuffix:v6 inKeysSet:?], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    [(VSImageElementHelper *)self deviceScale];
    v15 = [(VSImageElementHelper *)self bestMatchingKeyForScale:&stru_2880B8BB0 withSuffix:v5 inKeysSet:?];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)bestMatchingKeyForScale:(double)a3 withSuffix:(id)a4 inKeysSet:(id)a5
{
  if (a3 <= 0.0)
  {
    v17 = 0;
  }

  else
  {
    v19 = v12;
    v20 = v11;
    v21 = v8;
    v22 = v7;
    v23 = v6;
    v24 = v5;
    v25 = v9;
    v15 = a3;
    do
    {
      v17 = [(VSImageElementHelper *)self matchingKeyForScale:a4 withSuffix:a5 inKeysSet:v15, v19, v20, v21, v22, v23, v24, v25];
      if (v17)
      {
        break;
      }

      v15 = v15 + -1.0;
    }

    while (v15 > 0.0);
  }

  return v17;
}

- (id)matchingKeyForScale:(double)a3 withSuffix:(id)a4 inKeysSet:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a5;
  [(VSImageElementHelper *)self keysForScale:a4 withSuffix:a3];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v19 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v8 containsObject:{v13, v16}])
        {
          v10 = v13;
          goto LABEL_11;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)keysForScale:(double)a3 withSuffix:(id)a4
{
  v5 = MEMORY[0x277CBEB18];
  v6 = a4;
  v7 = objc_alloc_init(v5);
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.0fx%@", *&a3, v6];

  [v7 addObject:v8];

  return v7;
}

@end