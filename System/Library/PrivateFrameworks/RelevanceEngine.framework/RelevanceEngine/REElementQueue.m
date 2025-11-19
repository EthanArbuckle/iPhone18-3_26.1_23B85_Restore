@interface REElementQueue
- (BOOL)containsElement:(id)a3;
- (NSArray)allElements;
- (REElementQueue)initWithMaximumRelevantElementsCount:(int64_t)a3 comparators:(id)a4;
- (id)elementAtIndex:(unint64_t)a3;
- (int64_t)indexOfElement:(id)a3;
- (int64_t)visibleCount;
- (void)addElement:(id)a3 hidden:(BOOL)a4;
- (void)removeElement:(id)a3;
- (void)updatePositionForElement:(id)a3 hidden:(BOOL)a4;
@end

@implementation REElementQueue

- (REElementQueue)initWithMaximumRelevantElementsCount:(int64_t)a3 comparators:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v32.receiver = self;
  v32.super_class = REElementQueue;
  v7 = [(REElementQueue *)&v32 init];
  v8 = v7;
  if (v7)
  {
    v27 = v7;
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __REElementComparatorInverter_block_invoke;
          v33[3] = &unk_2785FD980;
          v34 = v15;
          v16 = v15;
          v17 = MEMORY[0x22AABC5E0](v33);

          [v9 addObject:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v28 objects:v35 count:16];
      }

      while (v12);
    }

    v18 = [REOrderingArray alloc];
    v19 = [v9 copy];
    v20 = [(REOrderingArray *)v18 initWithComparators:v19];
    v8 = v27;
    relevantElements = v27->_relevantElements;
    v27->_relevantElements = v20;

    v22 = [MEMORY[0x277CBEB58] set];
    hiddenElements = v27->_hiddenElements;
    v27->_hiddenElements = v22;

    v24 = 0x7FFFFFFFFFFFFFFFLL;
    if (a3 < 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = a3;
    }

    v27->_maximumRelevantElementsCount = v24;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v8;
}

- (int64_t)visibleCount
{
  result = [(REOrderingArray *)self->_relevantElements count];
  if (result >= self->_maximumRelevantElementsCount)
  {
    return self->_maximumRelevantElementsCount;
  }

  return result;
}

- (BOOL)containsElement:(id)a3
{
  v4 = a3;
  v5 = ([(NSMutableSet *)self->_hiddenElements containsObject:v4]& 1) != 0 || [(REOrderingArray *)self->_relevantElements containsObject:v4];

  return v5;
}

- (NSArray)allElements
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableSet count](self->_hiddenElements, "count") + -[REOrderingArray count](self->_relevantElements, "count")}];
  if ([(REOrderingArray *)self->_relevantElements count])
  {
    v4 = 0;
    do
    {
      v5 = [(REOrderingArray *)self->_relevantElements objectAtIndex:v4];
      [v3 addObject:v5];

      ++v4;
    }

    while (v4 < [(REOrderingArray *)self->_relevantElements count]);
  }

  v6 = [(NSMutableSet *)self->_hiddenElements allObjects];
  [v3 addObjectsFromArray:v6];

  v7 = [v3 copy];

  return v7;
}

- (id)elementAtIndex:(unint64_t)a3
{
  if ([(REElementQueue *)self visibleCount]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(REOrderingArray *)self->_relevantElements objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (int64_t)indexOfElement:(id)a3
{
  v4 = [(REOrderingArray *)self->_relevantElements indexOfObject:a3];
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v4;
    if (v4 < [(REElementQueue *)self visibleCount])
    {
      return v6;
    }
  }

  return v5;
}

- (void)addElement:(id)a3 hidden:(BOOL)a4
{
  v4 = 8;
  if (a4)
  {
    v4 = 16;
  }

  [*(&self->super.isa + v4) addObject:a3];
}

- (void)removeElement:(id)a3
{
  hiddenElements = self->_hiddenElements;
  v7 = a3;
  v5 = [(NSMutableSet *)hiddenElements containsObject:v7];
  v6 = 8;
  if (v5)
  {
    v6 = 16;
  }

  [*(&self->super.isa + v6) removeObject:v7];
}

- (void)updatePositionForElement:(id)a3 hidden:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v6 = [(NSMutableSet *)self->_hiddenElements containsObject:?];
  if (v6)
  {
    v7 = v8;
    if (v4)
    {
      goto LABEL_8;
    }

    [(NSMutableSet *)self->_hiddenElements removeObject:v8];
    v6 = [(REElementQueue *)self addElement:v8 hidden:0];
  }

  else if (v4)
  {
    [(REElementQueue *)self removeElement:v8];
    v6 = [(NSMutableSet *)self->_hiddenElements addObject:v8];
  }

  else
  {
    v6 = [(REOrderingArray *)self->_relevantElements updateObject:v8];
  }

  v7 = v8;
LABEL_8:

  MEMORY[0x2821F96F8](v6, v7);
}

@end