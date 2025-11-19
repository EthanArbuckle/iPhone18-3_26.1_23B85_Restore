@interface SXDataTableLayouter
- (SXDataTableLayouter)initWithDataSource:(id)a3;
- (UIEdgeInsets)tableInsets;
- (double)intendedPercentualWidthForColumnAtIndex:(unint64_t)a3;
- (double)minimumWidthForColumnAtIndex:(unint64_t)a3;
- (double)totalColumnDividerWidth;
- (double)totalTableBorderHeight;
- (double)totalTableBorderWidth;
- (id)blueprintForWidth:(double)a3;
- (id)blueprintUsingRowHeights:(id)a3 columnWidths:(id)a4 andTableWidth:(double)a5;
- (id)columnWidthsForWidth:(double)a3 resultingTableWidth:(double *)a4;
- (id)layoutDataTableForWidth:(double)a3;
- (id)rowHeightsForColumnWidths:(id)a3;
- (void)reset;
@end

@implementation SXDataTableLayouter

- (SXDataTableLayouter)initWithDataSource:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SXDataTableLayouter;
  v6 = [(SXDataTableLayouter *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
    v8 = [MEMORY[0x1E695DF90] dictionary];
    minimumColumnWidths = v7->_minimumColumnWidths;
    v7->_minimumColumnWidths = v8;

    v10 = [MEMORY[0x1E695DF90] dictionary];
    intendedColumnWidths = v7->_intendedColumnWidths;
    v7->_intendedColumnWidths = v10;
  }

  return v7;
}

- (id)blueprintForWidth:(double)a3
{
  if (self->_currentWidth != a3)
  {
    self->_currentWidth = a3;
    v4 = [(SXDataTableLayouter *)self layoutDataTableForWidth:?];
    [(SXDataTableLayouter *)self setBlueprint:v4];
  }

  return [(SXDataTableLayouter *)self blueprint];
}

- (void)reset
{
  v3 = [(SXDataTableLayouter *)self minimumColumnWidths];
  [v3 removeAllObjects];

  v4 = [(SXDataTableLayouter *)self intendedColumnWidths];
  [v4 removeAllObjects];

  [(SXDataTableLayouter *)self setBlueprint:0];
  self->_currentWidth = 1.79769313e308;
}

