@interface _PXVisualDiagnosticsTableRow
- (PXVisualDiagnosticsTable)table;
- (_PXVisualDiagnosticsTableRow)initWithTable:(id)a3 availableColumnIdentifiers:(id)a4;
- (void)addCellForColumnWithIdentifier:(id)a3 format:(id)a4;
- (void)addCellForColumnWithIdentifier:(id)a3 rendering:(id)a4;
- (void)addCellForColumnWithIdentifier:(id)a3 text:(id)a4;
@end

@implementation _PXVisualDiagnosticsTableRow

- (PXVisualDiagnosticsTable)table
{
  WeakRetained = objc_loadWeakRetained(&self->_table);

  return WeakRetained;
}

- (void)addCellForColumnWithIdentifier:(id)a3 rendering:(id)a4
{
  v15 = a3;
  v7 = a4;
  availableColumnIdentifiers = self->_availableColumnIdentifiers;
  if (availableColumnIdentifiers && ![(NSSet *)availableColumnIdentifiers containsObject:v15])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXVisualDiagnosticsTable.m" lineNumber:255 description:{@"Invalid parameter not satisfying: %@", @"[_availableColumnIdentifiers containsObject:columnIdentifier]"}];
  }

  v9 = [(_PXVisualDiagnosticsTableRow *)self cellsByColumnIdentifier];
  v10 = [v9 objectForKeyedSubscript:v15];

  if (v10)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXVisualDiagnosticsTable.m" lineNumber:257 description:{@"Invalid parameter not satisfying: %@", @"self.cellsByColumnIdentifier[columnIdentifier] == nil"}];
  }

  v11 = [[_PXVisualDiagnosticsTableCell alloc] initWithRenderingBlock:v7];
  v12 = [(_PXVisualDiagnosticsTableRow *)self cellsByColumnIdentifier];
  [v12 setObject:v11 forKeyedSubscript:v15];
}

- (void)addCellForColumnWithIdentifier:(id)a3 text:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_PXVisualDiagnosticsTableRow *)self table];
  [v8 defaultRowFontSize];
  v10 = v9;

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68___PXVisualDiagnosticsTableRow_addCellForColumnWithIdentifier_text___block_invoke;
  v12[3] = &unk_1E7BB64B8;
  v13 = v6;
  v14 = v10;
  v11 = v6;
  [(_PXVisualDiagnosticsTableRow *)self addCellForColumnWithIdentifier:v7 rendering:v12];
}

- (void)addCellForColumnWithIdentifier:(id)a3 format:(id)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithFormat:v7 arguments:&v10];

  [(_PXVisualDiagnosticsTableRow *)self addCellForColumnWithIdentifier:v8 text:v9];
}

- (_PXVisualDiagnosticsTableRow)initWithTable:(id)a3 availableColumnIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = _PXVisualDiagnosticsTableRow;
  v8 = [(_PXVisualDiagnosticsTableRow *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_table, v6);
    v9->_height = 30.0;
    v10 = [v7 copy];
    availableColumnIdentifiers = v9->_availableColumnIdentifiers;
    v9->_availableColumnIdentifiers = v10;

    v12 = objc_alloc(MEMORY[0x1E695DF90]);
    v13 = [(NSSet *)v9->_availableColumnIdentifiers count];
    if (v13 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }

    v15 = [v12 initWithCapacity:v14];
    cellsByColumnIdentifier = v9->_cellsByColumnIdentifier;
    v9->_cellsByColumnIdentifier = v15;
  }

  return v9;
}

@end