@interface TSTColumnAggregate
- (BOOL)isEqual:(id)a3;
- (TSKUIDStruct)columnAggregateUid;
- (TSKUIDStruct)columnUid;
- (TSKUIDStruct)runningTotalGroupingColumnUid;
- (TSTColumnAggregate)initWithArchive:(const void *)a3;
- (TSTColumnAggregate)initWithColumnAggregateUid:(TSKUIDStruct)a3 columnUid:(TSKUIDStruct)a4 aggregateType:(unsigned __int8)a5 level:(int)a6 showAsType:(unsigned __int8)a7 runningTotalGroupingColumnUid:(TSKUIDStruct)a8;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initForPivotWithColumnUid:(TSKUIDStruct)a3 aggregateType:(unsigned __int8)a4;
- (id)initForPivotWithColumnUid:(TSKUIDStruct)a3 aggregateType:(unsigned __int8)a4 showAsType:(unsigned __int8)a5 runningTotalGroupingColumnUid:(TSKUIDStruct)a6;
- (void)encodeToArchive:(void *)a3 archiver:(id)a4;
- (void)getUUIDBytesForColumn:(unsigned __int8)a3[16];
- (void)getUUIDBytesForColumnAggregate:(unsigned __int8)a3[16];
- (void)getUUIDBytesForRunningTotalGroupingColumn:(unsigned __int8)a3[16];
@end

@implementation TSTColumnAggregate

- (TSTColumnAggregate)initWithColumnAggregateUid:(TSKUIDStruct)a3 columnUid:(TSKUIDStruct)a4 aggregateType:(unsigned __int8)a5 level:(int)a6 showAsType:(unsigned __int8)a7 runningTotalGroupingColumnUid:(TSKUIDStruct)a8
{
  upper = a4._upper;
  lower = a4._lower;
  v12 = a3._upper;
  v13 = a3._lower;
  v15.receiver = self;
  v15.super_class = TSTColumnAggregate;
  result = [(TSTColumnAggregate *)&v15 init];
  if (result)
  {
    result->_columnUid.var0.var0._lower = lower;
    result->_columnUid.var0.var0._upper = upper;
    result->_level = a6;
    result->_aggregateType = a5;
    result->_showAsType = a7;
    result->_columnAggregateUid.var0.var0._lower = v13;
    result->_columnAggregateUid.var0.var0._upper = v12;
    result->_definedColumnAggregateUid = (v13 | v12) != 0;
    result->_runningTotalGroupingColumnUid = a8;
    result->_definedRunningTotalGroupingColumnUid = a8 != 0uLL;
  }

  return result;
}

- (id)initForPivotWithColumnUid:(TSKUIDStruct)a3 aggregateType:(unsigned __int8)a4
{
  v4 = a4;
  upper = a3._upper;
  lower = a3._lower;
  v8 = TSKMakeUIDStructRandom();
  v11 = 0;
  return objc_msgSend_initWithColumnAggregateUid_columnUid_aggregateType_level_showAsType_runningTotalGroupingColumnUid_(self, v9, v8, v9, lower, upper, v4, 0, v11, 0, 0);
}

- (id)initForPivotWithColumnUid:(TSKUIDStruct)a3 aggregateType:(unsigned __int8)a4 showAsType:(unsigned __int8)a5 runningTotalGroupingColumnUid:(TSKUIDStruct)a6
{
  upper = a6._upper;
  lower = a6._lower;
  v9 = a4;
  v10 = a3._upper;
  v11 = a3._lower;
  v13 = TSKMakeUIDStructRandom();
  v16 = a5;
  return objc_msgSend_initWithColumnAggregateUid_columnUid_aggregateType_level_showAsType_runningTotalGroupingColumnUid_(self, v14, v13, v14, v11, v10, v9, 0, v16, lower, upper);
}