- (id)layoutDataTableForWidth:(double)a3
{
  v5 = [(SXDataTableLayouter *)self dataSource];
  if ([v5 numberOfColumns])
  {
    v6 = [(SXDataTableLayouter *)self dataSource];
    v7 = [v6 numberOfRows];

    if (v7)
    {
      [(SXDataTableLayouter *)self totalColumnDividerWidth];
      v9 = v8;
      [(SXDataTableLayouter *)self totalTableBorderWidth];
      v11 = v10;
      v17 = 0.0;
      v12 = [(SXDataTableLayouter *)self columnWidthsForWidth:&v17 resultingTableWidth:a3 - v9 - v10];
      v13 = [(SXDataTableLayouter *)self rowHeightsForColumnWidths:v12];
      v14 = [(SXDataTableLayouter *)self blueprintUsingRowHeights:v13 columnWidths:v12 andTableWidth:v11 + v9 + v17];
      v15 = [(SXDataTableLayouter *)self dataSource];
      [v14 setDataOrientation:{objc_msgSend(v15, "dataOrientation")}];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v14 = 0;
LABEL_6:

  return v14;
}

- (id)blueprintUsingRowHeights:(id)a3 columnWidths:(id)a4 andTableWidth:(double)a5
{
  v7 = a3;
  v8 = a4;
  [(SXDataTableLayouter *)self tableInsets];
  v74 = v7;
  v78 = v9;
  v72 = v10;
  v70 = v11;
  v13 = -[SXDataTableBlueprint initWithNumberOfRows:numberOfColumns:withTableInsets:]([SXDataTableBlueprint alloc], "initWithNumberOfRows:numberOfColumns:withTableInsets:", [v7 count], objc_msgSend(v8, "count"), v9, v10, v11, v12);
  v14 = [(SXDataTableLayouter *)self dataSource];
  v15 = [v14 numberOfRows];

  v16 = [(SXDataTableLayouter *)self dataSource];
  v17 = [v16 numberOfColumns];

  if (v15)
  {
    v18 = 0;
    v73 = v15;
    v75 = v15 + -1.0;
    v76 = 0.0;
    do
    {
      v19 = [v74 objectAtIndex:v18];
      [v19 floatValue];
      v77 = v20;

      v21 = [(SXDataTableLayouter *)self dataSource];
      v22 = [v21 rowDividerAtIndex:v18];

      if (v17)
      {
        v23 = 0;
        v24 = 0.0;
        v25 = v72;
        do
        {
          v26 = [v8 objectAtIndex:v23];
          [v26 floatValue];
          v28 = v27;

          [(SXDataTableBlueprint *)v13 addCellRect:v18 forIndexPath:v23, v25, v78, v28, v77];
          v29 = [(SXDataTableLayouter *)self dataSource];
          [v29 paddingForCellAtIndexPath:{v18, v23}];
          v31 = v30;
          v33 = v32;
          v79 = v34;
          v36 = v35;

          v37 = [(SXDataTableLayouter *)self dataSource];
          v38 = [v37 cellBorderForCellAtIndexPath:{v18, v23}];

          v39 = [v38 left];
          [v39 width];
          v41 = v36 + v40;

          v42 = [v38 top];
          [v42 width];
          v44 = v31 + v43;

          v45 = [v38 right];
          [v45 width];
          v47 = v28 - v41 - v46 - v33;

          v48 = [v38 bottom];
          [v48 width];
          v50 = v77 - v44 - v49 - v79;

          [(SXDataTableBlueprint *)v13 addCellContentRect:v18 forIndexPath:v23, v41, v44, v47, v50];
          v51 = [(SXDataTableLayouter *)self dataSource];
          v52 = [v51 columnDividerAtIndex:v23];

          [v52 width];
          if (v53 != 0.0)
          {
            v54 = [v52 color];
            if (v54)
            {

              v53 = v17 + -1.0;
              if (v53 != v24)
              {
                v81.origin.x = v25;
                v81.origin.y = v78;
                v81.size.width = v28;
                v81.size.height = v77;
                MaxX = CGRectGetMaxX(v81);
                v82.origin.x = v25;
                v82.origin.y = v78;
                v82.size.width = v28;
                v82.size.height = v77;
                MinY = CGRectGetMinY(v82);
                [v52 width];
                v58 = v57;
                v83.origin.x = v25;
                v83.origin.y = v78;
                v83.size.width = v28;
                v83.size.height = v77;
                [(SXDataTableBlueprint *)v13 addColumnDividerRect:v18 forIndexPath:v23, MaxX, MinY, v58, CGRectGetHeight(v83)];
              }
            }
          }

          [v22 width];
          if (v59 != 0.0)
          {
            v60 = [v22 color];
            if (v60)
            {

              v59 = v75;
              if (v75 != v76)
              {
                v84.origin.x = v25;
                v84.origin.y = v78;
                v84.size.width = v28;
                v84.size.height = v77;
                MinX = CGRectGetMinX(v84);
                v85.origin.x = v25;
                v85.origin.y = v78;
                v85.size.width = v28;
                v85.size.height = v77;
                MaxY = CGRectGetMaxY(v85);
                v86.origin.x = v25;
                v86.origin.y = v78;
                v86.size.width = v28;
                v86.size.height = v77;
                Width = CGRectGetWidth(v86);
                [v52 width];
                v65 = Width + v64;
                [v22 width];
                [(SXDataTableBlueprint *)v13 addRowDividerRect:v18 forIndexPath:v23, MinX, MaxY, v65, v66];
              }
            }
          }

          [v52 width];
          v25 = v25 + v67 + v28;

          v24 = ++v23;
        }

        while (v23 < v17);
      }

      [v22 width];
      v78 = v78 + v68 + v77;

      v76 = ++v18;
    }

    while (v18 < v73);
  }

  [(SXDataTableBlueprint *)v13 rectForColumnAtIndex:0];
  [(SXDataTableBlueprint *)v13 setTableSize:a5, v70 + CGRectGetMaxY(v87)];

  return v13;
}

- (id)columnWidthsForWidth:(double)a3 resultingTableWidth:(double *)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = [(SXDataTableLayouter *)self dataSource];
  v7 = [v6 numberOfColumns];

  if (v7)
  {
    v8 = 0;
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      [(SXDataTableLayouter *)self minimumWidthForColumnAtIndex:v8];
      v9 = v9 + v11;
      [(SXDataTableLayouter *)self intendedPercentualWidthForColumnAtIndex:v8];
      v10 = v10 + v12;
      ++v8;
    }

    while (v7 != v8);
    v13 = v10 == 0.0;
    if (v10 == 0.0)
    {
      v14 = 100.0;
    }

    else
    {
      v14 = v10;
    }

    if (v9 <= a3)
    {
      v17 = 0;
      v59 = v7;
      v15 = 0.0;
      do
      {
        [(SXDataTableLayouter *)self minimumWidthForColumnAtIndex:v17];
        v19 = v18;
        if (v10 == 0.0)
        {
          v20 = [(SXDataTableLayouter *)self dataSource];
          v21 = 100.0 / [v20 numberOfColumns];
        }

        else
        {
          [(SXDataTableLayouter *)self intendedPercentualWidthForColumnAtIndex:v17];
          v21 = v22;
        }

        v23 = v21 / v14 * a3;
        if (v19 > v23)
        {
          v24 = v19 - v23;
          if (v24 < 0.0)
          {
            v24 = 0.0;
          }

          v15 = v15 + v24;
          --v59;
        }

        ++v17;
      }

      while (v7 != v17);
      v16 = 0;
      v9 = a3;
    }

    else
    {
      v15 = 0.0;
      v16 = 1;
      v59 = v7;
    }
  }

  else
  {
    v15 = 0.0;
    v16 = a3 < 0.0;
    v14 = 100.0;
    v13 = 1;
    v59 = 0;
    if (a3 >= 0.0)
    {
      v9 = a3;
    }

    else
    {
      v9 = 0.0;
    }
  }

  v25 = [MEMORY[0x1E695DF70] array];
  do
  {
    if (v7)
    {
      v26 = 0;
      v27 = v59;
      while (!v16)
      {
        if ([v25 count] == v7)
        {
          v29 = [v25 objectAtIndex:v26];
          [v29 floatValue];
          v31 = v30;
        }

        else
        {
          v31 = 1.79769313e308;
        }

        if (v13)
        {
          v32 = [(SXDataTableLayouter *)self dataSource];
          v33 = 100.0 / [v32 numberOfColumns];
        }

        else
        {
          [(SXDataTableLayouter *)self intendedPercentualWidthForColumnAtIndex:v26];
          v33 = v34;
        }

        v35 = v9 * (v33 / v14);
        [(SXDataTableLayouter *)self minimumWidthForColumnAtIndex:v26];
        if (v35 < v28 && v31 != v28)
        {
          goto LABEL_47;
        }

        if (v15 <= 0.0 || v31 == v28)
        {
          if (v31 == v28)
          {
            v35 = 1.79769313e308;
          }
        }

        else
        {
          if (v31 == 1.79769313e308)
          {
            v37 = v35;
          }

          else
          {
            v37 = v31;
          }

          v38 = v37 - v15 / v27;
          v39 = v28 <= v38;
          v40 = v28 > v38;
          v41 = v37 - v28;
          if (v39)
          {
            v41 = v15 / v27;
          }

          v59 -= v40;
          v35 = v37 - v41;
          v15 = v15 - v41;
          --v27;
        }

LABEL_48:
        if ([v25 count] == v7 && v35 != 1.79769313e308)
        {
          v42 = [MEMORY[0x1E696AD98] numberWithDouble:v35];
          [v25 replaceObjectAtIndex:v26 withObject:v42];
LABEL_53:

          goto LABEL_54;
        }

        if (v35 != 1.79769313e308)
        {
          v42 = [MEMORY[0x1E696AD98] numberWithDouble:v35];
          [v25 addObject:v42];
          goto LABEL_53;
        }

LABEL_54:
        if (v7 == ++v26)
        {
          goto LABEL_58;
        }
      }

      [(SXDataTableLayouter *)self minimumWidthForColumnAtIndex:v26];
LABEL_47:
      v35 = v28;
      goto LABEL_48;
    }

LABEL_58:
    ;
  }

  while (v15 > 0.0);
  *a4 = v9;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v43 = v25;
  v44 = [v43 countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v61;
    v47 = 0.0;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v61 != v46)
        {
          objc_enumerationMutation(v43);
        }

        [*(*(&v60 + 1) + 8 * i) doubleValue];
        v47 = v47 + v49 - floor(v49);
      }

      v45 = [v43 countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v45);
  }

  else
  {
    v47 = 0.0;
  }

  v50 = [v43 count] - 1;
  if (v50 >= 0)
  {
    do
    {
      v51 = [v43 objectAtIndex:v50];
      [v51 doubleValue];
      v53 = v52;

      v54 = floor(v53);
      v55 = v54 + 1.0;
      if (v47 > 0.0)
      {
        v47 = v47 + -1.0;
        v54 = v54 + 1.0;
      }

      v56 = [MEMORY[0x1E696AD98] numberWithDouble:{v54, v55}];
      [v43 replaceObjectAtIndex:v50 withObject:v56];

      --v50;
    }

    while (v50 != -1);
  }

  return v43;
}

