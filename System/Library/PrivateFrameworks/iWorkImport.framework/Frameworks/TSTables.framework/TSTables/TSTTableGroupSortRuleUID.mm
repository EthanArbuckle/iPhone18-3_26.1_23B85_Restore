@interface TSTTableGroupSortRuleUID
+ (id)ruleWithGroupingColumnUID:(TSKUIDStruct)d columnUID:(TSKUIDStruct)iD direction:(int)direction;
- (TSKUIDStruct)columnUID;
- (TSKUIDStruct)groupingColumnUID;
- (TSTTableGroupSortRuleUID)initWithGroupingColumnUID:(TSKUIDStruct)d columnUID:(TSKUIDStruct)iD direction:(int)direction;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromArchive:(const void *)archive;
- (id)ruleByChangingDirectionTo:(int)to;
- (id)ruleByChangingSummaryColumnTo:(TSKUIDStruct)to;
- (unsigned)groupLevelInTable:(id)table;
- (void)encodeToArchive:(void *)archive;
@end

@implementation TSTTableGroupSortRuleUID

+ (id)ruleWithGroupingColumnUID:(TSKUIDStruct)d columnUID:(TSKUIDStruct)iD direction:(int)direction
{
  v5 = *&direction;
  upper = iD._upper;
  lower = iD._lower;
  v8 = d._upper;
  v9 = d._lower;
  v10 = objc_alloc(objc_opt_class());
  v12 = objc_msgSend_initWithGroupingColumnUID_columnUID_direction_(v10, v11, v9, v8, lower, upper, v5);

  return v12;
}

- (TSTTableGroupSortRuleUID)initWithGroupingColumnUID:(TSKUIDStruct)d columnUID:(TSKUIDStruct)iD direction:(int)direction
{
  upper = iD._upper;
  lower = iD._lower;
  v8 = d._upper;
  v9 = d._lower;
  v11.receiver = self;
  v11.super_class = TSTTableGroupSortRuleUID;
  result = [(TSTTableGroupSortRuleUID *)&v11 init];
  if (result)
  {
    result->_groupingColumnUID.var0.var0._lower = v9;
    result->_groupingColumnUID.var0.var0._upper = v8;
    result->_columnUID.var0.var0._lower = lower;
    result->_columnUID.var0.var0._upper = upper;
    result->_direction = direction;
    result->_definedGroupingColumnUID = 1;
    result->_definedColumnUID = 1;
    result->_definedDirection = 1;
  }

  return result;
}

- (TSKUIDStruct)groupingColumnUID
{
  p_groupingColumnUID = &self->_groupingColumnUID;
  lower = self->_groupingColumnUID.var0.var0._lower;
  upper = p_groupingColumnUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)columnUID
{
  p_columnUID = &self->_columnUID;
  lower = self->_columnUID.var0.var0._lower;
  upper = p_columnUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id)ruleByChangingDirectionTo:(int)to
{
  v4 = objc_opt_class();
  v9 = objc_msgSend_groupingColumnUID(self, v5, v6, v7, v8);
  v11 = v10;
  v15 = objc_msgSend_columnUID(self, v10, v12, v13, v14);

  return MEMORY[0x2821F9670](v4, sel_ruleWithGroupingColumnUID_columnUID_direction_, v9, v11, v15);
}

- (id)ruleByChangingSummaryColumnTo:(TSKUIDStruct)to
{
  lower = to._lower;
  v5 = objc_opt_class();
  v10 = objc_msgSend_groupingColumnUID(self, v6, v7, v8, v9);
  v12 = v11;
  objc_msgSend_direction(self, v11, v13, v14, v15);

  return MEMORY[0x2821F9670](v5, sel_ruleWithGroupingColumnUID_columnUID_direction_, v10, v12, lower);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSTTableGroupSortRuleUID alloc];
  v9 = objc_msgSend_groupingColumnUID(self, v5, v6, v7, v8);
  v11 = v10;
  v16 = objc_msgSend_columnUID(self, v10, v12, v13, v14);
  direction = self->_direction;

  return objc_msgSend_initWithGroupingColumnUID_columnUID_direction_(v4, v15, v9, v11, v16, v15, direction);
}

- (unsigned)groupLevelInTable:(id)table
{
  v6 = objc_msgSend_groupByForRows(table, a2, table, v3, v4);
  v11 = objc_msgSend_groupingColumnUID(self, v7, v8, v9, v10);
  LOBYTE(self) = objc_msgSend_groupLevelForGroupingColumnUid_(v6, v12, v11, v12, v13);

  return self;
}

- (void)encodeToArchive:(void *)archive
{
  v5 = *(archive + 4);
  *(archive + 10) = self->_direction != 0;
  *(archive + 4) = v5 | 5;
  v6 = *(archive + 3);
  if (!v6)
  {
    v7 = *(archive + 1);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = MEMORY[0x223DA0360](v7);
    *(archive + 3) = v6;
  }

  TSP::UUIDData::saveToMessage(&self->_groupingColumnUID, v6);
  *(archive + 4) |= 2u;
  v8 = *(archive + 4);
  if (!v8)
  {
    v9 = *(archive + 1);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v8 = MEMORY[0x223DA0360](v9);
    *(archive + 4) = v8;
  }

  TSP::UUIDData::saveToMessage(&self->_columnUID, v8);
}

- (id)initFromArchive:(const void *)archive
{
  v5 = *(archive + 10) != 0;
  v6 = MEMORY[0x277D809E0];
  if (*(archive + 3))
  {
    v7 = *(archive + 3);
  }

  else
  {
    v7 = MEMORY[0x277D809E0];
  }

  v9 = TSKUIDStruct::loadFromMessage(v7, a2);
  v10 = v8;
  if (*(archive + 4))
  {
    v11 = *(archive + 4);
  }

  else
  {
    v11 = v6;
  }

  v12 = TSKUIDStruct::loadFromMessage(v11, v8);
  return objc_msgSend_initWithGroupingColumnUID_columnUID_direction_(self, v13, v9, v10, v12, v13, v5);
}

- (id).cxx_construct
{
  *(self + 8) = 0uLL;
  *(self + 24) = 0uLL;
  return self;
}

@end