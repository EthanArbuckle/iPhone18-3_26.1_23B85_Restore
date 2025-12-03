@interface _PASSqliteNSOrderedSetCursor
+ (id)planningInfoForValueConstraint:(int)constraint;
- (id)currentIndexedValue;
- (void)applyConstraint:(int)constraint withArgument:(id)argument;
- (void)setCollection:(id)collection;
@end

@implementation _PASSqliteNSOrderedSetCursor

- (void)applyConstraint:(int)constraint withArgument:(id)argument
{
  argumentCopy = argument;
  if (constraint == 71)
  {
    v13 = argumentCopy;
    null = [MEMORY[0x1E695DFB0] null];

    v8 = 1;
    argumentCopy = null;
  }

  else
  {
    v8 = constraint == 2;
    if (constraint != 72 && constraint != 2)
    {
      goto LABEL_12;
    }
  }

  v14 = argumentCopy;
  if (!argumentCopy)
  {
    goto LABEL_10;
  }

  null2 = [MEMORY[0x1E695DFB0] null];

  v10 = !v8;
  if (v14 != null2)
  {
    v10 = 1;
  }

  if ((v10 & 1) != 0 && (-[_PASSqliteCollectionsCursor collection](self, "collection"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 indexOfObject:v14], v11, v12 != 0x7FFFFFFFFFFFFFFFLL))
  {
    [(_PASSqliteRowIdIndexSetCursor *)self matchOneRow:v12];
  }

  else
  {
LABEL_10:
    [(_PASSqliteRowIdIndexSetCursor *)self matchNoRows];
  }

  argumentCopy = v14;
LABEL_12:
}

- (void)setCollection:(id)collection
{
  v8.receiver = self;
  v8.super_class = _PASSqliteNSOrderedSetCursor;
  collectionCopy = collection;
  [(_PASSqliteCollectionsCursor *)&v8 setCollection:collectionCopy];
  v5 = objc_alloc(MEMORY[0x1E696AC90]);
  v6 = [collectionCopy count];

  v7 = [v5 initWithIndexesInRange:{0, v6}];
  [(_PASSqliteRowIdIndexSetCursor *)self setIndexSet:v7];
}

- (id)currentIndexedValue
{
  collection = [(_PASSqliteCollectionsCursor *)self collection];
  v4 = [collection objectAtIndexedSubscript:{-[_PASSqliteRowIdIndexSetCursor currentIndexedRowId](self, "currentIndexedRowId")}];

  return v4;
}

+ (id)planningInfoForValueConstraint:(int)constraint
{
  if ((constraint - 71) < 2 || constraint == 2)
  {
    v6 = [[_PASSqliteCollectionsConstraintPlanInfo alloc] initWithEstimatedRows:1 estimatedCost:1 unique:0.00001 omit:0.00001, v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end