- (id)rowHeightsForColumnWidths:(id)a3
{
  v4 = a3;
  v5 = [(SXDataTableLayouter *)self dataSource];
  v6 = [v5 numberOfRows];

  v7 = [(SXDataTableLayouter *)self dataSource];
  v8 = [v7 numberOfColumns];

  v9 = [MEMORY[0x1E695DF70] array];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (v8)
      {
        v11 = 0;
        v12 = 0.0;
        do
        {
          v13 = [(SXDataTableLayouter *)self dataSource];
          [v13 heightForCellAtIndexPath:{i, v11}];
          v15 = v14;

          v16 = [v4 objectAtIndex:v11];
          [v16 floatValue];
          v18 = v17;

          v19 = [(SXDataTableLayouter *)self dataSource];
          [v19 paddingForCellAtIndexPath:{i, v11}];
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v27 = v26;

          v28 = [(SXDataTableLayouter *)self dataSource];
          v29 = [v28 cellBorderForCellAtIndexPath:{i, v11}];

          v30 = [v29 left];
          [v30 width];
          v32 = v27 + v23 + v31;
          v33 = [v29 right];
          [v33 width];
          v35 = v18 - (v32 + v34);

          v36 = [(SXDataTableLayouter *)self dataSource];
          [v36 heightForCellndexPath:i forWidth:{v11, v35}];
          v38 = v37;

          v39 = [v29 top];
          [v39 width];
          v41 = v25 + v21 + v38 + v40;
          v42 = [v29 bottom];
          [v42 width];
          v44 = v41 + v43;

          if (v44 >= v15)
          {
            v45 = v44;
          }

          else
          {
            v45 = v15;
          }

          if (v45 >= v12)
          {
            v12 = v45;
          }

          ++v11;
        }

        while (v8 != v11);
      }

      else
      {
        v12 = 0.0;
      }

      v46 = [MEMORY[0x1E696AD98] numberWithDouble:ceil(v12)];
      [v9 addObject:v46];
    }
  }

  return v9;
}

