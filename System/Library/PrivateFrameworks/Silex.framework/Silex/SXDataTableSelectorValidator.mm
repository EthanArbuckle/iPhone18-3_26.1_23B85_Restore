@interface SXDataTableSelectorValidator
- (BOOL)validateCellSelector:(id)selector forIndexPath:(id)path;
- (BOOL)validateColumnSelector:(id)selector forColumnIndex:(unint64_t)index;
- (BOOL)validateRowSelector:(id)selector forRowIndex:(unint64_t)index;
- (SXDataTableSelectorValidator)initWithRecordStore:(id)store dataOrientation:(unint64_t)orientation;
- (id)conditionEngineForSelector:(id)selector forIndexPath:(id)path;
- (id)descriptorForIndexPath:(id)path;
@end

@implementation SXDataTableSelectorValidator

- (SXDataTableSelectorValidator)initWithRecordStore:(id)store dataOrientation:(unint64_t)orientation
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = SXDataTableSelectorValidator;
  v8 = [(SXDataTableSelectorValidator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_recordStore, store);
    v9->_dataOrientation = orientation;
  }

  return v9;
}

- (BOOL)validateRowSelector:(id)selector forRowIndex:(unint64_t)index
{
  if (index == -1)
  {
    return 0;
  }

  indexCopy = index;
  selectorCopy = selector;
  v7 = [(SXDataTableSelectorValidator *)self conditionEngineForSelector:selectorCopy forIndexPath:indexCopy, -1];
  [v7 addConditionForEvenBoolean:objc_msgSend(selectorCopy withInteger:{"even"), indexCopy}];
  v8 = [selectorCopy odd];

  [v7 addConditionForOddBoolean:v8 withInteger:indexCopy];
  LOBYTE(indexCopy) = [v7 isValid];

  return indexCopy;
}

- (BOOL)validateColumnSelector:(id)selector forColumnIndex:(unint64_t)index
{
  if (index == -1)
  {
    return 0;
  }

  indexCopy = index;
  selectorCopy = selector;
  indexCopy = [(SXDataTableSelectorValidator *)self conditionEngineForSelector:selectorCopy forIndexPath:-1, indexCopy];
  [indexCopy addConditionForEvenBoolean:objc_msgSend(selectorCopy withInteger:{"even"), indexCopy}];
  v8 = [selectorCopy odd];

  [indexCopy addConditionForOddBoolean:v8 withInteger:indexCopy];
  LOBYTE(indexCopy) = [indexCopy isValid];

  return indexCopy;
}

- (BOOL)validateCellSelector:(id)selector forIndexPath:(id)path
{
  if (path.var0 == -1)
  {
    return 0;
  }

  var1 = path.var1;
  if (path.var1 == -1)
  {
    return 0;
  }

  var0 = path.var0;
  selectorCopy = selector;
  var1 = [(SXDataTableSelectorValidator *)self conditionEngineForSelector:selectorCopy forIndexPath:var0, var1];
  [var1 addConditionForEvenBoolean:objc_msgSend(selectorCopy withInteger:{"evenRows"), var0}];
  [var1 addConditionForEvenBoolean:objc_msgSend(selectorCopy withInteger:{"evenColumns"), var1}];
  [var1 addConditionForOddBoolean:objc_msgSend(selectorCopy withInteger:{"oddRows"), var0}];
  oddColumns = [selectorCopy oddColumns];

  [var1 addConditionForOddBoolean:oddColumns withInteger:var1];
  isValid = [var1 isValid];

  return isValid;
}

- (id)conditionEngineForSelector:(id)selector forIndexPath:(id)path
{
  var1 = path.var1;
  var0 = path.var0;
  selectorCopy = selector;
  var1 = [(SXDataTableSelectorValidator *)self descriptorForIndexPath:var0, var1];
  v9 = +[SXDataTableConditionEngine engine];
  [v9 addConditionForEqualInteger:objc_msgSend(selectorCopy withInteger:{"columnIndex"), var1}];
  [v9 addConditionForEqualInteger:objc_msgSend(selectorCopy withInteger:{"rowIndex"), var0}];
  descriptor = [selectorCopy descriptor];

  identifier = [var1 identifier];
  [v9 addConditionForEqualString:descriptor withString:identifier];

  return v9;
}

- (id)descriptorForIndexPath:(id)path
{
  var1 = path.var1;
  var0 = path.var0;
  dataOrientation = [(SXDataTableSelectorValidator *)self dataOrientation];
  if (dataOrientation == 1)
  {
    var1 = var0;
  }

  else if (dataOrientation)
  {
    goto LABEL_8;
  }

  if (var1 != -1)
  {
    recordStore = [(SXDataTableSelectorValidator *)self recordStore];
    descriptors = [recordStore descriptors];
    v9 = [descriptors count];

    if (var1 < v9)
    {
      recordStore2 = [(SXDataTableSelectorValidator *)self recordStore];
      descriptors2 = [recordStore2 descriptors];
      v12 = [descriptors2 objectAtIndex:var1];

      goto LABEL_9;
    }
  }

LABEL_8:
  v12 = 0;
LABEL_9:

  return v12;
}

@end