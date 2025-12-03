@interface TRILockedFactorPackSet
+ (id)lockedSetWithFactorPackSetId:(id)id path:(id)path lock:(id)lock;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLockedSet:(id)set;
- (TRILockedFactorPackSet)initWithFactorPackSetId:(id)id path:(id)path lock:(id)lock;
- (id)copyWithReplacementFactorPackSetId:(id)id;
- (id)copyWithReplacementLock:(id)lock;
- (id)copyWithReplacementPath:(id)path;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRILockedFactorPackSet

- (TRILockedFactorPackSet)initWithFactorPackSetId:(id)id path:(id)path lock:(id)lock
{
  idCopy = id;
  pathCopy = path;
  lockCopy = lock;
  if (idCopy)
  {
    if (pathCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:1734 description:{@"Invalid parameter not satisfying: %@", @"path != nil"}];

    if (lockCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:1733 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetId != nil"}];

  if (!pathCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (lockCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:1735 description:{@"Invalid parameter not satisfying: %@", @"lock != nil"}];

LABEL_4:
  v19.receiver = self;
  v19.super_class = TRILockedFactorPackSet;
  v13 = [(TRILockedFactorPackSet *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_factorPackSetId, id);
    objc_storeStrong(&v14->_path, path);
    objc_storeStrong(&v14->_lock, lock);
  }

  return v14;
}

+ (id)lockedSetWithFactorPackSetId:(id)id path:(id)path lock:(id)lock
{
  lockCopy = lock;
  pathCopy = path;
  idCopy = id;
  v11 = [[self alloc] initWithFactorPackSetId:idCopy path:pathCopy lock:lockCopy];

  return v11;
}

- (id)copyWithReplacementFactorPackSetId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorPackSetId:idCopy path:self->_path lock:self->_lock];

  return v5;
}

- (id)copyWithReplacementPath:(id)path
{
  pathCopy = path;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorPackSetId:self->_factorPackSetId path:pathCopy lock:self->_lock];

  return v5;
}

- (id)copyWithReplacementLock:(id)lock
{
  lockCopy = lock;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorPackSetId:self->_factorPackSetId path:self->_path lock:lockCopy];

  return v5;
}

- (BOOL)isEqualToLockedSet:(id)set
{
  setCopy = set;
  v5 = setCopy;
  if (!setCopy)
  {
    goto LABEL_11;
  }

  v6 = self->_factorPackSetId == 0;
  factorPackSetId = [setCopy factorPackSetId];
  v8 = factorPackSetId != 0;

  if (v6 == v8)
  {
    goto LABEL_11;
  }

  factorPackSetId = self->_factorPackSetId;
  if (factorPackSetId)
  {
    factorPackSetId2 = [v5 factorPackSetId];
    v11 = [(TRIFactorPackSetId *)factorPackSetId isEqual:factorPackSetId2];

    if (!v11)
    {
      goto LABEL_11;
    }
  }

  v12 = self->_path == 0;
  path = [v5 path];
  v14 = path != 0;

  if (v12 == v14)
  {
    goto LABEL_11;
  }

  path = self->_path;
  if (path)
  {
    path2 = [v5 path];
    v17 = [(NSString *)path isEqual:path2];

    if (!v17)
    {
      goto LABEL_11;
    }
  }

  v18 = self->_lock == 0;
  lock = [v5 lock];
  v20 = lock != 0;

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
      lock2 = [v5 lock];
      v23 = [(TRIReferenceManagedDirReaderLock *)lock isEqual:lock2];
    }

    else
    {
      v23 = 1;
    }
  }

  return v23 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRILockedFactorPackSet *)self isEqualToLockedSet:v5];
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