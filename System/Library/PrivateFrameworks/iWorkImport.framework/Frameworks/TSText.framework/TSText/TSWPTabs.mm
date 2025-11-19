@interface TSWPTabs
+ (id)instanceWithArchive:(const Message *)a3 unarchiver:(id)a4;
+ (id)tabs;
- (BOOL)isEqual:(id)a3;
- (TSWPTabs)init;
- (TSWPTabs)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSWPTabs)initWithTabs:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)tabAfterPosition:(double)a3;
- (id)tabAtPosition:(double)a3;
- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4;
- (unint64_t)indexForTabWithPosition:(double)a3 alignment:(int)a4 leader:(id)a5;
- (void)insertTab:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)setPosition:(double)a3 forTab:(id)a4;
@end

@implementation TSWPTabs

+ (id)tabs
{
  v2 = objc_alloc_init(TSWPTabs);

  return v2;
}

- (TSWPTabs)init
{
  v6.receiver = self;
  v6.super_class = TSWPTabs;
  v2 = [(TSWPTabs *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    tabs = v2->_tabs;
    v2->_tabs = v3;
  }

  return v2;
}

- (TSWPTabs)initWithTabs:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TSWPTabs;
  v5 = [(TSWPTabs *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB18]);
    v8 = objc_msgSend_initWithArray_copyItems_(v6, v7, v4[1], 1);
    tabs = v5->_tabs;
    v5->_tabs = v8;
  }

  return v5;
}

+ (id)instanceWithArchive:(const Message *)a3 unarchiver:(id)a4
{
  v5 = a4;
  v6 = [TSWPTabs alloc];
  v8 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, a3, v5);

  return v8;
}

- (TSWPTabs)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v23.receiver = self;
  v23.super_class = TSWPTabs;
  v7 = [(TSWPTabs *)&v23 init];
  if (v7)
  {
    v8 = *(a3 + 6);
    v9 = objc_alloc(MEMORY[0x277CBEB18]);
    v11 = objc_msgSend_initWithCapacity_(v9, v10, v8);
    tabs = v7->_tabs;
    v7->_tabs = v11;

    if (v8)
    {
      v13 = 0;
      do
      {
        v14 = [TSWPTab alloc];
        v16 = objc_msgSend_initWithArchive_unarchiver_(v14, v15, *(*(a3 + 4) + 8 * v13 + 8), v6);
        v19 = v16;
        if (v16)
        {
          objc_msgSend_position(v16, v17, v18);
          if (v21 > 0.0)
          {
            objc_msgSend_addObject_(v7->_tabs, v20, v19);
          }
        }

        ++v13;
      }

      while (v8 != v13);
    }
  }

  return v7;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = self->_tabs;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v21, v25, 16);
  if (v10)
  {
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        v14 = *(a3 + 4);
        if (!v14)
        {
          goto LABEL_11;
        }

        v15 = *(a3 + 6);
        v16 = *v14;
        if (v15 < *v14)
        {
          *(a3 + 6) = v15 + 1;
          objc_msgSend_saveToArchive_archiver_(v13, v9, *&v14[2 * v15 + 2], v6, v21);
          goto LABEL_13;
        }

        if (v16 == *(a3 + 7))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 16));
          v14 = *(a3 + 4);
          v16 = *v14;
        }

        *v14 = v16 + 1;
        v17 = google::protobuf::Arena::CreateMaybeMessage<TSWP::TabArchive>(*(a3 + 2));
        v18 = *(a3 + 6);
        v19 = *(a3 + 4) + 8 * v18;
        *(a3 + 6) = v18 + 1;
        *(v19 + 8) = v17;
        objc_msgSend_saveToArchive_archiver_(v13, v20, v17, v6, v21);
LABEL_13:
        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v21, v25, 16);
    }

    while (v10);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);

  return MEMORY[0x2821F9670](v7, sel_initWithTabs_, self);
}

