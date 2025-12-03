@interface TSWPTabs
+ (id)tabs;
- (BOOL)isEqual:(id)equal;
- (TSWPTabs)init;
- (TSWPTabs)initWithTabs:(id)tabs;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)tabAfterPosition:(double)position;
- (id)tabAtPosition:(double)position;
- (unint64_t)indexForTabWithPosition:(double)position alignment:(int)alignment leader:(id)leader;
- (void)dealloc;
- (void)insertTab:(id)tab;
- (void)setPosition:(double)position forTab:(id)tab;
@end

@implementation TSWPTabs

+ (id)tabs
{
  v2 = objc_alloc_init(TSWPTabs);

  return v2;
}

- (TSWPTabs)init
{
  v4.receiver = self;
  v4.super_class = TSWPTabs;
  v2 = [(TSWPTabs *)&v4 init];
  if (v2)
  {
    v2->_tabs = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v2;
}

- (TSWPTabs)initWithTabs:(id)tabs
{
  v6.receiver = self;
  v6.super_class = TSWPTabs;
  v4 = [(TSWPTabs *)&v6 init];
  if (v4)
  {
    v4->_tabs = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:*(tabs + 1) copyItems:1];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPTabs;
  [(TSWPTabs *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithTabs:self];
}

- (id)tabAtPosition:(double)position
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  tabs = self->_tabs;
  v5 = [(NSMutableArray *)tabs countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(tabs);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    [v9 position];
    if (vabdd_f64(position, v10) <= 0.0000999999975)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)tabs countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)tabAfterPosition:(double)position
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  tabs = self->_tabs;
  v5 = [(NSMutableArray *)tabs countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(tabs);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    [v9 position];
    if (v10 > position)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)tabs countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)insertTab:(id)tab
{
  v20 = *MEMORY[0x277D85DE8];
  if (tab)
  {
    [tab position];
    v6 = v5;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    tabs = self->_tabs;
    v8 = [(NSMutableArray *)tabs countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v16;
      while (2)
      {
        v12 = 0;
        v13 = v10;
        v10 += v9;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(tabs);
          }

          [*(*(&v15 + 1) + 8 * v12) position];
          if (v6 < v14)
          {
            v10 = v13;
            goto LABEL_13;
          }

          ++v13;
          ++v12;
        }

        while (v9 != v12);
        v9 = [(NSMutableArray *)tabs countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_13:
    [(NSMutableArray *)self->_tabs insertObject:tab atIndex:v10];
  }
}

- (void)setPosition:(double)position forTab:(id)tab
{
  [tab position];
  if (v6 != position)
  {
    if ([(TSWPTabs *)self tabAtPosition:position])
    {

      [tab setPosition:position];
    }

    else
    {
      tabCopy = tab;
      [(NSMutableArray *)self->_tabs removeObjectIdenticalTo:tab];
      [tab setPosition:position];
      [(TSWPTabs *)self insertTab:tab];
    }
  }
}

- (unint64_t)indexForTabWithPosition:(double)position alignment:(int)alignment leader:(id)leader
{
  v9 = [(NSMutableArray *)self->_tabs count];
  if (!v9)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v9;
  v11 = 0;
  if (!leader)
  {
    leader = @" ";
  }

  while (1)
  {
    v12 = [(NSMutableArray *)self->_tabs objectAtIndexedSubscript:v11];
    if ([v12 alignment] == alignment)
    {
      [v12 position];
      if (vabdd_f64(position, v13) <= 0.0000999999975)
      {
        leader = [v12 leader];
        v15 = leader ? leader : @" ";
        if ([leader isEqualToString:v15])
        {
          break;
        }
      }
    }

    if (v10 == ++v11)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    tabs = self->_tabs;
    v6 = *(v4 + 8);
    if (tabs == v6)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = 0;
      if (tabs && v6)
      {
        v7 = self->_tabs;

        LOBYTE(v4) = [(NSMutableArray *)v7 isEqualToArray:?];
      }
    }
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: tabs=%@>", NSStringFromClass(v4), self->_tabs];
}

@end