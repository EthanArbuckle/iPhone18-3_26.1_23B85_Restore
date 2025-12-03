@interface TSCENameTrie
- (BOOL)containsName:(id)name;
- (BOOL)insertFoldedName:(id)name;
- (BOOL)insertName:(id)name;
- (TSCENameTrie)initWithLocale:(id)locale;
- (id).cxx_construct;
- (id)foldName:(id)name;
- (void)enumerateNamesMatchingPrefix:(id)prefix block:(id)block;
- (void)nodeForName:(id)name createIfMissing:(BOOL)missing;
- (void)removeName:(id)name;
@end

@implementation TSCENameTrie

- (TSCENameTrie)initWithLocale:(id)locale
{
  localeCopy = locale;
  v9.receiver = self;
  v9.super_class = TSCENameTrie;
  v6 = [(TSCENameTrie *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locale, locale);
  }

  return v7;
}

- (void)nodeForName:(id)name createIfMissing:(BOOL)missing
{
  nameCopy = name;
  v11 = nameCopy;
  if (nameCopy)
  {
    v15 = objc_msgSend_length(nameCopy, v7, v8, v9, v10);
    v16 = 0;
    p_root = &self->_root;
    while (v15 != v16)
    {
      v20 = objc_msgSend_characterAtIndex_(v11, v12, v16, v13, v14);
      v18 = sub_2210C3024(p_root, &v20);
      if (!v18 || !v18[3])
      {
        if (missing)
        {
          operator new();
        }

        goto LABEL_9;
      }

      ++v16;
      p_root = v18[3];
      if (v16 > v15)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    p_root = 0;
  }

  return p_root;
}

- (id)foldName:(id)name
{
  nameCopy = name;
  v9 = objc_msgSend_locale(self->_locale, v5, v6, v7, v8);
  v13 = objc_msgSend_tsce_stringByFoldingForNamedReferenceMatchingWithLocale_(nameCopy, v10, v9, v11, v12);

  return v13;
}

- (BOOL)insertFoldedName:(id)name
{
  nameCopy = name;
  if ((objc_msgSend_length(nameCopy, v5, v6, v7, v8) - 1001) >= 0xFFFFFFFFFFFFFC18 && (IfMissing = objc_msgSend_nodeForName_createIfMissing_(self, v9, nameCopy, 1, v10)) != 0)
  {
    sub_221141CA4(IfMissing, nameCopy);
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)insertName:(id)name
{
  nameCopy = name;
  if ((objc_msgSend_length(nameCopy, v5, v6, v7, v8) - 1001) >= 0xFFFFFFFFFFFFFC18)
  {
    v13 = objc_msgSend_foldName_(self, v9, nameCopy, v10, v11);
    inserted = objc_msgSend_insertFoldedName_(self, v14, v13, v15, v16);
  }

  else
  {
    inserted = 0;
  }

  return inserted;
}

- (BOOL)containsName:(id)name
{
  nameCopy = name;
  if ((objc_msgSend_length(nameCopy, v5, v6, v7, v8) - 1001) >= 0xFFFFFFFFFFFFFC18)
  {
    v13 = objc_msgSend_foldName_(self, v9, nameCopy, v10, v11);
    IfMissing = objc_msgSend_nodeForName_createIfMissing_(self, v14, v13, 0, v15);
    if (IfMissing)
    {
      v12 = *(IfMissing + 40) != 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)removeName:(id)name
{
  nameCopy = name;
  v8 = objc_msgSend_foldName_(self, v5, nameCopy, v6, v7);
  v13 = objc_msgSend_length(v8, v9, v10, v11, v12);
  if (v8)
  {
    v17 = v13;
    if (v13 <= 0x3E8)
    {
      v18 = 0;
      p_root = &self->_root;
      __p = 0;
      v54 = 0;
      v55 = 0;
      while (v18 != v17)
      {
        LOWORD(v56) = objc_msgSend_characterAtIndex_(v8, v14, v18, v15, v16);
        v20 = sub_2210C3024(p_root, &v56);
        if (v20)
        {
          v21 = v20[3];
          if (v21)
          {
            v22 = v54;
            if (v54 >= v55)
            {
              v24 = (v54 - __p) >> 3;
              if ((v24 + 1) >> 61)
              {
                sub_22107C148();
              }

              v25 = (v55 - __p) >> 2;
              if (v25 <= v24 + 1)
              {
                v25 = v24 + 1;
              }

              if (v55 - __p >= 0x7FFFFFFFFFFFFFF8)
              {
                v26 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v26 = v25;
              }

              if (v26)
              {
                sub_221122DC8(&__p, v26);
              }

              v27 = (8 * v24);
              *v27 = p_root;
              v23 = 8 * v24 + 8;
              v28 = v27 - (v54 - __p);
              memcpy(v28, __p, v54 - __p);
              v29 = __p;
              __p = v28;
              v54 = v23;
              v55 = 0;
              if (v29)
              {
                operator delete(v29);
              }
            }

            else
            {
              *v54 = p_root;
              v23 = (v22 + 8);
            }

            v54 = v23;
            ++v18;
            p_root = v21;
          }

          if (v18 <= v17)
          {
            continue;
          }
        }

        goto LABEL_25;
      }

      name = p_root->_name;
      sub_221141CA4(p_root, 0);
      if (name && !p_root->_children.__table_.__size_ && !p_root->_name)
      {
        v35 = v17 - 1;
        do
        {
          if (p_root->_children.__table_.__size_)
          {
            break;
          }

          v34 = __p;
          if (__p == v54)
          {
            goto LABEL_26;
          }

          v52 = objc_msgSend_characterAtIndex_(v8, v31, v35, v32, v33);
          v36 = *(v54 - 1);
          v54 -= 8;
          v56 = &v52;
          if (sub_2211429F8(v36, &v52)[3] != p_root)
          {
            v40 = MEMORY[0x277D81150];
            v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "[TSCENameTrie removeName:]", v38, v39);
            v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENameTrie.mm", v43, v44);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v46, v41, v45, 218, 0, "Verify we are deleting the correct node");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
          }

          sub_221142C34(v36, &v52);
          v51 = sub_221141800(p_root);
          MEMORY[0x223DA1450](v51, 0x10A0C40026B2379);
          --v35;
          p_root = v36;
        }

        while (!v36->_name);
      }

LABEL_25:
      v34 = __p;
LABEL_26:
      if (v34)
      {
        v54 = v34;
        operator delete(v34);
      }
    }
  }
}

- (void)enumerateNamesMatchingPrefix:(id)prefix block:(id)block
{
  blockCopy = block;
  v9 = objc_msgSend_foldName_(self, v6, prefix, v7, v8);
  if (!objc_msgSend_length(v9, v10, v11, v12, v13))
  {
    p_root = &self->_root;
    goto LABEL_5;
  }

  p_root = objc_msgSend_nodeForName_createIfMissing_(self, v14, v9, 0, v15);
  if (p_root)
  {
LABEL_5:
    sub_221141878(p_root, blockCopy);
  }
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 6) = 0;
  return self;
}

@end