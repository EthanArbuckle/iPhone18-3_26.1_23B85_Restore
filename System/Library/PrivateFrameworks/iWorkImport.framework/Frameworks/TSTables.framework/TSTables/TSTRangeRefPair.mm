@interface TSTRangeRefPair
- (RefTypeHolder<TSCERangeRef,)baseRangeRef;
- (RefTypeHolder<TSCERangeRef,)chromeRangeRef;
- (TSKUIDStruct)tableUID;
- (TSTRangeRefPair)initWithBaseTractRef:(id)ref calcEngine:(id)engine;
- (TSTRangeRefPair)initWithChromeTractRef:(id)ref calcEngine:(id)engine;
@end

@implementation TSTRangeRefPair

- (TSTRangeRefPair)initWithChromeTractRef:(id)ref calcEngine:(id)engine
{
  refCopy = ref;
  engineCopy = engine;
  v47.receiver = self;
  v47.super_class = TSTRangeRefPair;
  v13 = [(TSTRangeRefPair *)&v47 init];
  if (v13)
  {
    v14 = objc_msgSend_tableUID(refCopy, v9, v10, v11, v12);
    v17 = objc_msgSend_resolverForTableUID_(engineCopy, v15, v14, v15, v16);
    tableModel = v13->_tableModel;
    v13->_tableModel = v17;

    v23 = objc_msgSend_tableInfo(v13->_tableModel, v19, v20, v21, v22);
    tableInfo = v13->_tableInfo;
    v13->_tableInfo = v23;

    objc_storeStrong(&v13->_chromeTractRef, ref);
    v29 = v13->_tableInfo;
    if (v29)
    {
      v30 = objc_msgSend_translator(v29, v25, v26, v27, v28);
      v34 = objc_msgSend_viewTractRefForChromeTractRef_(v30, v31, refCopy, v32, v33);

      v39 = objc_msgSend_translator(v13->_tableInfo, v35, v36, v37, v38);
      v43 = objc_msgSend_baseTractRefForViewTractRef_(v39, v40, v34, v41, v42);
      baseTractRef = v13->_baseTractRef;
      v13->_baseTractRef = v43;
    }

    else
    {
      v45 = objc_msgSend_copy(refCopy, v25, v26, v27, v28);
      v34 = v13->_baseTractRef;
      v13->_baseTractRef = v45;
    }
  }

  return v13;
}

- (TSTRangeRefPair)initWithBaseTractRef:(id)ref calcEngine:(id)engine
{
  refCopy = ref;
  engineCopy = engine;
  v47.receiver = self;
  v47.super_class = TSTRangeRefPair;
  v13 = [(TSTRangeRefPair *)&v47 init];
  if (v13)
  {
    v14 = objc_msgSend_tableUID(refCopy, v9, v10, v11, v12);
    v17 = objc_msgSend_resolverForTableUID_(engineCopy, v15, v14, v15, v16);
    tableModel = v13->_tableModel;
    v13->_tableModel = v17;

    v23 = objc_msgSend_tableInfo(v13->_tableModel, v19, v20, v21, v22);
    tableInfo = v13->_tableInfo;
    v13->_tableInfo = v23;

    v29 = v13->_tableInfo;
    if (v29)
    {
      v30 = objc_msgSend_translator(v29, v25, v26, v27, v28);
      v34 = objc_msgSend_viewTractRefForBaseTractRef_(v30, v31, refCopy, v32, v33);

      v39 = objc_msgSend_translator(v13->_tableInfo, v35, v36, v37, v38);
      v43 = objc_msgSend_chromeTractRefForViewTractRef_(v39, v40, v34, v41, v42);
      chromeTractRef = v13->_chromeTractRef;
      v13->_chromeTractRef = v43;
    }

    else
    {
      v45 = objc_msgSend_copy(refCopy, v25, v26, v27, v28);
      v34 = v13->_chromeTractRef;
      v13->_chromeTractRef = v45;
    }

    objc_storeStrong(&v13->_baseTractRef, ref);
  }

  return v13;
}

- (RefTypeHolder<TSCERangeRef,)chromeRangeRef
{
  result = self->_chromeTractRef;
  if (result)
  {
    result = objc_msgSend_boundingRangeRef(result, a3, v3, v4, v5);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v8 = v10;
  retstr->var0.range = v9;
  retstr->var0._tableUID = v8;
  return result;
}

- (RefTypeHolder<TSCERangeRef,)baseRangeRef
{
  result = self->_baseTractRef;
  if (result)
  {
    result = objc_msgSend_boundingRangeRef(result, a3, v3, v4, v5);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v8 = v10;
  retstr->var0.range = v9;
  retstr->var0._tableUID = v8;
  return result;
}

- (TSKUIDStruct)tableUID
{
  v5 = objc_msgSend_tableUID(self->_baseTractRef, a2, v2, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

@end