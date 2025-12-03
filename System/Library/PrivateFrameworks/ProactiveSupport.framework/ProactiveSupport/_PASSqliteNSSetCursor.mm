@interface _PASSqliteNSSetCursor
+ (id)planningInfoForValueConstraint:(int)constraint;
- (BOOL)currentIndexedRowSatisfiesConstraints;
- (void)applyConstraint:(int)constraint withArgument:(id)argument;
- (void)finalizeConstraints;
- (void)setCollection:(id)collection;
- (void)stepIndexedRow;
@end

@implementation _PASSqliteNSSetCursor

- (void)finalizeConstraints
{
  set = self->_set;
  if (set)
  {
    objectEnumerator = [(NSSet *)set objectEnumerator];
    valuesEnumerator = self->_valuesEnumerator;
    self->_valuesEnumerator = objectEnumerator;

    [(_PASSqliteNSSetCursor *)self stepIndexedRow];
  }
}

- (BOOL)currentIndexedRowSatisfiesConstraints
{
  currentValue = self->_currentValue;
  null = [MEMORY[0x1E695DFB0] null];

  if (currentValue == null)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASSqliteCollections.m" lineNumber:1095 description:{@"Invalid parameter not satisfying: %@", @"_currentValue != [NSNull null]"}];
  }

  v8.receiver = self;
  v8.super_class = _PASSqliteNSSetCursor;
  return [(_PASSqliteCollectionsCursor *)&v8 currentIndexedRowSatisfiesConstraints];
}

- (void)stepIndexedRow
{
  nextObject = [(NSEnumerator *)self->_valuesEnumerator nextObject];
  currentValue = self->_currentValue;
  self->_currentValue = nextObject;

  MEMORY[0x1EEE66BB8]();
}

- (void)applyConstraint:(int)constraint withArgument:(id)argument
{
  argumentCopy = argument;
  if (constraint != 72)
  {
    if (constraint == 71)
    {
      set = self->_set;
      self->_set = 0;

      currentValue = self->_currentValue;
      self->_currentValue = 0;
      goto LABEL_10;
    }

    if (constraint != 2)
    {
      goto LABEL_11;
    }
  }

  v7 = self->_currentValue;
  v13 = argumentCopy;
  if (v7)
  {
    if ([v7 isEqual:argumentCopy])
    {
      goto LABEL_11;
    }

    currentValue = self->_currentValue;
    self->_currentValue = 0;
  }

  else
  {
    v10 = [(NSSet *)self->_set containsObject:argumentCopy];
    v11 = self->_set;
    self->_set = 0;

    if (!v10)
    {
      goto LABEL_11;
    }

    v12 = v13;
    currentValue = self->_currentValue;
    self->_currentValue = v12;
  }

LABEL_10:

LABEL_11:

  MEMORY[0x1EEE66BB8]();
}

- (void)setCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy count])
  {
    if ([collectionCopy count] == 1)
    {
      v6 = objc_autoreleasePoolPush();
      anyObject = [collectionCopy anyObject];
      currentValue = self->_currentValue;
      self->_currentValue = anyObject;

      objc_autoreleasePoolPop(v6);
    }

    else
    {
      objc_storeStrong(&self->_set, collection);
    }
  }

  v9.receiver = self;
  v9.super_class = _PASSqliteNSSetCursor;
  [(_PASSqliteCollectionsCursor *)&v9 setCollection:collectionCopy];
}

+ (id)planningInfoForValueConstraint:(int)constraint
{
  v3 = 0;
  if (constraint > 70)
  {
    if (constraint == 71)
    {
      v4 = [_PASSqliteCollectionsConstraintPlanInfo alloc];
      v5 = 0.0;
      v6 = 0.0;
      goto LABEL_9;
    }

    if (constraint != 72)
    {
      goto LABEL_11;
    }
  }

  else if (constraint != 2)
  {
    if (constraint != 70)
    {
      goto LABEL_11;
    }

    v4 = [_PASSqliteCollectionsConstraintPlanInfo alloc];
    v5 = 1.0;
    v6 = 1.0;
    v7 = 0;
    goto LABEL_10;
  }

  v4 = [_PASSqliteCollectionsConstraintPlanInfo alloc];
  v5 = 0.00001;
  v6 = 0.00001;
LABEL_9:
  v7 = 1;
LABEL_10:
  v3 = [(_PASSqliteCollectionsConstraintPlanInfo *)v4 initWithEstimatedRows:v7 estimatedCost:1 unique:v5 omit:v6];
LABEL_11:

  return v3;
}

@end