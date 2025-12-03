@interface PXDebugValueList
- (PXDebugValueList)init;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)addValueWithLabel:(id)label;
- (void)addValueWithLabel:(id)label BOOLValue:(BOOL)value positiveValue:(BOOL)positiveValue positiveHighlighted:(BOOL)highlighted negativeHighlighted:(BOOL)negativeHighlighted;
- (void)addValueWithLabel:(id)label doubleValue:(double)value;
- (void)addValueWithLabel:(id)label highlightedScore:(double)score;
- (void)addValueWithLabel:(id)label integerValue:(int64_t)value;
- (void)addValueWithLabel:(id)label stringValue:(id)value;
- (void)addValueWithLabel:(id)label stringValue:(id)value highlightStyle:(unint64_t)style;
@end

@implementation PXDebugValueList

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  debugValues = [(PXDebugValueList *)self debugValues];
  v9 = [debugValues countByEnumeratingWithState:state objects:objects count:count];

  return v9;
}

- (void)addValueWithLabel:(id)label highlightedScore:(double)score
{
  labelCopy = label;
  debugValues = [(PXDebugValueList *)self debugValues];
  v7 = [[PXDebugStringValue alloc] initWithLabel:labelCopy highlightedScore:score];

  [debugValues addObject:v7];
}

- (void)addValueWithLabel:(id)label stringValue:(id)value
{
  valueCopy = value;
  labelCopy = label;
  debugValues = [(PXDebugValueList *)self debugValues];
  v8 = [[PXDebugStringValue alloc] initWithLabel:labelCopy string:valueCopy highlightStyle:0];

  [debugValues addObject:v8];
}

- (void)addValueWithLabel:(id)label stringValue:(id)value highlightStyle:(unint64_t)style
{
  valueCopy = value;
  labelCopy = label;
  debugValues = [(PXDebugValueList *)self debugValues];
  v10 = [[PXDebugStringValue alloc] initWithLabel:labelCopy string:valueCopy highlightStyle:style];

  [debugValues addObject:v10];
}

- (void)addValueWithLabel:(id)label integerValue:(int64_t)value
{
  labelCopy = label;
  debugValues = [(PXDebugValueList *)self debugValues];
  v7 = [[PXDebugStringValue alloc] initWithLabel:labelCopy integerValue:value];

  [debugValues addObject:v7];
}

- (void)addValueWithLabel:(id)label doubleValue:(double)value
{
  labelCopy = label;
  debugValues = [(PXDebugValueList *)self debugValues];
  v7 = [[PXDebugStringValue alloc] initWithLabel:labelCopy doubleValue:value];

  [debugValues addObject:v7];
}

- (void)addValueWithLabel:(id)label BOOLValue:(BOOL)value positiveValue:(BOOL)positiveValue positiveHighlighted:(BOOL)highlighted negativeHighlighted:(BOOL)negativeHighlighted
{
  negativeHighlightedCopy = negativeHighlighted;
  highlightedCopy = highlighted;
  positiveValueCopy = positiveValue;
  valueCopy = value;
  labelCopy = label;
  debugValues = [(PXDebugValueList *)self debugValues];
  v13 = [[PXDebugStringValue alloc] initWithLabel:labelCopy BOOLValue:valueCopy positiveValue:positiveValueCopy positiveHighlighted:highlightedCopy negativeHighlighted:negativeHighlightedCopy];

  [debugValues addObject:v13];
}

- (void)addValueWithLabel:(id)label
{
  labelCopy = label;
  debugValues = [(PXDebugValueList *)self debugValues];
  v5 = [[PXDebugValue alloc] initWithLabel:labelCopy];

  [debugValues addObject:v5];
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