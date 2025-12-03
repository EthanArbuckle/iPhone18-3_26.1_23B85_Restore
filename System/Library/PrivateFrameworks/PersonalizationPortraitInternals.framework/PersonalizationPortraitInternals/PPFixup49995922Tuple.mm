@interface PPFixup49995922Tuple
+ (id)tupleWithRowid:(int64_t)rowid record:(id)record dkUUID:(id)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTuple:(id)tuple;
- (PPFixup49995922Tuple)initWithRowid:(int64_t)rowid record:(id)record dkUUID:(id)d;
- (unint64_t)hash;
@end

@implementation PPFixup49995922Tuple

- (unint64_t)hash
{
  rowid = self->_rowid;
  v4 = [self->_record hash]- rowid + 32 * rowid;
  return [(NSUUID *)self->_dkUUID hash]- v4 + 32 * v4;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPFixup49995922Tuple *)self isEqualToTuple:v5];
  }

  return v6;
}

- (BOOL)isEqualToTuple:(id)tuple
{
  tupleCopy = tuple;
  v5 = tupleCopy;
  if (!tupleCopy)
  {
    goto LABEL_9;
  }

  rowid = self->_rowid;
  if (rowid != [tupleCopy rowid])
  {
    goto LABEL_9;
  }

  v7 = self->_record == 0;
  record = [v5 record];
  v9 = record != 0;

  if (v7 == v9)
  {
    goto LABEL_9;
  }

  record = self->_record;
  if (record)
  {
    record2 = [v5 record];
    v12 = [record isEqual:record2];

    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v13 = self->_dkUUID == 0;
  dkUUID = [v5 dkUUID];
  v15 = dkUUID != 0;

  if (v13 == v15)
  {
LABEL_9:
    v18 = 0;
  }

  else
  {
    dkUUID = self->_dkUUID;
    if (dkUUID)
    {
      dkUUID2 = [v5 dkUUID];
      v18 = [(NSUUID *)dkUUID isEqual:dkUUID2];
    }

    else
    {
      v18 = 1;
    }
  }

  return v18 & 1;
}

- (PPFixup49995922Tuple)initWithRowid:(int64_t)rowid record:(id)record dkUUID:(id)d
{
  recordCopy = record;
  dCopy = d;
  if (!recordCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPFixup49995922Tuple.m" lineNumber:11 description:{@"Invalid parameter not satisfying: %@", @"record"}];
  }

  v16.receiver = self;
  v16.super_class = PPFixup49995922Tuple;
  v12 = [(PPFixup49995922Tuple *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_rowid = rowid;
    objc_storeStrong(&v12->_record, record);
    objc_storeStrong(&v13->_dkUUID, d);
  }

  return v13;
}

+ (id)tupleWithRowid:(int64_t)rowid record:(id)record dkUUID:(id)d
{
  dCopy = d;
  recordCopy = record;
  v10 = [[self alloc] initWithRowid:rowid record:recordCopy dkUUID:dCopy];

  return v10;
}

@end