@interface SSItemAvailableCondition
- (BOOL)evaluateWithContext:(id)context;
@end

@implementation SSItemAvailableCondition

- (BOOL)evaluateWithContext:(id)context
{
  itemLookupBlock = [context itemLookupBlock];
  if (itemLookupBlock)
  {
    v5 = itemLookupBlock;
    v6 = SSGetItemIdentifierFromValue(self->super._value);
    LOBYTE(itemLookupBlock) = (*(v5 + 16))(v5, v6);
  }

  return itemLookupBlock ^ (self->super._operator == 1);
}

@end