- (TSKUIDStruct)columnUid
{
  p_columnUid = &self->_columnUid;
  lower = self->_columnUid.var0.var0._lower;
  upper = p_columnUid->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)columnAggregateUid
{
  p_columnAggregateUid = &self->_columnAggregateUid;
  lower = self->_columnAggregateUid.var0.var0._lower;
  upper = p_columnAggregateUid->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)runningTotalGroupingColumnUid
{
  p_runningTotalGroupingColumnUid = &self->_runningTotalGroupingColumnUid;
  lower = self->_runningTotalGroupingColumnUid.var0.var0._lower;
  upper = p_runningTotalGroupingColumnUid->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSTColumnAggregate alloc];
  v9 = objc_msgSend_columnAggregateUid(self, v5, v6, v7, v8);
  v11 = v10;
  v15 = objc_msgSend_columnUid(self, v10, v12, v13, v14);
  v17 = v16;
  aggregateType = self->_aggregateType;
  level = self->_level;
  showAsType = self->_showAsType;
  v24 = objc_msgSend_runningTotalGroupingColumnUid(self, v16, v21, v22, v23);
  v27 = showAsType;
  return objc_msgSend_initWithColumnAggregateUid_columnUid_aggregateType_level_showAsType_runningTotalGroupingColumnUid_(v4, v25, v9, v11, v15, v17, aggregateType, level, v27, v24, v25);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v8 = sub_221183128(self->_columnUid.var0._uuid);
  level = self->_level;
  showAsType = self->_showAsType;
  if (*&self->_runningTotalGroupingColumnUid == 0)
  {
    v20 = 0;
    v21 = &stru_2834BADA0;
    objc_msgSend_stringWithFormat_(v3, v5, @"%@ for column %@ at level %lu with show as type %lu %@", v6, v7, v4, v8, level, showAsType, &stru_2834BADA0);
  }

  else
  {
    v11 = MEMORY[0x277CCACA8];
    self = sub_221183128(self->_runningTotalGroupingColumnUid.var0._uuid);
    v21 = objc_msgSend_stringWithFormat_(v11, v12, @"(running total on: %@)", v13, v14, self);
    v20 = 1;
    objc_msgSend_stringWithFormat_(v3, v15, @"%@ for column %@ at level %lu with show as type %lu %@", v16, v17, v4, v8, level, showAsType, v21);
  }
  v18 = ;
  if (v20)
  {
  }

  return v18;
}

