@interface _UIFocusGroupHistory
- (_UIFocusGroupHistory)init;
- (void)setLastFocusedItem:(id)item forGroupIdentifier:(id)identifier;
@end

@implementation _UIFocusGroupHistory

- (_UIFocusGroupHistory)init
{
  v8.receiver = self;
  v8.super_class = _UIFocusGroupHistory;
  v2 = [(_UIFocusGroupHistory *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:0];
    v4 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:517];
    v5 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyPointerFunctions:v3 valuePointerFunctions:v4 capacity:10];
    groupToItemMap = v2->_groupToItemMap;
    v2->_groupToItemMap = v5;
  }

  return v2;
}

- (void)setLastFocusedItem:(id)item forGroupIdentifier:(id)identifier
{
  itemCopy = item;
  identifierCopy = identifier;
  if (itemCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusGroupHistory.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"item"}];

    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusGroupHistory.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"groupIdentifier"}];

LABEL_3:
  [(NSMapTable *)self->_groupToItemMap setObject:itemCopy forKey:identifierCopy];
}

@end