@interface TSCEPartialResult
- (TSCEPartialResult)initWithValue:(id)a3 childArgs:(const void *)a4;
- (TSCEPartialResult)initWithValue:(id)a3 numArgs:(unsigned int)a4 offset:(unsigned int)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TSCEPartialResult

- (TSCEPartialResult)initWithValue:(id)a3 numArgs:(unsigned int)a4 offset:(unsigned int)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = TSCEPartialResult;
  v10 = [(TSCEPartialResult *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_value, a3);
    v11->_numArgs = a4;
    children = v11->_children;
    v11->_parent = 0;
    v11->_children = 0;

    v11->_wasModified = 0;
    v11->_offset = a5;
  }

  return v11;
}

- (TSCEPartialResult)initWithValue:(id)a3 childArgs:(const void *)a4
{
  v6 = a3;
  v9 = objc_msgSend_initWithValue_numArgs_(self, v7, v6, (*(a4 + 1) - *a4) >> 3, v8);
  if (v9)
  {
    v10 = *a4;
    v11 = *(a4 + 1);
    if (*a4 != v11)
    {
      v12 = objc_opt_new();
      children = v9->_children;
      v9->_children = v12;

      v10 = *a4;
      v11 = *(a4 + 1);
    }

    for (; v10 != v11; ++v10)
    {
      v17 = *v10;
      if (!v17)
      {
        v18 = [TSCEPartialResult alloc];
        v23 = objc_msgSend_nilValue(TSCENilValue, v19, v20, v21, v22);
        v17 = objc_msgSend_initWithValue_(v18, v24, v23, v25, v26);
      }

      objc_msgSend_setParent_(v17, v14, v9, v15, v16);
      objc_msgSend_addObject_(v9->_children, v27, v17, v28, v29);
    }
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = [TSCEPartialResult alloc];
  v7 = objc_msgSend_initWithValue_numArgs_(v4, v5, self->_value, self->_numArgs, v6);
  *(v7 + 40) = self->_wasModified;
  *(v7 + 8) = self->_parent;
  *(v7 + 36) = self->_offset;
  children = self->_children;
  if (children)
  {
    v9 = objc_opt_new();
    v10 = *(v7 + 16);
    *(v7 + 16) = v9;

    children = self->_children;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = children;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v28, v32, 16);
  if (v17)
  {
    v18 = *v29;
    do
    {
      v19 = 0;
      do
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v11);
        }

        v20 = objc_msgSend_copy(*(*(&v28 + 1) + 8 * v19), v13, v14, v15, v16, v28);
        objc_msgSend_setParent_(v20, v21, v7, v22, v23);
        objc_msgSend_addObject_(*(v7 + 16), v24, v20, v25, v26);

        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v28, v32, 16);
    }

    while (v17);
  }

  return v7;
}

@end