- (double)totalTableBorderWidth
{
  v2 = [(SXDataTableLayouter *)self dataSource];
  v3 = [v2 tableBorder];

  v4 = [v3 left];
  [v4 width];
  v6 = v5;
  v7 = [v3 right];
  [v7 width];
  v9 = v6 + v8;

  return v9;
}

- (double)totalTableBorderHeight
{
  v2 = [(SXDataTableLayouter *)self dataSource];
  v3 = [v2 tableBorder];

  v4 = [v3 top];
  [v4 width];
  v6 = v5;
  v7 = [v3 bottom];
  [v7 width];
  v9 = v6 + v8;

  return v9;
}

- (double)totalColumnDividerWidth
{
  v3 = [(SXDataTableLayouter *)self dataSource];
  v4 = [v3 numberOfColumns];

  v5 = v4 - 1;
  if (v4 == 1)
  {
    return 0.0;
  }

  v6 = 0;
  v7 = 0.0;
  do
  {
    v8 = [(SXDataTableLayouter *)self dataSource];
    v9 = [v8 columnDividerAtIndex:v6];

    [v9 width];
    v7 = v7 + v10;

    ++v6;
  }

  while (v5 != v6);
  return v7;
}

- (double)intendedPercentualWidthForColumnAtIndex:(unint64_t)a3
{
  v5 = [(SXDataTableLayouter *)self intendedColumnWidths];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    [v7 floatValue];
    v9 = v8;
  }

  else
  {
    v10 = [(SXDataTableLayouter *)self dataSource];
    v11 = [v10 numberOfRows];

    if (v11)
    {
      v13 = 0;
      v9 = 1.79769313e308;
      do
      {
        v14 = [(SXDataTableLayouter *)self dataSource];
        [v14 widthForCellAtIndexPath:{v13, a3}];
        v16 = v15;

        if (v16 != 1.79769313e308)
        {
          if (v9 >= v16)
          {
            v12 = v9;
          }

          else
          {
            v12 = v16;
          }

          if (v9 == 1.79769313e308)
          {
            v9 = v16;
          }

          else
          {
            v9 = v12;
          }
        }

        ++v13;
      }

      while (v11 != v13);
    }

    else
    {
      v9 = 1.79769313e308;
    }

    v17 = [(SXDataTableLayouter *)self intendedColumnWidths];
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v17 setObject:v18 forKey:v19];
  }

  return ceil(v9);
}

