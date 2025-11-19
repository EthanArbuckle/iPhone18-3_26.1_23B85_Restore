@interface NFStorageControllerESEExpress
- (id)_deleteAllESEExpressEntities;
- (id)fetchESEExpressEntitiesWithError:(id *)a3;
- (void)deleteAllESEExpressEntities;
- (void)updateESEExpressEntitiesWithConfig:(id)a3;
@end

@implementation NFStorageControllerESEExpress

- (id)fetchESEExpressEntitiesWithError:(id *)a3
{
  v3 = a3;
  v54[5] = *MEMORY[0x29EDCA608];
  v6 = sub_2994CFB70(&self->super.super.isa, a2, a3);

  if (v6)
  {
    *buf = 0;
    *v51 = buf;
    *&v51[8] = 0x3032000000;
    *&v51[16] = sub_2994CDBD8;
    *&v51[24] = sub_2994CDBE8;
    v52 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = sub_2994CDBD8;
    v48 = sub_2994CDBE8;
    v49 = 0;
    v9 = sub_2994CFB70(&self->super.super.isa, v7, v8);
    v43[0] = MEMORY[0x29EDCA5F8];
    v43[1] = 3221225472;
    v43[2] = sub_2994CDBF0;
    v43[3] = &unk_29EF26530;
    v43[4] = self;
    v43[5] = &v44;
    v43[6] = buf;
    v43[7] = a2;
    objc_msgSend_performBlockAndWait_(v9, v10, v43);

    if (v3)
    {
      *v3 = v45[5];
    }

    v3 = *(*v51 + 40);
    _Block_object_dispose(&v44, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
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
      v17 = 45;
      if (isMetaClass)
      {
        v17 = 43;
      }

      v13(3, "%c[%{public}s %{public}s]:%i managedObjectContext is NULL", v17, ClassName, Name, 44);
    }

    dispatch_get_specific(*v11);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = object_getClass(self);
      if (class_isMetaClass(v19))
      {
        v20 = 43;
      }

      else
      {
        v20 = 45;
      }

      *buf = 67109890;
      *&buf[4] = v20;
      *v51 = 2082;
      *&v51[2] = object_getClassName(self);
      *&v51[10] = 2082;
      *&v51[12] = sel_getName(a2);
      *&v51[20] = 1024;
      *&v51[22] = 44;
      _os_log_impl(&dword_2994CA000, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i managedObjectContext is NULL", buf, 0x22u);
    }

    if (v3)
    {
      v21 = objc_alloc(MEMORY[0x29EDB9FA0]);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v22, "nfcd");
      v53[0] = *MEMORY[0x29EDB9ED8];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v24, "Unknown Error");
      v54[0] = v25;
      v54[1] = &unk_2A1F86D80;
      v53[1] = @"Line";
      v53[2] = @"Method";
      v26 = objc_alloc(MEMORY[0x29EDBA0F8]);
      v27 = sel_getName(a2);
      v29 = objc_msgSend_initWithFormat_(v26, v28, @"%s", v27);
      v54[2] = v29;
      v53[3] = *MEMORY[0x29EDB9E38];
      v30 = objc_alloc(MEMORY[0x29EDBA0F8]);
      v31 = sel_getName(a2);
      v33 = objc_msgSend_initWithFormat_(v30, v32, @"%s:%d", v31, 46);
      v54[3] = v33;
      v53[4] = *MEMORY[0x29EDB9EE0];
      v34 = objc_alloc(MEMORY[0x29EDBA0F8]);
      v36 = objc_msgSend_initWithFormat_(v34, v35, @"managedObjectContext is NULL");
      v54[4] = v36;
      v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v37, v54, v53, 5);
      *v3 = objc_msgSend_initWithDomain_code_userInfo_(v21, v39, v23, 6, v38);

      v3 = 0;
    }
  }

  v40 = *MEMORY[0x29EDCA608];

  return v3;
}

- (id)_deleteAllESEExpressEntities
{
  v41 = *MEMORY[0x29EDCA608];
  v5 = objc_msgSend_fetchRequest(ExpressESEEntity, a2, v2);
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

      v17(3, "%c[%{public}s %{public}s]:%i Failed to execute delete request: %{public}@", v20, ClassName, Name, 143, v14);
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
      v38 = 143;
      v39 = 2114;
      v40 = v14;
      _os_log_impl(&dword_2994CA000, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to execute delete request: %{public}@", buf, 0x2Cu);
    }
  }

  v26 = *MEMORY[0x29EDCA608];

  return v14;
}

- (void)updateESEExpressEntitiesWithConfig:(id)a3
{
  v36 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v8 = sub_2994CFB70(&self->super.super.isa, v6, v7);

  if (v8)
  {
    v11 = sub_2994CFB70(&self->super.super.isa, v9, v10);
    v25[0] = MEMORY[0x29EDCA5F8];
    v25[1] = 3221225472;
    v25[2] = sub_2994CEE44;
    v25[3] = &unk_29EF265A8;
    v25[4] = self;
    v27 = a2;
    v26 = v5;
    objc_msgSend_performBlockAndWait_(v11, v12, v25);
  }

  else
  {
    v13 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v15 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v19 = 45;
      if (isMetaClass)
      {
        v19 = 43;
      }

      v15(3, "%c[%{public}s %{public}s]:%i managedObjectContext is NULL", v19, ClassName, Name, 153);
    }

    dispatch_get_specific(*v13);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = object_getClass(self);
      if (class_isMetaClass(v21))
      {
        v22 = 43;
      }

      else
      {
        v22 = 45;
      }

      *buf = 67109890;
      v29 = v22;
      v30 = 2082;
      v31 = object_getClassName(self);
      v32 = 2082;
      v33 = sel_getName(a2);
      v34 = 1024;
      v35 = 153;
      _os_log_impl(&dword_2994CA000, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i managedObjectContext is NULL", buf, 0x22u);
    }
  }

  v23 = *MEMORY[0x29EDCA608];
}

- (void)deleteAllESEExpressEntities
{
  v30 = *MEMORY[0x29EDCA608];
  v5 = sub_2994CFB70(&self->super.super.isa, a2, v2);

  if (v5)
  {
    v8 = sub_2994CFB70(&self->super.super.isa, v6, v7);
    v21[0] = MEMORY[0x29EDCA5F8];
    v21[1] = 3221225472;
    v21[2] = sub_2994CF7FC;
    v21[3] = &unk_29EF265D0;
    v21[4] = self;
    v21[5] = a2;
    objc_msgSend_performBlockAndWait_(v8, v9, v21);
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

      v12(3, "%c[%{public}s %{public}s]:%i managedObjectContext is NULL", v16, ClassName, Name, 216);
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
      v29 = 216;
      _os_log_impl(&dword_2994CA000, v8, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i managedObjectContext is NULL", buf, 0x22u);
    }
  }

  v19 = *MEMORY[0x29EDCA608];
}

@end