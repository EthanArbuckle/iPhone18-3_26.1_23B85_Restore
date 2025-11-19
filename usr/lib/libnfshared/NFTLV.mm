@interface NFTLV
+ (id)TLVWithData:(id)a3;
+ (id)TLVWithTag:(unsigned int)a3 children:(id)a4;
+ (id)TLVWithTag:(unsigned int)a3 fromData:(id)a4;
+ (id)TLVWithTag:(unsigned int)a3 value:(id)a4;
+ (id)TLVsWithData:(id)a3;
+ (id)_intToData:(unsigned int)a3;
+ (id)_parseTLVs:(const char *)a3 end:(const char *)a4 simple:(BOOL)a5 definite:(BOOL)a6;
+ (id)simpleTLVsWithData:(id)a3;
+ (id)simpleTLVsWithTag:(unsigned int)a3 fromData:(id)a4;
- (id)asMutableData;
- (id)childrenWithTag:(unsigned int)a3;
- (id)description;
- (id)valueAsString;
- (unint64_t)valueAsUnsignedLongLong;
- (unsigned)valueAsUnsignedLong;
- (unsigned)valueAsUnsignedShort;
@end

@implementation NFTLV

+ (id)TLVsWithData:(id)a3
{
  v5 = a3;
  v6 = a3;
  v15 = objc_msgSend_bytes(v6, v7, v8);
  v11 = objc_msgSend_length(v6, v9, v10);

  v13 = objc_msgSend__parseTLVs_end_simple_definite_(a1, v12, &v15, v15 + v11, 0, 0);

  return v13;
}

+ (id)simpleTLVsWithData:(id)a3
{
  v5 = a3;
  v6 = a3;
  v15 = objc_msgSend_bytes(v6, v7, v8);
  v11 = objc_msgSend_length(v6, v9, v10);

  v13 = objc_msgSend__parseTLVs_end_simple_definite_(a1, v12, &v15, v15 + v11, 1, 0);

  return v13;
}

+ (id)TLVWithData:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_TLVsWithData_(a1, a2, a3);
  if (!objc_msgSend_count(v5, v6, v7))
  {
    v24 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific < 5)
    {
      v26 = *(&off_27DA9DE50 + specific);
      if (v26)
      {
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName(a2);
        v30 = 45;
        if (isMetaClass)
        {
          v30 = 43;
        }

        v26(3, "%c[%{public}s %{public}s]:%i No TLV detected", v30, ClassName, Name, 58);
        v24 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v31 = dispatch_get_specific(v24);
      v20 = NFSharedLogGetLogger(v31);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v32 = object_getClass(a1);
      if (class_isMetaClass(v32))
      {
        v33 = 43;
      }

      else
      {
        v33 = 45;
      }

      *buf = 67109890;
      v40 = v33;
      v41 = 2082;
      v42 = object_getClassName(a1);
      v43 = 2082;
      v44 = sel_getName(a2);
      v45 = 1024;
      v46 = 58;
      v23 = "%c[%{public}s %{public}s]:%i No TLV detected";
      goto LABEL_23;
    }

LABEL_29:
    __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
  }

  if (objc_msgSend_count(v5, v8, v9) >= 2)
  {
    v12 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    v13 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (v13 < 5)
    {
      v14 = *(&off_27DA9DE50 + v13);
      if (v14)
      {
        v15 = object_getClass(a1);
        v16 = class_isMetaClass(v15);
        v17 = object_getClassName(a1);
        v37 = sel_getName(a2);
        v18 = 45;
        if (v16)
        {
          v18 = 43;
        }

        v14(3, "%c[%{public}s %{public}s]:%i More than one TLV detected", v18, v17, v37, 63);
        v12 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v19 = dispatch_get_specific(v12);
      v20 = NFSharedLogGetLogger(v19);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v21 = object_getClass(a1);
      if (class_isMetaClass(v21))
      {
        v22 = 43;
      }

      else
      {
        v22 = 45;
      }

      *buf = 67109890;
      v40 = v22;
      v41 = 2082;
      v42 = object_getClassName(a1);
      v43 = 2082;
      v44 = sel_getName(a2);
      v45 = 1024;
      v46 = 63;
      v23 = "%c[%{public}s %{public}s]:%i More than one TLV detected";
LABEL_23:
      _os_log_impl(&dword_22EEC4000, v20, OS_LOG_TYPE_ERROR, v23, buf, 0x22u);
LABEL_24:

      v34 = 0;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v34 = objc_msgSend_lastObject(v5, v10, v11);
LABEL_26:

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

+ (id)TLVWithTag:(unsigned int)a3 fromData:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = objc_msgSend_TLVsWithData_(NFTLV, a2, a4, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v17, v21, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (objc_msgSend_tag(v13, v8, v9) == a3)
        {
          v14 = v13;
          goto LABEL_11;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v17, v21, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)simpleTLVsWithTag:(unsigned int)a3 fromData:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = objc_msgSend_simpleTLVsWithData_(NFTLV, v7, v5, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v19, v23, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        if (objc_msgSend_tag(v16, v11, v12) == a3)
        {
          objc_msgSend_addObject_(v6, v11, v16);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v19, v23, 16);
    }

    while (v13);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)TLVWithTag:(unsigned int)a3 children:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_opt_new();
  *(v7 + 8) = a3;
  objc_storeStrong((v7 + 24), a4);
  *(v7 + 32) = 8;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v17, v21, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v8);
        }

        *(v7 + 32) += *(*(*(&v17 + 1) + 8 * i) + 32);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v17, v21, 16);
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)TLVWithTag:(unsigned int)a3 value:(id)a4
{
  v5 = a4;
  v6 = objc_opt_new();
  *(v6 + 8) = a3;
  v7 = *(v6 + 16);
  *(v6 + 16) = v5;
  v8 = v5;

  v11 = objc_msgSend_length(v8, v9, v10);
  *(v6 + 32) = v11 + 8;

  return v6;
}