- (double)minimumWidthForColumnAtIndex:(unint64_t)a3
{
  v5 = [(SXDataTableLayouter *)self minimumColumnWidths];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    [v7 floatValue];
    v9 = v8;
  }

  else
  {
    v10 = [(SXDataTableLayouter *)self dataSource];
    v11 = [v10 numberOfRows];

    if (v11)
    {
      v12 = 0;
      v9 = 0.0;
      do
      {
        v13 = [(SXDataTableLayouter *)self dataSource];
        [v13 minimumWidthForCellAtIndexPath:{v12, a3}];
        v15 = v14;

        v16 = [(SXDataTableLayouter *)self dataSource];
        v17 = [v16 cellBorderForCellAtIndexPath:{v12, a3}];

        v18 = [(SXDataTableLayouter *)self dataSource];
        [v18 paddingForCellAtIndexPath:{v12, a3}];
        v20 = v19;
        v22 = v21;

        v23 = [v17 left];
        [v23 width];
        v25 = v15 + v24;
        v26 = [v17 right];
        [v26 width];
        v28 = v20 + v22 + v25 + v27;

        if (v28 >= v9)
        {
          v9 = v28;
        }

        ++v12;
      }

      while (v11 != v12);
    }

    else
    {
      v9 = 0.0;
    }

    v29 = [(SXDataTableLayouter *)self minimumColumnWidths];
    v30 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v29 setObject:v30 forKey:v31];
  }

  return ceil(v9);
}

- (UIEdgeInsets)tableInsets
{
  v2 = [(SXDataTableLayouter *)self dataSource];
  v3 = [v2 tableBorder];

  v4 = [v3 top];
  [v4 width];
  v6 = v5;
  v7 = [v3 left];
  [v7 width];
  v9 = v8;
  v10 = [v3 bottom];
  [v10 width];
  v12 = v11;
  v13 = [v3 right];
  [v13 width];
  v15 = v14;

  v16 = v6;
  v17 = v9;
  v18 = v12;
  v19 = v15;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

@end