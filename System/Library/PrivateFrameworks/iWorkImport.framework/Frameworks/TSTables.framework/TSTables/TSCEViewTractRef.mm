@interface TSCEViewTractRef
- (BOOL)isEqual:(id)equal;
- (BOOL)isFixedAtZeroRef;
- (TSCEViewTractRef)init;
- (TSCEViewTractRef)initWithTableUID:(const TSKUIDStruct *)d;
- (TSCEViewTractRef)initWithTract:(id)tract tableUID:(const TSKUIDStruct *)d preserveFlags:(TSUPreserveFlags)flags columnGroupLevel:(unsigned __int8)level rowGroupLevel:(unsigned __int8)groupLevel aggrIndexLevel:(unsigned __int16)indexLevel;
- (TSKUIDStruct)tableUID;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setTract:(id)tract;
@end

@implementation TSCEViewTractRef

- (TSCEViewTractRef)init
{
  v3.receiver = self;
  v3.super_class = TSCEViewTractRef;
  result = [(TSCEViewTractRef *)&v3 init];
  if (result)
  {
    result->_tableUID._lower = 0;
    result->_tableUID._upper = 0;
    *&result->_aggregateIndexLevel = -1;
  }

  return result;
}

- (TSCEViewTractRef)initWithTract:(id)tract tableUID:(const TSKUIDStruct *)d preserveFlags:(TSUPreserveFlags)flags columnGroupLevel:(unsigned __int8)level rowGroupLevel:(unsigned __int8)groupLevel aggrIndexLevel:(unsigned __int16)indexLevel
{
  tractCopy = tract;
  v23.receiver = self;
  v23.super_class = TSCEViewTractRef;
  v19 = [(TSCEViewTractRef *)&v23 init];
  if (v19)
  {
    v20 = objc_msgSend_copy(tractCopy, v15, v16, v17, v18);
    tract = v19->_tract;
    v19->_tract = v20;

    v19->_tableUID = *d;
    v19->_preserveFlags = flags;
    v19->_aggregateIndexLevel = indexLevel;
    v19->_columnGroupLevel = level;
    v19->_rowGroupLevel = groupLevel;
  }

  return v19;
}

- (TSCEViewTractRef)initWithTableUID:(const TSKUIDStruct *)d
{
  v12.receiver = self;
  v12.super_class = TSCEViewTractRef;
  v4 = [(TSCEViewTractRef *)&v12 init];
  if (v4)
  {
    v5 = [TSCEUndoTract alloc];
    v9 = objc_msgSend_initWithPurpose_(v5, v6, 4, v7, v8);
    v10 = *(v4 + 1);
    *(v4 + 1) = v9;

    *(v4 + 1) = *d;
    v4[32] = 15;
    *(v4 + 34) = -1;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSCEViewTractRef alloc];
  tract = self->_tract;
  flags = self->_preserveFlags._flags;
  columnGroupLevel = self->_columnGroupLevel;
  rowGroupLevel = self->_rowGroupLevel;
  aggregateIndexLevel = self->_aggregateIndexLevel;

  return objc_msgSend_initWithTract_tableUID_preserveFlags_columnGroupLevel_rowGroupLevel_aggrIndexLevel_(v4, v5, tract, &self->_tableUID, flags, columnGroupLevel, rowGroupLevel, aggregateIndexLevel);
}

- (void)setTract:(id)tract
{
  tractCopy = tract;
  if (self->_tract != tractCopy)
  {
    v11 = tractCopy;
    v9 = objc_msgSend_copy(tractCopy, v5, v6, v7, v8);
    tract = self->_tract;
    self->_tract = v9;

    tractCopy = v11;
  }
}

- (BOOL)isFixedAtZeroRef
{
  p_isa = &self->_tract->super.isa;
  if (p_isa)
  {
    v7 = objc_msgSend_rowUids(p_isa, a2, v2, v3, v4);
    if (*v7 == v7[1])
    {
      p_isa = objc_msgSend_columnUids(self->_tract, v8, v9, v10, v11);
      LOBYTE(p_isa) = *p_isa == p_isa[1];
    }

    else
    {
      LOBYTE(p_isa) = 0;
    }
  }

  return p_isa;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    isEqual = 1;
  }

  else if (equalCopy)
  {
    objc_opt_class();
    v6 = TSUDynamicCast();
    v11 = v6;
    if (v6 && self->_tableUID._lower == objc_msgSend_tableUID(v6, v7, v8, v9, v10) && self->_tableUID._upper == v12 && (aggregateIndexLevel = self->_aggregateIndexLevel, aggregateIndexLevel == objc_msgSend_aggregateIndexLevel(v11, v12, v13, v14, v15)) && (columnGroupLevel = self->_columnGroupLevel, columnGroupLevel == objc_msgSend_columnGroupLevel(v11, v17, v18, v19, v20)) && (rowGroupLevel = self->_rowGroupLevel, rowGroupLevel == objc_msgSend_rowGroupLevel(v11, v22, v23, v24, v25)) && self->_preserveFlags._flags == objc_msgSend_preserveFlags(v11, v27, v28, v29, v30))
    {
      tract = self->_tract;
      v36 = objc_msgSend_tract(v11, v31, v32, v33, v34);
      isEqual = objc_msgSend_isEqual_(tract, v37, v36, v38, v39);
    }

    else
    {
      isEqual = 0;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (TSKUIDStruct)tableUID
{
  upper = self->_tableUID._upper;
  lower = self->_tableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

@end