- (TSTColumnAggregate)initWithArchive:(const void *)a3
{
  if (*(a3 + 3))
  {
    v5 = *(a3 + 3);
  }

  else
  {
    v5 = MEMORY[0x277D809E0];
  }

  v7 = TSKUIDStruct::loadFromMessage(v5, a2);
  v8 = v6;
  self->_level = *(a3 + 12);
  self->_aggregateType = *(a3 + 13);
  v9 = *(a3 + 4);
  v10 = *(a3 + 14);
  if ((v9 & 2) != 0)
  {
    v12 = TSKUIDStruct::loadFromMessage(*(a3 + 4), v6);
    v11 = v6;
    if ((*(a3 + 4) & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v13 = TSKUIDStruct::loadFromMessage(*(a3 + 5), v6);
    return objc_msgSend_initWithColumnAggregateUid_columnUid_aggregateType_level_showAsType_runningTotalGroupingColumnUid_(self, v14, v12, v11, v7, v8, self->_aggregateType, self->_level, v10 & (v9 << 26 >> 31), v13, v14);
  }

  v11 = 0;
  v12 = 0;
  if ((v9 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v13 = 0;
  v14 = 0;
  return objc_msgSend_initWithColumnAggregateUid_columnUid_aggregateType_level_showAsType_runningTotalGroupingColumnUid_(self, v14, v12, v11, v7, v8, self->_aggregateType, self->_level, v10 & (v9 << 26 >> 31), v13, v14);
}

- (void)encodeToArchive:(void *)a3 archiver:(id)a4
{
  v16 = a4;
  *(a3 + 4) |= 1u;
  v6 = *(a3 + 3);
  if (!v6)
  {
    v7 = *(a3 + 1);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = MEMORY[0x223DA0360](v7);
    *(a3 + 3) = v6;
  }

  TSP::UUIDData::saveToMessage(&self->_columnUid, v6);
  v8 = *(a3 + 4);
  aggregateType = self->_aggregateType;
  *(a3 + 12) = self->_level;
  *(a3 + 13) = aggregateType;
  showAsType = self->_showAsType;
  *(a3 + 4) = v8 | 0x38;
  *(a3 + 14) = showAsType;
  if (self->_columnAggregateUid.var0.var0._lower || self->_columnAggregateUid.var0.var0._upper)
  {
    *(a3 + 4) = v8 | 0x3A;
    v11 = *(a3 + 4);
    if (!v11)
    {
      v12 = *(a3 + 1);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x223DA0360](v12);
      *(a3 + 4) = v11;
    }

    TSP::UUIDData::saveToMessage(&self->_columnAggregateUid, v11);
  }

  p_runningTotalGroupingColumnUid = &self->_runningTotalGroupingColumnUid;
  if (p_runningTotalGroupingColumnUid->var0.var0._lower || p_runningTotalGroupingColumnUid->var0.var0._upper)
  {
    *(a3 + 4) |= 4u;
    v14 = *(a3 + 5);
    if (!v14)
    {
      v15 = *(a3 + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x223DA0360](v15);
      *(a3 + 5) = v14;
    }

    TSP::UUIDData::saveToMessage(p_runningTotalGroupingColumnUid, v14);
  }
}

- (void)getUUIDBytesForColumnAggregate:(unsigned __int8)a3[16]
{
  if (a3)
  {
    uuid_copy(a3, self->_columnAggregateUid.var0._uuid);
  }
}

- (void)getUUIDBytesForColumn:(unsigned __int8)a3[16]
{
  if (a3)
  {
    uuid_copy(a3, self->_columnUid.var0._uuid);
  }
}

- (void)getUUIDBytesForRunningTotalGroupingColumn:(unsigned __int8)a3[16]
{
  if (a3)
  {
    uuid_copy(a3, self->_runningTotalGroupingColumnUid.var0._uuid);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v46 = 1;
    goto LABEL_20;
  }

  objc_opt_class();
  v9 = TSUDynamicCast();
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = objc_msgSend_columnUid(self, v5, v6, v7, v8);
  v12 = v11;
  if (v10 != objc_msgSend_columnUid(v9, v11, v13, v14, v15) || v12 != v16)
  {
    goto LABEL_17;
  }

  aggregateType = self->_aggregateType;
  if (aggregateType != objc_msgSend_aggregateType(v9, v16, v17, v18, v19))
  {
    goto LABEL_17;
  }

  level = self->_level;
  if (level != objc_msgSend_level(v9, v22, v23, v24, v25))
  {
    goto LABEL_17;
  }

  showAsType = self->_showAsType;
  if (showAsType != objc_msgSend_showAsType(v9, v27, v28, v29, v30))
  {
    goto LABEL_17;
  }

  v36 = objc_msgSend_columnAggregateUid(self, v32, v33, v34, v35);
  v38 = v37;
  v46 = 0;
  if (v36 != objc_msgSend_columnAggregateUid(v9, v37, v39, v40, v41))
  {
    goto LABEL_18;
  }

  if (v38 != v42)
  {
    goto LABEL_18;
  }

  v47 = objc_msgSend_runningTotalGroupingColumnUid(self, v42, v43, v44, v45);
  v49 = v48;
  v46 = 0;
  if (v47 != objc_msgSend_runningTotalGroupingColumnUid(v9, v48, v50, v51, v52) || v49 != v53)
  {
    goto LABEL_18;
  }

  if (self->_definedColumnAggregateUid == v9[72])
  {
    v46 = self->_definedRunningTotalGroupingColumnUid == v9[73];
  }

  else
  {
LABEL_17:
    v46 = 0;
  }

LABEL_18:

LABEL_20:
  return v46;
}

- (id).cxx_construct
{
  *(self + 8) = 0uLL;
  *(self + 40) = 0uLL;
  *(self + 56) = 0uLL;
  return self;
}

@end