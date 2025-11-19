@interface _PASSqliteNSOrderedSetCursor
+ (id)planningInfoForValueConstraint:(int)a3;
- (id)currentIndexedValue;
- (void)applyConstraint:(int)a3 withArgument:(id)a4;
- (void)setCollection:(id)a3;
@end

@implementation _PASSqliteNSOrderedSetCursor

- (void)applyConstraint:(int)a3 withArgument:(id)a4
{
  v6 = a4;
  if (a3 == 71)
  {
    v13 = v6;
    v7 = [MEMORY[0x1E695DFB0] null];

    v8 = 1;
    v6 = v7;
  }

  else
  {
    v8 = a3 == 2;
    if (a3 != 72 && a3 != 2)
    {
      goto LABEL_12;
    }
  }

  v14 = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  v9 = [MEMORY[0x1E695DFB0] null];

  v10 = !v8;
  if (v14 != v9)
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

  v6 = v14;
LABEL_12:
}

- (void)setCollection:(id)a3
{
  v8.receiver = self;
  v8.super_class = _PASSqliteNSOrderedSetCursor;
  v4 = a3;
  [(_PASSqliteCollectionsCursor *)&v8 setCollection:v4];
  v5 = objc_alloc(MEMORY[0x1E696AC90]);
  v6 = [v4 count];

  v7 = [v5 initWithIndexesInRange:{0, v6}];
  [(_PASSqliteRowIdIndexSetCursor *)self setIndexSet:v7];
}

- (id)currentIndexedValue
{
  v3 = [(_PASSqliteCollectionsCursor *)self collection];
  v4 = [v3 objectAtIndexedSubscript:{-[_PASSqliteRowIdIndexSetCursor currentIndexedRowId](self, "currentIndexedRowId")}];

  return v4;
}

+ (id)planningInfoForValueConstraint:(int)a3
{
  if ((a3 - 71) < 2 || a3 == 2)
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