@interface _UIActivityMatchingResults
- (NSArray)hiddenActivities;
- (_UIActivityMatchingResults)initWithActivityMatchingContext:(id)a3;
- (void)setOrderedActivities:(id)a3;
@end

@implementation _UIActivityMatchingResults

- (_UIActivityMatchingResults)initWithActivityMatchingContext:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = _UIActivityMatchingResults;
  v6 = [(_UIActivityMatchingResults *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
    v8 = [MEMORY[0x1E695DF70] array];
    orderedActivities = v7->_orderedActivities;
    v7->_orderedActivities = v8;

    v10 = [MEMORY[0x1E695DF70] array];
    hiddenActivitiesMutable = v7->_hiddenActivitiesMutable;
    v7->_hiddenActivitiesMutable = v10;

    v12 = [MEMORY[0x1E695DFA8] set];
    excludedActivityTypesSet = v7->_excludedActivityTypesSet;
    v7->_excludedActivityTypesSet = v12;
  }

  return v7;
}

- (void)setOrderedActivities:(id)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  objc_storeStrong(&self->_orderedActivities, v3);
}

- (NSArray)hiddenActivities
{
  v2 = [(NSMutableArray *)self->_hiddenActivitiesMutable copy];

  return v2;
}

@end