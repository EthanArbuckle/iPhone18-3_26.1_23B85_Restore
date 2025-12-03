@interface TSCH3DCachedLabelBoundsArray
- (TSCH3DCachedLabelBoundsArray)init;
- (id).cxx_construct;
- (tvec3<float>)offset;
- (void)enumerateLabelBoundsUsingBlock:(id)block;
@end

@implementation TSCH3DCachedLabelBoundsArray

- (TSCH3DCachedLabelBoundsArray)init
{
  v7.receiver = self;
  v7.super_class = TSCH3DCachedLabelBoundsArray;
  v2 = [(TSCH3DCachedLabelBoundsArray *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_offset.var0.var0 = 0;
    v2->_offset.var2.var0 = 0.0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    elements = v3->_elements;
    v3->_elements = v4;
  }

  return v3;
}

- (void)enumerateLabelBoundsUsingBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v21 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_elements;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, v7, v8, v9, &v17, v22, 16);
  if (v10)
  {
    v11 = *v18;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(v5);
      }

      blockCopy[2](blockCopy, *(*(&v17 + 1) + 8 * v12), &v21);
      if (v21)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v13, v14, v15, v16, &v17, v22, 16);
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (tvec3<float>)offset
{
  *v2 = self->_offset;
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 6) = 0;
  return self;
}

@end