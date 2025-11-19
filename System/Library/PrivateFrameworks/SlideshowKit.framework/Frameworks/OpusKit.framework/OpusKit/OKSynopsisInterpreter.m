@interface OKSynopsisInterpreter
- (OKSynopsisInterpreter)initWithSynopsis:(id)a3;
- (id)guidelineSynopsisItemFromObjectView:(id)a3;
- (id)guidelineSynopsisItemsFromObjectViews:(id)a3;
- (id)objectViewFromGuidelineSynopsisItem:(id)a3;
- (id)objectViewsFromGuidelineSynopsisItems:(id)a3;
- (void)dealloc;
- (void)registerComparatorForItemType:(unint64_t)a3 compareBlock:(id)a4;
- (void)registerCreatorForItemType:(unint64_t)a3 initBlock:(id)a4;
- (void)setSynopsis:(id)a3;
@end

@implementation OKSynopsisInterpreter

- (OKSynopsisInterpreter)initWithSynopsis:(id)a3
{
  v6.receiver = self;
  v6.super_class = OKSynopsisInterpreter;
  v4 = [(OKSynopsisInterpreter *)&v6 init];
  if (v4)
  {
    v4->_objectCreators = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4->_objectComparators = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4->_guidelineItems = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(OKSynopsisInterpreter *)v4 setSynopsis:a3];
  }

  return v4;
}

- (void)dealloc
{
  synopsis = self->_synopsis;
  if (synopsis)
  {

    self->_synopsis = 0;
  }

  guidelineItems = self->_guidelineItems;
  if (guidelineItems)
  {

    self->_guidelineItems = 0;
  }

  objectCreators = self->_objectCreators;
  if (objectCreators)
  {

    self->_objectCreators = 0;
  }

  objectComparators = self->_objectComparators;
  if (objectComparators)
  {

    self->_objectComparators = 0;
  }

  v7.receiver = self;
  v7.super_class = OKSynopsisInterpreter;
  [(OKSynopsisInterpreter *)&v7 dealloc];
}

- (void)setSynopsis:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  synopsis = self->_synopsis;
  if (synopsis)
  {

    self->_synopsis = 0;
  }

  [(NSMutableArray *)self->_guidelineItems removeAllObjects];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = [a3 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v16)
  {
    v15 = *v31;
    do
    {
      v5 = 0;
      do
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(a3);
        }

        v17 = v5;
        v6 = *(*(&v30 + 1) + 8 * v5);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v18 = [v6 objectForKeyedSubscript:@"authoringSynopsisCollectionGroups"];
        v20 = [v18 countByEnumeratingWithState:&v26 objects:v35 count:16];
        if (v20)
        {
          v19 = *v27;
          do
          {
            v7 = 0;
            do
            {
              if (*v27 != v19)
              {
                objc_enumerationMutation(v18);
              }

              v21 = v7;
              v8 = *(*(&v26 + 1) + 8 * v7);
              v22 = 0u;
              v23 = 0u;
              v24 = 0u;
              v25 = 0u;
              v9 = [v8 objectForKeyedSubscript:@"authoringSynopsisGroupItems"];
              v10 = [v9 countByEnumeratingWithState:&v22 objects:v34 count:16];
              if (v10)
              {
                v11 = v10;
                v12 = *v23;
                do
                {
                  for (i = 0; i != v11; ++i)
                  {
                    if (*v23 != v12)
                    {
                      objc_enumerationMutation(v9);
                    }

                    -[NSMutableArray addObject:](self->_guidelineItems, "addObject:", +[OKPresentationGuideline guidelineWithType:key:value:](OKPresentationGuideline, "guidelineWithType:key:value:", [objc_msgSend(*(*(&v22 + 1) + 8 * i) objectForKeyedSubscript:{@"authoringSynopsisItemType", "intValue"}], objc_msgSend(*(*(&v22 + 1) + 8 * i), "objectForKeyedSubscript:", @"authoringSynopsisItemNavigationKeyPath"), objc_msgSend(*(*(&v22 + 1) + 8 * i), "objectForKeyedSubscript:", @"authoringSynopsisItemValue")));
                  }

                  v11 = [v9 countByEnumeratingWithState:&v22 objects:v34 count:16];
                }

                while (v11);
              }

              v7 = v21 + 1;
            }

            while (v21 + 1 != v20);
            v20 = [v18 countByEnumeratingWithState:&v26 objects:v35 count:16];
          }

          while (v20);
        }

        v5 = v17 + 1;
      }

      while (v17 + 1 != v16);
      v16 = [a3 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v16);
  }

  self->_synopsis = a3;
}

- (void)registerCreatorForItemType:(unint64_t)a3 initBlock:(id)a4
{
  v6 = [(NSMutableDictionary *)self->_objectCreators allKeys];
  if (([v6 containsObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", a3)}] & 1) == 0)
  {
    -[NSMutableDictionary setObject:forKey:](self->_objectCreators, "setObject:forKey:", a4, [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3]);
  }
}

- (void)registerComparatorForItemType:(unint64_t)a3 compareBlock:(id)a4
{
  v6 = [(NSMutableDictionary *)self->_objectComparators allKeys];
  if (([v6 containsObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", a3)}] & 1) == 0)
  {
    -[NSMutableDictionary setObject:forKey:](self->_objectComparators, "setObject:forKey:", a4, [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3]);
  }
}

- (id)objectViewFromGuidelineSynopsisItem:(id)a3
{
  v5 = [(NSMutableDictionary *)self->_objectCreators allKeys];
  if ([v5 containsObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", objc_msgSend(a3, "type"))}])
  {
    v6 = *(-[NSMutableDictionary objectForKeyedSubscript:](self->_objectCreators, "objectForKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a3, "type")}]) + 16);

    return v6();
  }

  else
  {
    if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Synopsis/OKSynopsisInterpreter.m" line:122 andFormat:@"No interpretor for %@", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", objc_msgSend(a3, "type"))];
    }

    return 0;
  }
}

- (id)objectViewsFromGuidelineSynopsisItems:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = [(OKSynopsisInterpreter *)self objectViewFromGuidelineSynopsisItem:*(*(&v12 + 1) + 8 * v9)];
        if (v10)
        {
          [v5 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)guidelineSynopsisItemFromObjectView:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  guidelineItems = self->_guidelineItems;
  v6 = [(NSMutableArray *)guidelineItems countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(guidelineItems);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = -[NSMutableDictionary objectForKeyedSubscript:](self->_objectComparators, "objectForKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "type")}]);
        if (v11)
        {
          if ((*(v11 + 16))(v11, v10, a3))
          {
            return v10;
          }
        }

        else if (*MEMORY[0x277D62808] >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Synopsis/OKSynopsisInterpreter.m" line:153 andFormat:@"No comparator for %@", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", objc_msgSend(v10, "type"))];
        }
      }

      v7 = [(NSMutableArray *)guidelineItems countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return 0;
}

- (id)guidelineSynopsisItemsFromObjectViews:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = [(OKSynopsisInterpreter *)self guidelineSynopsisItemFromObjectView:*(*(&v12 + 1) + 8 * v9)];
        if (v10)
        {
          [v5 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

@end