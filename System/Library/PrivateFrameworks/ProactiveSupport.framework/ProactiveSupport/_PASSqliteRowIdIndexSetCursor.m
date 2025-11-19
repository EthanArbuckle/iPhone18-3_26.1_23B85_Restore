@interface _PASSqliteRowIdIndexSetCursor
+ (id)planningInfoForRowIdConstraint:(int)a3;
- (NSMutableIndexSet)mutableIndexSet;
- (_PASSqliteRowIdIndexSetCursor)init;
- (void)applyRowIdConstraint:(int)a3 withArgument:(id)a4;
- (void)finalizeConstraints;
- (void)matchNoRows;
- (void)matchOneRow:(unint64_t)a3;
- (void)setIndexSet:(id)a3;
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
    v4 = [MEMORY[0x1E696AC90] indexSet];
    indexSet = v3->_indexSet;
    v3->_indexSet = v4;

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
    v4 = [(NSIndexSet *)indexSet lastIndex];
  }

  else
  {
    v4 = [(NSIndexSet *)indexSet firstIndex];
  }

  self->_currentIndex = v4;
}

- (void)stepIndexedRow
{
  isDescending = self->_isDescending;
  indexSet = self->_indexSet;
  v5 = [(_PASSqliteRowIdIndexSetCursor *)self currentIndexedRowId];
  if (isDescending)
  {
    v6 = [(NSIndexSet *)indexSet indexLessThanIndex:v5];
  }

  else
  {
    v6 = [(NSIndexSet *)indexSet indexGreaterThanIndex:v5];
  }

  self->_currentIndex = v6;
}

- (void)applyRowIdConstraint:(int)a3 withArgument:(id)a4
{
  v13 = a4;
  if (a3 <= 0x20)
  {
    if (((1 << a3) & 0x100010110) != 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (![(NSIndexSet *)self->_indexSet count])
        {
          goto LABEL_30;
        }

        v6 = [v13 unsignedIntegerValue];
        HIDWORD(v8) = a3 - 4;
        LODWORD(v8) = a3 - 4;
        v7 = v8 >> 2;
        if (v7 > 2)
        {
          if (v7 == 3)
          {
            if ([(NSIndexSet *)self->_indexSet firstIndex]< v6)
            {
              if ([(NSIndexSet *)self->_indexSet lastIndex]< v6)
              {
                goto LABEL_30;
              }

              v9 = [(_PASSqliteRowIdIndexSetCursor *)self mutableIndexSet];
              v10 = v9;
              v11 = 0x7FFFFFFFFFFFFFFELL - v6;
              v12 = v6;
              goto LABEL_28;
            }
          }

          else
          {
            if (v7 != 7)
            {
              goto LABEL_30;
            }

            if ([(NSIndexSet *)self->_indexSet lastIndex]>= v6)
            {
              if ([(NSIndexSet *)self->_indexSet firstIndex]>= v6)
              {
                goto LABEL_30;
              }

              v9 = [(_PASSqliteRowIdIndexSetCursor *)self mutableIndexSet];
              v10 = v9;
              v12 = 0;
              v11 = v6;
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

          if ([(NSIndexSet *)self->_indexSet firstIndex]<= v6)
          {
            if ([(NSIndexSet *)self->_indexSet lastIndex]<= v6)
            {
              goto LABEL_30;
            }

            v9 = [(_PASSqliteRowIdIndexSetCursor *)self mutableIndexSet];
            v10 = v9;
            v11 = 0x7FFFFFFFFFFFFFFDLL - v6;
            v12 = v6 + 1;
LABEL_28:
            [v9 removeIndexesInRange:{v12, v11}];

            goto LABEL_30;
          }
        }

        else if ([(NSIndexSet *)self->_indexSet lastIndex]> v6)
        {
          if ([(NSIndexSet *)self->_indexSet firstIndex]> v6)
          {
            goto LABEL_30;
          }

          v9 = [(_PASSqliteRowIdIndexSetCursor *)self mutableIndexSet];
          v10 = v9;
          v11 = v6 + 1;
          v12 = 0;
          goto LABEL_28;
        }
      }

      goto LABEL_29;
    }

    if (a3 == 2)
    {
      goto LABEL_15;
    }
  }

  if (a3 == 72)
  {
LABEL_15:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_PASSqliteRowIdIndexSetCursor matchOneRow:](self, "matchOneRow:", [v13 unsignedIntegerValue]);
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (a3 == 71)
  {
LABEL_29:
    [(_PASSqliteRowIdIndexSetCursor *)self matchNoRows];
  }

LABEL_30:
}

- (void)matchOneRow:(unint64_t)a3
{
  if ([(NSIndexSet *)self->_indexSet containsIndex:?])
  {
    if ([(NSIndexSet *)self->_indexSet count]>= 2)
    {
      v5 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:a3];
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
  v3 = [MEMORY[0x1E696AC90] indexSet];
  indexSet = self->_indexSet;
  self->_indexSet = v3;

  MEMORY[0x1EEE66BB8]();
}

- (void)setIndexSet:(id)a3
{
  objc_storeStrong(&self->_indexSet, a3);
  v6 = a3;
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

+ (id)planningInfoForRowIdConstraint:(int)a3
{
  v4 = 0;
  if (a3 > 69)
  {
    if (a3 != 72)
    {
      if (a3 != 71)
      {
        if (a3 != 70)
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
    [a1 costFactorForRandomAccess];
    v7 = v10;
    v6 = 0.00001;
    v5 = v9;
    goto LABEL_13;
  }

  if (a3 > 0x20)
  {
    goto LABEL_15;
  }

  if (((1 << a3) & 0x100010110) == 0)
  {
    if (a3 != 2)
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