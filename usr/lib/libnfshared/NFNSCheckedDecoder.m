@interface NFNSCheckedDecoder
+ (id)coder:(id)a3 decodeArrayOfArrayOfClass:(Class)a4 forKey:(id)a5;
+ (id)coder:(id)a3 decodeArrayOfClass:(Class)a4 forKey:(id)a5;
+ (id)coder:(id)a3 decodeDictOfClass:(Class)a4 forKey:(id)a5;
@end

@implementation NFNSCheckedDecoder

+ (id)coder:(id)a3 decodeArrayOfClass:(Class)a4 forKey:(id)a5
{
  v61 = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CBEB98];
  v10 = a5;
  v11 = a3;
  v12 = [v9 alloc];
  v13 = objc_opt_class();
  v15 = objc_msgSend_initWithObjects_(v12, v14, v13, a4, 0);
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_22EED1100;
  v47 = sub_22EED1110;
  v17 = objc_msgSend_decodeObjectOfClasses_forKey_(v11, v16, v15, v10);

  v48 = v17;
  if (v44[5])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v44[5];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = sub_22EED1118;
      v42[3] = &unk_278872AA0;
      v42[4] = &v43;
      v42[5] = a4;
      v42[6] = a1;
      v42[7] = a2;
      objc_msgSend_enumerateObjectsUsingBlock_(v19, v18, v42);
      v20 = v44[5];
      goto LABEL_16;
    }

    v21 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v23 = *(&off_27DA9DE50 + specific);
    if (v23)
    {
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName(a2);
      v28 = v44[5];
      v41 = objc_opt_class();
      v29 = 45;
      if (isMetaClass)
      {
        v29 = 43;
      }

      v23(3, "%c[%{public}s %{public}s]:%i XPC Sanitizer : Unexpected class %{public}@, expecting %{public}@", v29, ClassName, Name, 25, v41, @"NSArray");
      v21 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v30 = dispatch_get_specific(v21);
    v31 = NFSharedLogGetLogger(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = object_getClass(a1);
      if (class_isMetaClass(v32))
      {
        v33 = 43;
      }

      else
      {
        v33 = 45;
      }

      v34 = object_getClassName(a1);
      v35 = sel_getName(a2);
      v36 = v44[5];
      v37 = objc_opt_class();
      *buf = 67110402;
      v50 = v33;
      v51 = 2082;
      v52 = v34;
      v53 = 2082;
      v54 = v35;
      v55 = 1024;
      v56 = 25;
      v57 = 2114;
      v58 = v37;
      v59 = 2114;
      v60 = @"NSArray";
      v38 = v37;
      _os_log_impl(&dword_22EEC4000, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC Sanitizer : Unexpected class %{public}@, expecting %{public}@", buf, 0x36u);
    }
  }

  v20 = 0;
LABEL_16:
  _Block_object_dispose(&v43, 8);

  v39 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)coder:(id)a3 decodeArrayOfArrayOfClass:(Class)a4 forKey:(id)a5
{
  v63 = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CBEB98];
  v10 = a5;
  v11 = a3;
  v12 = [v9 alloc];
  v13 = objc_opt_class();
  v15 = objc_msgSend_initWithObjects_(v12, v14, v13, a4, 0);
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_22EED1100;
  v49 = sub_22EED1110;
  v17 = objc_msgSend_decodeObjectOfClasses_forKey_(v11, v16, v15, v10);

  v50 = v17;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 0;
  if (v46[5])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v46[5];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = sub_22EED1700;
      v42[3] = &unk_278872AC8;
      v42[6] = a1;
      v42[7] = a2;
      v42[8] = a4;
      v42[4] = &v45;
      v42[5] = v43;
      objc_msgSend_enumerateObjectsUsingBlock_(v19, v18, v42);
      v20 = v46[5];
      goto LABEL_16;
    }

    v21 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v23 = *(&off_27DA9DE50 + specific);
    if (v23)
    {
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName(a2);
      v28 = v46[5];
      v41 = objc_opt_class();
      v29 = 45;
      if (isMetaClass)
      {
        v29 = 43;
      }

      v23(3, "%c[%{public}s %{public}s]:%i XPC Sanitizer : Unexpected class %{public}@, expecting %{public}@", v29, ClassName, Name, 53, v41, @"NSArray");
      v21 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v30 = dispatch_get_specific(v21);
    v31 = NFSharedLogGetLogger(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = object_getClass(a1);
      if (class_isMetaClass(v32))
      {
        v33 = 43;
      }

      else
      {
        v33 = 45;
      }

      v34 = object_getClassName(a1);
      v35 = sel_getName(a2);
      v36 = v46[5];
      v37 = objc_opt_class();
      *buf = 67110402;
      v52 = v33;
      v53 = 2082;
      v54 = v34;
      v55 = 2082;
      v56 = v35;
      v57 = 1024;
      v58 = 53;
      v59 = 2114;
      v60 = v37;
      v61 = 2114;
      v62 = @"NSArray";
      v38 = v37;
      _os_log_impl(&dword_22EEC4000, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC Sanitizer : Unexpected class %{public}@, expecting %{public}@", buf, 0x36u);
    }
  }

  v20 = 0;
LABEL_16:
  _Block_object_dispose(v43, 8);
  _Block_object_dispose(&v45, 8);

  v39 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)coder:(id)a3 decodeDictOfClass:(Class)a4 forKey:(id)a5
{
  v62 = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CBEB98];
  v10 = a5;
  v11 = a3;
  v12 = [v9 alloc];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v16 = objc_msgSend_initWithObjects_(v12, v15, v13, v14, a4, 0);
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_22EED1100;
  v48 = sub_22EED1110;
  v18 = objc_msgSend_decodeObjectOfClasses_forKey_(v11, v17, v16, v10);

  v49 = v18;
  if (v45[5])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v45[5];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = sub_22EED1F98;
      v43[3] = &unk_278872AF0;
      v43[6] = a1;
      v43[7] = a2;
      v43[4] = &v44;
      v43[5] = a4;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v20, v19, v43);
      v21 = v45[5];
      goto LABEL_16;
    }

    v22 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v24 = *(&off_27DA9DE50 + specific);
    if (v24)
    {
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName(a2);
      v29 = v45[5];
      v42 = objc_opt_class();
      v30 = 45;
      if (isMetaClass)
      {
        v30 = 43;
      }

      v24(3, "%c[%{public}s %{public}s]:%i XPC Sanitizer : Unexpected class %{public}@, expecting %{public}@", v30, ClassName, Name, 95, v42, @"NSDictionary");
      v22 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v31 = dispatch_get_specific(v22);
    v32 = NFSharedLogGetLogger(v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = object_getClass(a1);
      if (class_isMetaClass(v33))
      {
        v34 = 43;
      }

      else
      {
        v34 = 45;
      }

      v35 = object_getClassName(a1);
      v36 = sel_getName(a2);
      v37 = v45[5];
      v38 = objc_opt_class();
      *buf = 67110402;
      v51 = v34;
      v52 = 2082;
      v53 = v35;
      v54 = 2082;
      v55 = v36;
      v56 = 1024;
      v57 = 95;
      v58 = 2114;
      v59 = v38;
      v60 = 2114;
      v61 = @"NSDictionary";
      v39 = v38;
      _os_log_impl(&dword_22EEC4000, v32, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC Sanitizer : Unexpected class %{public}@, expecting %{public}@", buf, 0x36u);
    }
  }

  v21 = 0;
LABEL_16:
  _Block_object_dispose(&v44, 8);

  v40 = *MEMORY[0x277D85DE8];

  return v21;
}

@end