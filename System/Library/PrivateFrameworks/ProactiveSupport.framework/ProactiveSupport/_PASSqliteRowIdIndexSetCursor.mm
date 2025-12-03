@interface _PASSqliteRowIdIndexSetCursor
+ (id)planningInfoForRowIdConstraint:(int)constraint;
- (NSMutableIndexSet)mutableIndexSet;
- (_PASSqliteRowIdIndexSetCursor)init;
- (void)applyRowIdConstraint:(int)constraint withArgument:(id)argument;
- (void)finalizeConstraints;
- (void)matchNoRows;
- (void)matchOneRow:(unint64_t)row;
- (void)setIndexSet:(id)set;
- (void)stepIndexedRow;
@end

@implementation _PASSqliteRowIdIndexSetCursor

- (_PASSqliteRowIdIndexSetCursor)init
{
  v7.receiver = self;
  v7.super_class = _PASSqliteRowIdIndexSetCursor;
  v2 = [(_PASSqliteCollectionsCursor *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_currentIndex = 0;
    indexSet = [MEMORY[0x1E696AC90] indexSet];
    indexSet = v3->_indexSet;
    v3->_indexSet = indexSet;

    v3->_isDescending = 0;
  }

  return v3;
}

- (void)finalizeConstraints
{
  v5.receiver = self;
  v5.super_class = _PASSqliteRowIdIndexSetCursor;
  [(_PASSqliteCollectionsCursor *)&v5 finalizeConstraints];
  indexSet = self->_indexSet;
  if (self->_isDescending)
  {
    lastIndex = [(NSIndexSet *)indexSet lastIndex];
  }

  else
  {
    lastIndex = [(NSIndexSet *)indexSet firstIndex];
  }

  self->_currentIndex = lastIndex;
}

- (void)stepIndexedRow
{
  isDescending = self->_isDescending;
  indexSet = self->_indexSet;
  currentIndexedRowId = [(_PASSqliteRowIdIndexSetCursor *)self currentIndexedRowId];
  if (isDescending)
  {
    v6 = [(NSIndexSet *)indexSet indexLessThanIndex:currentIndexedRowId];
  }

  else
  {
    v6 = [(NSIndexSet *)indexSet indexGreaterThanIndex:currentIndexedRowId];
  }

  self->_currentIndex = v6;
}

- (void)applyRowIdConstraint:(int)constraint withArgument:(id)argument
{
  argumentCopy = argument;
  if (constraint <= 0x20)
  {
    if (((1 << constraint) & 0x100010110) != 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (![(NSIndexSet *)self->_indexSet count])
        {
          goto LABEL_30;
        }

        unsignedIntegerValue = [argumentCopy unsignedIntegerValue];
        HIDWORD(v8) = constraint - 4;
        LODWORD(v8) = constraint - 4;
        v7 = v8 >> 2;
        if (v7 > 2)
        {
          if (v7 == 3)
          {
            if ([(NSIndexSet *)self->_indexSet firstIndex]< unsignedIntegerValue)
            {
              if ([(NSIndexSet *)self->_indexSet lastIndex]< unsignedIntegerValue)
              {
                goto LABEL_30;
              }

              mutableIndexSet = [(_PASSqliteRowIdIndexSetCursor *)self mutableIndexSet];
              v10 = mutableIndexSet;
              v11 = 0x7FFFFFFFFFFFFFFELL - unsignedIntegerValue;
              v12 = unsignedIntegerValue;
              goto LABEL_28;
            }
          }

          else
          {
            if (v7 != 7)
            {
              goto LABEL_30;
            }

            if ([(NSIndexSet *)self->_indexSet lastIndex]>= unsignedIntegerValue)
            {
              if ([(NSIndexSet *)self->_indexSet firstIndex]>= unsignedIntegerValue)
              {
                goto LABEL_30;
              }

              mutableIndexSet = [(_PASSqliteRowIdIndexSetCursor *)self mutableIndexSet];
              v10 = mutableIndexSet;
              v12 = 0;
              v11 = unsignedIntegerValue;
              goto LABEL_28;
            }
          }
        }

        else if (v7)
        {
          if (v7 != 1)
          {
            goto LABEL_30;
          }

          if ([(NSIndexSet *)self->_indexSet firstIndex]<= unsignedIntegerValue)
          {
            if ([(NSIndexSet *)self->_indexSet lastIndex]<= unsignedIntegerValue)
            {
              goto LABEL_30;
            }

            mutableIndexSet = [(_PASSqliteRowIdIndexSetCursor *)self mutableIndexSet];
            v10 = mutableIndexSet;
            v11 = 0x7FFFFFFFFFFFFFFDLL - unsignedIntegerValue;
            v12 = unsignedIntegerValue + 1;
LABEL_28:
            [mutableIndexSet removeIndexesInRange:{v12, v11}];

            goto LABEL_30;
          }
        }

        else if ([(NSIndexSet *)self->_indexSet lastIndex]> unsignedIntegerValue)
        {
          if ([(NSIndexSet *)self->_indexSet firstIndex]> unsignedIntegerValue)
          {
            goto LABEL_30;
          }

          mutableIndexSet = [(_PASSqliteRowIdIndexSetCursor *)self mutableIndexSet];
          v10 = mutableIndexSet;
          v11 = unsignedIntegerValue + 1;
          v12 = 0;
          goto LABEL_28;
        }
      }

      goto LABEL_29;
    }

    if (constraint == 2)
    {
      goto LABEL_15;
    }
  }

  if (constraint == 72)
  {
LABEL_15:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_PASSqliteRowIdIndexSetCursor matchOneRow:](self, "matchOneRow:", [argumentCopy unsignedIntegerValue]);
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (constraint == 71)
  {
LABEL_29:
    [(_PASSqliteRowIdIndexSetCursor *)self matchNoRows];
  }

LABEL_30:
}

