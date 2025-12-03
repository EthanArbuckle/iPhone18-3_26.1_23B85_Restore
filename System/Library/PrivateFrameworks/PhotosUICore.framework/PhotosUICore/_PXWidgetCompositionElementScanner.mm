@interface _PXWidgetCompositionElementScanner
- (BOOL)_wantsEdgeToEdgeLayoutForElement:(id)element;
- (BOOL)isAtEnd;
- (BOOL)scanRow:(id *)row;
- (void)enumerateElementsUsingBlock:(id)block;
@end

@implementation _PXWidgetCompositionElementScanner

- (void)enumerateElementsUsingBlock:(id)block
{
  blockCopy = block;
  elements = [(_PXWidgetCompositionElementScanner *)self elements];
  v6 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{self->_scannedRowRange.location, self->_scannedRowRange.length}];
  v7 = [elements objectsAtIndexes:v6];

  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  if ([(_PXWidgetCompositionElementScanner *)self orientation])
  {
    if ([(_PXWidgetCompositionElementScanner *)self orientation]== 1)
    {
      v19[0] = 0;
      v19[1] = v19;
      v19[2] = 0x2020000000;
      v19[3] = 0;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __66___PXWidgetCompositionElementScanner_enumerateElementsUsingBlock___block_invoke_3;
      v15[3] = &unk_1E7738270;
      v15[4] = self;
      v17 = v25;
      v18 = v19;
      v16 = blockCopy;
      [v7 enumerateObjectsUsingBlock:v15];

      _Block_object_dispose(v19, 8);
    }
  }

  else
  {
    [(_PXWidgetCompositionElementScanner *)self referenceWidth];
    v9 = v8;
    [(_PXWidgetCompositionElementScanner *)self interColumnSpacing];
    v11 = v10;
    v12 = [v7 count];
    [(_PXWidgetCompositionElementScanner *)self interColumnSpacing];
    v14 = (v9 + v11) / v12 - v13;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __66___PXWidgetCompositionElementScanner_enumerateElementsUsingBlock___block_invoke;
    v24[3] = &unk_1E7738220;
    *&v24[5] = v14;
    v24[4] = v25;
    [v7 enumerateObjectsUsingBlock:v24];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __66___PXWidgetCompositionElementScanner_enumerateElementsUsingBlock___block_invoke_2;
    v20[3] = &unk_1E7738248;
    v23 = v14;
    v22 = v25;
    v21 = blockCopy;
    [v7 enumerateObjectsUsingBlock:v20];
  }

  _Block_object_dispose(v25, 8);
}

- (BOOL)_wantsEdgeToEdgeLayoutForElement:(id)element
{
  elementCopy = element;
  wantsEdgeToEdgeLayoutBlock = [(_PXWidgetCompositionElementScanner *)self wantsEdgeToEdgeLayoutBlock];

  if (wantsEdgeToEdgeLayoutBlock)
  {
    wantsEdgeToEdgeLayoutBlock2 = [(_PXWidgetCompositionElementScanner *)self wantsEdgeToEdgeLayoutBlock];
    v7 = (wantsEdgeToEdgeLayoutBlock2)[2](wantsEdgeToEdgeLayoutBlock2, elementCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)scanRow:(id *)row
{
  self->_scannedRowRange.location = self->_scanLocation;
  self->_scannedRowRange.length = 0;
  if (![(_PXWidgetCompositionElementScanner *)self isAtEnd])
  {
    elements = [(_PXWidgetCompositionElementScanner *)self elements];
    self->_scannedRowRange.length = 1;
    v6 = [elements objectAtIndexedSubscript:self->_scannedRowRange.location];
    if (![(_PXWidgetCompositionElementScanner *)self _wantsEdgeToEdgeLayoutForElement:v6])
    {
      v7 = [elements count];
      maximumNumberOfColumns = [(_PXWidgetCompositionElementScanner *)self maximumNumberOfColumns];
      length = self->_scannedRowRange.length;
      if (length + self->_scannedRowRange.location < v7)
      {
        v10 = maximumNumberOfColumns;
        if (length < maximumNumberOfColumns)
        {
          while (1)
          {
            v11 = [elements objectAtIndexedSubscript:?];
            if ([(_PXWidgetCompositionElementScanner *)self _wantsEdgeToEdgeLayoutForElement:v11])
            {
              break;
            }

            ++self->_scannedRowRange.length;

            v12 = self->_scannedRowRange.length;
            if (v12 + self->_scannedRowRange.location >= v7 || v12 >= v10)
            {
              goto LABEL_13;
            }
          }
        }
      }
    }

LABEL_13:
  }

  v14 = self->_scannedRowRange.length;
  if (v14)
  {
    self->_scanLocation = self->_scannedRowRange.location + v14;
    if (row)
    {
      selfCopy = self;
      *row = self;
    }
  }

  return v14 != 0;
}

- (BOOL)isAtEnd
{
  scanLocation = self->_scanLocation;
  elements = [(_PXWidgetCompositionElementScanner *)self elements];
  LOBYTE(scanLocation) = scanLocation >= [elements count];

  return scanLocation;
}

@end