@interface SCRCMathTableCellExpression
- (id)_prefixForCell;
- (id)_suffixForCell;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed;
- (id)speakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth treePosition:(id)position;
- (void)_getTableDataIfNecessary;
@end

@implementation SCRCMathTableCellExpression

- (void)_getTableDataIfNecessary
{
  if (!self->_didGetTablePosition)
  {
    parent = [(SCRCMathExpression *)self parent];
    children = [parent children];
    v4 = [children indexOfObjectIdenticalTo:self] + 1;
    v7Parent = [parent parent];
    children2 = [v7Parent children];
    self->_rowIndex = [children2 indexOfObjectIdenticalTo:parent] + 1;
    self->_columnIndex = v4;
    self->_tableRowCount = [children2 count];
    self->_tableColumnCount = [children count];
    self->_didGetTablePosition = 1;
  }
}

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  [(SCRCMathTableCellExpression *)self _getTableDataIfNecessary];
  if (self->_tableColumnCount == 1)
  {
    v7 = MEMORY[0x277CCA898];
    v8 = [(SCRCMathExpression *)self localizedStringForKey:@"math.row.formatter"];
    v9 = MEMORY[0x277CCA898];
    v10 = MEMORY[0x277CCABB0];
    v11 = 48;
LABEL_5:
    v12 = [v10 numberWithInteger:*(&self->super.super.super.super.isa + v11)];
    v13 = [(SCRCMathExpression *)self localizedStringForNumber:v12];
    v14 = [v9 scrcStringWithString:v13];
    v15 = [v7 scrcStringWithFormat:v8, v14];
    goto LABEL_7;
  }

  v7 = MEMORY[0x277CCA898];
  if (self->_tableRowCount == 1)
  {
    v8 = [(SCRCMathExpression *)self localizedStringForKey:@"math.column.formatter"];
    v9 = MEMORY[0x277CCA898];
    v10 = MEMORY[0x277CCABB0];
    v11 = 56;
    goto LABEL_5;
  }

  v8 = [(SCRCMathExpression *)self localizedStringForKey:@"math.row.and.column.formatter"];
  v16 = MEMORY[0x277CCA898];
  v29 = allowedCopy;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:self->_rowIndex];
  v13 = [(SCRCMathExpression *)self localizedStringForNumber:v12];
  v14 = [v16 scrcStringWithString:v13];
  v17 = MEMORY[0x277CCA898];
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:self->_columnIndex];
  v19 = [(SCRCMathExpression *)self localizedStringForNumber:v18];
  v20 = [v17 scrcStringWithString:v19];
  v15 = [v7 scrcStringWithFormat:v8, v14, v20];

  allowedCopy = v29;
LABEL_7:

  v30.receiver = self;
  v30.super_class = SCRCMathTableCellExpression;
  v21 = [(SCRCMathRowExpression *)&v30 speakableDescriptionWithSpeakingStyle:style arePausesAllowed:allowedCopy];
  if (![v21 length])
  {
    v22 = MEMORY[0x277CCA898];
    v23 = [(SCRCMathExpression *)self localizedStringForKey:@"empty.content"];
    v24 = [v22 scrcStringWithString:v23];

    v21 = v24;
  }

  v25 = MEMORY[0x277CCA898];
  v26 = [(SCRCMathExpression *)self localizedStringForKey:@"math.row.column.with.content.formatter"];
  v27 = [v25 scrcStringWithFormat:v26, v15, v21];

  return v27;
}

- (id)speakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth treePosition:(id)position
{
  v22[1] = *MEMORY[0x277D85DE8];
  positionCopy = position;
  v21.receiver = self;
  v21.super_class = SCRCMathTableCellExpression;
  v9 = [(SCRCMathArrayExpression *)&v21 speakableSegmentsWithSpeakingStyle:style upToDepth:depth treePosition:positionCopy];
  if (![v9 count])
  {
    v10 = MEMORY[0x277CCA898];
    v11 = MEMORY[0x277CCACA8];
    _prefixForCell = [(SCRCMathTableCellExpression *)self _prefixForCell];
    string = [_prefixForCell string];
    v14 = [(SCRCMathExpression *)self localizedStringForKey:@"empty.content"];
    _suffixForCell = [(SCRCMathTableCellExpression *)self _suffixForCell];
    string2 = [_suffixForCell string];
    v17 = [v11 stringWithFormat:@"%@%@%@", string, v14, string2];
    v18 = [v10 scrcStringWithString:v17 treePosition:positionCopy];

    v22[0] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];

    v9 = v19;
  }

  return v9;
}

