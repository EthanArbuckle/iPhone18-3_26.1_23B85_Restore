@interface SKUIShelfLayoutData
- (CGSize)sizeForItemAtIndex:(int64_t)a3;
- (CGSize)totalContentSize;
- (SKUIShelfLayoutData)initWithNumberOfRows:(int64_t)a3 columnSpacing:(double)a4;
- (UIEdgeInsets)contentInset;
- (double)columnWidthForIndex:(int64_t)a3;
- (void)dealloc;
- (void)enumerateColumnsUsingBlock:(id)a3;
- (void)enumerateRowsUsingBlock:(id)a3;
- (void)reloadWithItemCount:(int64_t)a3 sizeBlock:(id)a4;
@end

@implementation SKUIShelfLayoutData

- (SKUIShelfLayoutData)initWithNumberOfRows:(int64_t)a3 columnSpacing:(double)a4
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIShelfLayoutData initWithNumberOfRows:columnSpacing:];
  }

  v12.receiver = self;
  v12.super_class = SKUIShelfLayoutData;
  v7 = [(SKUIShelfLayoutData *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_columnSpacing = a4;
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    columnWidths = v8->_columnWidths;
    v8->_columnWidths = v9;

    v8->_numberOfRows = a3;
    v8->_rowHeights = malloc_type_malloc(8 * a3, 0x100004000313F17uLL);
  }

  return v8;
}

- (void)dealloc
{
  rowHeights = self->_rowHeights;
  if (rowHeights)
  {
    free(rowHeights);
  }

  v4.receiver = self;
  v4.super_class = SKUIShelfLayoutData;
  [(SKUIShelfLayoutData *)&v4 dealloc];
}

- (double)columnWidthForIndex:(int64_t)a3
{
  v3 = [(NSMutableArray *)self->_columnWidths objectAtIndex:a3];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)enumerateColumnsUsingBlock:(id)a3
{
  v4 = a3;
  columnWidths = self->_columnWidths;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__SKUIShelfLayoutData_enumerateColumnsUsingBlock___block_invoke;
  v7[3] = &unk_2781FDDD0;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)columnWidths enumerateObjectsUsingBlock:v7];
}

uint64_t __50__SKUIShelfLayoutData_enumerateColumnsUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  [a2 floatValue];
  v7.n128_f64[0] = v7.n128_f32[0];
  v8 = *(v6 + 16);

  return v8(v6, a3, a4, v7);
}

- (void)enumerateRowsUsingBlock:(id)a3
{
  if (self->_numberOfRows >= 1)
  {
    v9 = v3;
    v10 = v4;
    v7 = 0;
    do
    {
      v8 = 0;
      (*(a3 + 2))(a3, v7, &v8, self->_rowHeights[v7]);
      if (v8 == 1)
      {
        break;
      }

      ++v7;
    }

    while (v7 < self->_numberOfRows);
  }
}

- (void)reloadWithItemCount:(int64_t)a3 sizeBlock:(id)a4
{
  v21 = a4;
  [(NSMutableArray *)self->_columnWidths removeAllObjects];
  bzero(self->_rowHeights, 8 * self->_numberOfRows);
  if (a3 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = objc_autoreleasePoolPush();
      if (self->_numberOfRows < 1)
      {
        v17 = 0.0;
      }

      else
      {
        v8 = 0;
        if (v6 <= a3)
        {
          v9 = a3;
        }

        else
        {
          v9 = v6;
        }

        v10 = 0.0;
        v11 = v6;
        do
        {
          if (v9 == v11)
          {
            break;
          }

          v12 = v21[2](v21, v11);
          if (v10 < v12)
          {
            v10 = v12;
          }

          numberOfRows = self->_numberOfRows;
          rowHeights = self->_rowHeights;
          v16 = rowHeights[v8];
          if (v16 < v13)
          {
            v16 = v13;
          }

          rowHeights[v8++] = v16;
          ++v11;
        }

        while (v8 < numberOfRows);
        v17 = v10;
      }

      v18 = objc_alloc(MEMORY[0x277CCABB0]);
      *&v19 = v17;
      v20 = [v18 initWithFloat:v19];
      [(NSMutableArray *)self->_columnWidths addObject:v20];

      objc_autoreleasePoolPop(v7);
      v6 += self->_numberOfRows;
    }

    while (v6 < a3);
  }
}

- (CGSize)sizeForItemAtIndex:(int64_t)a3
{
  numberOfRows = self->_numberOfRows;
  v5 = a3 % numberOfRows;
  v6 = [(NSMutableArray *)self->_columnWidths objectAtIndex:a3 / numberOfRows];
  [v6 floatValue];
  v8 = v7;
  v9 = self->_rowHeights[v5];

  v10 = v8;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)totalContentSize
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  numberOfRows = self->_numberOfRows;
  if (numberOfRows >= 1)
  {
    rowHeights = self->_rowHeights;
    do
    {
      v6 = *rowHeights++;
      v3 = v3 + v6;
      --numberOfRows;
    }

    while (numberOfRows);
  }

  v7 = *MEMORY[0x277CBF3A8];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_columnWidths;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v17 + 1) + 8 * v12) floatValue];
        v7 = v7 + v13;
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [(NSMutableArray *)self->_columnWidths count];
  if (v14 >= 2)
  {
    v7 = v7 + (v14 - 1) * self->_columnSpacing;
  }

  v15 = v3 + self->_contentInset.bottom + self->_contentInset.top;
  v16 = v7 + self->_contentInset.left + self->_contentInset.right;
  result.height = v15;
  result.width = v16;
  return result;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)initWithNumberOfRows:columnSpacing:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIShelfLayoutData initWithNumberOfRows:columnSpacing:]";
}

@end