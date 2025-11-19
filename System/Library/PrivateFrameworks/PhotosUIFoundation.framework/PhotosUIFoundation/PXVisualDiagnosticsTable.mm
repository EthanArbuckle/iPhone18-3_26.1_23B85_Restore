@interface PXVisualDiagnosticsTable
- (PXVisualDiagnosticsTable)init;
- (UIEdgeInsets)margins;
- (void)_insertPageBreak;
- (void)_renderRow:(id)a3;
- (void)_renderTitleIfNeeded;
- (void)addColumnWithIdentifier:(id)a3 configuration:(id)a4;
- (void)addRowWithConfiguration:(id)a3;
- (void)configureColumnsWithConfiguration:(id)a3;
- (void)renderInContext:(id)a3 withRowsConfiguration:(id)a4;
@end

@implementation PXVisualDiagnosticsTable

- (UIEdgeInsets)margins
{
  top = self->_margins.top;
  left = self->_margins.left;
  bottom = self->_margins.bottom;
  right = self->_margins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_renderRow:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_context)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PXVisualDiagnosticsTable.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"_context != nil"}];
  }

  memset(&slice, 0, sizeof(slice));
  [v4 height];
  CGRectDivide(self->_nextRowAvailableFrame, &slice, &self->_nextRowAvailableFrame, v5, CGRectMinYEdge);
  v6 = [(PXVisualDiagnosticsContext *)self->_context CGContext];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(PXVisualDiagnosticsTable *)self columnIdentifiers];
  v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        v12 = [(PXVisualDiagnosticsTable *)self columns];
        v13 = [v12 objectForKeyedSubscript:v11];

        if (!v13)
        {
          v19 = [MEMORY[0x1E696AAA8] currentHandler];
          [v19 handleFailureInMethod:a2 object:self file:@"PXVisualDiagnosticsTable.m" lineNumber:170 description:{@"Invalid parameter not satisfying: %@", @"column != nil"}];
        }

        memset(&v23, 0, sizeof(v23));
        [v13 width];
        CGRectDivide(slice, &v23, &slice, v14, CGRectMinXEdge);
        v15 = [v4 cellsByColumnIdentifier];
        v16 = [v15 objectForKeyedSubscript:v11];

        if (v16)
        {
          CGContextSaveGState(v6);
          CGContextClipToRect(v6, v23);
          v17 = [v16 renderingBlock];
          (v17)[2](v17, self->_context, v23.origin.x, v23.origin.y, v23.size.width, v23.size.height);

          CGContextRestoreGState(v6);
        }

        CGContextSetLineWidth(v6, 1.0);
        v18 = [MEMORY[0x1E69DC888] colorWithWhite:0.9 alpha:1.0];
        CGContextSetStrokeColorWithColor(v6, [v18 CGColor]);

        CGContextStrokeRect(v6, v23);
        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }
}

- (void)_renderTitleIfNeeded
{
  if (!self->_context)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PXVisualDiagnosticsTable.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"_context != nil"}];
  }

  if (CGRectIsNull(self->_nextRowAvailableFrame))
  {
    [(PXVisualDiagnosticsContext *)self->_context currentPageBounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(PXVisualDiagnosticsTable *)self margins];
    v12 = v4 + v11;
    v14 = v6 + v13;
    v16 = v8 - (v11 + v15);
    v18 = v10 - (v13 + v17);
    v19 = [(PXVisualDiagnosticsTable *)self title];
    if ([v19 length])
    {
      memset(&slice, 0, sizeof(slice));
      v26.origin.x = v12;
      v26.origin.y = v14;
      v26.size.width = v16;
      v26.size.height = v18;
      CGRectDivide(v26, &slice, &self->_nextRowAvailableFrame, 40.0, CGRectMinYEdge);
      context = self->_context;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __48__PXVisualDiagnosticsTable__renderTitleIfNeeded__block_invoke;
      v23[3] = &unk_1E7BB6468;
      v23[4] = self;
      v24 = v19;
      [(PXVisualDiagnosticsContext *)context drawTextInRect:v23 configuration:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
    }

    else
    {
      self->_nextRowAvailableFrame.origin.x = v12;
      self->_nextRowAvailableFrame.origin.y = v14;
      self->_nextRowAvailableFrame.size.width = v16;
      self->_nextRowAvailableFrame.size.height = v18;
    }

    [(PXVisualDiagnosticsTable *)self _renderRow:self->_headerRow];
  }
}

void __48__PXVisualDiagnosticsTable__renderTitleIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (*(*(a1 + 32) + 40))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (continued)", *(a1 + 40)];
    [v5 setText:v3];
  }

  else
  {
    [v5 setText:*(a1 + 40)];
  }

  v4 = [MEMORY[0x1E69DB878] systemFontOfSize:18.0 weight:*MEMORY[0x1E69DB958]];
  [v5 setFont:v4];
}

- (void)_insertPageBreak
{
  context = self->_context;
  if (!context)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXVisualDiagnosticsTable.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"_context != nil"}];

    context = self->_context;
  }

  [(PXVisualDiagnosticsContext *)context endPage];
  [(PXVisualDiagnosticsContext *)self->_context beginPage];
  ++self->_pageIndex;
  v4 = *(MEMORY[0x1E695F050] + 16);
  self->_nextRowAvailableFrame.origin = *MEMORY[0x1E695F050];
  self->_nextRowAvailableFrame.size = v4;
}

