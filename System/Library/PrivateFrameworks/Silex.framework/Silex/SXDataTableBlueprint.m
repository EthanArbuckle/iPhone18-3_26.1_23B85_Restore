@interface SXDataTableBlueprint
- (BOOL)isRectValid:(CGRect)a3;
- (CGRect)cellContentRectForIndexPath:(id)a3;
- (CGRect)cellRectForIndexPath:(id)a3;
- (CGRect)rectForColumnAtIndex:(unint64_t)a3;
- (CGRect)rectForColumnDividerAtIndexPath:(id)a3;
- (CGRect)rectForRowAtIndex:(unint64_t)a3;
- (CGRect)rectForRowDividerAtIndexPath:(id)a3;
- (CGSize)tableSize;
- (SXDataTableBlueprint)initWithNumberOfRows:(unint64_t)a3 numberOfColumns:(unint64_t)a4 withTableInsets:(UIEdgeInsets)a5;
- (UIEdgeInsets)tableInsets;
- (id)description;
- (void)addCellContentRect:(CGRect)a3 forIndexPath:(id)a4;
- (void)addCellRect:(CGRect)a3 forIndexPath:(id)a4;
- (void)addColumnDividerRect:(CGRect)a3 forIndexPath:(id)a4;
- (void)addRowDividerRect:(CGRect)a3 forIndexPath:(id)a4;
@end

@implementation SXDataTableBlueprint

- (SXDataTableBlueprint)initWithNumberOfRows:(unint64_t)a3 numberOfColumns:(unint64_t)a4 withTableInsets:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v22.receiver = self;
  v22.super_class = SXDataTableBlueprint;
  v11 = [(SXDataTableBlueprint *)&v22 init];
  v12 = v11;
  if (v11)
  {
    v11->_numberOfRows = a3;
    v11->_numberOfColumns = a4;
    v11->_tableInsets.top = top;
    v11->_tableInsets.left = left;
    v11->_tableInsets.bottom = bottom;
    v11->_tableInsets.right = right;
    v13 = [SXDataTableDictionary dataTableDictionaryWithRows:a3 andColumns:a4];
    blueprint = v12->_blueprint;
    v12->_blueprint = v13;

    v15 = [SXDataTableDictionary dataTableDictionaryWithRows:a3 andColumns:a4];
    contentBlueprint = v12->_contentBlueprint;
    v12->_contentBlueprint = v15;

    v17 = [SXDataTableDictionary dataTableDictionaryWithRows:a3 andColumns:a4];
    rowDividers = v12->_rowDividers;
    v12->_rowDividers = v17;

    v19 = [SXDataTableDictionary dataTableDictionaryWithRows:a3 andColumns:a4];
    columnDividers = v12->_columnDividers;
    v12->_columnDividers = v19;
  }

  return v12;
}

- (void)addCellRect:(CGRect)a3 forIndexPath:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = [(SXDataTableBlueprint *)self blueprint];
  v10 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
  [v11 setObject:v10 forIndexPath:{var0, var1}];
}

- (void)addCellContentRect:(CGRect)a3 forIndexPath:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = [(SXDataTableBlueprint *)self contentBlueprint];
  v10 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
  [v11 setObject:v10 forIndexPath:{var0, var1}];
}

- (void)addColumnDividerRect:(CGRect)a3 forIndexPath:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = [(SXDataTableBlueprint *)self columnDividers];
  v10 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
  [v11 setObject:v10 forIndexPath:{var0, var1}];
}

- (void)addRowDividerRect:(CGRect)a3 forIndexPath:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = [(SXDataTableBlueprint *)self rowDividers];
  v10 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
  [v11 setObject:v10 forIndexPath:{var0, var1}];
}

- (CGRect)cellRectForIndexPath:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v5 = [(SXDataTableBlueprint *)self blueprint];
  v6 = [v5 objectForIndexPath:{var0, var1}];
  [v6 CGRectValue];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)cellContentRectForIndexPath:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v5 = [(SXDataTableBlueprint *)self contentBlueprint];
  v6 = [v5 objectForIndexPath:{var0, var1}];
  [v6 CGRectValue];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)rectForColumnDividerAtIndexPath:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v5 = [(SXDataTableBlueprint *)self columnDividers];
  v6 = [v5 objectForIndexPath:{var0, var1}];
  [v6 CGRectValue];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)rectForRowDividerAtIndexPath:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v5 = [(SXDataTableBlueprint *)self rowDividers];
  v6 = [v5 objectForIndexPath:{var0, var1}];
  [v6 CGRectValue];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)rectForRowAtIndex:(unint64_t)a3
{
  [(SXDataTableBlueprint *)self cellRectForIndexPath:a3, 0];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(SXDataTableBlueprint *)self cellRectForIndexPath:a3, [(SXDataTableBlueprint *)self numberOfColumns]- 1];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v33.origin.x = v6;
  v33.origin.y = v8;
  v33.size.width = v10;
  v33.size.height = v12;
  MinX = CGRectGetMinX(v33);
  v34.origin.x = v14;
  v34.origin.y = v16;
  v34.size.width = v18;
  v34.size.height = v20;
  MaxX = CGRectGetMaxX(v34);
  v35.origin.x = v6;
  v35.origin.y = v8;
  v35.size.width = v10;
  v35.size.height = v12;
  MinY = CGRectGetMinY(v35);
  v36.origin.x = v6;
  v36.origin.y = v8;
  v36.size.width = v10;
  v36.size.height = v12;
  Height = CGRectGetHeight(v36);
  [(SXDataTableBlueprint *)self rectForRowDividerAtIndexPath:a3, 0];
  v24 = Height + CGRectGetHeight(v37);
  if (!a3)
  {
    [(SXDataTableBlueprint *)self tableInsets];
    MinY = MinY - v25;
    [(SXDataTableBlueprint *)self tableInsets];
    v24 = v24 + v26;
  }

  if ([(SXDataTableBlueprint *)self numberOfRows]- 1 == a3)
  {
    [(SXDataTableBlueprint *)self tableInsets];
    v24 = v24 + v27;
  }

  v28 = MinX;
  v29 = MaxX - MinX;
  v30 = MinY;
  v31 = v24;
  result.size.height = v31;
  result.size.width = v29;
  result.origin.y = v30;
  result.origin.x = v28;
  return result;
}

