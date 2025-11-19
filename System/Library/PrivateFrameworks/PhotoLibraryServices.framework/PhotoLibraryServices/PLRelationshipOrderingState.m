@interface PLRelationshipOrderingState
- (BOOL)setOrderValue:(int64_t)a3 forObjectID:(id)a4 atIndex:(unint64_t)a5;
- (PLRelationshipOrderingState)initWithObjectIDs:(id)a3 orderValues:(id)a4;
- (id)description;
- (unint64_t)findIndexForObjectID:(id)a3 newOrderValue:(int64_t)a4 hasOrderValueConflictWithObjectID:(id *)a5;
@end

@implementation PLRelationshipOrderingState

- (unint64_t)findIndexForObjectID:(id)a3 newOrderValue:(int64_t)a4 hasOrderValueConflictWithObjectID:(id *)a5
{
  v8 = a3;
  if ([self->_foks count])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
    v10 = [self->_foks indexOfObject:v9 inSortedRange:0 options:objc_msgSend(self->_foks usingComparator:{"count"), 1024, &__block_literal_global_22869}];
    if (v10 >= [self->_oids count])
    {
      if (a5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v11 = [self->_foks objectAtIndexedSubscript:v10];
      if ([v11 isEqual:v9])
      {
        v12 = [self->_oids objectAtIndexedSubscript:v10];
        v13 = [v12 isEqual:v8];

        if (!a5)
        {
          v14 = v13 ^ 1;
          if (!v10)
          {
            goto LABEL_17;
          }

LABEL_15:
          if ((v14 & 1) == 0)
          {
            v15 = [self->_oids objectAtIndexedSubscript:v10 - 1];
            v16 = [v15 isEqual:v8];

            v10 -= v16 & 1;
          }

          goto LABEL_17;
        }

        if ((v13 & 1) == 0)
        {
          *a5 = [self->_oids objectAtIndexedSubscript:v10];
LABEL_17:

          goto LABEL_18;
        }

LABEL_9:
        v14 = 0;
        *a5 = 0;
        if (!v10)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      if (a5)
      {
        goto LABEL_9;
      }
    }

    v14 = 0;
    if (!v10)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v10 = 0;
LABEL_18:

  return v10;
}

- (BOOL)setOrderValue:(int64_t)a3 forObjectID:(id)a4 atIndex:(unint64_t)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (!self->_isMutable)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = [self->_oids mutableCopy];
      oids = self->_oids;
      self->_oids = v9;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = [self->_foks mutableCopy];
      foks = self->_foks;
      self->_foks = v11;
    }

    self->_isMutable = 1;
  }

  v13 = [self->_oids count];
  v14 = MEMORY[0x1E6994D48];
  if (v13 < a5)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v15 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = [self->_oids count];
        v28 = 134218240;
        v29 = a5;
        v30 = 2048;
        v31 = v16;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Target index %ld is too large, count of object IDs is %ld", &v28, 0x16u);
      }
    }

    a5 = [self->_oids count];
  }

  v17 = [self->_oids indexOfObject:v8];
  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = -1;
  }

  else
  {
    v19 = [self->_foks objectAtIndex:v17];
    v18 = [v19 longLongValue];
  }

  if (v18 != a3)
  {
    if ((*v14 & 1) == 0)
    {
      v20 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v28 = 134218754;
        v29 = v18;
        v30 = 2048;
        v31 = a3;
        v32 = 2048;
        v33 = a5;
        v34 = 2112;
        v35 = v8;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEBUG, "Assigning updated order value (was %lld) to %lld (idx %ld) for %@", &v28, 0x2Au);
      }
    }

    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [self->_oids insertObject:v8 atIndex:a5];
      v21 = self->_foks;
      v22 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
      [v21 insertObject:v22 atIndex:a5];
LABEL_25:

      goto LABEL_30;
    }

    if (v17 == a5)
    {
      v23 = self->_foks;
      v22 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
      [v23 replaceObjectAtIndex:a5 withObject:v22];
      goto LABEL_25;
    }

    [self->_oids insertObject:v8 atIndex:a5];
    v24 = self->_foks;
    v25 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
    [v24 insertObject:v25 atIndex:a5];

    if (v17 <= a5)
    {
      v26 = v17;
    }

    else
    {
      v26 = v17 + 1;
    }

    [self->_oids removeObjectAtIndex:v26];
    [self->_foks removeObjectAtIndex:v26];
  }

LABEL_30:

  return v18 != a3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v10.receiver = self;
  v10.super_class = PLRelationshipOrderingState;
  v4 = [(PLRelationshipOrderingState *)&v10 description];
  v5 = [v3 stringWithFormat:@"%@ isMutable=%d count=%d\n", v4, self->_isMutable, objc_msgSend(self->_oids, "count")];

  if ([self->_oids count])
  {
    v6 = 0;
    do
    {
      v7 = [self->_foks objectAtIndexedSubscript:v6];
      v8 = [self->_oids objectAtIndexedSubscript:v6];
      [v5 appendFormat:@"  %@ -> %@\n", v7, v8];

      ++v6;
    }

    while ([self->_oids count] > v6);
  }

  return v5;
}

- (PLRelationshipOrderingState)initWithObjectIDs:(id)a3 orderValues:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PLRelationshipOrderingState;
  v8 = [(PLRelationshipOrderingState *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    oids = v8->_oids;
    v8->_oids = v9;

    v11 = [v7 copy];
    foks = v8->_foks;
    v8->_foks = v11;
  }

  return v8;
}

@end