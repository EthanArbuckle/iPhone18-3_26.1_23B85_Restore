@interface _PXVisualDiagnosticsTableRow
- (PXVisualDiagnosticsTable)table;
- (_PXVisualDiagnosticsTableRow)initWithTable:(id)table availableColumnIdentifiers:(id)identifiers;
- (void)addCellForColumnWithIdentifier:(id)identifier format:(id)format;
- (void)addCellForColumnWithIdentifier:(id)identifier rendering:(id)rendering;
- (void)addCellForColumnWithIdentifier:(id)identifier text:(id)text;
@end

@implementation _PXVisualDiagnosticsTableRow

- (PXVisualDiagnosticsTable)table
{
  WeakRetained = objc_loadWeakRetained(&self->_table);

  return WeakRetained;
}

- (void)addCellForColumnWithIdentifier:(id)identifier rendering:(id)rendering
{
  identifierCopy = identifier;
  renderingCopy = rendering;
  availableColumnIdentifiers = self->_availableColumnIdentifiers;
  if (availableColumnIdentifiers && ![(NSSet *)availableColumnIdentifiers containsObject:identifierCopy])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXVisualDiagnosticsTable.m" lineNumber:255 description:{@"Invalid parameter not satisfying: %@", @"[_availableColumnIdentifiers containsObject:columnIdentifier]"}];
  }

  cellsByColumnIdentifier = [(_PXVisualDiagnosticsTableRow *)self cellsByColumnIdentifier];
  v10 = [cellsByColumnIdentifier objectForKeyedSubscript:identifierCopy];

  if (v10)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXVisualDiagnosticsTable.m" lineNumber:257 description:{@"Invalid parameter not satisfying: %@", @"self.cellsByColumnIdentifier[columnIdentifier] == nil"}];
  }

  v11 = [[_PXVisualDiagnosticsTableCell alloc] initWithRenderingBlock:renderingCopy];
  cellsByColumnIdentifier2 = [(_PXVisualDiagnosticsTableRow *)self cellsByColumnIdentifier];
  [cellsByColumnIdentifier2 setObject:v11 forKeyedSubscript:identifierCopy];
}

- (void)addCellForColumnWithIdentifier:(id)identifier text:(id)text
{
  textCopy = text;
  identifierCopy = identifier;
  table = [(_PXVisualDiagnosticsTableRow *)self table];
  [table defaultRowFontSize];
  v10 = v9;

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68___PXVisualDiagnosticsTableRow_addCellForColumnWithIdentifier_text___block_invoke;
  v12[3] = &unk_1E7BB64B8;
  v13 = textCopy;
  v14 = v10;
  v11 = textCopy;
  [(_PXVisualDiagnosticsTableRow *)self addCellForColumnWithIdentifier:identifierCopy rendering:v12];
}

- (void)addCellForColumnWithIdentifier:(id)identifier format:(id)format
{
  v6 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  identifierCopy = identifier;
  v9 = [[v6 alloc] initWithFormat:formatCopy arguments:&v10];

  [(_PXVisualDiagnosticsTableRow *)self addCellForColumnWithIdentifier:identifierCopy text:v9];
}

- (_PXVisualDiagnosticsTableRow)initWithTable:(id)table availableColumnIdentifiers:(id)identifiers
{
  tableCopy = table;
  identifiersCopy = identifiers;
  v18.receiver = self;
  v18.super_class = _PXVisualDiagnosticsTableRow;
  v8 = [(_PXVisualDiagnosticsTableRow *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_table, tableCopy);
    v9->_height = 30.0;
    v10 = [identifiersCopy copy];
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