- (id)_prefixForCell
{
  [(SCRCMathTableCellExpression *)self _getTableDataIfNecessary];
  if (self->_tableColumnCount == 1)
  {
    v3 = MEMORY[0x277CCA898];
    v4 = [(SCRCMathExpression *)self localizedStringForKey:@"segment.table.row.prefix.formatter"];
    v5 = MEMORY[0x277CCA898];
    v6 = MEMORY[0x277CCABB0];
    v7 = 48;
LABEL_5:
    v8 = [v6 numberWithInteger:*(&self->super.super.super.super.isa + v7)];
    v9 = [(SCRCMathExpression *)self localizedStringForNumber:v8];
    v10 = [v5 scrcStringWithString:v9];
    v11 = [v3 scrcStringWithFormat:v4, v10];
    goto LABEL_7;
  }

  v3 = MEMORY[0x277CCA898];
  if (self->_tableRowCount == 1)
  {
    v4 = [(SCRCMathExpression *)self localizedStringForKey:@"segment.table.column.prefix.formatter"];
    v5 = MEMORY[0x277CCA898];
    v6 = MEMORY[0x277CCABB0];
    v7 = 56;
    goto LABEL_5;
  }

  v4 = [(SCRCMathExpression *)self localizedStringForKey:@"segment.table.row.column.prefix.formatter"];
  v12 = MEMORY[0x277CCA898];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_rowIndex];
  v9 = [(SCRCMathExpression *)self localizedStringForNumber:v8];
  v10 = [v12 scrcStringWithString:v9];
  v13 = MEMORY[0x277CCA898];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:self->_columnIndex];
  v15 = [(SCRCMathExpression *)self localizedStringForNumber:v14];
  v16 = [v13 scrcStringWithString:v15];
  v11 = [v3 scrcStringWithFormat:v4, v10, v16];

LABEL_7:

  return v11;
}

- (id)_suffixForCell
{
  [(SCRCMathTableCellExpression *)self _getTableDataIfNecessary];
  if (self->_tableColumnCount == 1)
  {
    v3 = MEMORY[0x277CCA898];
    v4 = [(SCRCMathExpression *)self localizedStringForKey:@"segment.table.row.suffix.formatter"];
    v5 = MEMORY[0x277CCA898];
    v6 = MEMORY[0x277CCABB0];
    v7 = 48;
LABEL_5:
    v8 = [v6 numberWithInteger:*(&self->super.super.super.super.isa + v7)];
    v9 = [(SCRCMathExpression *)self localizedStringForNumber:v8];
    v10 = [v5 scrcStringWithString:v9];
    v11 = [v3 scrcStringWithFormat:v4, v10];
    goto LABEL_7;
  }

  v3 = MEMORY[0x277CCA898];
  if (self->_tableRowCount == 1)
  {
    v4 = [(SCRCMathExpression *)self localizedStringForKey:@"segment.table.column.suffix.formatter"];
    v5 = MEMORY[0x277CCA898];
    v6 = MEMORY[0x277CCABB0];
    v7 = 56;
    goto LABEL_5;
  }

  v4 = [(SCRCMathExpression *)self localizedStringForKey:@"segment.table.row.column.suffix.formatter"];
  v12 = MEMORY[0x277CCA898];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_rowIndex];
  v9 = [(SCRCMathExpression *)self localizedStringForNumber:v8];
  v10 = [v12 scrcStringWithString:v9];
  v13 = MEMORY[0x277CCA898];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:self->_columnIndex];
  v15 = [(SCRCMathExpression *)self localizedStringForNumber:v14];
  v16 = [v13 scrcStringWithString:v15];
  v11 = [v3 scrcStringWithFormat:v4, v10, v16];

LABEL_7:

  return v11;
}

@end