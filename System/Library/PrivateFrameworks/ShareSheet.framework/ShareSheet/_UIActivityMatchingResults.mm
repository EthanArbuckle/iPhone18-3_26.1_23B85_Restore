@interface _UIActivityMatchingResults
- (NSArray)hiddenActivities;
- (_UIActivityMatchingResults)initWithActivityMatchingContext:(id)context;
- (void)setOrderedActivities:(id)activities;
@end

@implementation _UIActivityMatchingResults

- (_UIActivityMatchingResults)initWithActivityMatchingContext:(id)context
{
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = _UIActivityMatchingResults;
  v6 = [(_UIActivityMatchingResults *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    array = [MEMORY[0x1E695DF70] array];
    orderedActivities = v7->_orderedActivities;
    v7->_orderedActivities = array;

    array2 = [MEMORY[0x1E695DF70] array];
    hiddenActivitiesMutable = v7->_hiddenActivitiesMutable;
    v7->_hiddenActivitiesMutable = array2;

    v12 = [MEMORY[0x1E695DFA8] set];
    excludedActivityTypesSet = v7->_excludedActivityTypesSet;
    v7->_excludedActivityTypesSet = v12;
  }

  return v7;
}

- (void)setOrderedActivities:(id)activities
{
  if (activities)
  {
    activitiesCopy = activities;
  }

  else
  {
    activitiesCopy = MEMORY[0x1E695E0F0];
  }

  objc_storeStrong(&self->_orderedActivities, activitiesCopy);
}

- (NSArray)hiddenActivities
{
  v2 = [(NSMutableArray *)self->_hiddenActivitiesMutable copy];

  return v2;
}

@end