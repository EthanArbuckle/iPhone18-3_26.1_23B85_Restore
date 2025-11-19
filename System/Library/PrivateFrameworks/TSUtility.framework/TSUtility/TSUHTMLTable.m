@interface TSUHTMLTable
+ (id)_attributesStringFromAttributes:(id)a3;
+ (id)htmlTable;
- (TSUHTMLTable)init;
- (id)markup;
- (unint64_t)indexOfColumnWithTitle:(id)a3;
- (void)addRowWithCellMarkup:(id)a3;
- (void)addRowWithCellText:(id)a3;
- (void)dealloc;
- (void)deleteColumnWithTitle:(id)a3;
- (void)enumerateRowsUsingBlock:(id)a3;
- (void)setCellAttributes:(id)a3 rowIndex:(unint64_t)a4 columnIndex:(unint64_t)a5;
- (void)setCellMarkup:(id)a3 atRowIndex:(unint64_t)a4 columnIndex:(unint64_t)a5;
- (void)setClass:(id)a3 ofColumnIndex:(unint64_t)a4;
- (void)setColumnClasses:(id)a3;
- (void)setColumnHeaders:(id)a3;
- (void)setRowClass:(id)a3 atRowIndex:(unint64_t)a4;
@end

@implementation TSUHTMLTable

+ (id)htmlTable
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (TSUHTMLTable)init
{
  v4.receiver = self;
  v4.super_class = TSUHTMLTable;
  v2 = [(TSUHTMLTable *)&v4 init];
  if (v2)
  {
    v2->_columnAttributes = objc_opt_new();
    v2->_cellAttributes = objc_opt_new();
    v2->_rowClasses = objc_opt_new();
    v2->_columnHeaders = objc_opt_new();
    v2->_rows = objc_opt_new();
    v2->_rowClassStride = 1;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSUHTMLTable;
  [(TSUHTMLTable *)&v3 dealloc];
}

+ (id)_attributesStringFromAttributes:(id)a3
{
  v4 = [MEMORY[0x277CCAB68] string];
  if ([a3 count])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__TSUHTMLTable__attributesStringFromAttributes___block_invoke;
    v6[3] = &unk_279D66088;
    v6[4] = v4;
    [a3 enumerateKeysAndObjectsUsingBlock:v6];
  }

  return v4;
}

- (id)markup
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  context = objc_autoreleasePoolPush();
  [v3 appendFormat:@"<table>\n"];
  if ([(NSMutableArray *)self->_columnHeaders count])
  {
    [v3 appendFormat:@"<thead>\n"];
    [v3 appendFormat:@"<tr class='header'>\n"];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    columnHeaders = self->_columnHeaders;
    v5 = [(NSMutableArray *)columnHeaders countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v39;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v39 != v7)
          {
            objc_enumerationMutation(columnHeaders);
          }

          [v3 appendFormat:@"<td>%@</td>", *(*(&v38 + 1) + 8 * i)];
        }

        v6 = [(NSMutableArray *)columnHeaders countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v6);
    }

    [v3 appendFormat:@"</tr>\n"];
    [v3 appendFormat:@"</thead>\n"];
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = self->_rows;
  v27 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v27)
  {
    v29 = 0;
    v26 = *v35;
    do
    {
      v9 = 0;
      do
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v34 + 1) + 8 * v9);
        v11 = -[NSMutableDictionary objectForKey:](self->_rowClasses, "objectForKey:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29]);
        if (!v11)
        {
          rowClassStride = self->_rowClassStride;
          if (rowClassStride)
          {
            if ((v29 / rowClassStride))
            {
              v11 = @"b";
            }

            else
            {
              v11 = @"a";
            }
          }

          else
          {
            v11 = @"a";
          }
        }

        v28 = v9;
        [v3 appendFormat:@"<tr class='%@'>", v11];
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v13 = [v10 countByEnumeratingWithState:&v30 objects:v42 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = 0;
          v16 = *v31;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v31 != v16)
              {
                objc_enumerationMutation(v10);
              }

              v18 = *(*(&v30 + 1) + 8 * j);
              v19 = -[NSMutableDictionary objectForKey:](self->_columnAttributes, "objectForKey:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15]);
              if (v19)
              {
                v20 = [v19 mutableCopy];
              }

              else
              {
                v20 = [MEMORY[0x277CBEB38] dictionary];
              }

              v21 = v20;
              v22 = -[NSMutableDictionary objectForKey:](self->_cellAttributes, "objectForKey:", [objc_opt_class() _keyForCell:v29 :v15]);
              if (v22)
              {
                [v21 addEntriesFromDictionary:v22];
              }

              [v3 appendFormat:@"<td%@>%@</td>", objc_msgSend(objc_opt_class(), "_attributesStringFromAttributes:", v21), v18];
              ++v15;
            }

            v14 = [v10 countByEnumeratingWithState:&v30 objects:v42 count:16];
          }

          while (v14);
        }

        [v3 appendFormat:@"</tr>\n"];
        ++v29;
        v9 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v27 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v27);
  }

  [v3 appendFormat:@"</table>\n"];
  objc_autoreleasePoolPop(context);
  return v3;
}

