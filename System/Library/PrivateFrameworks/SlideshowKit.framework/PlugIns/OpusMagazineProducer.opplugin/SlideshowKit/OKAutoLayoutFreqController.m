@interface OKAutoLayoutFreqController
- (BOOL)_isLayout:(id)a3 usedInLast:(int64_t)a4;
- (OKAutoLayoutFreqController)init;
- (float)_freqOfUp:(id)a3;
- (id)_freqOrderFromHightToLow;
- (id)bestLayoutByFreqOfAnyUpsFromLayouts:(id)a3;
- (void)addOnePageLayout:(id)a3;
- (void)dealloc;
@end

@implementation OKAutoLayoutFreqController

- (OKAutoLayoutFreqController)init
{
  v4.receiver = self;
  v4.super_class = OKAutoLayoutFreqController;
  v2 = [(OKAutoLayoutFreqController *)&v4 init];
  if (v2)
  {
    v2->_pageFrequency = objc_opt_new();
    v2->_pages = objc_opt_new();
    v2->_layoutsByResolution = objc_opt_new();
  }

  return v2;
}

- (void)dealloc
{
  pageFrequency = self->_pageFrequency;
  if (pageFrequency)
  {

    self->_pageFrequency = 0;
  }

  pages = self->_pages;
  if (pages)
  {

    self->_pages = 0;
  }

  layoutsByResolution = self->_layoutsByResolution;
  if (layoutsByResolution)
  {

    self->_layoutsByResolution = 0;
  }

  v6.receiver = self;
  v6.super_class = OKAutoLayoutFreqController;
  [(OKAutoLayoutFreqController *)&v6 dealloc];
}

- (float)_freqOfUp:(id)a3
{
  v4 = [a3 integerValue];
  LODWORD(v5) = 1.0;
  if ((v4 - 1) <= 5)
  {
    v6 = self->_counts[(v4 - 1)];
    if (v6)
    {
      *&v5 = v6 / [(NSMutableArray *)self->_pageFrequency count];
    }

    else
    {
      LODWORD(v5) = 0;
    }
  }

  return *&v5;
}

- (id)_freqOrderFromHightToLow
{
  if ([(NSMutableArray *)self->_pageFrequency count]< 0x10)
  {
    v4 = 0;
  }

  else
  {
    [(OKAutoLayoutFreqController *)self _freqOfUp:@"6"];
    v4 = v3 < 0.05;
  }

  if ([(NSMutableArray *)self->_pageFrequency count]< 0xB)
  {
    v6 = 0;
  }

  else
  {
    [(OKAutoLayoutFreqController *)self _freqOfUp:@"5"];
    v6 = v5 < 0.1;
  }

  v7 = +[NSMutableArray array];
  v17 = +[NSMutableArray array];
  v8 = 0;
  counts = self->_counts;
  do
  {
    v10 = +[NSMutableArray array];
    v11 = 0;
    v12 = -1;
    do
    {
      v13 = v11 + 1;
      if (![v7 containsObject:{-[NSNumber stringValue](+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v11 + 1), "stringValue")}] && (v11 != 4 || v6) && (v11 != 5 || v4))
      {
        if (v12 == -1)
        {
          goto LABEL_15;
        }

        v14 = counts[v11];
        v15 = counts[v12];
        if (v14 > v15)
        {
          [v10 removeAllObjects];
LABEL_15:
          v12 = v11;
LABEL_16:
          [v10 addObject:{-[NSNumber stringValue](+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v11 + 1), "stringValue")}];
          goto LABEL_17;
        }

        if (v14 == v15)
        {
          goto LABEL_16;
        }
      }

LABEL_17:
      ++v11;
    }

    while (v13 != 6);
    if (![v10 count])
    {
      break;
    }

    [v17 addObject:v10];
    [v7 addObjectsFromArray:v10];
    if ([v7 count] == &dword_4 + 2)
    {
      break;
    }

    ++v8;
  }

  while (v8 != 6);
  return v17;
}

