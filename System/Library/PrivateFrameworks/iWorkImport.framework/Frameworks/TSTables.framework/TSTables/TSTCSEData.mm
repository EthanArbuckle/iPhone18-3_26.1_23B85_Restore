@interface TSTCSEData
- (TSTCSEData)init;
- (id).cxx_construct;
- (id)description;
- (id)expressionsIdenticalToExpression:(id)expression;
- (id)expressionsMatchingCSENodeData:(TSTCSENodeData)data forNode:(id)node;
- (unint64_t)expressionSize:(id)size;
- (void)recordExpression:(id)expression data:(TSTCSENodeData)data;
@end

@implementation TSTCSEData

- (TSTCSEData)init
{
  v8.receiver = self;
  v8.super_class = TSTCSEData;
  v2 = [(TSTCSEData *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    hashesToNodeSets = v2->_hashesToNodeSets;
    v2->_hashesToNodeSets = v3;

    v5 = objc_opt_new();
    retainedExpressions = v2->_retainedExpressions;
    v2->_retainedExpressions = v5;
  }

  return v2;
}

- (void)recordExpression:(id)expression data:(TSTCSENodeData)data
{
  var1 = data.var1;
  var0 = data.var0;
  expressionCopy = expression;
  v31[0] = expressionCopy;
  v31[1] = var0;
  v31[2] = var1;
  sub_22113183C(&self->_nodesToData.__table_.__bucket_list_.__ptr_, v31);
  objc_msgSend_addObject_(self->_retainedExpressions, v8, expressionCopy, v9, v10);
  hashesToNodeSets = self->_hashesToNodeSets;
  v15 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v12, var0, v13, v14);
  v19 = objc_msgSend_objectForKey_(hashesToNodeSets, v16, v15, v17, v18);

  if (!v19)
  {
    v23 = objc_alloc_init(MEMORY[0x277D81258]);
    v24 = self->_hashesToNodeSets;
    v28 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v25, var0, v26, v27);
    objc_msgSend_setObject_forKey_(v24, v29, v23, v28, v30);

    v19 = v23;
  }

  objc_msgSend_addObject_(v19, v20, expressionCopy, v21, v22);
}

- (id)expressionsMatchingCSENodeData:(TSTCSENodeData)data forNode:(id)node
{
  var0 = data.var0;
  v40 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  hashesToNodeSets = self->_hashesToNodeSets;
  v11 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v8, var0, v9, v10);
  v15 = objc_msgSend_objectForKey_(hashesToNodeSets, v12, v11, v13, v14);

  v20 = objc_msgSend_set(MEMORY[0x277D81258], v16, v17, v18, v19);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v21 = v15;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v35, v39, 16);
  if (v26)
  {
    v27 = *v36;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(v21);
        }

        v29 = *(*(&v35 + 1) + 8 * i);
        if (objc_msgSend_isEqualToExpressionNode_(nodeCopy, v23, v29, v24, v25, v35))
        {
          objc_msgSend_addObject_(v20, v23, v29, v24, v25);
        }
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v35, v39, 16);
    }

    while (v26);
  }

  v33 = objc_msgSend_setWithSet_(MEMORY[0x277D812C0], v30, v20, v31, v32);

  return v33;
}

- (id)expressionsIdenticalToExpression:(id)expression
{
  expressionCopy = expression;
  v9 = expressionCopy;
  v5 = sub_2210BE30C(&self->_nodesToData.__table_.__bucket_list_.__ptr_, &v9);
  if (v5)
  {
    v7 = objc_msgSend_expressionsMatchingCSENodeData_forNode_(self, v6, v5[3], v5[4], expressionCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)expressionSize:(id)size
{
  sizeCopy = size;
  v8 = sizeCopy;
  v5 = sub_2210BE30C(&self->_nodesToData.__table_.__bucket_list_.__ptr_, &v8);
  if (v5)
  {
    v6 = v5[4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, v2, v3, v4);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = self->_hashesToNodeSets;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v21, v25, 16);
  if (v12)
  {
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = objc_msgSend_objectForKey_(self->_hashesToNodeSets, v9, v15, v10, v11);
        objc_msgSend_appendFormat_(v6, v17, @"%@ -> %@\n", v18, v19, v15, v16, v21);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v21, v25, 16);
    }

    while (v12);
  }

  return v6;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end