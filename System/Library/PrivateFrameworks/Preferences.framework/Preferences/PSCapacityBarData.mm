@interface PSCapacityBarData
- (NSArray)adjustedCategories;
- (NSArray)orderedCategories;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setCategories:(id)categories;
@end

@implementation PSCapacityBarData

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(PSCapacityBarData);
  v4->_hideTinyCategories = self->_hideTinyCategories;
  v4->_sortStyle = self->_sortStyle;
  capacity = self->_capacity;
  v4->_categoryLimit = self->_categoryLimit;
  v4->_capacity = capacity;
  v4->_bytesUsed = self->_bytesUsed;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_categories, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_categories;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * v11) copy];
        [(NSArray *)v6 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  categories = v4->_categories;
  v4->_categories = v6;

  return v4;
}

- (NSArray)orderedCategories
{
  v22 = *MEMORY[0x1E69E9840];
  orderedCategories = self->_orderedCategories;
  if (!orderedCategories)
  {
    categories = [(PSCapacityBarData *)self categories];
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(categories, "count")}];
    if ([categories count])
    {
      if (self->_hideTinyCategories)
      {
        v6 = llround(self->_capacity * 0.01);
      }

      else
      {
        v6 = 1;
      }

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = categories;
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v17 + 1) + 8 * i);
            if ([v12 bytes] >= v6)
            {
              v13 = [v12 copy];
              [(NSArray *)v5 addObject:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v9);
      }

      if (self->_sortStyle == 1)
      {
        [(NSArray *)v5 sortUsingComparator:&__block_literal_global_40];
      }

      categoryLimit = self->_categoryLimit;
      if (categoryLimit && categoryLimit < [(NSArray *)v5 count])
      {
        [(NSArray *)v5 removeObjectsInRange:self->_categoryLimit, [(NSArray *)v5 count]- self->_categoryLimit];
      }
    }

    v15 = self->_orderedCategories;
    self->_orderedCategories = v5;

    orderedCategories = self->_orderedCategories;
  }

  return orderedCategories;
}

uint64_t __38__PSCapacityBarData_orderedCategories__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 bytes];
  v6 = [v4 bytes];

  if (v5 < v6)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (NSArray)adjustedCategories
{
  v65 = *MEMORY[0x1E69E9840];
  adjustedCategories = self->_adjustedCategories;
  if (!adjustedCategories)
  {
    orderedCategories = [(PSCapacityBarData *)self orderedCategories];
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(orderedCategories, "count")}];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v5 = self->_orderedCategories;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v57 objects:v64 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v58;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v58 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v57 + 1) + 8 * i) copy];
          [(NSArray *)v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v57 objects:v64 count:16];
      }

      while (v7);
    }

    selfCopy = self;
    if ([(PSCapacityBarData *)self hideTinyCategories])
    {
      goto LABEL_43;
    }

    selfCopy2 = self;
    capacity = self->_capacity;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v13 = v4;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v53 objects:v63 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = llround(capacity * 0.01);
      v21 = *v54;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v54 != v21)
          {
            objc_enumerationMutation(v13);
          }

          bytes = [*(*(&v53 + 1) + 8 * j) bytes];
          v16 += bytes - v20;
          v17 += bytes;
          if (bytes <= v20)
          {
            v24 = v20;
          }

          else
          {
            v24 = 0;
          }

          v18 += v24;
          if (bytes <= v20)
          {
            v25 = 0;
          }

          else
          {
            v25 = bytes;
          }

          v19 += v25;
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v53 objects:v63 count:16];
      }

      while (v15);

      selfCopy = selfCopy2;
      if (!v18)
      {
        goto LABEL_43;
      }

      if (v16 < 1)
      {
        v47 = 0uLL;
        v48 = 0uLL;
        v45 = 0uLL;
        v46 = 0uLL;
        v36 = v13;
        v37 = [(NSArray *)v36 countByEnumeratingWithState:&v45 objects:v61 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v46;
          do
          {
            for (k = 0; k != v38; ++k)
            {
              if (*v46 != v39)
              {
                objc_enumerationMutation(v36);
              }

              [*(*(&v45 + 1) + 8 * k) setBytes:v20];
            }

            v38 = [(NSArray *)v36 countByEnumeratingWithState:&v45 objects:v61 count:16];
          }

          while (v38);
        }
      }

      else
      {
        v51 = 0uLL;
        v52 = 0uLL;
        v49 = 0uLL;
        v50 = 0uLL;
        v26 = v13;
        v27 = [(NSArray *)v26 countByEnumeratingWithState:&v49 objects:v62 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v50;
          v30 = (v17 - v18);
          v31 = v19;
          do
          {
            for (m = 0; m != v28; ++m)
            {
              if (*v50 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v33 = *(*(&v49 + 1) + 8 * m);
              bytes2 = [v33 bytes];
              v35 = v20;
              if (bytes2 > v20)
              {
                v35 = llround(bytes2 / v31 * v30);
              }

              [v33 setBytes:v35];
            }

            v28 = [(NSArray *)v26 countByEnumeratingWithState:&v49 objects:v62 count:16];
          }

          while (v28);
        }
      }
    }

    selfCopy = selfCopy2;
LABEL_43:
    v41 = selfCopy->_adjustedCategories;
    selfCopy->_adjustedCategories = v4;

    adjustedCategories = selfCopy->_adjustedCategories;
  }

  return adjustedCategories;
}

- (void)setCategories:(id)categories
{
  v21 = *MEMORY[0x1E69E9840];
  categoriesCopy = categories;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(categoriesCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = categoriesCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * v10) copy];
        [(NSArray *)v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  categories = self->_categories;
  self->_categories = v5;
  v13 = v5;

  orderedCategories = self->_orderedCategories;
  self->_orderedCategories = 0;

  adjustedCategories = self->_adjustedCategories;
  self->_adjustedCategories = 0;
}

@end