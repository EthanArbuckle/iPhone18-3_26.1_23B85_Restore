@interface TPPBPolicyCategoriesByView
+ (id)TPPBPolicyCategoriesByViewWithView:(id)a3 categories:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addCategories:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation TPPBPolicyCategoriesByView

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 2))
  {
    [(TPPBPolicyCategoriesByView *)self setView:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(v4 + 1);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(TPPBPolicyCategoriesByView *)self addCategories:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((view = self->_view, !(view | v4[2])) || -[NSString isEqual:](view, "isEqual:")))
  {
    categories = self->_categories;
    if (categories | v4[1])
    {
      v7 = [(NSMutableArray *)categories isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_view copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_categories;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) copyWithZone:{a3, v16}];
        [v5 addCategories:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_view)
  {
    [v8 setView:?];
  }

  if ([(TPPBPolicyCategoriesByView *)self categoriesCount])
  {
    [v8 clearCategories];
    v4 = [(TPPBPolicyCategoriesByView *)self categoriesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(TPPBPolicyCategoriesByView *)self categoriesAtIndex:i];
        [v8 addCategories:v7];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_view)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_categories;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  view = self->_view;
  if (view)
  {
    [v3 setObject:view forKey:@"view"];
  }

  categories = self->_categories;
  if (categories)
  {
    [v4 setObject:categories forKey:@"categories"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBPolicyCategoriesByView;
  v4 = [(TPPBPolicyCategoriesByView *)&v8 description];
  v5 = [(TPPBPolicyCategoriesByView *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addCategories:(id)a3
{
  v4 = a3;
  categories = self->_categories;
  v8 = v4;
  if (!categories)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_categories;
    self->_categories = v6;

    v4 = v8;
    categories = self->_categories;
  }

  [(NSMutableArray *)categories addObject:v4];
}

+ (id)TPPBPolicyCategoriesByViewWithView:(id)a3 categories:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(TPPBPolicyCategoriesByView);
  [(TPPBPolicyCategoriesByView *)v7 setView:v6];

  v8 = [v5 mutableCopy];
  [(TPPBPolicyCategoriesByView *)v7 setCategories:v8];

  return v7;
}

@end