- (void)addRowWithCellMarkup:(id)a3
{
  rows = self->_rows;
  v4 = [a3 copy];

  [(NSMutableArray *)rows addObject:v4];
}

- (void)addRowWithCellText:(id)a3
{
  v4 = [a3 tsu_arrayByTransformingWithBlock:&__block_literal_global_6];

  [(TSUHTMLTable *)self addRowWithCellMarkup:v4];
}

uint64_t __35__TSUHTMLTable_addRowWithCellText___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [a2 tsu_arrayByFlattening];

    return [v3 componentsJoinedByString:&stru_287DDF830];
  }

  else
  {

    return [a2 tsu_escapeXML];
  }
}

- (void)setColumnClasses:(id)a3
{
  if ([a3 count])
  {
    v5 = 0;
    do
    {
      -[TSUHTMLTable setClass:ofColumnIndex:](self, "setClass:ofColumnIndex:", [a3 objectAtIndexedSubscript:v5], v5);
      ++v5;
    }

    while (v5 < [a3 count]);
  }
}

- (void)setRowClass:(id)a3 atRowIndex:(unint64_t)a4
{
  rowClasses = self->_rowClasses;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];

  [(NSMutableDictionary *)rowClasses setObject:a3 forKey:v6];
}

- (void)setColumnHeaders:(id)a3
{
  if ([a3 count])
  {
    v5 = 0;
    do
    {
      -[NSMutableArray setObject:atIndexedSubscript:](self->_columnHeaders, "setObject:atIndexedSubscript:", [a3 objectAtIndexedSubscript:v5], v5);
      ++v5;
    }

    while (v5 < [a3 count]);
  }
}

- (void)setClass:(id)a3 ofColumnIndex:(unint64_t)a4
{
  v7[1] = *MEMORY[0x277D85DE8];
  v5 = -[NSMutableDictionary tsu_objectForKey:withDefaultOfClass:](self->_columnAttributes, "tsu_objectForKey:withDefaultOfClass:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4], objc_opt_class());
  v6 = @"class";
  v7[0] = a3;
  [v5 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v7, &v6, 1)}];
}

- (void)setCellMarkup:(id)a3 atRowIndex:(unint64_t)a4 columnIndex:(unint64_t)a5
{
  v9 = [-[NSMutableArray objectAtIndexedSubscript:](self->_rows objectAtIndexedSubscript:{a4), "mutableCopy"}];
  [v9 setObject:a3 atIndexedSubscript:a5];
  rows = self->_rows;

  [(NSMutableArray *)rows setObject:v9 atIndexedSubscript:a4];
}

- (void)setCellAttributes:(id)a3 rowIndex:(unint64_t)a4 columnIndex:(unint64_t)a5
{
  cellAttributes = self->_cellAttributes;
  v7 = [objc_opt_class() _keyForCell:a4 :a5];

  [(NSMutableDictionary *)cellAttributes setObject:a3 forKey:v7];
}

- (void)enumerateRowsUsingBlock:(id)a3
{
  rows = self->_rows;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__TSUHTMLTable_enumerateRowsUsingBlock___block_invoke;
  v4[3] = &unk_279D66358;
  v4[4] = a3;
  [(NSMutableArray *)rows enumerateObjectsUsingBlock:v4];
}

- (unint64_t)indexOfColumnWithTitle:(id)a3
{
  if (![(NSMutableArray *)self->_columnHeaders count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = 0;
  while (([-[NSMutableArray objectAtIndexedSubscript:](self->_columnHeaders objectAtIndexedSubscript:{v5), "isEqualToString:", a3}] & 1) == 0)
  {
    if (++v5 >= [(NSMutableArray *)self->_columnHeaders count])
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v5;
}

- (void)deleteColumnWithTitle:(id)a3
{
  v4 = [(TSUHTMLTable *)self indexOfColumnWithTitle:a3];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    [(NSMutableArray *)self->_columnHeaders removeObjectAtIndex:v4];
    v6 = [(NSMutableArray *)self->_rows count];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [-[NSMutableArray objectAtIndexedSubscript:](self->_rows objectAtIndexedSubscript:{i), "mutableCopy"}];
        [v9 removeObjectAtIndex:v5];
        [(NSMutableArray *)self->_rows setObject:v9 atIndexedSubscript:i];
      }
    }
  }
}

@end