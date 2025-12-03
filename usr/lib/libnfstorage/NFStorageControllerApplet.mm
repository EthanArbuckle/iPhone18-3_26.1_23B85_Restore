@interface NFStorageControllerApplet
- (id)_deleteAllAppletEntities;
- (id)fetchAppletEntitiesWithError:(id *)error;
- (id)updateAppletEntitiesWithConfig:(id)config;
- (void)deleteAllAppletEntities;
@end

@implementation NFStorageControllerApplet

- (id)fetchAppletEntitiesWithError:(id *)error
{
  v79[5] = *MEMORY[0x29EDCA608];
  v6 = sub_2994CFB70(&self->super.super.isa, a2, error);

  if (v6)
  {
    *v75 = 0;
    *v76 = v75;
    *&v76[8] = 0x3032000000;
    *&v76[16] = sub_2994CB2BC;
    *&v76[24] = sub_2994CB2CC;
    v77 = objc_opt_new();
    v59 = 0;
    v60 = &v59;
    v61 = 0x3032000000;
    v62 = sub_2994CB2BC;
    v63 = sub_2994CB2CC;
    v64 = 0;
    v9 = sub_2994CFB70(&self->super.super.isa, v7, v8);
    v58[0] = MEMORY[0x29EDCA5F8];
    v58[1] = 3221225472;
    v58[2] = sub_2994CB2D4;
    v58[3] = &unk_29EF26530;
    v58[4] = self;
    v58[5] = &v59;
    v58[6] = v75;
    v58[7] = a2;
    objc_msgSend_performBlockAndWait_(v9, v10, v58);

    if (error)
    {
      *error = v60[5];
    }

    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v13 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v18 = 45;
      if (isMetaClass)
      {
        v18 = 43;
      }

      v13(6, "%c[%{public}s %{public}s]:%i applets: %{public}@", v18, ClassName, Name, 86, *(*v76 + 40));
    }

    dispatch_get_specific(*v11);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = object_getClass(self);
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      v22 = object_getClassName(self);
      v23 = sel_getName(a2);
      v24 = *(*v76 + 40);
      *buf = 67110146;
      v66 = v21;
      v67 = 2082;
      v68 = v22;
      v69 = 2082;
      v70 = v23;
      v71 = 1024;
      v72 = 86;
      v73 = 2114;
      v74 = v24;
      _os_log_impl(&dword_2994CA000, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i applets: %{public}@", buf, 0x2Cu);
    }

    v25 = *(*v76 + 40);
    _Block_object_dispose(&v59, 8);

    _Block_object_dispose(v75, 8);
  }

  else
  {
    v26 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v27 = NFLogGetLogger();
    if (v27)
    {
      v28 = v27;
      v29 = object_getClass(self);
      v30 = class_isMetaClass(v29);
      v31 = object_getClassName(self);
      v57 = sel_getName(a2);
      v32 = 45;
      if (v30)
      {
        v32 = 43;
      }

      v28(3, "%c[%{public}s %{public}s]:%i managedObjectContext is NULL", v32, v31, v57, 36);
    }

    dispatch_get_specific(*v26);
    v33 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = object_getClass(self);
      if (class_isMetaClass(v34))
      {
        v35 = 43;
      }

      else
      {
        v35 = 45;
      }

      *v75 = 67109890;
      *&v75[4] = v35;
      *v76 = 2082;
      *&v76[2] = object_getClassName(self);
      *&v76[10] = 2082;
      *&v76[12] = sel_getName(a2);
      *&v76[20] = 1024;
      *&v76[22] = 36;
      _os_log_impl(&dword_2994CA000, v33, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i managedObjectContext is NULL", v75, 0x22u);
    }

    if (error)
    {
      v36 = objc_alloc(MEMORY[0x29EDB9FA0]);
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v37, "nfcd");
      v78[0] = *MEMORY[0x29EDB9ED8];
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v39, "Unknown Error");
      v79[0] = v40;
      v79[1] = &unk_2A1F86CD8;
      v78[1] = @"Line";
      v78[2] = @"Method";
      v41 = objc_alloc(MEMORY[0x29EDBA0F8]);
      v42 = sel_getName(a2);
      v44 = objc_msgSend_initWithFormat_(v41, v43, @"%s", v42);
      v79[2] = v44;
      v78[3] = *MEMORY[0x29EDB9E38];
      v45 = objc_alloc(MEMORY[0x29EDBA0F8]);
      v46 = sel_getName(a2);
      v48 = objc_msgSend_initWithFormat_(v45, v47, @"%s:%d", v46, 38);
      v79[3] = v48;
      v78[4] = *MEMORY[0x29EDB9EE0];
      v49 = objc_alloc(MEMORY[0x29EDBA0F8]);
      v51 = objc_msgSend_initWithFormat_(v49, v50, @"managedObjectContext is NULL");
      v79[4] = v51;
      v53 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v52, v79, v78, 5);
      *error = objc_msgSend_initWithDomain_code_userInfo_(v36, v54, v38, 6, v53);
    }

    v25 = 0;
  }

  v55 = *MEMORY[0x29EDCA608];

  return v25;
}

