@interface SXDataTableSelectorValidator
- (BOOL)validateCellSelector:(id)a3 forIndexPath:(id)a4;
- (BOOL)validateColumnSelector:(id)a3 forColumnIndex:(unint64_t)a4;
- (BOOL)validateRowSelector:(id)a3 forRowIndex:(unint64_t)a4;
- (SXDataTableSelectorValidator)initWithRecordStore:(id)a3 dataOrientation:(unint64_t)a4;
- (id)conditionEngineForSelector:(id)a3 forIndexPath:(id)a4;
- (id)descriptorForIndexPath:(id)a3;
@end

@implementation SXDataTableSelectorValidator

- (SXDataTableSelectorValidator)initWithRecordStore:(id)a3 dataOrientation:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SXDataTableSelectorValidator;
  v8 = [(SXDataTableSelectorValidator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_recordStore, a3);
    v9->_dataOrientation = a4;
  }

  return v9;
}

- (BOOL)validateRowSelector:(id)a3 forRowIndex:(unint64_t)a4
{
  if (a4 == -1)
  {
    return 0;
  }

  v4 = a4;
  v6 = a3;
  v7 = [(SXDataTableSelectorValidator *)self conditionEngineForSelector:v6 forIndexPath:v4, -1];
  [v7 addConditionForEvenBoolean:objc_msgSend(v6 withInteger:{"even"), v4}];
  v8 = [v6 odd];

  [v7 addConditionForOddBoolean:v8 withInteger:v4];
  LOBYTE(v4) = [v7 isValid];

  return v4;
}

- (BOOL)validateColumnSelector:(id)a3 forColumnIndex:(unint64_t)a4
{
  if (a4 == -1)
  {
    return 0;
  }

  v4 = a4;
  v6 = a3;
  v7 = [(SXDataTableSelectorValidator *)self conditionEngineForSelector:v6 forIndexPath:-1, v4];
  [v7 addConditionForEvenBoolean:objc_msgSend(v6 withInteger:{"even"), v4}];
  v8 = [v6 odd];

  [v7 addConditionForOddBoolean:v8 withInteger:v4];
  LOBYTE(v4) = [v7 isValid];

  return v4;
}

- (BOOL)validateCellSelector:(id)a3 forIndexPath:(id)a4
{
  if (a4.var0 == -1)
  {
    return 0;
  }

  var1 = a4.var1;
  if (a4.var1 == -1)
  {
    return 0;
  }

  var0 = a4.var0;
  v7 = a3;
  v8 = [(SXDataTableSelectorValidator *)self conditionEngineForSelector:v7 forIndexPath:var0, var1];
  [v8 addConditionForEvenBoolean:objc_msgSend(v7 withInteger:{"evenRows"), var0}];
  [v8 addConditionForEvenBoolean:objc_msgSend(v7 withInteger:{"evenColumns"), var1}];
  [v8 addConditionForOddBoolean:objc_msgSend(v7 withInteger:{"oddRows"), var0}];
  v9 = [v7 oddColumns];

  [v8 addConditionForOddBoolean:v9 withInteger:var1];
  v10 = [v8 isValid];

  return v10;
}

- (id)conditionEngineForSelector:(id)a3 forIndexPath:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = a3;
  v8 = [(SXDataTableSelectorValidator *)self descriptorForIndexPath:var0, var1];
  v9 = +[SXDataTableConditionEngine engine];
  [v9 addConditionForEqualInteger:objc_msgSend(v7 withInteger:{"columnIndex"), var1}];
  [v9 addConditionForEqualInteger:objc_msgSend(v7 withInteger:{"rowIndex"), var0}];
  v10 = [v7 descriptor];

  v11 = [v8 identifier];
  [v9 addConditionForEqualString:v10 withString:v11];

  return v9;
}

- (id)descriptorForIndexPath:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = [(SXDataTableSelectorValidator *)self dataOrientation];
  if (v6 == 1)
  {
    var1 = var0;
  }

  else if (v6)
  {
    goto LABEL_8;
  }

  if (var1 != -1)
  {
    v7 = [(SXDataTableSelectorValidator *)self recordStore];
    v8 = [v7 descriptors];
    v9 = [v8 count];

    if (var1 < v9)
    {
      v10 = [(SXDataTableSelectorValidator *)self recordStore];
      v11 = [v10 descriptors];
      v12 = [v11 objectAtIndex:var1];

      goto LABEL_9;
    }
  }

LABEL_8:
  v12 = 0;
LABEL_9:

  return v12;
}

@end