- (void)matchOneRow:(unint64_t)row
{
  if ([(NSIndexSet *)self->_indexSet containsIndex:?])
  {
    if ([(NSIndexSet *)self->_indexSet count]>= 2)
    {
      v5 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:row];
      indexSet = self->_indexSet;
      self->_indexSet = v5;

      MEMORY[0x1EEE66BB8]();
    }
  }

  else
  {

    [(_PASSqliteRowIdIndexSetCursor *)self matchNoRows];
  }
}

- (void)matchNoRows
{
  indexSet = [MEMORY[0x1E696AC90] indexSet];
  indexSet = self->_indexSet;
  self->_indexSet = indexSet;

  MEMORY[0x1EEE66BB8]();
}

- (void)setIndexSet:(id)set
{
  objc_storeStrong(&self->_indexSet, set);
  setCopy = set;
  mutableIndexSet = self->_mutableIndexSet;
  self->_mutableIndexSet = 0;
}

- (NSMutableIndexSet)mutableIndexSet
{
  mutableIndexSet = self->_mutableIndexSet;
  if (!mutableIndexSet)
  {
    v4 = [(NSIndexSet *)self->_indexSet mutableCopy];
    v5 = self->_mutableIndexSet;
    self->_mutableIndexSet = v4;

    objc_storeStrong(&self->_indexSet, self->_mutableIndexSet);
    mutableIndexSet = self->_mutableIndexSet;
  }

  return mutableIndexSet;
}

+ (id)planningInfoForRowIdConstraint:(int)constraint
{
  v4 = 0;
  if (constraint > 69)
  {
    if (constraint != 72)
    {
      if (constraint != 71)
      {
        if (constraint != 70)
        {
          goto LABEL_15;
        }

        v5 = [_PASSqliteCollectionsConstraintPlanInfo alloc];
        v6 = 1.0;
        v7 = 1.0;
        goto LABEL_5;
      }

      v5 = [_PASSqliteCollectionsConstraintPlanInfo alloc];
      v6 = 0.0;
      v7 = 0.0;
LABEL_13:
      v8 = 1;
      goto LABEL_14;
    }

LABEL_11:
    v9 = [_PASSqliteCollectionsConstraintPlanInfo alloc];
    [self costFactorForRandomAccess];
    v7 = v10;
    v6 = 0.00001;
    v5 = v9;
    goto LABEL_13;
  }

  if (constraint > 0x20)
  {
    goto LABEL_15;
  }

  if (((1 << constraint) & 0x100010110) == 0)
  {
    if (constraint != 2)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v5 = [_PASSqliteCollectionsConstraintPlanInfo alloc];
  v6 = 0.5;
  v7 = 0.5;
LABEL_5:
  v8 = 0;
LABEL_14:
  v4 = [(_PASSqliteCollectionsConstraintPlanInfo *)v5 initWithEstimatedRows:v8 estimatedCost:1 unique:v6 omit:v7];
LABEL_15:

  return v4;
}

@end