- (CGRect)rectForColumnAtIndex:(unint64_t)a3
{
  [(SXDataTableBlueprint *)self cellRectForIndexPath:[(SXDataTableBlueprint *)self numberOfRows]- 1, a3];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(SXDataTableBlueprint *)self cellRectForIndexPath:0, 0];
  MinY = CGRectGetMinY(v25);
  v26.origin.x = v6;
  v26.origin.y = v8;
  v26.size.width = v10;
  v26.size.height = v12;
  MaxY = CGRectGetMaxY(v26);
  v27.origin.x = v6;
  v27.origin.y = v8;
  v27.size.width = v10;
  v27.size.height = v12;
  MinX = CGRectGetMinX(v27);
  v28.origin.x = v6;
  v28.origin.y = v8;
  v28.size.width = v10;
  v28.size.height = v12;
  Width = CGRectGetWidth(v28);
  [(SXDataTableBlueprint *)self rectForColumnDividerAtIndexPath:0, a3];
  v17 = Width + CGRectGetWidth(v29);
  if (!a3)
  {
    [(SXDataTableBlueprint *)self tableInsets];
    MinX = MinX - v18;
    [(SXDataTableBlueprint *)self tableInsets];
    v17 = v17 + v19;
  }

  if ([(SXDataTableBlueprint *)self numberOfColumns]- 1 == a3)
  {
    [(SXDataTableBlueprint *)self tableInsets];
    v17 = v17 + v20;
  }

  v21 = MaxY - MinY;
  v22 = MinX;
  v23 = MinY;
  v24 = v17;
  result.size.height = v21;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (BOOL)isRectValid:(CGRect)a3
{
  y = a3.origin.y;
  height = a3.size.height;
  v5 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  LODWORD(v5.f64[0]) = vuzp1_s8(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(a3.origin, v5), vceqq_f64(a3.size, v5)))), *&a3.origin.x).u32[0];
  v6 = vmovn_s32(vuzp1q_s32(vceqq_f64(a3.origin, a3.origin), vceqq_f64(a3.size, a3.size)));
  HIDWORD(v5.f64[0]) = vuzp1_s8(v6, v6).i32[1];
  return vminv_u8(vcltz_s8(vshl_n_s8(*&v5.f64[0], 7uLL))) & 1;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p>\n\n", v5, self];

  [v6 appendFormat:@" - Cells -\n"];
  if ([(SXDataTableBlueprint *)self numberOfRows])
  {
    v7 = 0;
    do
    {
      if ([(SXDataTableBlueprint *)self numberOfRows])
      {
        v8 = 0;
        do
        {
          v9 = [(SXDataTableBlueprint *)self blueprint];
          v10 = [v9 objectForIndexPath:{v7, v8}];
          [v10 CGRectValue];
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v18 = v17;

          v19 = [(SXDataTableBlueprint *)self contentBlueprint];
          v20 = [v19 objectForIndexPath:{v7, v8}];
          [v20 CGRectValue];
          v22 = v21;
          v24 = v23;
          v26 = v25;
          v28 = v27;

          v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{row: %lu, column: %lu}", v7, v8];
          v38.origin.x = v12;
          v38.origin.y = v14;
          v38.size.width = v16;
          v38.size.height = v18;
          v30 = NSStringFromCGRect(v38);
          v39.origin.x = v22;
          v39.origin.y = v24;
          v39.size.width = v26;
          v39.size.height = v28;
          v31 = NSStringFromCGRect(v39);
          [v6 appendFormat:@"%@; cell: %@; content: %@ \n", v29, v30, v31];

          ++v8;
        }

        while (v8 < [(SXDataTableBlueprint *)self numberOfRows]);
      }

      ++v7;
    }

    while (v7 < [(SXDataTableBlueprint *)self numberOfRows]);
  }

  [v6 appendFormat:@"\n - Rows -\n"];
  if ([(SXDataTableBlueprint *)self numberOfRows])
  {
    v32 = 0;
    do
    {
      [(SXDataTableBlueprint *)self rectForRowAtIndex:v32];
      v33 = NSStringFromCGRect(v40);
      [v6 appendFormat:@"{row: %lu}; %@\n", v32, v33];

      ++v32;
    }

    while (v32 < [(SXDataTableBlueprint *)self numberOfRows]);
  }

  [v6 appendFormat:@"\n - Columns -\n"];
  if ([(SXDataTableBlueprint *)self numberOfColumns])
  {
    v34 = 0;
    do
    {
      [(SXDataTableBlueprint *)self rectForColumnAtIndex:v34];
      v35 = NSStringFromCGRect(v41);
      [v6 appendFormat:@"{column: %lu}; %@\n", v34, v35];

      ++v34;
    }

    while (v34 < [(SXDataTableBlueprint *)self numberOfColumns]);
  }

  [v6 appendFormat:@"\n --- END --- "];

  return v6;
}

- (UIEdgeInsets)tableInsets
{
  top = self->_tableInsets.top;
  left = self->_tableInsets.left;
  bottom = self->_tableInsets.bottom;
  right = self->_tableInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)tableSize
{
  width = self->_tableSize.width;
  height = self->_tableSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end