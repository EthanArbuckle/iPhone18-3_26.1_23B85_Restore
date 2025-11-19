@interface PGPublicEventTemporalClusterComparator
- (double)_distanceFromString:(id)a3 toString:(id)a4;
- (double)distanceFromPublicEvent:(id)a3 toTemporalEvents:(id)a4;
- (id)_removeDateFromString:(id)a3;
@end

@implementation PGPublicEventTemporalClusterComparator

- (id)_removeDateFromString:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 length])
  {
    v37 = 0;
    v4 = [MEMORY[0x277CCA948] dataDetectorWithTypes:8 error:&v37];
    v5 = v37;
    v6 = v5;
    if (v4)
    {
      v27 = v5;
      v7 = [MEMORY[0x277CBEB18] array];
      v28 = v4;
      v8 = [v4 matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v34;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v34 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v33 + 1) + 8 * i);
            if ([v13 resultType] == 8)
            {
              [v7 addObject:v13];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v10);
      }

      v14 = [v7 sortedArrayUsingComparator:&__block_literal_global_33583];
      v15 = v3;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v26 = v14;
      v16 = [v14 reverseObjectEnumerator];
      v17 = [v16 countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v30;
        do
        {
          v20 = 0;
          v21 = v15;
          do
          {
            if (*v30 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v22 = [*(*(&v29 + 1) + 8 * v20) range];
            v15 = [v21 stringByReplacingCharactersInRange:v22 withString:{v23, &stru_2843F5C58}];

            ++v20;
            v21 = v15;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v29 objects:v38 count:16];
        }

        while (v18);
      }

      v6 = v27;
      v4 = v28;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v41 = v6;
        _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to initialize DataDetector, error: %@", buf, 0xCu);
      }

      v15 = v3;
    }
  }

  else
  {
    v15 = v3;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __64__PGPublicEventTemporalClusterComparator__removeDateFromString___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 range];
  v6 = [v4 range];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

- (double)_distanceFromString:(id)a3 toString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 length];
  v9 = [v7 length];
  v10 = 1.0;
  if (v8)
  {
    v11 = v9;
    if (v9)
    {
      v12 = [v6 lowercaseString];

      v13 = [v7 lowercaseString];

      if ([v12 isEqualToString:v13])
      {
        v7 = v13;
        v6 = v12;
LABEL_6:
        v10 = 0.0;
        goto LABEL_7;
      }

      v6 = [(PGPublicEventTemporalClusterComparator *)self _removeDateFromString:v12];

      v7 = [(PGPublicEventTemporalClusterComparator *)self _removeDateFromString:v13];

      if ([v6 isEqualToString:v7])
      {
        goto LABEL_6;
      }

      if (v8 != v11)
      {
        if (v8 >= v11)
        {
          v15 = v7;
        }

        else
        {
          v15 = v6;
        }

        if (v8 >= v11)
        {
          v16 = v6;
        }

        else
        {
          v16 = v7;
        }

        if ([v16 containsString:v15])
        {
          v10 = 0.0;
        }

        else
        {
          v10 = 1.0;
        }
      }
    }
  }

LABEL_7:

  return v10;
}

- (double)distanceFromPublicEvent:(id)a3 toTemporalEvents:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 name];
  if ([v8 length])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v23 = v7;
      v12 = 0;
      v13 = *v25;
      v14 = 1.0;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          if ([v16 category])
          {
            v17 = [v16 name];
            if ([v17 length])
            {
              [(PGPublicEventTemporalClusterComparator *)self _distanceFromString:v8 toString:v17];
              if (v18 < v14)
              {
                v19 = v18;
                v20 = v16;

                v12 = v20;
                v14 = v19;
              }
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v34 count:16];
      }

      while (v11);

      if (!v12)
      {
        v7 = v23;
        goto LABEL_22;
      }

      v7 = v23;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138478339;
        v29 = v12;
        v30 = 2113;
        v31 = v6;
        v32 = 2048;
        v33 = v14;
        _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Found matching temporal cluster %{private}@ for public event: %{private}@, distance: %.3lf", buf, 0x20u);
      }

      v9 = v12;
    }

    else
    {
      v14 = 1.0;
    }
  }

  else
  {
    v14 = 1.0;
  }

LABEL_22:

  v21 = *MEMORY[0x277D85DE8];
  return v14;
}

@end