- (void)addRowWithConfiguration:(id)a3
{
  v10 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc(MEMORY[0x1E695DFD8]);
  v6 = [(PXVisualDiagnosticsTable *)self columnIdentifiers];
  v7 = [v5 initWithArray:v6];

  v8 = [[_PXVisualDiagnosticsTableRow alloc] initWithTable:self availableColumnIdentifiers:v7];
  v10[2](v10, v8);
  if (!CGRectIsNull(self->_nextRowAvailableFrame))
  {
    [(_PXVisualDiagnosticsTableRow *)v8 height];
    if (v9 > CGRectGetHeight(self->_nextRowAvailableFrame))
    {
      [(PXVisualDiagnosticsTable *)self _insertPageBreak];
    }
  }

  [(PXVisualDiagnosticsTable *)self _renderTitleIfNeeded];
  [(PXVisualDiagnosticsTable *)self _renderRow:v8];

  objc_autoreleasePoolPop(v4);
}

- (void)addColumnWithIdentifier:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v8 = a4;
  mutableColumns = self->_mutableColumns;
  if (!mutableColumns)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXVisualDiagnosticsTable.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"_mutableColumns != nil"}];

    mutableColumns = self->_mutableColumns;
  }

  v10 = [(NSMutableDictionary *)mutableColumns objectForKeyedSubscript:v7];

  if (v10)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXVisualDiagnosticsTable.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"_mutableColumns[columnIdentifier] == nil"}];
  }

  [(NSMutableArray *)self->_mutableColumnIdentifiers addObject:v7];
  v11 = objc_alloc_init(_PXVisualDiagnosticsTableColumn);
  v8[2](v8, v11);
  [(NSMutableDictionary *)self->_mutableColumns setObject:v11 forKeyedSubscript:v7];
  headerRow = self->_headerRow;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__PXVisualDiagnosticsTable_addColumnWithIdentifier_configuration___block_invoke;
  v16[3] = &unk_1E7BB6440;
  v17 = v11;
  v13 = v11;
  [(_PXVisualDiagnosticsTableRow *)headerRow addCellForColumnWithIdentifier:v7 rendering:v16];
}

void __66__PXVisualDiagnosticsTable_addColumnWithIdentifier_configuration___block_invoke(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = a2;
  v12 = [v11 CGContext];
  v13 = [MEMORY[0x1E69DC888] colorWithWhite:0.95 alpha:1.0];
  CGContextSetFillColorWithColor(v12, [v13 CGColor]);

  v14 = [v11 CGContext];
  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  CGContextFillRect(v14, v17);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66__PXVisualDiagnosticsTable_addColumnWithIdentifier_configuration___block_invoke_2;
  v15[3] = &unk_1E7BB6418;
  v16 = *(a1 + 32);
  [v11 drawTextInRect:v15 configuration:{a3, a4, a5, a6}];
}

void __66__PXVisualDiagnosticsTable_addColumnWithIdentifier_configuration___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v5 = a2;
  v3 = [v2 title];
  [v5 setText:v3];

  v4 = [MEMORY[0x1E69DB878] systemFontOfSize:0.0 weight:*MEMORY[0x1E69DB980]];
  [v5 setFont:v4];

  [v5 setRelativePosition:{0.5, 0.5}];
}

- (void)renderInContext:(id)a3 withRowsConfiguration:(id)a4
{
  v7 = a3;
  v12 = a4;
  if (self->_context)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXVisualDiagnosticsTable.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"_context == nil"}];

    context = self->_context;
  }

  else
  {
    context = 0;
  }

  self->_context = v7;
  v9 = v7;

  [(PXVisualDiagnosticsContext *)self->_context beginPage];
  v12[2](v12, self);
  [(PXVisualDiagnosticsContext *)self->_context endPage];
  v10 = self->_context;
  self->_context = 0;
}

- (void)configureColumnsWithConfiguration:(id)a3
{
  v16 = a3;
  if (self->_mutableColumns)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXVisualDiagnosticsTable.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"_mutableColumns == nil"}];
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  mutableColumns = self->_mutableColumns;
  self->_mutableColumns = v5;

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  mutableColumnIdentifiers = self->_mutableColumnIdentifiers;
  self->_mutableColumnIdentifiers = v7;

  v9 = [[_PXVisualDiagnosticsTableRow alloc] initWithTable:self availableColumnIdentifiers:0];
  headerRow = self->_headerRow;
  self->_headerRow = v9;

  v16[2](v16, self);
  v11 = [(NSMutableDictionary *)self->_mutableColumns copy];
  columns = self->_columns;
  self->_columns = v11;

  objc_storeStrong(&self->_columnIdentifiers, self->_mutableColumnIdentifiers);
  v13 = self->_mutableColumns;
  self->_mutableColumns = 0;

  v14 = self->_mutableColumnIdentifiers;
  self->_mutableColumnIdentifiers = 0;
}

- (PXVisualDiagnosticsTable)init
{
  v4.receiver = self;
  v4.super_class = PXVisualDiagnosticsTable;
  result = [(PXVisualDiagnosticsTable *)&v4 init];
  if (result)
  {
    result->_defaultRowHeight = 30.0;
    v3 = *(MEMORY[0x1E695F050] + 16);
    result->_nextRowAvailableFrame.origin = *MEMORY[0x1E695F050];
    result->_nextRowAvailableFrame.size = v3;
  }

  return result;
}

@end