- (id)tabAtPosition:(double)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_tabs;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v15, v19, 16);
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        objc_msgSend_position(v11, v6, v7, v15);
        if (v12 == a3 || vabdd_f64(a3, v12) < fabs(v12 * 0.000000999999997))
        {
          v13 = v11;
          goto LABEL_13;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v15, v19, 16);
      v13 = 0;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_13:

  return v13;
}

- (id)tabAfterPosition:(double)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_tabs;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v15, v19, 16);
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        objc_msgSend_position(v11, v6, v7, v15);
        v13 = v12 <= a3 || v12 == a3;
        if (!v13 && vabdd_f64(a3, v12) >= 0.00999999978)
        {
          v8 = v11;
          goto LABEL_15;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v15, v19, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v8;
}

- (void)insertTab:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    objc_msgSend_position(v4, v5, v6);
    v9 = v8;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = self->_tabs;
    v12 = 0;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v21, v25, 16);
    if (v15)
    {
      v16 = *v22;
      while (2)
      {
        v17 = 0;
        v18 = v12;
        v12 += v15;
        do
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v10);
          }

          objc_msgSend_position(*(*(&v21 + 1) + 8 * v17), v13, v14, v21);
          if (v9 < v19)
          {
            v12 = v18;
            goto LABEL_12;
          }

          ++v18;
          ++v17;
        }

        while (v15 != v17);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v21, v25, 16);
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    objc_msgSend_insertObject_atIndex_(self->_tabs, v20, v7, v12);
  }
}

- (void)setPosition:(double)a3 forTab:(id)a4
{
  v17 = a4;
  objc_msgSend_position(v17, v6, v7);
  if (v10 != a3)
  {
    v11 = objc_msgSend_tabAtPosition_(self, v8, v9, a3);

    if (v11)
    {
      objc_msgSend_setPosition_(v17, v12, v13, a3);
    }

    else
    {
      objc_msgSend_removeObjectIdenticalTo_(self->_tabs, v12, v17);
      objc_msgSend_setPosition_(v17, v14, v15, a3);
      objc_msgSend_insertTab_(self, v16, v17);
    }
  }
}

- (unint64_t)indexForTabWithPosition:(double)a3 alignment:(int)a4 leader:(id)a5
{
  v8 = a5;
  v12 = objc_msgSend_count(self->_tabs, v9, v10);
  if (v12)
  {
    v13 = 0;
    if (v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = @" ";
    }

    while (1)
    {
      v15 = objc_msgSend_objectAtIndexedSubscript_(self->_tabs, v11, v13);
      if (objc_msgSend_alignment(v15, v16, v17) == a4)
      {
        objc_msgSend_position(v15, v18, v19);
        if (v22 == a3 || vabdd_f64(a3, v22) < fabs(v22 * 0.000000999999997))
        {
          v23 = objc_msgSend_leader(v15, v20, v21);
          v24 = v8;
          v25 = v23;
          v27 = v25;
          if (v25)
          {
            v28 = v25;
            isEqualToString = objc_msgSend_isEqualToString_(v14, v26, v25);
          }

          else
          {
            v28 = @" ";
            isEqualToString = objc_msgSend_isEqualToString_(v14, v26, @" ");
          }

          v30 = isEqualToString;

          if (v30)
          {
            break;
          }
        }
      }

      if (v12 == ++v13)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (v6)
  {
    tabs = self->_tabs;
    v8 = v6[1];
    if (tabs == v8)
    {
      isEqualToArray = 1;
    }

    else
    {
      isEqualToArray = 0;
      if (tabs && v8)
      {
        isEqualToArray = objc_msgSend_isEqualToArray_(tabs, v5, v8);
      }
    }
  }

  else
  {
    isEqualToArray = 0;
  }

  return isEqualToArray;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@: tabs=%@>", v5, self->_tabs);

  return v7;
}

- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = TSUCheckedDynamicCast();
  if (objc_msgSend_isEqual_(self, v7, v6))
  {
    v8 = 5;
  }

  else
  {
    v8 = 2;
  }

  return v8;
}

@end