- (id)description
{
  children = self->_children;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = v4;
  if (children)
  {
    v21.receiver = self;
    v21.super_class = NFTLV;
    v7 = [(NFTLV *)&v21 description];
    tag = self->_tag;
    v11 = objc_msgSend_children(self, v9, v10);
    v13 = objc_msgSend_initWithFormat_(v6, v12, @"%@ %02x : %@", v7, tag, v11);
  }

  else
  {
    v7 = objc_msgSend_initWithData_encoding_(v4, v5, self->_value, 1);
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    if (v7)
    {
      v20.receiver = self;
      v20.super_class = NFTLV;
      v11 = [(NFTLV *)&v20 description];
      v13 = objc_msgSend_initWithFormat_(v14, v15, @"%@ %02x = %@ %@", v11, self->_tag, self->_value, v7);
    }

    else
    {
      v19.receiver = self;
      v19.super_class = NFTLV;
      v11 = [(NFTLV *)&v19 description];
      v13 = objc_msgSend_initWithFormat_(v14, v16, @"%@ %02x = %@", v11, self->_tag, self->_value);
    }
  }

  v17 = v13;

  return v17;
}

- (id)valueAsString
{
  if (self->_value)
  {
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = objc_msgSend_initWithData_encoding_(v4, v5, self->_value, 1);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unsigned)valueAsUnsignedLong
{
  v42 = *MEMORY[0x277D85DE8];
  value = self->_value;
  if (!value)
  {
    goto LABEL_18;
  }

  if (objc_msgSend_length(value, a2, v2) >= 5)
  {
    v8 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v10 = *(&off_27DA9DE50 + specific);
    if (v10)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v15 = 45;
      if (isMetaClass)
      {
        v15 = 43;
      }

      v10(3, "%c[%{public}s %{public}s]:%i Value too large: %{public}@", v15, ClassName, Name, 166, self->_value);
      v8 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v16 = dispatch_get_specific(v8);
    v17 = NFSharedLogGetLogger(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = object_getClass(self);
      if (class_isMetaClass(v18))
      {
        v19 = 43;
      }

      else
      {
        v19 = 45;
      }

      v20 = object_getClassName(self);
      v21 = sel_getName(a2);
      v22 = self->_value;
      *buf = 67110146;
      v33 = v19;
      v34 = 2082;
      v35 = v20;
      v36 = 2082;
      v37 = v21;
      v38 = 1024;
      v39 = 166;
      v40 = 2114;
      v41 = v22;
      _os_log_impl(&dword_22EEC4000, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Value too large: %{public}@", buf, 0x2Cu);
    }

    goto LABEL_18;
  }

  v23 = objc_msgSend_bytes(self->_value, v6, v7);
  if (!objc_msgSend_length(self->_value, v24, v25))
  {
LABEL_18:
    v29 = 0;
    goto LABEL_19;
  }

  v28 = 0;
  v29 = 0;
  do
  {
    v29 = *(v23 + v28++) | (v29 << 8);
  }

  while (objc_msgSend_length(self->_value, v26, v27) > v28);
LABEL_19:
  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

- (unsigned)valueAsUnsignedShort
{
  v42 = *MEMORY[0x277D85DE8];
  value = self->_value;
  if (!value)
  {
    goto LABEL_18;
  }

  if (objc_msgSend_length(value, a2, v2) >= 3)
  {
    v8 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v10 = *(&off_27DA9DE50 + specific);
    if (v10)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v15 = 45;
      if (isMetaClass)
      {
        v15 = 43;
      }

      v10(3, "%c[%{public}s %{public}s]:%i Value too large: %{public}@", v15, ClassName, Name, 183, self->_value);
      v8 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v16 = dispatch_get_specific(v8);
    v17 = NFSharedLogGetLogger(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = object_getClass(self);
      if (class_isMetaClass(v18))
      {
        v19 = 43;
      }

      else
      {
        v19 = 45;
      }

      v20 = object_getClassName(self);
      v21 = sel_getName(a2);
      v22 = self->_value;
      *buf = 67110146;
      v33 = v19;
      v34 = 2082;
      v35 = v20;
      v36 = 2082;
      v37 = v21;
      v38 = 1024;
      v39 = 183;
      v40 = 2114;
      v41 = v22;
      _os_log_impl(&dword_22EEC4000, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Value too large: %{public}@", buf, 0x2Cu);
    }

    goto LABEL_18;
  }

  v23 = objc_msgSend_bytes(self->_value, v6, v7);
  if (!objc_msgSend_length(self->_value, v24, v25))
  {
LABEL_18:
    v29 = 0;
    goto LABEL_19;
  }

  v28 = 0;
  v29 = 0;
  do
  {
    v29 = *(v23 + v28++) | (v29 << 8);
  }

  while (objc_msgSend_length(self->_value, v26, v27) > v28);
LABEL_19:
  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

- (unint64_t)valueAsUnsignedLongLong
{
  v42 = *MEMORY[0x277D85DE8];
  value = self->_value;
  if (!value)
  {
    goto LABEL_18;
  }

  if (objc_msgSend_length(value, a2, v2) >= 9)
  {
    v8 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v10 = *(&off_27DA9DE50 + specific);
    if (v10)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v15 = 45;
      if (isMetaClass)
      {
        v15 = 43;
      }

      v10(3, "%c[%{public}s %{public}s]:%i Value too large: %{public}@", v15, ClassName, Name, 201, self->_value);
      v8 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v16 = dispatch_get_specific(v8);
    v17 = NFSharedLogGetLogger(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = object_getClass(self);
      if (class_isMetaClass(v18))
      {
        v19 = 43;
      }

      else
      {
        v19 = 45;
      }

      v20 = object_getClassName(self);
      v21 = sel_getName(a2);
      v22 = self->_value;
      *buf = 67110146;
      v33 = v19;
      v34 = 2082;
      v35 = v20;
      v36 = 2082;
      v37 = v21;
      v38 = 1024;
      v39 = 201;
      v40 = 2114;
      v41 = v22;
      _os_log_impl(&dword_22EEC4000, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Value too large: %{public}@", buf, 0x2Cu);
    }

    goto LABEL_18;
  }

  v23 = objc_msgSend_bytes(self->_value, v6, v7);
  if (!objc_msgSend_length(self->_value, v24, v25))
  {
LABEL_18:
    v29 = 0;
    goto LABEL_19;
  }

  v28 = 0;
  v29 = 0;
  do
  {
    v29 = *(v23 + v28++) | (v29 << 8);
  }

  while (objc_msgSend_length(self->_value, v26, v27) > v28);
LABEL_19:
  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

- (id)childrenWithTag:(unsigned int)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = objc_msgSend_children(self, v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v19, v23, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        if (objc_msgSend_tag(v16, v11, v12) == a3)
        {
          objc_msgSend_addObject_(v5, v11, v16);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v19, v23, 16);
    }

    while (v13);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)_intToData:(unsigned int)a3
{
  v4 = objc_alloc(MEMORY[0x277CBEB28]);
  v6 = objc_msgSend_initWithCapacity_(v4, v5, 4);
  v8 = v6;
  v12 = 0;
  if (a3)
  {
    v9 = 4;
    if (HIBYTE(a3))
    {
      goto LABEL_14;
    }

    do
    {
      v10 = HIWORD(a3);
      a3 <<= 8;
      --v9;
    }

    while (!v10 && v9);
    if (v9)
    {
LABEL_14:
      do
      {
        v12 = HIBYTE(a3);
        objc_msgSend_appendBytes_length_(v8, v7, &v12, 1);
        a3 <<= 8;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    objc_msgSend_appendBytes_length_(v6, v7, &v12, 1);
  }

  return v8;
}

- (id)asMutableData
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB28]);
  v5 = objc_msgSend_initWithCapacity_(v3, v4, self->_worseCaseSizeAsData);
  v7 = objc_msgSend__intToData_(NFTLV, v6, self->_tag);
  objc_msgSend_appendData_(v5, v8, v7);

  v11 = self->_value;
  if (!v11)
  {
    if (self->_children)
    {
      v12 = objc_alloc(MEMORY[0x277CBEB28]);
      v11 = objc_msgSend_initWithCapacity_(v12, v13, self->_worseCaseSizeAsData);
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v14 = self->_children;
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v35, v39, 16);
      if (v16)
      {
        v19 = v16;
        v20 = *v36;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v36 != v20)
            {
              objc_enumerationMutation(v14);
            }

            v22 = objc_msgSend_asData(*(*(&v35 + 1) + 8 * i), v17, v18);
            objc_msgSend_appendData_(v11, v23, v22);
          }

          v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v35, v39, 16);
        }

        while (v19);
      }
    }

    else
    {
      v11 = 0;
    }
  }

  v24 = objc_msgSend_length(v11, v9, v10);
  v26 = objc_msgSend__intToData_(NFTLV, v25, v24);
  v29 = v26;
  if (v24 >= 0x80)
  {
    v34 = objc_msgSend_length(v26, v27, v28) | 0x80;
    objc_msgSend_appendBytes_length_(v5, v30, &v34, 1);
  }

  objc_msgSend_appendData_(v5, v27, v29);
  if (v11)
  {
    objc_msgSend_appendData_(v5, v31, v11);
  }

  v32 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)_parseTLVs:(const char *)a3 end:(const char *)a4 simple:(BOOL)a5 definite:(BOOL)a6
{
  v203 = a6;
  v204 = a5;
  v222 = *MEMORY[0x277D85DE8];
  v202 = *a3;
  v9 = objc_opt_new();
  v10 = *a3;
  if (*a3 < a4)
  {
    while (1)
    {
      v11 = v10 + 1;
      *a3 = v10 + 1;
      v12 = *v10;
      if (v204)
      {
        if (v11 >= a4)
        {
          v134 = kNFLOG_DISPATCH_SPECIFIC_KEY;
          specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          if (specific >= 5)
          {
            goto LABEL_164;
          }

          v136 = *(&off_27DA9DE50 + specific);
          if (v136)
          {
            Class = object_getClass(a1);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(a1);
            Name = sel_getName(a2);
            v139 = 45;
            if (isMetaClass)
            {
              v139 = 43;
            }

            v136(3, "%c[%{public}s %{public}s]:%i Underflow: tag=0x%x", v139, ClassName, Name, 321, v12);
            v134 = kNFLOG_DISPATCH_SPECIFIC_KEY;
          }

          v140 = dispatch_get_specific(v134);
          v88 = NFSharedLogGetLogger(v140);
          if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            v141 = object_getClass(a1);
            if (class_isMetaClass(v141))
            {
              v142 = 43;
            }

            else
            {
              v142 = 45;
            }

            v143 = object_getClassName(a1);
            v144 = sel_getName(a2);
            *buf = 67110146;
            v207 = v142;
            v208 = 2082;
            v209 = v143;
            v210 = 2082;
            v211 = v144;
            v212 = 1024;
            v213 = 321;
            v214 = 1024;
            v215 = v12;
            v93 = "%c[%{public}s %{public}s]:%i Underflow: tag=0x%x";
            goto LABEL_134;
          }

          goto LABEL_136;
        }

        v13 = v10 + 2;
        *a3 = v10 + 2;
        v14 = *(v10 + 1);
        if (v14 != 255)
        {
          goto LABEL_9;
        }

        LODWORD(v14) = 0;
        v15 = 1;
        do
        {
          if (v13 >= a4)
          {
            v96 = kNFLOG_DISPATCH_SPECIFIC_KEY;
            v97 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            if (v97 >= 5)
            {
              goto LABEL_164;
            }

            v98 = *(&off_27DA9DE50 + v97);
            if (v98)
            {
              v99 = object_getClass(a1);
              v100 = class_isMetaClass(v99);
              v187 = object_getClassName(a1);
              v193 = sel_getName(a2);
              v101 = 45;
              if (v100)
              {
                v101 = 43;
              }

              v98(3, "%c[%{public}s %{public}s]:%i Underflow: tag=0x%x", v101, v187, v193, 327, v12);
              v96 = kNFLOG_DISPATCH_SPECIFIC_KEY;
            }

            v102 = dispatch_get_specific(v96);
            v88 = NFSharedLogGetLogger(v102);
            if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
            {
              v103 = object_getClass(a1);
              if (class_isMetaClass(v103))
              {
                v104 = 43;
              }

              else
              {
                v104 = 45;
              }

              v105 = object_getClassName(a1);
              v106 = sel_getName(a2);
              *buf = 67110146;
              v207 = v104;
              v208 = 2082;
              v209 = v105;
              v210 = 2082;
              v211 = v106;
              v212 = 1024;
              v213 = 327;
              v214 = 1024;
              v215 = v12;
              v93 = "%c[%{public}s %{public}s]:%i Underflow: tag=0x%x";
              goto LABEL_134;
            }

            goto LABEL_136;
          }

          v16 = v15;
          v15 = 0;
          v17 = v13 + 1;
          *a3 = v13 + 1;
          v14 = *v13++ | (v14 << 8);
        }

        while ((v16 & 1) != 0);
        v13 = v17;
LABEL_9:
        v18 = v12;
        if (v12)
        {
          goto LABEL_44;
        }

LABEL_32:
        if (v14)
        {
          v37 = kNFLOG_DISPATCH_SPECIFIC_KEY;
          v38 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          if (v38 < 5)
          {
            v39 = *(&off_27DA9DE50 + v38);
            if (v39)
            {
              v40 = object_getClass(a1);
              v41 = class_isMetaClass(v40);
              v185 = object_getClassName(a1);
              v190 = sel_getName(a2);
              v42 = 45;
              if (v41)
              {
                v42 = 43;
              }

              v39(4, "%c[%{public}s %{public}s]:%i Unexpected %u len on tag 0", v42, v185, v190, 385, v14);
              v37 = kNFLOG_DISPATCH_SPECIFIC_KEY;
            }

            v43 = dispatch_get_specific(v37);
            v44 = NFSharedLogGetLogger(v43);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v45 = object_getClass(a1);
              if (class_isMetaClass(v45))
              {
                v46 = 43;
              }

              else
              {
                v46 = 45;
              }

              v47 = object_getClassName(a1);
              v48 = sel_getName(a2);
              *buf = 67110146;
              v207 = v46;
              v208 = 2082;
              v209 = v47;
              v210 = 2082;
              v211 = v48;
              v212 = 1024;
              v213 = 385;
              v214 = 1024;
              v215 = v14;
              _os_log_impl(&dword_22EEC4000, v44, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected %u len on tag 0", buf, 0x28u);
            }

            v18 = 0;
            v13 = *a3;
            goto LABEL_44;
          }

LABEL_164:
          __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
        }

        goto LABEL_138;
      }

      if ((~v12 & 0x1F) == 0)
      {
        v19 = 1;
        v20 = *v10;
        while (1)
        {
          if (v19 >= 5)
          {
            v21 = kNFLOG_DISPATCH_SPECIFIC_KEY;
            v22 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            if (v22 >= 5)
            {
              goto LABEL_164;
            }

            v23 = *(&off_27DA9DE50 + v22);
            if (v23)
            {
              v24 = object_getClass(a1);
              v25 = class_isMetaClass(v24);
              v26 = object_getClassName(a1);
              v189 = sel_getName(a2);
              v27 = 45;
              if (v25)
              {
                v27 = 43;
              }

              v23(3, "%c[%{public}s %{public}s]:%i Tag value overflows", v27, v26, v189, 342);
              v21 = kNFLOG_DISPATCH_SPECIFIC_KEY;
            }

            v28 = dispatch_get_specific(v21);
            v29 = NFSharedLogGetLogger(v28);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v30 = object_getClass(a1);
              if (class_isMetaClass(v30))
              {
                v31 = 43;
              }

              else
              {
                v31 = 45;
              }

              v32 = object_getClassName(a1);
              v33 = sel_getName(a2);
              *buf = 67109890;
              v207 = v31;
              v208 = 2082;
              v209 = v32;
              v210 = 2082;
              v211 = v33;
              v212 = 1024;
              v213 = 342;
              _os_log_impl(&dword_22EEC4000, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Tag value overflows", buf, 0x22u);
            }

            v11 = *a3;
          }

          if (v11 >= a4)
          {
            break;
          }

          v34 = v11 + 1;
          *a3 = v11 + 1;
          v35 = *v11;
          v18 = *v11 | (v20 << 8);
          ++v19;
          ++v11;
          v20 = v18;
          if ((v35 & 0x80000000) == 0)
          {
            goto LABEL_29;
          }
        }

        v80 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        v81 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        if (v81 >= 5)
        {
          goto LABEL_164;
        }

        v82 = *(&off_27DA9DE50 + v81);
        if (v82)
        {
          v83 = object_getClass(a1);
          v84 = class_isMetaClass(v83);
          v85 = object_getClassName(a1);
          v192 = sel_getName(a2);
          v86 = 45;
          if (v84)
          {
            v86 = 43;
          }

          v82(3, "%c[%{public}s %{public}s]:%i Underflow", v86, v85, v192, 344);
          v80 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        }

        v87 = dispatch_get_specific(v80);
        v88 = NFSharedLogGetLogger(v87);
        if (!os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_136;
        }

        v89 = object_getClass(a1);
        if (class_isMetaClass(v89))
        {
          v90 = 43;
        }

        else
        {
          v90 = 45;
        }

        v91 = object_getClassName(a1);
        v92 = sel_getName(a2);
        *buf = 67109890;
        v207 = v90;
        v208 = 2082;
        v209 = v91;
        v210 = 2082;
        v211 = v92;
        v212 = 1024;
        v213 = 344;
        v93 = "%c[%{public}s %{public}s]:%i Underflow";
LABEL_82:
        v94 = v88;
        v95 = 34;
        goto LABEL_135;
      }

      v34 = v10 + 1;
      v18 = v12;
LABEL_29:
      if (v34 >= a4)
      {
        break;
      }

      v13 = v34 + 1;
      *a3 = v34 + 1;
      v36 = *v34;
      v14 = v36;
      if (v36 < 0)
      {
        v63 = v36 & 0x7F;
        if ((v14 & 0x7F) != 0)
        {
          LODWORD(v14) = 0;
          while (v13 < a4)
          {
            v64 = v13 + 1;
            *a3 = v13 + 1;
            v14 = *v13++ | (v14 << 8);
            if (!--v63)
            {
              v13 = v64;
              if (!v18)
              {
                goto LABEL_32;
              }

              goto LABEL_44;
            }
          }

          v107 = kNFLOG_DISPATCH_SPECIFIC_KEY;
          v108 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          if (v108 >= 5)
          {
            goto LABEL_164;
          }

          v109 = *(&off_27DA9DE50 + v108);
          if (v109)
          {
            v110 = object_getClass(a1);
            v111 = class_isMetaClass(v110);
            v112 = object_getClassName(a1);
            v194 = sel_getName(a2);
            v113 = 45;
            if (v111)
            {
              v113 = 43;
            }

            v109(3, "%c[%{public}s %{public}s]:%i Underflow: tag=0x%x", v113, v112, v194, 367, v18);
            v107 = kNFLOG_DISPATCH_SPECIFIC_KEY;
          }

          v114 = dispatch_get_specific(v107);
          v88 = NFSharedLogGetLogger(v114);
          if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            v115 = object_getClass(a1);
            if (class_isMetaClass(v115))
            {
              v116 = 43;
            }

            else
            {
              v116 = 45;
            }

            v117 = object_getClassName(a1);
            v118 = sel_getName(a2);
            *buf = 67110146;
            v207 = v116;
            v208 = 2082;
            v209 = v117;
            v210 = 2082;
            v211 = v118;
            v212 = 1024;
            v213 = 367;
            v214 = 1024;
            v215 = v18;
            v93 = "%c[%{public}s %{public}s]:%i Underflow: tag=0x%x";
            goto LABEL_134;
          }

          goto LABEL_136;
        }

        if (v18)
        {
          v14 = 0;
          goto LABEL_44;
        }

        goto LABEL_138;
      }

      if (!v18)
      {
        goto LABEL_32;
      }

LABEL_44:
      if (a4 - v13 < v14)
      {
        v119 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        v120 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        if (v120 >= 5)
        {
          goto LABEL_164;
        }

        v121 = *(&off_27DA9DE50 + v120);
        if (v121)
        {
          v122 = object_getClass(a1);
          v123 = class_isMetaClass(v122);
          v124 = object_getClassName(a1);
          v125 = sel_getName(a2);
          v126 = 43;
          if (!v123)
          {
            v126 = 45;
          }

          v121(3, "%c[%{public}s %{public}s]:%i Underflow: tag=0x%x len=%u have=%lu offset=%lu", v126, v124, v125, 390, v18, v14, a4 - *a3, *a3 - v202);
          v119 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        }

        v127 = dispatch_get_specific(v119);
        v88 = NFSharedLogGetLogger(v127);
        if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          v128 = object_getClass(a1);
          if (class_isMetaClass(v128))
          {
            v129 = 43;
          }

          else
          {
            v129 = 45;
          }

          v130 = object_getClassName(a1);
          v131 = sel_getName(a2);
          v132 = a4 - *a3;
          v133 = (*a3 - v202);
          *buf = 67110914;
          v207 = v129;
          v208 = 2082;
          v209 = v130;
          v210 = 2082;
          v211 = v131;
          v212 = 1024;
          v213 = 390;
          v214 = 1024;
          v215 = v18;
          v216 = 1024;
          v217 = v14;
          v218 = 2048;
          v219 = v132;
          v220 = 2048;
          v221 = v133;
          v93 = "%c[%{public}s %{public}s]:%i Underflow: tag=0x%x len=%u have=%lu offset=%lu";
          v94 = v88;
          v95 = 66;
          goto LABEL_135;
        }

        goto LABEL_136;
      }

      v49 = v14;
      v50 = objc_alloc(MEMORY[0x277CBEA90]);
      v53 = objc_msgSend_initWithBytes_length_(v50, v51, *a3, v14);
      if ((v12 & 0x20) != 0)
      {
        v56 = objc_msgSend__parseTLVs_end_simple_definite_(a1, v52, a3, &(*a3)[v49], v204, v203);
        if (objc_msgSend_count(v56, v57, v58))
        {
          v60 = objc_msgSend_TLVWithTag_children_(NFTLV, v59, v18, v56);
          if (!v60)
          {
            v172 = kNFLOG_DISPATCH_SPECIFIC_KEY;
            v173 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            if (v173 >= 5)
            {
              goto LABEL_164;
            }

            v174 = *(&off_27DA9DE50 + v173);
            if (v174)
            {
              v175 = object_getClass(a1);
              v176 = class_isMetaClass(v175);
              v177 = object_getClassName(a1);
              v198 = sel_getName(a2);
              v178 = 45;
              if (v176)
              {
                v178 = 43;
              }

              v174(3, "%c[%{public}s %{public}s]:%i [NFTLV TLVWithTag:children:] failed!", v178, v177, v198, 410);
              v172 = kNFLOG_DISPATCH_SPECIFIC_KEY;
            }

            v179 = dispatch_get_specific(v172);
            v180 = NFSharedLogGetLogger(v179);
            if (os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
            {
              v181 = object_getClass(a1);
              if (class_isMetaClass(v181))
              {
                v182 = 43;
              }

              else
              {
                v182 = 45;
              }

              v183 = object_getClassName(a1);
              v184 = sel_getName(a2);
              *buf = 67109890;
              v207 = v182;
              v208 = 2082;
              v209 = v183;
              v210 = 2082;
              v211 = v184;
              v212 = 1024;
              v213 = 410;
              _os_log_impl(&dword_22EEC4000, v180, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i [NFTLV TLVWithTag:children:] failed!", buf, 0x22u);
            }

            goto LABEL_137;
          }

          v61 = v60;
          objc_storeStrong((v60 + 16), v53);
          objc_msgSend_addObject_(v9, v62, v61);
        }

        else
        {
          v201 = v56;
          v65 = v9;
          v66 = kNFLOG_DISPATCH_SPECIFIC_KEY;
          v67 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          if (v67 >= 5)
          {
            goto LABEL_164;
          }

          v68 = *(&off_27DA9DE50 + v67);
          if (v68)
          {
            v69 = object_getClass(a1);
            v199 = class_isMetaClass(v69);
            v186 = object_getClassName(a1);
            v191 = sel_getName(a2);
            v70 = 45;
            if (v199)
            {
              v70 = 43;
            }

            v68(4, "%c[%{public}s %{public}s]:%i Failed to recurse children of constructed (?) tag 0x%x, returning as simple", v70, v186, v191, 404, v18);
            v66 = kNFLOG_DISPATCH_SPECIFIC_KEY;
          }

          v9 = v65;
          v71 = dispatch_get_specific(v66);
          v72 = NFSharedLogGetLogger(v71);
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            v73 = object_getClass(a1);
            if (class_isMetaClass(v73))
            {
              v74 = 43;
            }

            else
            {
              v74 = 45;
            }

            v200 = v74;
            v75 = object_getClassName(a1);
            v76 = sel_getName(a2);
            *buf = 67110146;
            v207 = v200;
            v208 = 2082;
            v209 = v75;
            v9 = v65;
            v210 = 2082;
            v211 = v76;
            v212 = 1024;
            v213 = 404;
            v214 = 1024;
            v215 = v18;
            _os_log_impl(&dword_22EEC4000, v72, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to recurse children of constructed (?) tag 0x%x, returning as simple", buf, 0x28u);
          }

          v78 = objc_msgSend_TLVWithTag_value_(NFTLV, v77, v18, v53);
          objc_msgSend_addObject_(v9, v79, v78);

          *a3 = &v13[v49];
          v56 = v201;
        }
      }

      else
      {
        v54 = objc_msgSend_TLVWithTag_value_(NFTLV, v52, v18, v53);
        objc_msgSend_addObject_(v9, v55, v54);

        *a3 += v49;
      }

      v10 = *a3;
      if (*a3 >= a4)
      {
        goto LABEL_149;
      }
    }

    if (v18)
    {
      v145 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      v146 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      if (v146 >= 5)
      {
        goto LABEL_164;
      }

      v147 = *(&off_27DA9DE50 + v146);
      if (v147)
      {
        v148 = object_getClass(a1);
        v149 = class_isMetaClass(v148);
        v150 = object_getClassName(a1);
        v196 = sel_getName(a2);
        v151 = 45;
        if (v149)
        {
          v151 = 43;
        }

        v147(3, "%c[%{public}s %{public}s]:%i Underflow: tag=0x%x", v151, v150, v196, 356, v18);
        v145 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v152 = dispatch_get_specific(v145);
      v88 = NFSharedLogGetLogger(v152);
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        v153 = object_getClass(a1);
        if (class_isMetaClass(v153))
        {
          v154 = 43;
        }

        else
        {
          v154 = 45;
        }

        v155 = object_getClassName(a1);
        v156 = sel_getName(a2);
        *buf = 67110146;
        v207 = v154;
        v208 = 2082;
        v209 = v155;
        v210 = 2082;
        v211 = v156;
        v212 = 1024;
        v213 = 356;
        v214 = 1024;
        v215 = v18;
        v93 = "%c[%{public}s %{public}s]:%i Underflow: tag=0x%x";
LABEL_134:
        v94 = v88;
        v95 = 40;
LABEL_135:
        _os_log_impl(&dword_22EEC4000, v94, OS_LOG_TYPE_ERROR, v93, buf, v95);
      }

LABEL_136:

LABEL_137:
      v157 = 0;
      goto LABEL_150;
    }

LABEL_138:
    if (v203)
    {
      v158 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      v159 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      if (v159 >= 5)
      {
        goto LABEL_164;
      }

      v160 = *(&off_27DA9DE50 + v159);
      if (v160)
      {
        v161 = object_getClass(a1);
        v162 = class_isMetaClass(v161);
        v163 = object_getClassName(a1);
        v197 = sel_getName(a2);
        v164 = 45;
        if (v162)
        {
          v164 = 43;
        }

        v160(3, "%c[%{public}s %{public}s]:%i Require definite encoding, but got zero tag and len", v164, v163, v197, 380);
        v158 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v165 = dispatch_get_specific(v158);
      v88 = NFSharedLogGetLogger(v165);
      if (!os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_136;
      }

      v166 = object_getClass(a1);
      if (class_isMetaClass(v166))
      {
        v167 = 43;
      }

      else
      {
        v167 = 45;
      }

      v168 = object_getClassName(a1);
      v169 = sel_getName(a2);
      *buf = 67109890;
      v207 = v167;
      v208 = 2082;
      v209 = v168;
      v210 = 2082;
      v211 = v169;
      v212 = 1024;
      v213 = 380;
      v93 = "%c[%{public}s %{public}s]:%i Require definite encoding, but got zero tag and len";
      goto LABEL_82;
    }
  }

LABEL_149:
  v157 = v9;
LABEL_150:

  v170 = *MEMORY[0x277D85DE8];

  return v157;
}

@end