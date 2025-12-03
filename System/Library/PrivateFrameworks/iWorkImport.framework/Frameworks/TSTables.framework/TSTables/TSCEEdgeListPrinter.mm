@interface TSCEEdgeListPrinter
- (id)stringForEdgesWithLimit:(unint64_t)limit;
- (id)stringForOwnerID:(id)d withLimit:(unint64_t)limit;
- (void)addEdge:(id)edge forOwner:(id)owner;
@end

@implementation TSCEEdgeListPrinter

- (void)addEdge:(id)edge forOwner:(id)owner
{
  edgeCopy = edge;
  ownerCopy = owner;
  if (edgeCopy)
  {
    if (!self->_edgesForOwner)
    {
      v10 = objc_opt_new();
      edgesForOwner = self->_edgesForOwner;
      self->_edgesForOwner = v10;
    }

    if (!ownerCopy)
    {
      ownerCopy = &stru_2834BADA0;
    }

    v16 = objc_msgSend_objectForKey_(self->_edgesForOwner, v6, ownerCopy, v7, v8);
    if (!v16)
    {
      v16 = objc_msgSend_array(MEMORY[0x277CBEB18], v12, v13, v14, v15);
      objc_msgSend_setObject_forKey_(self->_edgesForOwner, v17, v16, ownerCopy, v18);
    }

    objc_msgSend_addObject_(v16, v12, edgeCopy, v14, v15);
  }
}

- (id)stringForOwnerID:(id)d withLimit:(unint64_t)limit
{
  v53 = *MEMORY[0x277D85DE8];
  dCopy = d;
  edgesForOwner = self->_edgesForOwner;
  if (dCopy)
  {
    objc_msgSend_objectForKey_(edgesForOwner, v6, dCopy, v7, v8);
  }

  else
  {
    objc_msgSend_objectForKey_(edgesForOwner, v6, &stru_2834BADA0, v7, v8);
  }
  v11 = ;
  if (!objc_msgSend_count(v11, v12, v13, v14, v15))
  {
    v31 = 0;
    goto LABEL_36;
  }

  objc_msgSend_sortedArrayUsingSelector_(v11, v16, sel_tsce_numericCompare_, v17, v18);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v19 = v49 = 0u;
  v47 = v11;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v48, v52, 16);
  limitCopy = limit;
  if (v24)
  {
    v25 = 0;
    v26 = 0;
    v27 = *v49;
    v28 = limit - 1;
LABEL_7:
    v29 = 0;
    v30 = v25 + 1;
    v25 += v24;
    while (1)
    {
      if (*v49 != v27)
      {
        objc_enumerationMutation(v19);
      }

      if (v26)
      {
        objc_msgSend_appendFormat_(v26, v21, @", %@", v22, v23, *(*(&v48 + 1) + 8 * v29));
      }

      else
      {
        v26 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v21, *(*(&v48 + 1) + 8 * v29), v22, v23);
      }

      if (v28 < v30)
      {
        break;
      }

      ++v29;
      ++v30;
      if (v24 == v29)
      {
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v48, v52, 16);
        if (v24)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  else
  {
    v26 = 0;
  }

  v11 = v47;
  if (dCopy)
  {
    v36 = objc_msgSend_count(v47, v32, v33, v34, v35);
    if (v36 >= 2)
    {
      v40 = @"%@::{%@}";
    }

    else
    {
      v40 = @"%@::%@";
    }

    if (v36 >= 2 && limitCopy)
    {
      if (objc_msgSend_count(v47, v37, v40, v38, v39) > limitCopy)
      {
        objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v37, @"%@::{%@, ...}", v38, v39, dCopy, v26);
        v41 = LABEL_29:;
        goto LABEL_30;
      }

      v40 = @"%@::{%@}";
    }

    objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v37, v40, v38, v39, dCopy, v26);
    goto LABEL_29;
  }

  if (!limitCopy || objc_msgSend_count(v47, v32, v33, v34, v35) <= limitCopy)
  {
    v31 = v26;
    goto LABEL_35;
  }

  v41 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v42, @"%@, ...", v43, v44, v26);
LABEL_30:
  v31 = v41;

LABEL_35:
LABEL_36:

  return v31;
}

- (id)stringForEdgesWithLimit:(unint64_t)limit
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_stringForOwnerID_withLimit_(self, a2, 0, limit, v3);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = self->_edgesForOwner;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v31, v35, 16);
  if (v13)
  {
    v14 = *v32;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v7);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        if (objc_msgSend_length(v16, v9, v10, v11, v12))
        {
          v17 = objc_msgSend_stringForOwnerID_withLimit_(self, v9, v16, limit, v12);
          if (objc_msgSend_length(v17, v18, v19, v20, v21))
          {
            if (objc_msgSend_length(v6, v22, v23, v24, v25))
            {
              objc_msgSend_appendFormat_(v6, v26, @", %@", v27, v28, v17);
            }

            else
            {
              v29 = v17;

              v6 = v29;
            }
          }
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v31, v35, 16);
    }

    while (v13);
  }

  return v6;
}

@end