- (BOOL)_isLayout:(id)a3 usedInLast:(int64_t)a4
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  layoutsByResolution = self->_layoutsByResolution;
  v8 = [(NSMutableDictionary *)layoutsByResolution countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(layoutsByResolution);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        if ([a3 containsString:v12])
        {
          v8 = [(NSMutableDictionary *)self->_layoutsByResolution objectForKeyedSubscript:v12];
          if (v8)
          {
            v23 = 0u;
            v24 = 0u;
            v21 = 0u;
            v22 = 0u;
            v13 = [v8 reverseObjectEnumerator];
            v8 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v8)
            {
              v14 = v8;
              v15 = 0;
              v16 = *v22;
LABEL_13:
              v17 = 0;
              if (v15 <= a4)
              {
                v18 = a4;
              }

              else
              {
                v18 = v15;
              }

              v19 = v18 - v15;
              v15 += v14;
              while (1)
              {
                if (*v22 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                LOBYTE(v8) = [*(*(&v21 + 1) + 8 * v17) isEqualToString:a3];
                if ((v8 & 1) != 0 || v19 == v17)
                {
                  break;
                }

                if (v14 == ++v17)
                {
                  v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
                  LOBYTE(v8) = 0;
                  if (v14)
                  {
                    goto LABEL_13;
                  }

                  return v8;
                }
              }
            }
          }

          return v8;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v8 = [(NSMutableDictionary *)layoutsByResolution countByEnumeratingWithState:&v25 objects:v30 count:16];
      v9 = v8;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  return v8;
}

- (void)addOnePageLayout:(id)a3
{
  v5 = [objc_msgSend(objc_msgSend(a3 "allValues")];
  v6 = [v5 integerValue];
  if ((v6 - 1) <= 5)
  {
    ++self->_counts[(v6 - 1)];
    [(NSMutableArray *)self->_pages addObject:a3];
    [(NSMutableArray *)self->_pageFrequency addObject:v5];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [a3 allKeys];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          v13 = [(NSMutableDictionary *)self->_layoutsByResolution objectForKeyedSubscript:v12];
          if (!v13)
          {
            v13 = +[NSMutableArray array];
            [(NSMutableDictionary *)self->_layoutsByResolution setObject:v13 forKey:v12];
          }

          [v13 addObject:{objc_msgSend(a3, "objectForKeyedSubscript:", v12)}];
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }
}

- (id)bestLayoutByFreqOfAnyUpsFromLayouts:(id)a3
{
  if (!a3 || ![a3 count])
  {
    return 0;
  }

  v5 = [(OKAutoLayoutFreqController *)self _freqOrderFromHightToLow];
  v6 = [a3 sortedArrayUsingComparator:&stru_10318];
  v7 = [v6 objectAtIndexedSubscript:0];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [v5 reverseObjectEnumerator];
  v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v21)
  {
    v19 = v7;
    v22 = *v28;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v10 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:{16, v19}];
        if (v10)
        {
          v11 = v10;
          v12 = 0;
          v13 = *v24;
LABEL_10:
          v14 = 0;
          v15 = 10;
          if (v12 > 10)
          {
            v15 = v12;
          }

          v16 = v15 - v12;
          v12 += v11;
          while (1)
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v6);
            }

            v7 = *(*(&v23 + 1) + 8 * v14);
            v17 = [objc_msgSend(v7 objectAtIndexedSubscript:{0), "substringWithRange:", 0, 1}];
            if (v16 == v14)
            {
              break;
            }

            if ([v9 containsObject:v17] && !-[OKAutoLayoutFreqController _isLayout:usedInLast:](self, "_isLayout:usedInLast:", objc_msgSend(v7, "objectAtIndexedSubscript:", 0), 12))
            {
              return v7;
            }

            if (v11 == ++v14)
            {
              v11 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v11)
              {
                goto LABEL_10;
              }

              break;
            }
          }
        }
      }

      v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v21);
    return v19;
  }

  return v7;
}

@end