- (id)_deleteAllAppletEntities
{
  v41 = *MEMORY[0x29EDCA608];
  v5 = objc_msgSend_fetchRequest(AppletEntity, a2, v2);
  v6 = objc_alloc(MEMORY[0x29EDB8C40]);
  Request = objc_msgSend_initWithFetchRequest_(v6, v7, v5);
  v11 = sub_2994CFB70(&self->super.super.isa, v9, v10);
  v30 = 0;
  v13 = objc_msgSend_executeRequest_error_(v11, v12, Request, &v30);
  v14 = v30;

  if (v14)
  {
    v15 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v17 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v20 = 45;
      if (isMetaClass)
      {
        v20 = 43;
      }

      v17(3, "%c[%{public}s %{public}s]:%i Failed to execute delete request: %{public}@", v20, ClassName, Name, 100, v14);
    }

    dispatch_get_specific(*v15);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = object_getClass(self);
      if (class_isMetaClass(v22))
      {
        v23 = 43;
      }

      else
      {
        v23 = 45;
      }

      v24 = object_getClassName(self);
      v25 = sel_getName(a2);
      *buf = 67110146;
      v32 = v23;
      v33 = 2082;
      v34 = v24;
      v35 = 2082;
      v36 = v25;
      v37 = 1024;
      v38 = 100;
      v39 = 2114;
      v40 = v14;
      _os_log_impl(&dword_2994CA000, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to execute delete request: %{public}@", buf, 0x2Cu);
    }
  }

  v26 = *MEMORY[0x29EDCA608];

  return v14;
}

- (id)updateAppletEntitiesWithConfig:(id)config
{
  v65[4] = *MEMORY[0x29EDCA608];
  configCopy = config;
  v8 = sub_2994CFB70(&self->super.super.isa, v6, v7);

  v9 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  v11 = Logger;
  if (v8)
  {
    if (Logger)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v11(6, "%c[%{public}s %{public}s]:%i new Applet Config=%{public}@", v14, ClassName, Name, 122, configCopy);
    }

    dispatch_get_specific(*v9);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = object_getClass(self);
      if (class_isMetaClass(v16))
      {
        v17 = 43;
      }

      else
      {
        v17 = 45;
      }

      *buf = 67110146;
      v55 = v17;
      v56 = 2082;
      v57 = object_getClassName(self);
      v58 = 2082;
      v59 = sel_getName(a2);
      v60 = 1024;
      v61 = 122;
      v62 = 2114;
      v63 = configCopy;
      _os_log_impl(&dword_2994CA000, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i new Applet Config=%{public}@", buf, 0x2Cu);
    }

    v20 = sub_2994CFB70(&self->super.super.isa, v18, v19);
    v51[0] = MEMORY[0x29EDCA5F8];
    v51[1] = 3221225472;
    v51[2] = sub_2994CBF94;
    v51[3] = &unk_29EF265A8;
    v51[4] = self;
    v53 = a2;
    v52 = configCopy;
    objc_msgSend_performBlock_(v20, v21, v51);

    v22 = 0;
  }

  else
  {
    if (Logger)
    {
      v23 = object_getClass(self);
      v24 = class_isMetaClass(v23);
      v25 = object_getClassName(self);
      v50 = sel_getName(a2);
      v26 = 45;
      if (v24)
      {
        v26 = 43;
      }

      v11(3, "%c[%{public}s %{public}s]:%i managedObjectContext is NULL", v26, v25, v50, 118);
    }

    dispatch_get_specific(*v9);
    v27 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = object_getClass(self);
      if (class_isMetaClass(v28))
      {
        v29 = 43;
      }

      else
      {
        v29 = 45;
      }

      *buf = 67109890;
      v55 = v29;
      v56 = 2082;
      v57 = object_getClassName(self);
      v58 = 2082;
      v59 = sel_getName(a2);
      v60 = 1024;
      v61 = 118;
      _os_log_impl(&dword_2994CA000, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i managedObjectContext is NULL", buf, 0x22u);
    }

    v30 = objc_alloc(MEMORY[0x29EDB9FA0]);
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v31, "nfcd");
    v64[0] = *MEMORY[0x29EDB9ED8];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v33, "Invalid State");
    v65[0] = v34;
    v65[1] = &unk_2A1F86CF0;
    v64[1] = @"Line";
    v64[2] = @"Method";
    v35 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v36 = sel_getName(a2);
    v38 = objc_msgSend_initWithFormat_(v35, v37, @"%s", v36);
    v65[2] = v38;
    v64[3] = *MEMORY[0x29EDB9E38];
    v39 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v40 = sel_getName(a2);
    v42 = objc_msgSend_initWithFormat_(v39, v41, @"%s:%d", v40, 119);
    v65[3] = v42;
    v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v43, v65, v64, 4);
    v22 = objc_msgSend_initWithDomain_code_userInfo_(v30, v45, v32, 12, v44);
  }

  v46 = *MEMORY[0x29EDCA608];

  return v22;
}

- (void)deleteAllAppletEntities
{
  v30 = *MEMORY[0x29EDCA608];
  v5 = sub_2994CFB70(&self->super.super.isa, a2, v2);

  if (v5)
  {
    v8 = sub_2994CFB70(&self->super.super.isa, v6, v7);
    v21[0] = MEMORY[0x29EDCA5F8];
    v21[1] = 3221225472;
    v21[2] = sub_2994CD554;
    v21[3] = &unk_29EF265D0;
    v21[4] = self;
    v21[5] = a2;
    objc_msgSend_performBlock_(v8, v9, v21);
  }

  else
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v12 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v16 = 45;
      if (isMetaClass)
      {
        v16 = 43;
      }

      v12(3, "%c[%{public}s %{public}s]:%i managedObjectContext is NULL", v16, ClassName, Name, 204);
    }

    dispatch_get_specific(*v10);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v17 = object_getClass(self);
      if (class_isMetaClass(v17))
      {
        v18 = 43;
      }

      else
      {
        v18 = 45;
      }

      *buf = 67109890;
      v23 = v18;
      v24 = 2082;
      v25 = object_getClassName(self);
      v26 = 2082;
      v27 = sel_getName(a2);
      v28 = 1024;
      v29 = 204;
      _os_log_impl(&dword_2994CA000, v8, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i managedObjectContext is NULL", buf, 0x22u);
    }
  }

  v19 = *MEMORY[0x29EDCA608];
}

@end