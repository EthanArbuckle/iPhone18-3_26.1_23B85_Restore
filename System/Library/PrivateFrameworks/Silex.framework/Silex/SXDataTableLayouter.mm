@interface SXDataTableLayouter
- (SXDataTableLayouter)initWithDataSource:(id)source;
- (UIEdgeInsets)tableInsets;
- (double)intendedPercentualWidthForColumnAtIndex:(unint64_t)index;
- (double)minimumWidthForColumnAtIndex:(unint64_t)index;
- (double)totalColumnDividerWidth;
- (double)totalTableBorderHeight;
- (double)totalTableBorderWidth;
- (id)blueprintForWidth:(double)width;
- (id)blueprintUsingRowHeights:(id)heights columnWidths:(id)widths andTableWidth:(double)width;
- (id)columnWidthsForWidth:(double)width resultingTableWidth:(double *)tableWidth;
- (id)layoutDataTableForWidth:(double)width;
- (id)rowHeightsForColumnWidths:(id)widths;
- (void)reset;
@end

@implementation SXDataTableLayouter

- (SXDataTableLayouter)initWithDataSource:(id)source
{
  sourceCopy = source;
  v13.receiver = self;
  v13.super_class = SXDataTableLayouter;
  v6 = [(SXDataTableLayouter *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    minimumColumnWidths = v7->_minimumColumnWidths;
    v7->_minimumColumnWidths = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    intendedColumnWidths = v7->_intendedColumnWidths;
    v7->_intendedColumnWidths = dictionary2;
  }

  return v7;
}

- (id)blueprintForWidth:(double)width
{
  if (self->_currentWidth != width)
  {
    self->_currentWidth = width;
    v4 = [(SXDataTableLayouter *)self layoutDataTableForWidth:?];
    [(SXDataTableLayouter *)self setBlueprint:v4];
  }

  return [(SXDataTableLayouter *)self blueprint];
}

- (void)reset
{
  minimumColumnWidths = [(SXDataTableLayouter *)self minimumColumnWidths];
  [minimumColumnWidths removeAllObjects];

  intendedColumnWidths = [(SXDataTableLayouter *)self intendedColumnWidths];
  [intendedColumnWidths removeAllObjects];

  [(SXDataTableLayouter *)self setBlueprint:0];
  self->_currentWidth = 1.79769313e308;
}

- (id)layoutDataTableForWidth:(double)width
{
  dataSource = [(SXDataTableLayouter *)self dataSource];
  if ([dataSource numberOfColumns])
  {
    dataSource2 = [(SXDataTableLayouter *)self dataSource];
    numberOfRows = [dataSource2 numberOfRows];

    if (numberOfRows)
    {
      [(SXDataTableLayouter *)self totalColumnDividerWidth];
      v9 = v8;
      [(SXDataTableLayouter *)self totalTableBorderWidth];
      v11 = v10;
      v17 = 0.0;
      v12 = [(SXDataTableLayouter *)self columnWidthsForWidth:&v17 resultingTableWidth:width - v9 - v10];
      v13 = [(SXDataTableLayouter *)self rowHeightsForColumnWidths:v12];
      v14 = [(SXDataTableLayouter *)self blueprintUsingRowHeights:v13 columnWidths:v12 andTableWidth:v11 + v9 + v17];
      dataSource3 = [(SXDataTableLayouter *)self dataSource];
      [v14 setDataOrientation:{objc_msgSend(dataSource3, "dataOrientation")}];

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

- (id)blueprintUsingRowHeights:(id)heights columnWidths:(id)widths andTableWidth:(double)width
{
  heightsCopy = heights;
  widthsCopy = widths;
  [(SXDataTableLayouter *)self tableInsets];
  v74 = heightsCopy;
  v78 = v9;
  v72 = v10;
  v70 = v11;
  v13 = -[SXDataTableBlueprint initWithNumberOfRows:numberOfColumns:withTableInsets:]([SXDataTableBlueprint alloc], "initWithNumberOfRows:numberOfColumns:withTableInsets:", [heightsCopy count], objc_msgSend(widthsCopy, "count"), v9, v10, v11, v12);
  dataSource = [(SXDataTableLayouter *)self dataSource];
  numberOfRows = [dataSource numberOfRows];

  dataSource2 = [(SXDataTableLayouter *)self dataSource];
  numberOfColumns = [dataSource2 numberOfColumns];

  if (numberOfRows)
  {
    v18 = 0;
    v73 = numberOfRows;
    v75 = numberOfRows + -1.0;
    v76 = 0.0;
    do
    {
      v19 = [v74 objectAtIndex:v18];
      [v19 floatValue];
      v77 = v20;

      dataSource3 = [(SXDataTableLayouter *)self dataSource];
      v22 = [dataSource3 rowDividerAtIndex:v18];

      if (numberOfColumns)
      {
        v23 = 0;
        v24 = 0.0;
        v25 = v72;
        do
        {
          v26 = [widthsCopy objectAtIndex:v23];
          [v26 floatValue];
          v28 = v27;

          [(SXDataTableBlueprint *)v13 addCellRect:v18 forIndexPath:v23, v25, v78, v28, v77];
          dataSource4 = [(SXDataTableLayouter *)self dataSource];
          [dataSource4 paddingForCellAtIndexPath:{v18, v23}];
          v31 = v30;
          v33 = v32;
          v79 = v34;
          v36 = v35;

          dataSource5 = [(SXDataTableLayouter *)self dataSource];
          v38 = [dataSource5 cellBorderForCellAtIndexPath:{v18, v23}];

          left = [v38 left];
          [left width];
          v41 = v36 + v40;

          v42 = [v38 top];
          [v42 width];
          v44 = v31 + v43;

          right = [v38 right];
          [right width];
          v47 = v28 - v41 - v46 - v33;

          bottom = [v38 bottom];
          [bottom width];
          v50 = v77 - v44 - v49 - v79;

          [(SXDataTableBlueprint *)v13 addCellContentRect:v18 forIndexPath:v23, v41, v44, v47, v50];
          dataSource6 = [(SXDataTableLayouter *)self dataSource];
          v52 = [dataSource6 columnDividerAtIndex:v23];

          [v52 width];
          if (v53 != 0.0)
          {
            color = [v52 color];
            if (color)
            {

              v53 = numberOfColumns + -1.0;
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
            color2 = [v22 color];
            if (color2)
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

        while (v23 < numberOfColumns);
      }

      [v22 width];
      v78 = v78 + v68 + v77;

      v76 = ++v18;
    }

    while (v18 < v73);
  }

  [(SXDataTableBlueprint *)v13 rectForColumnAtIndex:0];
  [(SXDataTableBlueprint *)v13 setTableSize:width, v70 + CGRectGetMaxY(v87)];

  return v13;
}

- (id)columnWidthsForWidth:(double)width resultingTableWidth:(double *)tableWidth
{
  v65 = *MEMORY[0x1E69E9840];
  dataSource = [(SXDataTableLayouter *)self dataSource];
  numberOfColumns = [dataSource numberOfColumns];

  if (numberOfColumns)
  {
    v8 = 0;
    widthCopy2 = 0.0;
    v10 = 0.0;
    do
    {
      [(SXDataTableLayouter *)self minimumWidthForColumnAtIndex:v8];
      widthCopy2 = widthCopy2 + v11;
      [(SXDataTableLayouter *)self intendedPercentualWidthForColumnAtIndex:v8];
      v10 = v10 + v12;
      ++v8;
    }

    while (numberOfColumns != v8);
    v13 = v10 == 0.0;
    if (v10 == 0.0)
    {
      v14 = 100.0;
    }

    else
    {
      v14 = v10;
    }

    if (widthCopy2 <= width)
    {
      v17 = 0;
      v59 = numberOfColumns;
      v15 = 0.0;
      do
      {
        [(SXDataTableLayouter *)self minimumWidthForColumnAtIndex:v17];
        v19 = v18;
        if (v10 == 0.0)
        {
          dataSource2 = [(SXDataTableLayouter *)self dataSource];
          v21 = 100.0 / [dataSource2 numberOfColumns];
        }

        else
        {
          [(SXDataTableLayouter *)self intendedPercentualWidthForColumnAtIndex:v17];
          v21 = v22;
        }

        v23 = v21 / v14 * width;
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

      while (numberOfColumns != v17);
      v16 = 0;
      widthCopy2 = width;
    }

    else
    {
      v15 = 0.0;
      v16 = 1;
      v59 = numberOfColumns;
    }
  }

  else
  {
    v15 = 0.0;
    v16 = width < 0.0;
    v14 = 100.0;
    v13 = 1;
    v59 = 0;
    if (width >= 0.0)
    {
      widthCopy2 = width;
    }

    else
    {
      widthCopy2 = 0.0;
    }
  }

  array = [MEMORY[0x1E695DF70] array];
  do
  {
    if (numberOfColumns)
    {
      v26 = 0;
      v27 = v59;
      while (!v16)
      {
        if ([array count] == numberOfColumns)
        {
          v29 = [array objectAtIndex:v26];
          [v29 floatValue];
          v31 = v30;
        }

        else
        {
          v31 = 1.79769313e308;
        }

        if (v13)
        {
          dataSource3 = [(SXDataTableLayouter *)self dataSource];
          v33 = 100.0 / [dataSource3 numberOfColumns];
        }

        else
        {
          [(SXDataTableLayouter *)self intendedPercentualWidthForColumnAtIndex:v26];
          v33 = v34;
        }

        v35 = widthCopy2 * (v33 / v14);
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
        if ([array count] == numberOfColumns && v35 != 1.79769313e308)
        {
          v42 = [MEMORY[0x1E696AD98] numberWithDouble:v35];
          [array replaceObjectAtIndex:v26 withObject:v42];
LABEL_53:

          goto LABEL_54;
        }

        if (v35 != 1.79769313e308)
        {
          v42 = [MEMORY[0x1E696AD98] numberWithDouble:v35];
          [array addObject:v42];
          goto LABEL_53;
        }

LABEL_54:
        if (numberOfColumns == ++v26)
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
  *tableWidth = widthCopy2;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v43 = array;
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

- (id)rowHeightsForColumnWidths:(id)widths
{
  widthsCopy = widths;
  dataSource = [(SXDataTableLayouter *)self dataSource];
  numberOfRows = [dataSource numberOfRows];

  dataSource2 = [(SXDataTableLayouter *)self dataSource];
  numberOfColumns = [dataSource2 numberOfColumns];

  array = [MEMORY[0x1E695DF70] array];
  if (numberOfRows)
  {
    for (i = 0; i != numberOfRows; ++i)
    {
      if (numberOfColumns)
      {
        v11 = 0;
        v12 = 0.0;
        do
        {
          dataSource3 = [(SXDataTableLayouter *)self dataSource];
          [dataSource3 heightForCellAtIndexPath:{i, v11}];
          v15 = v14;

          v16 = [widthsCopy objectAtIndex:v11];
          [v16 floatValue];
          v18 = v17;

          dataSource4 = [(SXDataTableLayouter *)self dataSource];
          [dataSource4 paddingForCellAtIndexPath:{i, v11}];
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v27 = v26;

          dataSource5 = [(SXDataTableLayouter *)self dataSource];
          v29 = [dataSource5 cellBorderForCellAtIndexPath:{i, v11}];

          left = [v29 left];
          [left width];
          v32 = v27 + v23 + v31;
          right = [v29 right];
          [right width];
          v35 = v18 - (v32 + v34);

          dataSource6 = [(SXDataTableLayouter *)self dataSource];
          [dataSource6 heightForCellndexPath:i forWidth:{v11, v35}];
          v38 = v37;

          v39 = [v29 top];
          [v39 width];
          v41 = v25 + v21 + v38 + v40;
          bottom = [v29 bottom];
          [bottom width];
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

        while (numberOfColumns != v11);
      }

      else
      {
        v12 = 0.0;
      }

      v46 = [MEMORY[0x1E696AD98] numberWithDouble:ceil(v12)];
      [array addObject:v46];
    }
  }

  return array;
}

- (double)totalTableBorderWidth
{
  dataSource = [(SXDataTableLayouter *)self dataSource];
  tableBorder = [dataSource tableBorder];

  left = [tableBorder left];
  [left width];
  v6 = v5;
  right = [tableBorder right];
  [right width];
  v9 = v6 + v8;

  return v9;
}

- (double)totalTableBorderHeight
{
  dataSource = [(SXDataTableLayouter *)self dataSource];
  tableBorder = [dataSource tableBorder];

  v4 = [tableBorder top];
  [v4 width];
  v6 = v5;
  bottom = [tableBorder bottom];
  [bottom width];
  v9 = v6 + v8;

  return v9;
}

- (double)totalColumnDividerWidth
{
  dataSource = [(SXDataTableLayouter *)self dataSource];
  numberOfColumns = [dataSource numberOfColumns];

  v5 = numberOfColumns - 1;
  if (numberOfColumns == 1)
  {
    return 0.0;
  }

  v6 = 0;
  v7 = 0.0;
  do
  {
    dataSource2 = [(SXDataTableLayouter *)self dataSource];
    v9 = [dataSource2 columnDividerAtIndex:v6];

    [v9 width];
    v7 = v7 + v10;

    ++v6;
  }

  while (v5 != v6);
  return v7;
}

- (double)intendedPercentualWidthForColumnAtIndex:(unint64_t)index
{
  intendedColumnWidths = [(SXDataTableLayouter *)self intendedColumnWidths];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  v7 = [intendedColumnWidths objectForKey:v6];

  if (v7)
  {
    [v7 floatValue];
    v9 = v8;
  }

  else
  {
    dataSource = [(SXDataTableLayouter *)self dataSource];
    numberOfRows = [dataSource numberOfRows];

    if (numberOfRows)
    {
      v13 = 0;
      v9 = 1.79769313e308;
      do
      {
        dataSource2 = [(SXDataTableLayouter *)self dataSource];
        [dataSource2 widthForCellAtIndexPath:{v13, index}];
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

      while (numberOfRows != v13);
    }

    else
    {
      v9 = 1.79769313e308;
    }

    intendedColumnWidths2 = [(SXDataTableLayouter *)self intendedColumnWidths];
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
    [intendedColumnWidths2 setObject:v18 forKey:v19];
  }

  return ceil(v9);
}

- (double)minimumWidthForColumnAtIndex:(unint64_t)index
{
  minimumColumnWidths = [(SXDataTableLayouter *)self minimumColumnWidths];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  v7 = [minimumColumnWidths objectForKey:v6];

  if (v7)
  {
    [v7 floatValue];
    v9 = v8;
  }

  else
  {
    dataSource = [(SXDataTableLayouter *)self dataSource];
    numberOfRows = [dataSource numberOfRows];

    if (numberOfRows)
    {
      v12 = 0;
      v9 = 0.0;
      do
      {
        dataSource2 = [(SXDataTableLayouter *)self dataSource];
        [dataSource2 minimumWidthForCellAtIndexPath:{v12, index}];
        v15 = v14;

        dataSource3 = [(SXDataTableLayouter *)self dataSource];
        v17 = [dataSource3 cellBorderForCellAtIndexPath:{v12, index}];

        dataSource4 = [(SXDataTableLayouter *)self dataSource];
        [dataSource4 paddingForCellAtIndexPath:{v12, index}];
        v20 = v19;
        v22 = v21;

        left = [v17 left];
        [left width];
        v25 = v15 + v24;
        right = [v17 right];
        [right width];
        v28 = v20 + v22 + v25 + v27;

        if (v28 >= v9)
        {
          v9 = v28;
        }

        ++v12;
      }

      while (numberOfRows != v12);
    }

    else
    {
      v9 = 0.0;
    }

    minimumColumnWidths2 = [(SXDataTableLayouter *)self minimumColumnWidths];
    v30 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
    [minimumColumnWidths2 setObject:v30 forKey:v31];
  }

  return ceil(v9);
}

- (UIEdgeInsets)tableInsets
{
  dataSource = [(SXDataTableLayouter *)self dataSource];
  tableBorder = [dataSource tableBorder];

  v4 = [tableBorder top];
  [v4 width];
  v6 = v5;
  left = [tableBorder left];
  [left width];
  v9 = v8;
  bottom = [tableBorder bottom];
  [bottom width];
  v12 = v11;
  right = [tableBorder right];
  [right width];
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