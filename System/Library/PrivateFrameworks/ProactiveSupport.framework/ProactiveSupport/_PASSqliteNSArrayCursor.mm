@interface _PASSqliteNSArrayCursor
+ (id)planningInfoForValueConstraint:(int)a3;
- (BOOL)currentIndexedRowSatisfiesConstraints;
- (_PASSqliteNSArrayCursor)init;
- (id)currentIndexedValue;
- (void)applyConstraint:(int)a3 withArgument:(id)a4;
- (void)setCollection:(id)a3;
@end

@implementation _PASSqliteNSArrayCursor

- (_PASSqliteNSArrayCursor)init
{
  v6.receiver = self;
  v6.super_class = _PASSqliteNSArrayCursor;
  v2 = [(_PASSqliteRowIdIndexSetCursor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    equalTo = v2->_equalTo;
    v2->_equalTo = 0;
  }

  return v3;
}

- (BOOL)currentIndexedRowSatisfiesConstraints
{
  v6.receiver = self;
  v6.super_class = _PASSqliteNSArrayCursor;
  if (![(_PASSqliteCollectionsCursor *)&v6 currentIndexedRowSatisfiesConstraints])
  {
    return 0;
  }

  if (!self->_equalTo)
  {
    return 1;
  }

  v3 = [(_PASSqliteNSArrayCursor *)self currentIndexedValue];
  v4 = [v3 isEqual:self->_equalTo];

  return v4;
}

- (id)currentIndexedValue
{
  v3 = [(_PASSqliteCollectionsCursor *)self collection];
  v4 = [v3 objectAtIndexedSubscript:{-[_PASSqliteRowIdIndexSetCursor currentIndexedRowId](self, "currentIndexedRowId")}];

  return v4;
}

- (void)applyConstraint:(int)a3 withArgument:(id)a4
{
  v7 = a4;
  if (a3 == 72 || a3 == 2)
  {
    v10 = v7;
    if (!v7 || ([MEMORY[0x1E695DFB0] null], v8 = objc_claimAutoreleasedReturnValue(), v8, a3 == 2) && v8 == v10)
    {
LABEL_8:
      [(_PASSqliteRowIdIndexSetCursor *)self matchNoRows];
      goto LABEL_9;
    }

    equalTo = self->_equalTo;
    if (equalTo)
    {
      if ([equalTo isEqual:v10])
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    objc_storeStrong(&self->_equalTo, a4);
  }

LABEL_9:

  MEMORY[0x1EEE66BB8]();
}

- (void)setCollection:(id)a3
{
  v8.receiver = self;
  v8.super_class = _PASSqliteNSArrayCursor;
  v4 = a3;
  [(_PASSqliteCollectionsCursor *)&v8 setCollection:v4];
  v5 = objc_alloc(MEMORY[0x1E696AC90]);
  v6 = [v4 count];

  v7 = [v5 initWithIndexesInRange:{0, v6}];
  [(_PASSqliteRowIdIndexSetCursor *)self setIndexSet:v7];
}

+ (id)planningInfoForValueConstraint:(int)a3
{
  if (a3 == 72 || a3 == 2)
  {
    v5 = [[_PASSqliteCollectionsConstraintPlanInfo alloc] initWithEstimatedRows:0 estimatedCost:1 unique:0.00001 omit:0.95, v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end