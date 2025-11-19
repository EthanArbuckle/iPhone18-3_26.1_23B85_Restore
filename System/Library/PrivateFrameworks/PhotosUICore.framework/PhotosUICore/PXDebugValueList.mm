@interface PXDebugValueList
- (PXDebugValueList)init;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)addValueWithLabel:(id)a3;
- (void)addValueWithLabel:(id)a3 BOOLValue:(BOOL)a4 positiveValue:(BOOL)a5 positiveHighlighted:(BOOL)a6 negativeHighlighted:(BOOL)a7;
- (void)addValueWithLabel:(id)a3 doubleValue:(double)a4;
- (void)addValueWithLabel:(id)a3 highlightedScore:(double)a4;
- (void)addValueWithLabel:(id)a3 integerValue:(int64_t)a4;
- (void)addValueWithLabel:(id)a3 stringValue:(id)a4;
- (void)addValueWithLabel:(id)a3 stringValue:(id)a4 highlightStyle:(unint64_t)a5;
@end

@implementation PXDebugValueList

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(PXDebugValueList *)self debugValues];
  v9 = [v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v9;
}

- (void)addValueWithLabel:(id)a3 highlightedScore:(double)a4
{
  v6 = a3;
  v8 = [(PXDebugValueList *)self debugValues];
  v7 = [[PXDebugStringValue alloc] initWithLabel:v6 highlightedScore:a4];

  [v8 addObject:v7];
}

- (void)addValueWithLabel:(id)a3 stringValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(PXDebugValueList *)self debugValues];
  v8 = [[PXDebugStringValue alloc] initWithLabel:v7 string:v6 highlightStyle:0];

  [v9 addObject:v8];
}

- (void)addValueWithLabel:(id)a3 stringValue:(id)a4 highlightStyle:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v11 = [(PXDebugValueList *)self debugValues];
  v10 = [[PXDebugStringValue alloc] initWithLabel:v9 string:v8 highlightStyle:a5];

  [v11 addObject:v10];
}

- (void)addValueWithLabel:(id)a3 integerValue:(int64_t)a4
{
  v6 = a3;
  v8 = [(PXDebugValueList *)self debugValues];
  v7 = [[PXDebugStringValue alloc] initWithLabel:v6 integerValue:a4];

  [v8 addObject:v7];
}

- (void)addValueWithLabel:(id)a3 doubleValue:(double)a4
{
  v6 = a3;
  v8 = [(PXDebugValueList *)self debugValues];
  v7 = [[PXDebugStringValue alloc] initWithLabel:v6 doubleValue:a4];

  [v8 addObject:v7];
}

- (void)addValueWithLabel:(id)a3 BOOLValue:(BOOL)a4 positiveValue:(BOOL)a5 positiveHighlighted:(BOOL)a6 negativeHighlighted:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v12 = a3;
  v14 = [(PXDebugValueList *)self debugValues];
  v13 = [[PXDebugStringValue alloc] initWithLabel:v12 BOOLValue:v10 positiveValue:v9 positiveHighlighted:v8 negativeHighlighted:v7];

  [v14 addObject:v13];
}

- (void)addValueWithLabel:(id)a3
{
  v4 = a3;
  v6 = [(PXDebugValueList *)self debugValues];
  v5 = [[PXDebugValue alloc] initWithLabel:v4];

  [v6 addObject:v5];
}

- (PXDebugValueList)init
{
  v6.receiver = self;
  v6.super_class = PXDebugValueList;
  v2 = [(PXDebugValueList *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    debugValues = v2->_debugValues;
    v2->_debugValues = v3;
  }

  return v2;
}

@end