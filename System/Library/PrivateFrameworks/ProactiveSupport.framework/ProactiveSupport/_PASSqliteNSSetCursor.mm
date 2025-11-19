@interface _PASSqliteNSSetCursor
+ (id)planningInfoForValueConstraint:(int)a3;
- (BOOL)currentIndexedRowSatisfiesConstraints;
- (void)applyConstraint:(int)a3 withArgument:(id)a4;
- (void)finalizeConstraints;
- (void)setCollection:(id)a3;
- (void)stepIndexedRow;
@end

@implementation _PASSqliteNSSetCursor

- (void)finalizeConstraints
{
  set = self->_set;
  if (set)
  {
    v4 = [(NSSet *)set objectEnumerator];
    valuesEnumerator = self->_valuesEnumerator;
    self->_valuesEnumerator = v4;

    [(_PASSqliteNSSetCursor *)self stepIndexedRow];
  }
}

- (BOOL)currentIndexedRowSatisfiesConstraints
{
  currentValue = self->_currentValue;
  v5 = [MEMORY[0x1E695DFB0] null];

  if (currentValue == v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_PASSqliteCollections.m" lineNumber:1095 description:{@"Invalid parameter not satisfying: %@", @"_currentValue != [NSNull null]"}];
  }

  v8.receiver = self;
  v8.super_class = _PASSqliteNSSetCursor;
  return [(_PASSqliteCollectionsCursor *)&v8 currentIndexedRowSatisfiesConstraints];
}

- (void)stepIndexedRow
{
  v3 = [(NSEnumerator *)self->_valuesEnumerator nextObject];
  currentValue = self->_currentValue;
  self->_currentValue = v3;

  MEMORY[0x1EEE66BB8]();
}

- (void)applyConstraint:(int)a3 withArgument:(id)a4
{
  v6 = a4;
  if (a3 != 72)
  {
    if (a3 == 71)
    {
      set = self->_set;
      self->_set = 0;

      currentValue = self->_currentValue;
      self->_currentValue = 0;
      goto LABEL_10;
    }

    if (a3 != 2)
    {
      goto LABEL_11;
    }
  }

  v7 = self->_currentValue;
  v13 = v6;
  if (v7)
  {
    if ([v7 isEqual:v6])
    {
      goto LABEL_11;
    }

    currentValue = self->_currentValue;
    self->_currentValue = 0;
  }

  else
  {
    v10 = [(NSSet *)self->_set containsObject:v6];
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

- (void)setCollection:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    if ([v5 count] == 1)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = [v5 anyObject];
      currentValue = self->_currentValue;
      self->_currentValue = v7;

      objc_autoreleasePoolPop(v6);
    }

    else
    {
      objc_storeStrong(&self->_set, a3);
    }
  }

  v9.receiver = self;
  v9.super_class = _PASSqliteNSSetCursor;
  [(_PASSqliteCollectionsCursor *)&v9 setCollection:v5];
}

+ (id)planningInfoForValueConstraint:(int)a3
{
  v3 = 0;
  if (a3 > 70)
  {
    if (a3 == 71)
    {
      v4 = [_PASSqliteCollectionsConstraintPlanInfo alloc];
      v5 = 0.0;
      v6 = 0.0;
      goto LABEL_9;
    }

    if (a3 != 72)
    {
      goto LABEL_11;
    }
  }

  else if (a3 != 2)
  {
    if (a3 != 70)
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