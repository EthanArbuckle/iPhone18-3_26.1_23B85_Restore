@interface TRILockedFactorPackSet
+ (id)lockedSetWithFactorPackSetId:(id)a3 path:(id)a4 lock:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLockedSet:(id)a3;
- (TRILockedFactorPackSet)initWithFactorPackSetId:(id)a3 path:(id)a4 lock:(id)a5;
- (id)copyWithReplacementFactorPackSetId:(id)a3;
- (id)copyWithReplacementLock:(id)a3;
- (id)copyWithReplacementPath:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRILockedFactorPackSet

- (TRILockedFactorPackSet)initWithFactorPackSetId:(id)a3 path:(id)a4 lock:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_8:
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:1734 description:{@"Invalid parameter not satisfying: %@", @"path != nil"}];

    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v16 = [MEMORY[0x277CCA890] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:1733 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetId != nil"}];

  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v12)
  {
    goto LABEL_4;
  }

LABEL_9:
  v18 = [MEMORY[0x277CCA890] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:1735 description:{@"Invalid parameter not satisfying: %@", @"lock != nil"}];

LABEL_4:
  v19.receiver = self;
  v19.super_class = TRILockedFactorPackSet;
  v13 = [(TRILockedFactorPackSet *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_factorPackSetId, a3);
    objc_storeStrong(&v14->_path, a4);
    objc_storeStrong(&v14->_lock, a5);
  }

  return v14;
}

+ (id)lockedSetWithFactorPackSetId:(id)a3 path:(id)a4 lock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithFactorPackSetId:v10 path:v9 lock:v8];

  return v11;
}

- (id)copyWithReplacementFactorPackSetId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorPackSetId:v4 path:self->_path lock:self->_lock];

  return v5;
}

- (id)copyWithReplacementPath:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorPackSetId:self->_factorPackSetId path:v4 lock:self->_lock];

  return v5;
}

- (id)copyWithReplacementLock:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorPackSetId:self->_factorPackSetId path:self->_path lock:v4];

  return v5;
}

- (BOOL)isEqualToLockedSet:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = self->_factorPackSetId == 0;
  v7 = [v4 factorPackSetId];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_11;
  }

  factorPackSetId = self->_factorPackSetId;
  if (factorPackSetId)
  {
    v10 = [v5 factorPackSetId];
    v11 = [(TRIFactorPackSetId *)factorPackSetId isEqual:v10];

    if (!v11)
    {
      goto LABEL_11;
    }
  }

  v12 = self->_path == 0;
  v13 = [v5 path];
  v14 = v13 != 0;

  if (v12 == v14)
  {
    goto LABEL_11;
  }

  path = self->_path;
  if (path)
  {
    v16 = [v5 path];
    v17 = [(NSString *)path isEqual:v16];

    if (!v17)
    {
      goto LABEL_11;
    }
  }

  v18 = self->_lock == 0;
  v19 = [v5 lock];
  v20 = v19 != 0;

  if (v18 == v20)
  {
LABEL_11:
    v23 = 0;
  }

  else
  {
    lock = self->_lock;
    if (lock)
    {
      v22 = [v5 lock];
      v23 = [(TRIReferenceManagedDirReaderLock *)lock isEqual:v22];
    }

    else
    {
      v23 = 1;
    }
  }

  return v23 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRILockedFactorPackSet *)self isEqualToLockedSet:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(TRIFactorPackSetId *)self->_factorPackSetId hash];
  v4 = [(NSString *)self->_path hash]- v3 + 32 * v3;
  return [(TRIReferenceManagedDirReaderLock *)self->_lock hash]- v4 + 32 * v4;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRILockedFactorPackSet | factorPackSetId:%@ path:%@ lock:%@>", self->_factorPackSetId, self->_path, self->_lock];

  return v2;
}

@end