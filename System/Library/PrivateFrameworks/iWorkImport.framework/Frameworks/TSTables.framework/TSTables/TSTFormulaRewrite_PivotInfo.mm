@interface TSTFormulaRewrite_PivotInfo
- (TSKUIDStruct)tableUID;
- (TSTFormulaRewrite_PivotInfo)initWithTableUID:(const TSKUIDStruct *)d beforeViewColumnRowUIDMap:(id)map beforeRewriteMap:(id)rewriteMap;
- (id)description;
@end

@implementation TSTFormulaRewrite_PivotInfo

- (TSTFormulaRewrite_PivotInfo)initWithTableUID:(const TSKUIDStruct *)d beforeViewColumnRowUIDMap:(id)map beforeRewriteMap:(id)rewriteMap
{
  mapCopy = map;
  rewriteMapCopy = rewriteMap;
  v19.receiver = self;
  v19.super_class = TSTFormulaRewrite_PivotInfo;
  v10 = [(TSTFormulaRewrite_PivotInfo *)&v19 init];
  v11 = v10;
  if (v10)
  {
    v10->_tableUID = *d;
    objc_storeStrong(&v10->_beforeRewriteMap, rewriteMap);
    v16 = objc_msgSend_copyOnWriteUIDMapper(mapCopy, v12, v13, v14, v15);
    beforeColumnRowUIDMap = v11->_beforeColumnRowUIDMap;
    v11->_beforeColumnRowUIDMap = v16;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = TSKUIDStruct::description(&self->_tableUID);
  v9 = objc_msgSend_stringWithFormat_(v3, v6, @"%@, %p: for PivotTable: %@", v7, v8, v4, self, v5);

  return v9;
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