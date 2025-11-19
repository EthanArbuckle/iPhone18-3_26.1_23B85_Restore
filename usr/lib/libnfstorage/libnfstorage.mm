uint64_t sub_2994CB2BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2994CB2D4(uint64_t a1, const char *a2, uint64_t a3)
{
  v113 = *MEMORY[0x29EDCA608];
  v4 = objc_msgSend_fetchRequest(AppletEntity, a2, a3);
  v7 = sub_2994CFB70(*(a1 + 32), v5, v6);
  v8 = *(*(a1 + 40) + 8);
  obj = *(v8 + 40);
  v10 = objc_msgSend_executeFetchRequest_error_(v7, v9, v4, &obj);
  objc_storeStrong((v8 + 40), obj);

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v13 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v15 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v20 = 45;
      if (isMetaClass)
      {
        v20 = 43;
      }

      v15(3, "%c[%{public}s %{public}s]:%i Failed to execute fetch request: %{public}@", v20, ClassName, Name, 52, *(*(*(a1 + 40) + 8) + 40));
    }

    dispatch_get_specific(*v13);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v22))
      {
        v23 = 43;
      }

      else
      {
        v23 = 45;
      }

      v24 = object_getClassName(*(a1 + 32));
      v25 = sel_getName(*(a1 + 56));
      v26 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 67110146;
      v102 = v23;
      v103 = 2082;
      v104 = v24;
      v105 = 2082;
      v106 = v25;
      v107 = 1024;
      v108 = 52;
      v109 = 2114;
      v110 = v26;
      v27 = "%c[%{public}s %{public}s]:%i Failed to execute fetch request: %{public}@";
      v28 = v21;
      v29 = OS_LOG_TYPE_ERROR;
      v30 = 44;
LABEL_11:
      _os_log_impl(&dword_2994CA000, v28, v29, v27, buf, v30);
    }
  }

  else if (objc_msgSend_count(v10, v11, v12))
  {
    v21 = objc_msgSend_firstObject(v10, v31, v32);
    if (objc_msgSend_version(v21, v33, v34) == 4)
    {
      v37 = MEMORY[0x29EDBA070];
      updated = objc_msgSend_crsUpdateCounter(v21, v35, v36);
      v40 = objc_msgSend_numberWithUnsignedLongLong_(v37, v39, updated);
      v43 = objc_msgSend_applets(v21, v41, v42);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v46 = objc_alloc(MEMORY[0x29EDB8D80]);
        v49 = objc_msgSend_applets(v21, v47, v48);
        v51 = objc_msgSend_initWithArray_(v46, v50, v49);
      }

      else
      {
        v51 = 0;
      }

      objc_msgSend_setObject_forKey_(*(*(*(a1 + 48) + 8) + 40), v45, v40, @"crsUpdateCounter");
      v84 = *(*(*(a1 + 48) + 8) + 40);
      v85 = objc_alloc(MEMORY[0x29EDBA0F8]);
      v88 = objc_msgSend_seid(v21, v86, v87);
      v90 = objc_msgSend_initWithString_(v85, v89, v88);
      objc_msgSend_setObject_forKey_(v84, v91, v90, @"seid");

      if (v51)
      {
        objc_msgSend_setObject_forKey_(*(*(*(a1 + 48) + 8) + 40), v92, v51, @"applets");
      }

      v94 = sub_2994CFB70(*(a1 + 32), v92, v93);
      objc_msgSend_reset(v94, v95, v96);
    }

    else
    {
      v63 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v64 = NFLogGetLogger();
      if (v64)
      {
        v65 = v64;
        v66 = object_getClass(*(a1 + 32));
        v67 = class_isMetaClass(v66);
        v68 = object_getClassName(*(a1 + 32));
        v69 = sel_getName(*(a1 + 56));
        v99 = objc_msgSend_version(v21, v70, v71);
        v72 = 45;
        if (v67)
        {
          v72 = 43;
        }

        v65(3, "%c[%{public}s %{public}s]:%i Wrong applet storage version %llu, expecting %d", v72, v68, v69, 63, v99, 4);
      }

      dispatch_get_specific(*v63);
      v73 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        v74 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v74))
        {
          v75 = 43;
        }

        else
        {
          v75 = 45;
        }

        v76 = object_getClassName(*(a1 + 32));
        v77 = sel_getName(*(a1 + 56));
        v80 = objc_msgSend_version(v21, v78, v79);
        *buf = 67110402;
        v102 = v75;
        v103 = 2082;
        v104 = v76;
        v105 = 2082;
        v106 = v77;
        v107 = 1024;
        v108 = 63;
        v109 = 2048;
        v110 = v80;
        v111 = 1024;
        v112 = 4;
        _os_log_impl(&dword_2994CA000, v73, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Wrong applet storage version %llu, expecting %d", buf, 0x32u);
      }

      v83 = objc_msgSend__deleteAllAppletEntities(*(a1 + 32), v81, v82);
    }
  }

  else
  {
    v52 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v53 = NFLogGetLogger();
    if (v53)
    {
      v54 = v53;
      v55 = object_getClass(*(a1 + 32));
      v56 = class_isMetaClass(v55);
      v57 = object_getClassName(*(a1 + 32));
      v98 = sel_getName(*(a1 + 56));
      v58 = 45;
      if (v56)
      {
        v58 = 43;
      }

      v54(6, "%c[%{public}s %{public}s]:%i No applets found in storage", v58, v57, v98, 58);
    }

    dispatch_get_specific(*v52);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v59 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v59))
      {
        v60 = 43;
      }

      else
      {
        v60 = 45;
      }

      v61 = object_getClassName(*(a1 + 32));
      v62 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v102 = v60;
      v103 = 2082;
      v104 = v61;
      v105 = 2082;
      v106 = v62;
      v107 = 1024;
      v108 = 58;
      v27 = "%c[%{public}s %{public}s]:%i No applets found in storage";
      v28 = v21;
      v29 = OS_LOG_TYPE_DEFAULT;
      v30 = 34;
      goto LABEL_11;
    }
  }

  v97 = *MEMORY[0x29EDCA608];
}

void sub_2994CBF94(uint64_t a1, const char *a2, uint64_t a3)
{
  v100 = *MEMORY[0x29EDCA608];
  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = sub_2994CB2BC;
  v86 = sub_2994CB2CC;
  v87 = objc_msgSend__deleteAllAppletEntities(*(a1 + 32), a2, a3);
  if (v83[5])
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Failed to delete all: %{public}@", v12, ClassName, Name, 129, v83[5]);
    }

    dispatch_get_specific(*v5);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      v16 = object_getClassName(*(a1 + 32));
      v17 = sel_getName(*(a1 + 48));
      v18 = v83[5];
      *buf = 67110146;
      *&buf[4] = v15;
      *v99 = 2082;
      *&v99[2] = v16;
      *&v99[10] = 2082;
      *&v99[12] = v17;
      *&v99[20] = 1024;
      *&v99[22] = 129;
      *&v99[26] = 2114;
      *&v99[28] = v18;
      _os_log_impl(&dword_2994CA000, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to delete all: %{public}@", buf, 0x2Cu);
    }

    v21 = sub_2994CFB70(*(a1 + 32), v19, v20);
    objc_msgSend_reset(v21, v22, v23);
  }

  else
  {
    *buf = 0;
    *v99 = buf;
    *&v99[8] = 0x3032000000;
    *&v99[16] = sub_2994CB2BC;
    *&v99[24] = sub_2994CB2CC;
    *&v99[32] = 0;
    v76 = 0;
    v77 = &v76;
    v78 = 0x3032000000;
    v79 = sub_2994CB2BC;
    v80 = sub_2994CB2CC;
    v81 = 0;
    v70 = 0;
    v71 = &v70;
    v72 = 0x3032000000;
    v73 = sub_2994CB2BC;
    v74 = sub_2994CB2CC;
    v75 = 0;
    v69[0] = MEMORY[0x29EDCA5F8];
    v69[1] = 3221225472;
    v69[2] = sub_2994CC540;
    v69[3] = &unk_29EF26580;
    v24 = *(a1 + 40);
    v25 = *(a1 + 48);
    v69[4] = *(a1 + 32);
    v69[5] = &v82;
    v69[6] = buf;
    v69[7] = &v76;
    v69[8] = &v70;
    v69[9] = v25;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v24, v4, v69);
    if (!v83[5])
    {
      v28 = MEMORY[0x29EDB8C48];
      v29 = sub_2994CFB70(*(a1 + 32), v26, v27);
      v31 = objc_msgSend_insertNewObjectForEntityForName_inManagedObjectContext_(v28, v30, @"AppletEntity", v29);

      objc_msgSend_setVersion_(v31, v32, 4);
      v35 = objc_msgSend_longLongValue(*(*v99 + 40), v33, v34);
      objc_msgSend_setCrsUpdateCounter_(v31, v36, v35);
      objc_msgSend_setSeid_(v31, v37, v77[5]);
      objc_msgSend_setApplets_(v31, v38, v71[5]);
      v41 = sub_2994CFB70(*(a1 + 32), v39, v40);
      hasChanges = objc_msgSend_hasChanges(v41, v42, v43);

      if (hasChanges)
      {
        v47 = sub_2994CFB70(*(a1 + 32), v45, v46);
        v48 = (v83 + 5);
        obj = v83[5];
        objc_msgSend_save_(v47, v49, &obj);
        objc_storeStrong(v48, obj);

        if (v83[5])
        {
          v50 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v51 = NFLogGetLogger();
          if (v51)
          {
            v52 = v51;
            v53 = object_getClass(*(a1 + 32));
            v54 = class_isMetaClass(v53);
            v55 = object_getClassName(*(a1 + 32));
            v56 = sel_getName(*(a1 + 48));
            v57 = 45;
            if (v54)
            {
              v57 = 43;
            }

            v52(3, "%c[%{public}s %{public}s]:%i Failed to save: %{public}@", v57, v55, v56, 188, v83[5]);
          }

          dispatch_get_specific(*v50);
          v58 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            v59 = object_getClass(*(a1 + 32));
            if (class_isMetaClass(v59))
            {
              v60 = 43;
            }

            else
            {
              v60 = 45;
            }

            v61 = object_getClassName(*(a1 + 32));
            v62 = sel_getName(*(a1 + 48));
            v63 = v83[5];
            *v88 = 67110146;
            v89 = v60;
            v90 = 2082;
            v91 = v61;
            v92 = 2082;
            v93 = v62;
            v94 = 1024;
            v95 = 188;
            v96 = 2114;
            v97 = v63;
            _os_log_impl(&dword_2994CA000, v58, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to save: %{public}@", v88, 0x2Cu);
          }
        }
      }
    }

    v64 = sub_2994CFB70(*(a1 + 32), v26, v27);
    objc_msgSend_reset(v64, v65, v66);

    _Block_object_dispose(&v70, 8);
    _Block_object_dispose(&v76, 8);

    _Block_object_dispose(buf, 8);
  }

  _Block_object_dispose(&v82, 8);

  v67 = *MEMORY[0x29EDCA608];
}

void sub_2994CC540(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v167 = *MEMORY[0x29EDCA608];
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (objc_msgSend_isEqualToString_(v7, v9, @"crsUpdateCounter"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = *(a1 + 48);
LABEL_18:
        objc_storeStrong((*(v11 + 8) + 40), a3);
        goto LABEL_53;
      }

      v147 = a4;
      v50 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v52 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 72));
        v57 = objc_opt_class();
        NSStringFromClass(v57);
        v59 = v58 = v8;
        v60 = 45;
        if (isMetaClass)
        {
          v60 = 43;
        }

        v52(3, "%c[%{public}s %{public}s]:%i invalid type (%{public}@) for counter", v60, ClassName, Name, 146, v59);

        v8 = v58;
      }

      dispatch_get_specific(*v50);
      v61 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v62 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v62))
        {
          v63 = 43;
        }

        else
        {
          v63 = 45;
        }

        v64 = object_getClassName(*(a1 + 32));
        v65 = sel_getName(*(a1 + 72));
        v66 = objc_opt_class();
        v67 = NSStringFromClass(v66);
        *buf = 67110146;
        v158 = v63;
        v159 = 2082;
        v160 = v64;
        v161 = 2082;
        v162 = v65;
        v163 = 1024;
        v164 = 146;
        v165 = 2114;
        v166 = v67;
        _os_log_impl(&dword_2994CA000, v61, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i invalid type (%{public}@) for counter", buf, 0x2Cu);
      }

      v68 = objc_alloc(MEMORY[0x29EDB9FA0]);
      v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v69, "nfcd");
      v153[0] = *MEMORY[0x29EDB9ED8];
      v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v71, "Invalid Parameter");
      v154[0] = v72;
      v154[1] = &unk_2A1F86D20;
      v153[1] = @"Line";
      v153[2] = @"Method";
      v73 = objc_alloc(MEMORY[0x29EDBA0F8]);
      v74 = sel_getName(*(a1 + 72));
      v76 = objc_msgSend_initWithFormat_(v73, v75, @"%s", v74);
      v154[2] = v76;
      v153[3] = *MEMORY[0x29EDB9E38];
      v77 = v8;
      v78 = objc_alloc(MEMORY[0x29EDBA0F8]);
      v79 = sel_getName(*(a1 + 72));
      v81 = objc_msgSend_initWithFormat_(v78, v80, @"%s:%d", v79, 147);
      v154[3] = v81;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v82, v154, v153, 4);
    }

    else if (objc_msgSend_isEqualToString_(v7, v10, @"seid"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = *(a1 + 56);
        goto LABEL_18;
      }

      v147 = a4;
      v86 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v87 = NFLogGetLogger();
      if (v87)
      {
        v88 = v87;
        v89 = object_getClass(*(a1 + 32));
        v90 = class_isMetaClass(v89);
        v91 = object_getClassName(*(a1 + 32));
        v92 = sel_getName(*(a1 + 72));
        v93 = objc_opt_class();
        NSStringFromClass(v93);
        v95 = v94 = v8;
        v96 = 45;
        if (v90)
        {
          v96 = 43;
        }

        v88(3, "%c[%{public}s %{public}s]:%i invalid type (%{public}@) for seid", v96, v91, v92, 154, v95);

        v8 = v94;
      }

      dispatch_get_specific(*v86);
      v97 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        v98 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v98))
        {
          v99 = 43;
        }

        else
        {
          v99 = 45;
        }

        v100 = object_getClassName(*(a1 + 32));
        v101 = sel_getName(*(a1 + 72));
        v102 = objc_opt_class();
        v103 = NSStringFromClass(v102);
        *buf = 67110146;
        v158 = v99;
        v159 = 2082;
        v160 = v100;
        v161 = 2082;
        v162 = v101;
        v163 = 1024;
        v164 = 154;
        v165 = 2114;
        v166 = v103;
        _os_log_impl(&dword_2994CA000, v97, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i invalid type (%{public}@) for seid", buf, 0x2Cu);
      }

      v68 = objc_alloc(MEMORY[0x29EDB9FA0]);
      v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v104, "nfcd");
      v151[0] = *MEMORY[0x29EDB9ED8];
      v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v105, "Invalid Parameter");
      v152[0] = v72;
      v152[1] = &unk_2A1F86D38;
      v151[1] = @"Line";
      v151[2] = @"Method";
      v106 = objc_alloc(MEMORY[0x29EDBA0F8]);
      v107 = sel_getName(*(a1 + 72));
      v76 = objc_msgSend_initWithFormat_(v106, v108, @"%s", v107);
      v152[2] = v76;
      v151[3] = *MEMORY[0x29EDB9E38];
      v77 = v8;
      v109 = objc_alloc(MEMORY[0x29EDBA0F8]);
      v110 = sel_getName(*(a1 + 72));
      v81 = objc_msgSend_initWithFormat_(v109, v111, @"%s:%d", v110, 155);
      v152[3] = v81;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v112, v152, v151, 4);
    }

    else
    {
      if (!objc_msgSend_isEqualToString_(v7, v49, @"applets"))
      {
        goto LABEL_53;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
        v83 = *(*(*(a1 + 64) + 8) + 40);
        v148[0] = MEMORY[0x29EDCA5F8];
        v148[1] = 3221225472;
        v148[2] = sub_2994CD174;
        v148[3] = &unk_29EF26558;
        v84 = *(a1 + 72);
        v148[4] = *(a1 + 40);
        v148[5] = v84;
        objc_msgSend_enumerateObjectsUsingBlock_(v83, v85, v148);
        goto LABEL_53;
      }

      v147 = a4;
      v113 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v114 = NFLogGetLogger();
      if (v114)
      {
        v115 = v114;
        v116 = object_getClass(*(a1 + 32));
        v117 = class_isMetaClass(v116);
        v118 = object_getClassName(*(a1 + 32));
        v119 = sel_getName(*(a1 + 72));
        v120 = objc_opt_class();
        NSStringFromClass(v120);
        v122 = v121 = v8;
        v123 = 45;
        if (v117)
        {
          v123 = 43;
        }

        v115(3, "%c[%{public}s %{public}s]:%i invalid type (%{public}@) for applets", v123, v118, v119, 162, v122);

        v8 = v121;
      }

      dispatch_get_specific(*v113);
      v124 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
      {
        v125 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v125))
        {
          v126 = 43;
        }

        else
        {
          v126 = 45;
        }

        v127 = object_getClassName(*(a1 + 32));
        v128 = sel_getName(*(a1 + 72));
        v129 = objc_opt_class();
        v130 = NSStringFromClass(v129);
        *buf = 67110146;
        v158 = v126;
        v159 = 2082;
        v160 = v127;
        v161 = 2082;
        v162 = v128;
        v163 = 1024;
        v164 = 162;
        v165 = 2114;
        v166 = v130;
        _os_log_impl(&dword_2994CA000, v124, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i invalid type (%{public}@) for applets", buf, 0x2Cu);
      }

      v68 = objc_alloc(MEMORY[0x29EDB9FA0]);
      v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v131, "nfcd");
      v149[0] = *MEMORY[0x29EDB9ED8];
      v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v132, "Invalid Parameter");
      v150[0] = v72;
      v150[1] = &unk_2A1F86D50;
      v149[1] = @"Line";
      v149[2] = @"Method";
      v133 = objc_alloc(MEMORY[0x29EDBA0F8]);
      v134 = sel_getName(*(a1 + 72));
      v76 = objc_msgSend_initWithFormat_(v133, v135, @"%s", v134);
      v150[2] = v76;
      v149[3] = *MEMORY[0x29EDB9E38];
      v77 = v8;
      v136 = objc_alloc(MEMORY[0x29EDBA0F8]);
      v137 = sel_getName(*(a1 + 72));
      v81 = objc_msgSend_initWithFormat_(v136, v138, @"%s:%d", v137, 163);
      v150[3] = v81;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v139, v150, v149, 4);
    }
    v140 = ;
    v142 = objc_msgSend_initWithDomain_code_userInfo_(v68, v141, v70, 10, v140);
    v143 = *(*(a1 + 40) + 8);
    v144 = *(v143 + 40);
    *(v143 + 40) = v142;

    v8 = v77;
    *v147 = 1;
    goto LABEL_53;
  }

  v146 = v8;
  v12 = a4;
  v13 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v14 = NFLogGetLogger();
  if (v14)
  {
    v15 = v14;
    v16 = object_getClass(*(a1 + 32));
    v17 = class_isMetaClass(v16);
    v18 = object_getClassName(*(a1 + 32));
    v19 = sel_getName(*(a1 + 72));
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = 45;
    if (v17)
    {
      v22 = 43;
    }

    v15(3, "%c[%{public}s %{public}s]:%i invalid type (%{public}@) for key", v22, v18, v19, 141, v21);
  }

  dispatch_get_specific(*v13);
  v23 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v24))
    {
      v25 = 43;
    }

    else
    {
      v25 = 45;
    }

    v26 = object_getClassName(*(a1 + 32));
    v27 = sel_getName(*(a1 + 72));
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    *buf = 67110146;
    v158 = v25;
    v159 = 2082;
    v160 = v26;
    v161 = 2082;
    v162 = v27;
    v163 = 1024;
    v164 = 141;
    v165 = 2114;
    v166 = v29;
    _os_log_impl(&dword_2994CA000, v23, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i invalid type (%{public}@) for key", buf, 0x2Cu);
  }

  v30 = objc_alloc(MEMORY[0x29EDB9FA0]);
  v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v31, "nfcd");
  v155[0] = *MEMORY[0x29EDB9ED8];
  v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v33, "Invalid Parameter");
  v156[0] = v34;
  v156[1] = &unk_2A1F86D08;
  v155[1] = @"Line";
  v155[2] = @"Method";
  v35 = objc_alloc(MEMORY[0x29EDBA0F8]);
  v36 = sel_getName(*(a1 + 72));
  v38 = objc_msgSend_initWithFormat_(v35, v37, @"%s", v36);
  v156[2] = v38;
  v155[3] = *MEMORY[0x29EDB9E38];
  v39 = objc_alloc(MEMORY[0x29EDBA0F8]);
  v40 = sel_getName(*(a1 + 72));
  v42 = objc_msgSend_initWithFormat_(v39, v41, @"%s:%d", v40, 142);
  v156[3] = v42;
  v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v43, v156, v155, 4);
  v46 = objc_msgSend_initWithDomain_code_userInfo_(v30, v45, v32, 10, v44);
  v47 = *(*(a1 + 40) + 8);
  v48 = *(v47 + 40);
  *(v47 + 40) = v46;

  *v12 = 1;
  v8 = v146;
LABEL_53:

  v145 = *MEMORY[0x29EDCA608];
}

void sub_2994CD174(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v29[4] = *MEMORY[0x29EDCA608];
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    *a4 = 1;
    v8 = objc_alloc(MEMORY[0x29EDB9FA0]);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v9, "nfcd");
    v28[0] = *MEMORY[0x29EDB9ED8];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v11, "Invalid Parameter");
    v29[0] = v12;
    v29[1] = &unk_2A1F86D68;
    v28[1] = @"Line";
    v28[2] = @"Method";
    v13 = objc_alloc(MEMORY[0x29EDBA0F8]);
    Name = sel_getName(*(a1 + 40));
    v16 = objc_msgSend_initWithFormat_(v13, v15, @"%s", Name);
    v29[2] = v16;
    v28[3] = *MEMORY[0x29EDB9E38];
    v17 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v18 = sel_getName(*(a1 + 40));
    v20 = objc_msgSend_initWithFormat_(v17, v19, @"%s:%d", v18, 170);
    v29[3] = v20;
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v21, v29, v28, 4);
    v24 = objc_msgSend_initWithDomain_code_userInfo_(v8, v23, v10, 10, v22);
    v25 = *(*(a1 + 32) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;
  }

  v27 = *MEMORY[0x29EDCA608];
}

void sub_2994CD554(uint64_t a1, const char *a2, uint64_t a3)
{
  v41 = *MEMORY[0x29EDCA608];
  v6 = objc_msgSend__deleteAllAppletEntities(*(a1 + 32), a2, a3);
  if (!v6)
  {
    v7 = sub_2994CFB70(*(a1 + 32), v4, v5);
    hasChanges = objc_msgSend_hasChanges(v7, v8, v9);

    if (hasChanges)
    {
      v11 = sub_2994CFB70(*(a1 + 32), v4, v5);
      v30 = 0;
      objc_msgSend_save_(v11, v12, &v30);
      v6 = v30;

      if (v6)
      {
        v13 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v15 = Logger;
          Class = object_getClass(*(a1 + 32));
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(*(a1 + 32));
          Name = sel_getName(*(a1 + 40));
          v18 = 45;
          if (isMetaClass)
          {
            v18 = 43;
          }

          v15(3, "%c[%{public}s %{public}s]:%i Failed to save: %{public}@", v18, ClassName, Name, 216, v6);
        }

        dispatch_get_specific(*v13);
        v19 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v20))
          {
            v21 = 43;
          }

          else
          {
            v21 = 45;
          }

          v22 = object_getClassName(*(a1 + 32));
          v23 = sel_getName(*(a1 + 40));
          *buf = 67110146;
          v32 = v21;
          v33 = 2082;
          v34 = v22;
          v35 = 2082;
          v36 = v23;
          v37 = 1024;
          v38 = 216;
          v39 = 2114;
          v40 = v6;
          _os_log_impl(&dword_2994CA000, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to save: %{public}@", buf, 0x2Cu);
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  v24 = sub_2994CFB70(*(a1 + 32), v4, v5);
  objc_msgSend_reset(v24, v25, v26);

  v27 = *MEMORY[0x29EDCA608];
}

uint64_t sub_2994CDBD8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2994CDBF0(uint64_t a1, const char *a2, uint64_t a3)
{
  v255 = *MEMORY[0x29EDCA608];
  v4 = objc_msgSend_fetchRequest(ExpressESEEntity, a2, a3);
  v7 = sub_2994CFB70(*(a1 + 32), v5, v6);
  v8 = *(*(a1 + 40) + 8);
  obj = *(v8 + 40);
  v10 = objc_msgSend_executeFetchRequest_error_(v7, v9, v4, &obj);
  objc_storeStrong((v8 + 40), obj);

  v230 = v10;
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v11 = v4;
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v14 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v19 = 45;
      if (isMetaClass)
      {
        v19 = 43;
      }

      v14(3, "%c[%{public}s %{public}s]:%i Failed to execute fetch request: %{public}@", v19, ClassName, Name, 59, *(*(*(a1 + 40) + 8) + 40));
    }

    dispatch_get_specific(*v12);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v21))
      {
        v22 = 43;
      }

      else
      {
        v22 = 45;
      }

      v23 = object_getClassName(*(a1 + 32));
      v24 = sel_getName(*(a1 + 56));
      v25 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 67110146;
      v246 = v22;
      v247 = 2082;
      v248 = v23;
      v249 = 2082;
      v250 = v24;
      v251 = 1024;
      v252 = 59;
      v253 = 2114;
      v254 = v25;
      _os_log_impl(&dword_2994CA000, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to execute fetch request: %{public}@", buf, 0x2Cu);
    }

    v26 = v11;
    goto LABEL_83;
  }

  v229 = v4;
  v27 = objc_opt_new();
  v28 = *(*(a1 + 48) + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = v27;

  if (objc_msgSend_count(v10, v30, v31))
  {
    v239 = 0u;
    v240 = 0u;
    v237 = 0u;
    v238 = 0u;
    v32 = v10;
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v237, v244, 16);
    if (v34)
    {
      v37 = v34;
      v38 = 0;
      v39 = *v238;
      v232 = *MEMORY[0x29EDB9E38];
      v233 = *MEMORY[0x29EDB9ED8];
      v231 = *MEMORY[0x29EDB9EE0];
      v40 = 0x29EDBA000uLL;
      v234 = *v238;
      v235 = a1;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v238 != v39)
          {
            objc_enumerationMutation(v32);
          }

          v42 = *(*(&v237 + 1) + 8 * i);
          if (objc_msgSend_version(v42, v35, v36) == 1)
          {
            if (objc_msgSend_version(v42, v35, v36) == 1)
            {
              v43 = objc_opt_new();
              v46 = objc_msgSend_passID(v42, v44, v45);
              objc_msgSend_setObject_forKeyedSubscript_(v43, v47, v46, @"passUniqueID");

              v50 = objc_msgSend_aid(v42, v48, v49);
              objc_msgSend_setObject_forKeyedSubscript_(v43, v51, v50, @"appletIdentifier");

              v54 = objc_msgSend_keyID(v42, v52, v53);

              if (v54)
              {
                v57 = objc_msgSend_keyID(v42, v55, v56);
                objc_msgSend_setObject_forKeyedSubscript_(v43, v58, v57, @"keyIdentifier");
              }

              v59 = *(v40 + 112);
              v60 = objc_msgSend_expressEnabled(v42, v55, v56);
              v62 = objc_msgSend_numberWithBool_(v59, v61, v60);
              objc_msgSend_setObject_forKeyedSubscript_(v43, v63, v62, @"expressEnabled");

              v64 = *(v40 + 112);
              v67 = objc_msgSend_inSessionOnly(v42, v65, v66);
              v69 = objc_msgSend_numberWithBool_(v64, v68, v67);
              objc_msgSend_setObject_forKeyedSubscript_(v43, v70, v69, @"inSessionOnly");

              v71 = *(v40 + 112);
              v74 = objc_msgSend_uwbExpressEnabled(v42, v72, v73);
              v76 = objc_msgSend_numberWithBool_(v71, v75, v74);
              objc_msgSend_setObject_forKeyedSubscript_(v43, v77, v76, @"UWBExpressEnabled");

              v78 = *(v40 + 112);
              isUserChoice = objc_msgSend_isUserChoice(v42, v79, v80);
              v83 = objc_msgSend_numberWithBool_(v78, v82, isUserChoice);
              objc_msgSend_setObject_forKeyedSubscript_(v43, v84, v83, @"userChoice");

              v87 = objc_msgSend_type(v42, v85, v86);
              objc_msgSend_setObject_forKeyedSubscript_(v43, v88, v87, @"ExpressType");

              v91 = objc_msgSend_ecp2Info(v42, v89, v90);

              if (v91)
              {
                v94 = objc_msgSend_ecp2Info(v42, v92, v93);
                objc_msgSend_setObject_forKeyedSubscript_(v43, v95, v94, @"ECP2Info");
              }

              v96 = objc_msgSend_readerID(v42, v92, v93);

              if (v96)
              {
                v99 = objc_msgSend_readerID(v42, v97, v98);
                objc_msgSend_setObject_forKeyedSubscript_(v43, v100, v99, @"readerIdentifier");
              }

              v101 = objc_msgSend_moduleID(v42, v97, v98);
              objc_msgSend_setObject_forKeyedSubscript_(v43, v102, v101, @"moduleIdentifier");

              v103 = *(v40 + 112);
              v106 = objc_msgSend_groupActivationStyle(v42, v104, v105);
              v108 = objc_msgSend_numberWithInt_(v103, v107, v106);
              objc_msgSend_setObject_forKeyedSubscript_(v43, v109, v108, @"groupActivationStyle");

              v112 = objc_msgSend_groupHead(v42, v110, v111);

              if (v112)
              {
                v115 = objc_msgSend_groupHead(v42, v113, v114);
                objc_msgSend_setObject_forKeyedSubscript_(v43, v116, v115, @"groupHead");
              }

              v117 = objc_msgSend_groupMembers(v42, v113, v114);

              if (v117)
              {
                v120 = objc_msgSend_groupMembers(v42, v118, v119);
                objc_msgSend_setObject_forKeyedSubscript_(v43, v121, v120, @"groupMembers");
              }

              v122 = objc_msgSend_aliroGroupResolvingKeys(v42, v118, v119);

              if (v122)
              {
                v125 = objc_msgSend_aliroGroupResolvingKeys(v42, v123, v124);
                objc_msgSend_setObject_forKeyedSubscript_(v43, v126, v125, @"aliroGroupResolvingKeys");
              }

              v127 = objc_msgSend_associatedReaderIdentifiers(v42, v123, v124);

              if (v127)
              {
                v130 = objc_msgSend_associatedReaderIdentifiers(v42, v128, v129);
                objc_msgSend_setObject_forKeyedSubscript_(v43, v131, v130, @"associatedReaderIdentifiers");
              }

              objc_msgSend_addObject_(*(*(*(a1 + 48) + 8) + 40), v128, v43);
            }

            else
            {
              v132 = v32;
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v133 = NFLogGetLogger();
              if (v133)
              {
                v134 = v133;
                v135 = object_getClass(*(a1 + 32));
                v136 = class_isMetaClass(v135);
                v137 = object_getClassName(*(a1 + 32));
                v138 = sel_getName(*(a1 + 56));
                v228 = objc_msgSend_version(v42, v139, v140);
                v225 = v138;
                a1 = v235;
                v141 = 45;
                if (v136)
                {
                  v141 = 43;
                }

                v134(3, "%c[%{public}s %{public}s]:%i Unknown version info %d", v141, v137, v225, 101, v228);
              }

              v142 = v37;
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v143 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
              {
                v144 = object_getClass(*(a1 + 32));
                if (class_isMetaClass(v144))
                {
                  v145 = 43;
                }

                else
                {
                  v145 = 45;
                }

                v146 = object_getClassName(*(a1 + 32));
                v147 = sel_getName(*(a1 + 56));
                v150 = objc_msgSend_version(v42, v148, v149);
                *buf = 67110146;
                v246 = v145;
                v247 = 2082;
                v248 = v146;
                v249 = 2082;
                v250 = v147;
                v251 = 1024;
                v252 = 101;
                v253 = 1024;
                LODWORD(v254) = v150;
                _os_log_impl(&dword_2994CA000, v143, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unknown version info %d", buf, 0x28u);
              }

              v151 = objc_alloc(MEMORY[0x29EDB9FA0]);
              v153 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v152, "nfcd");
              v242[0] = v233;
              v155 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v154, "Decoding Error");
              v243[0] = v155;
              v243[1] = &unk_2A1F86D98;
              v242[1] = @"Line";
              v242[2] = @"Method";
              v156 = objc_alloc(MEMORY[0x29EDBA0F8]);
              v157 = sel_getName(*(a1 + 56));
              v159 = objc_msgSend_initWithFormat_(v156, v158, @"%s", v157);
              v243[2] = v159;
              v242[3] = v232;
              v160 = objc_alloc(MEMORY[0x29EDBA0F8]);
              v161 = sel_getName(*(v235 + 56));
              v163 = objc_msgSend_initWithFormat_(v160, v162, @"%s:%d", v161, 102);
              v243[3] = v163;
              v242[4] = v231;
              v164 = objc_alloc(MEMORY[0x29EDBA0F8]);
              v166 = objc_msgSend_initWithFormat_(v164, v165, @"incorrect ESE model version");
              v243[4] = v166;
              v168 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v167, v243, v242, 5);
              v170 = objc_msgSend_initWithDomain_code_userInfo_(v151, v169, v153, 23, v168);
              v171 = *(*(v235 + 40) + 8);
              v172 = *(v171 + 40);
              *(v171 + 40) = v170;

              a1 = v235;
              v173 = *(*(v235 + 48) + 8);
              v43 = *(v173 + 40);
              *(v173 + 40) = 0;
              v38 = 1;
              v32 = v132;
              v37 = v142;
              v39 = v234;
              v40 = 0x29EDBA000;
            }
          }

          else
          {
            v38 = 1;
          }
        }

        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v237, v244, 16);
      }

      while (v37);

      v26 = v229;
      if ((v38 & 1) == 0)
      {
        goto LABEL_82;
      }

      v176 = sub_2994CFB70(*(a1 + 32), v174, v175);
      hasChanges = objc_msgSend_hasChanges(v176, v177, v178);

      if (!hasChanges)
      {
        goto LABEL_82;
      }

      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v180 = NFLogGetLogger();
      if (v180)
      {
        v181 = v180;
        v182 = object_getClass(*(a1 + 32));
        v183 = class_isMetaClass(v182);
        v184 = object_getClassName(*(a1 + 32));
        v226 = sel_getName(*(a1 + 56));
        v185 = 45;
        if (v183)
        {
          v185 = 43;
        }

        v181(6, "%c[%{public}s %{public}s]:%i Update required; remove entities", v185, v184, v226, 110);
      }

      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v186 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
      {
        v187 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v187))
        {
          v188 = 43;
        }

        else
        {
          v188 = 45;
        }

        v189 = object_getClassName(*(a1 + 32));
        v190 = sel_getName(*(a1 + 56));
        *buf = 67109890;
        v246 = v188;
        v247 = 2082;
        v248 = v189;
        v249 = 2082;
        v250 = v190;
        v251 = 1024;
        v252 = 110;
        _os_log_impl(&dword_2994CA000, v186, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Update required; remove entities", buf, 0x22u);
      }

      v193 = objc_msgSend__deleteAllESEExpressEntities(*(a1 + 32), v191, v192);
      v196 = sub_2994CFB70(*(a1 + 32), v194, v195);
      v197 = *(*(a1 + 40) + 8);
      v236 = *(v197 + 40);
      objc_msgSend_save_(v196, v198, &v236);
      objc_storeStrong((v197 + 40), v236);

      if (!*(*(*(a1 + 40) + 8) + 40))
      {
        goto LABEL_82;
      }

      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v199 = NFLogGetLogger();
      if (v199)
      {
        v200 = v199;
        v201 = object_getClass(*(a1 + 32));
        v202 = class_isMetaClass(v201);
        v203 = object_getClassName(*(a1 + 32));
        v204 = sel_getName(*(a1 + 56));
        v205 = 45;
        if (v202)
        {
          v205 = 43;
        }

        v200(3, "%c[%{public}s %{public}s]:%i Failed to save: %{public}@", v205, v203, v204, 115, *(*(*(a1 + 40) + 8) + 40));
      }

      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v32 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v206 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v206))
        {
          v207 = 43;
        }

        else
        {
          v207 = 45;
        }

        v208 = object_getClassName(*(a1 + 32));
        v209 = sel_getName(*(a1 + 56));
        v210 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 67110146;
        v246 = v207;
        v247 = 2082;
        v248 = v208;
        v249 = 2082;
        v250 = v209;
        v251 = 1024;
        v252 = 115;
        v253 = 2114;
        v254 = v210;
        _os_log_impl(&dword_2994CA000, v32, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to save: %{public}@", buf, 0x2Cu);
      }
    }

    else
    {
      v26 = v4;
    }

LABEL_82:
    v20 = sub_2994CFB70(*(a1 + 32), v174, v175);
    objc_msgSend_reset(v20, v222, v223);
    goto LABEL_83;
  }

  v211 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v212 = NFLogGetLogger();
  if (v212)
  {
    v213 = v212;
    v214 = object_getClass(*(a1 + 32));
    v215 = class_isMetaClass(v214);
    v216 = object_getClassName(*(a1 + 32));
    v227 = sel_getName(*(a1 + 56));
    v217 = 45;
    if (v215)
    {
      v217 = 43;
    }

    v213(6, "%c[%{public}s %{public}s]:%i Nothing in DB - return an empty array", v217, v216, v227, 66);
  }

  dispatch_get_specific(*v211);
  v20 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v218 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v218))
    {
      v219 = 43;
    }

    else
    {
      v219 = 45;
    }

    v220 = object_getClassName(*(a1 + 32));
    v221 = sel_getName(*(a1 + 56));
    *buf = 67109890;
    v246 = v219;
    v247 = 2082;
    v248 = v220;
    v249 = 2082;
    v250 = v221;
    v251 = 1024;
    v252 = 66;
    _os_log_impl(&dword_2994CA000, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Nothing in DB - return an empty array", buf, 0x22u);
  }

  v26 = v229;
LABEL_83:

  v224 = *MEMORY[0x29EDCA608];
}

void sub_2994CEE44(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a1;
  v146 = *MEMORY[0x29EDCA608];
  v4 = objc_msgSend__deleteAllESEExpressEntities(*(a1 + 32), a2, a3);
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(*(v3 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(v3 + 32));
      Name = sel_getName(*(v3 + 48));
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v8(3, "%c[%{public}s %{public}s]:%i Failed to delete all: %{public}@", v11, ClassName, Name, 164, v5);
    }

    dispatch_get_specific(*v6);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v13 = object_getClass(*(v3 + 32));
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    v15 = object_getClassName(*(v3 + 32));
    v16 = sel_getName(*(v3 + 48));
    *buf = 67110146;
    v137 = v14;
    v138 = 2082;
    v139 = v15;
    v140 = 2082;
    v141 = v16;
    v142 = 1024;
    v143 = 164;
    v144 = 2114;
    v145 = v5;
    v17 = "%c[%{public}s %{public}s]:%i Failed to delete all: %{public}@";
LABEL_11:
    _os_log_impl(&dword_2994CA000, v12, OS_LOG_TYPE_ERROR, v17, buf, 0x2Cu);
LABEL_12:

    goto LABEL_46;
  }

  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  obj = *(v3 + 40);
  v129 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v131, v135, 16);
  if (v129)
  {
    v127 = v3;
    v128 = *v132;
    do
    {
      for (i = 0; i != v129; ++i)
      {
        if (*v132 != v128)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v131 + 1) + 8 * i);
        v25 = MEMORY[0x29EDB8C48];
        v26 = sub_2994CFB70(*(v3 + 32), v21, v22);
        v28 = objc_msgSend_insertNewObjectForEntityForName_inManagedObjectContext_(v25, v27, @"ExpressESEEntity", v26);

        v30 = objc_msgSend_objectForKeyedSubscript_(v24, v29, @"appletIdentifier");
        objc_msgSend_setAid_(v28, v31, v30);

        v33 = objc_msgSend_objectForKeyedSubscript_(v24, v32, @"passUniqueID");
        objc_msgSend_setPassID_(v28, v34, v33);

        v36 = objc_msgSend_objectForKeyedSubscript_(v24, v35, @"keyIdentifier");

        if (v36)
        {
          v38 = objc_msgSend_objectForKeyedSubscript_(v24, v37, @"keyIdentifier");
          objc_msgSend_setKeyID_(v28, v39, v38);
        }

        v40 = objc_msgSend_objectForKeyedSubscript_(v24, v37, @"expressEnabled");
        v43 = objc_msgSend_BOOLValue(v40, v41, v42);
        objc_msgSend_setExpressEnabled_(v28, v44, v43);

        v46 = objc_msgSend_objectForKeyedSubscript_(v24, v45, @"ExpressType");
        objc_msgSend_setType_(v28, v47, v46);

        v49 = objc_msgSend_objectForKeyedSubscript_(v24, v48, @"inSessionOnly");
        v52 = objc_msgSend_BOOLValue(v49, v50, v51);
        objc_msgSend_setInSessionOnly_(v28, v53, v52);

        v55 = objc_msgSend_objectForKeyedSubscript_(v24, v54, @"UWBExpressEnabled");
        v58 = objc_msgSend_BOOLValue(v55, v56, v57);
        objc_msgSend_setUwbExpressEnabled_(v28, v59, v58);

        v61 = objc_msgSend_objectForKeyedSubscript_(v24, v60, @"userChoice");
        v64 = objc_msgSend_BOOLValue(v61, v62, v63);
        objc_msgSend_setIsUserChoice_(v28, v65, v64);

        v67 = objc_msgSend_objectForKeyedSubscript_(v24, v66, @"ECP2Info");

        if (v67)
        {
          v69 = objc_msgSend_objectForKeyedSubscript_(v24, v68, @"ECP2Info");
          objc_msgSend_setEcp2Info_(v28, v70, v69);
        }

        v71 = objc_msgSend_objectForKeyedSubscript_(v24, v68, @"readerIdentifier");

        if (v71)
        {
          v73 = objc_msgSend_objectForKeyedSubscript_(v24, v72, @"readerIdentifier");
          objc_msgSend_setReaderID_(v28, v74, v73);
        }

        v75 = objc_msgSend_objectForKeyedSubscript_(v24, v72, @"moduleIdentifier");
        objc_msgSend_setModuleID_(v28, v76, v75);

        v78 = objc_msgSend_objectForKeyedSubscript_(v24, v77, @"groupActivationStyle");
        v81 = objc_msgSend_intValue(v78, v79, v80);
        objc_msgSend_setGroupActivationStyle_(v28, v82, v81);

        v84 = objc_msgSend_objectForKeyedSubscript_(v24, v83, @"groupHead");

        if (v84)
        {
          v86 = objc_msgSend_objectForKeyedSubscript_(v24, v85, @"groupHead");
          objc_msgSend_setGroupHead_(v28, v87, v86);
        }

        v88 = objc_msgSend_objectForKeyedSubscript_(v24, v85, @"groupMembers");

        if (v88)
        {
          v90 = objc_msgSend_objectForKeyedSubscript_(v24, v89, @"groupMembers");
          objc_msgSend_setGroupMembers_(v28, v91, v90);
        }

        v92 = objc_msgSend_objectForKeyedSubscript_(v24, v89, @"aliroGroupResolvingKeys");

        if (v92)
        {
          v94 = objc_msgSend_objectForKeyedSubscript_(v24, v93, @"aliroGroupResolvingKeys");
          objc_msgSend_setAliroGroupResolvingKeys_(v28, v95, v94);
        }

        v96 = objc_msgSend_objectForKeyedSubscript_(v24, v93, @"associatedReaderIdentifiers");

        if (v96)
        {
          v98 = objc_msgSend_objectForKeyedSubscript_(v24, v97, @"associatedReaderIdentifiers");
          objc_msgSend_setAssociatedReaderIdentifiers_(v28, v99, v98);
        }

        objc_msgSend_setVersion_(v28, v97, 1);

        v3 = v127;
      }

      v129 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v131, v135, 16);
    }

    while (v129);
  }

  v102 = sub_2994CFB70(*(v3 + 32), v100, v101);
  hasChanges = objc_msgSend_hasChanges(v102, v103, v104);

  if (!hasChanges)
  {
    v5 = 0;
    goto LABEL_46;
  }

  v106 = sub_2994CFB70(*(v3 + 32), v18, v19);
  v130 = 0;
  objc_msgSend_save_(v106, v107, &v130);
  v5 = v130;

  if (v5)
  {
    v108 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v109 = NFLogGetLogger();
    if (v109)
    {
      v110 = v109;
      v111 = object_getClass(*(v3 + 32));
      v112 = class_isMetaClass(v111);
      v123 = object_getClassName(*(v3 + 32));
      v125 = sel_getName(*(v3 + 48));
      v113 = 45;
      if (v112)
      {
        v113 = 43;
      }

      v110(3, "%c[%{public}s %{public}s]:%i Failed to save: %{public}@", v113, v123, v125, 201, v5);
    }

    dispatch_get_specific(*v108);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v114 = object_getClass(*(v3 + 32));
    if (class_isMetaClass(v114))
    {
      v115 = 43;
    }

    else
    {
      v115 = 45;
    }

    v116 = object_getClassName(*(v3 + 32));
    v117 = sel_getName(*(v3 + 48));
    *buf = 67110146;
    v137 = v115;
    v138 = 2082;
    v139 = v116;
    v140 = 2082;
    v141 = v117;
    v142 = 1024;
    v143 = 201;
    v144 = 2114;
    v145 = v5;
    v17 = "%c[%{public}s %{public}s]:%i Failed to save: %{public}@";
    goto LABEL_11;
  }

LABEL_46:
  v118 = sub_2994CFB70(*(v3 + 32), v18, v19);
  objc_msgSend_reset(v118, v119, v120);

  v121 = *MEMORY[0x29EDCA608];
}

void sub_2994CF7FC(uint64_t a1, const char *a2, uint64_t a3)
{
  v41 = *MEMORY[0x29EDCA608];
  v6 = objc_msgSend__deleteAllESEExpressEntities(*(a1 + 32), a2, a3);
  if (!v6)
  {
    v7 = sub_2994CFB70(*(a1 + 32), v4, v5);
    hasChanges = objc_msgSend_hasChanges(v7, v8, v9);

    if (hasChanges)
    {
      v11 = sub_2994CFB70(*(a1 + 32), v4, v5);
      v30 = 0;
      objc_msgSend_save_(v11, v12, &v30);
      v6 = v30;

      if (v6)
      {
        v13 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v15 = Logger;
          Class = object_getClass(*(a1 + 32));
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(*(a1 + 32));
          Name = sel_getName(*(a1 + 40));
          v18 = 45;
          if (isMetaClass)
          {
            v18 = 43;
          }

          v15(3, "%c[%{public}s %{public}s]:%i Failed to save: %{public}@", v18, ClassName, Name, 228, v6);
        }

        dispatch_get_specific(*v13);
        v19 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v20))
          {
            v21 = 43;
          }

          else
          {
            v21 = 45;
          }

          v22 = object_getClassName(*(a1 + 32));
          v23 = sel_getName(*(a1 + 40));
          *buf = 67110146;
          v32 = v21;
          v33 = 2082;
          v34 = v22;
          v35 = 2082;
          v36 = v23;
          v37 = 1024;
          v38 = 228;
          v39 = 2114;
          v40 = v6;
          _os_log_impl(&dword_2994CA000, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to save: %{public}@", buf, 0x2Cu);
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  v24 = sub_2994CFB70(*(a1 + 32), v4, v5);
  objc_msgSend_reset(v24, v25, v26);

  v27 = *MEMORY[0x29EDCA608];
}

id sub_2994CFA10()
{
  v0 = geteuid();
  if (!v0)
  {
    v0 = getuid();
  }

  v2 = getpwuid(v0);
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v2 = objc_msgSend_initWithUTF8String_(v3, v4, v2[6]);
  }

  v5 = objc_msgSend_stringByAppendingPathComponent_(v2, v1, @"/Library/NFStorage/");

  return v5;
}

id sub_2994CFA8C(id *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v4 = MEMORY[0x29EDB8E70];
    v5 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v8 = objc_msgSend_name(a1, v6, v7);
    v10 = objc_msgSend_initWithFormat_(v5, v9, @"/System/Library/PrivateFrameworks/NearField.framework/NFStorage%@Model.momd", v8);
    v12 = objc_msgSend_URLWithString_(v4, v11, v10);

    v13 = objc_alloc(MEMORY[0x29EDB8C68]);
    v15 = objc_msgSend_initWithContentsOfURL_(v13, v14, v12);
    v16 = a1[2];
    a1[2] = v15;

    v2 = a1[2];
  }

  return v2;
}

id *sub_2994CFB70(id *a1, const char *a2, uint64_t a3)
{
  v3 = a1;
  v142[1] = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v4 = a1[1];
    if (v4)
    {
      v3 = v4;
      goto LABEL_55;
    }

    v5 = a1[3];
    if (v5)
    {
      v6 = v5;
      goto LABEL_53;
    }

    v7 = objc_msgSend_defaultManager(MEMORY[0x29EDB9FB8], a2, a3);
    v8 = sub_2994CFA10();
    v9 = *MEMORY[0x29EDB8C30];
    v141 = *MEMORY[0x29EDB8C30];
    v142[0] = *MEMORY[0x29EDB9E88];
    v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v10, v142, &v141, 1);
    v126 = 0;
    objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v7, v12, v8, 1, v11, &v126);
    v13 = v126;

    if (v13)
    {
      v14 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v16 = Logger;
        Class = object_getClass(v3);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v3);
        Name = sel_getName(sel_persistentStoreCoordinator);
        v21 = sub_2994CFA10();
        v22 = 45;
        if (isMetaClass)
        {
          v22 = 43;
        }

        v16(3, "%c[%{public}s %{public}s]:%i Failed to create home directory %{public}@: %{public}@", v22, ClassName, Name, 75, v21, v13);
      }

      dispatch_get_specific(*v14);
      v23 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = object_getClass(v3);
        if (class_isMetaClass(v24))
        {
          v25 = 43;
        }

        else
        {
          v25 = 45;
        }

        v26 = object_getClassName(v3);
        v27 = sel_getName(sel_persistentStoreCoordinator);
        v28 = sub_2994CFA10();
        *buf = 67110402;
        v130 = v25;
        v131 = 2082;
        v132 = v26;
        v133 = 2082;
        v134 = v27;
        v135 = 1024;
        v136 = 75;
        v137 = 2114;
        v138 = v28;
        v139 = 2114;
        v140 = v13;
        _os_log_impl(&dword_2994CA000, v23, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to create home directory %{public}@: %{public}@", buf, 0x36u);
      }

      v6 = 0;
LABEL_52:

      if (!v6)
      {
LABEL_54:
        v3 = v3[1];

        goto LABEL_55;
      }

LABEL_53:
      v100 = objc_alloc(MEMORY[0x29EDB8C60]);
      v102 = objc_msgSend_initWithConcurrencyType_(v100, v101, 1);
      v103 = v3[1];
      v3[1] = v102;

      objc_msgSend_setPersistentStoreCoordinator_(v3[1], v104, v6);
      goto LABEL_54;
    }

    v29 = MEMORY[0x29EDB8E70];
    v30 = sub_2994CFA10();
    v31 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v34 = objc_msgSend_name(v3, v32, v33);
    v36 = objc_msgSend_initWithFormat_(v31, v35, @"NFStorage%@.sqlite", v34);
    v38 = objc_msgSend_stringByAppendingPathComponent_(v30, v37, v36);

    v23 = objc_msgSend_fileURLWithPath_(v29, v39, v38);

    v40 = MEMORY[0x29EDB8E00];
    v41 = *MEMORY[0x29EDB8C20];
    v127[0] = *MEMORY[0x29EDB8C28];
    v127[1] = v41;
    v128[0] = MEMORY[0x29EDB8EB0];
    v128[1] = MEMORY[0x29EDB8EB0];
    v127[2] = v9;
    v44 = objc_msgSend_dbProtectionType(v3, v42, v43);
    v128[2] = v44;
    v46 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v45, v128, v127, 3);
    v48 = objc_msgSend_dictionaryWithDictionary_(v40, v47, v46);

    v49 = sub_2994CFA8C(v3);

    if (v49)
    {
      v50 = objc_alloc(MEMORY[0x29EDB8C70]);
      v51 = sub_2994CFA8C(v3);
      v53 = objc_msgSend_initWithManagedObjectModel_(v50, v52, v51);
      v54 = v3[3];
      v3[3] = v53;

      v55 = v3[3];
      v56 = *MEMORY[0x29EDB8C38];
      v125 = 0;
      v58 = objc_msgSend_addPersistentStoreWithType_configuration_URL_options_error_(v55, v57, v56, 0, v23, v48, &v125);
      v59 = v125;

      if (v58)
      {
        v13 = v59;
LABEL_50:
        v6 = v3[3];
        goto LABEL_51;
      }

      v72 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v73 = NFLogGetLogger();
      if (v73)
      {
        v74 = v73;
        v75 = object_getClass(v3);
        v76 = class_isMetaClass(v75);
        v117 = object_getClassName(v3);
        v121 = sel_getName(sel_persistentStoreCoordinator);
        v77 = 45;
        if (v76)
        {
          v77 = 43;
        }

        v72 = MEMORY[0x29EDC9730];
        v74(3, "%c[%{public}s %{public}s]:%i Failed to add SQLite store type: %{public}@", v77, v117, v121, 105, v59);
      }

      dispatch_get_specific(*v72);
      v78 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        v79 = object_getClass(v3);
        if (class_isMetaClass(v79))
        {
          v80 = 43;
        }

        else
        {
          v80 = 45;
        }

        v81 = object_getClassName(v3);
        v82 = sel_getName(sel_persistentStoreCoordinator);
        *buf = 67110146;
        v130 = v80;
        v72 = MEMORY[0x29EDC9730];
        v131 = 2082;
        v132 = v81;
        v133 = 2082;
        v134 = v82;
        v135 = 1024;
        v136 = 105;
        v137 = 2114;
        v138 = v59;
        _os_log_impl(&dword_2994CA000, v78, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to add SQLite store type: %{public}@", buf, 0x2Cu);
      }

      dispatch_get_specific(*v72);
      v83 = NFLogGetLogger();
      if (v83)
      {
        v84 = v83;
        v85 = object_getClass(v3);
        v86 = class_isMetaClass(v85);
        v118 = object_getClassName(v3);
        v122 = sel_getName(sel_persistentStoreCoordinator);
        v87 = 45;
        if (v86)
        {
          v87 = 43;
        }

        v72 = MEMORY[0x29EDC9730];
        v84(3, "%c[%{public}s %{public}s]:%i Deleting old DB at %{public}@", v87, v118, v122, 108, v23);
      }

      dispatch_get_specific(*v72);
      v88 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        v89 = object_getClass(v3);
        if (class_isMetaClass(v89))
        {
          v90 = 43;
        }

        else
        {
          v90 = 45;
        }

        v91 = object_getClassName(v3);
        v92 = sel_getName(sel_persistentStoreCoordinator);
        *buf = 67110146;
        v130 = v90;
        v72 = MEMORY[0x29EDC9730];
        v131 = 2082;
        v132 = v91;
        v133 = 2082;
        v134 = v92;
        v135 = 1024;
        v136 = 108;
        v137 = 2114;
        v138 = v23;
        _os_log_impl(&dword_2994CA000, v88, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Deleting old DB at %{public}@", buf, 0x2Cu);
      }

      v95 = objc_msgSend_defaultManager(MEMORY[0x29EDB9FB8], v93, v94);
      objc_msgSend_removeItemAtURL_error_(v95, v96, v23, 0);

      v97 = v3[3];
      v124 = v59;
      v99 = objc_msgSend_addPersistentStoreWithType_configuration_URL_options_error_(v97, v98, v56, 0, v23, v48, &v124);
      v13 = v124;

      if (v99)
      {
        goto LABEL_50;
      }

      dispatch_get_specific(*v72);
      v107 = NFLogGetLogger();
      if (v107)
      {
        v108 = v107;
        v109 = object_getClass(v3);
        v110 = class_isMetaClass(v109);
        v119 = object_getClassName(v3);
        v123 = sel_getName(sel_persistentStoreCoordinator);
        v111 = 45;
        if (v110)
        {
          v111 = 43;
        }

        v108(3, "%c[%{public}s %{public}s]:%i Failed to add SQLite store type after removing: %{public}@", v111, v119, v123, 116, v13);
      }

      dispatch_get_specific(*v72);
      v112 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
      {
        v113 = object_getClass(v3);
        if (class_isMetaClass(v113))
        {
          v114 = 43;
        }

        else
        {
          v114 = 45;
        }

        v115 = object_getClassName(v3);
        v116 = sel_getName(sel_persistentStoreCoordinator);
        *buf = 67110146;
        v130 = v114;
        v131 = 2082;
        v132 = v115;
        v133 = 2082;
        v134 = v116;
        v135 = 1024;
        v136 = 116;
        v137 = 2114;
        v138 = v13;
        _os_log_impl(&dword_2994CA000, v112, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to add SQLite store type after removing: %{public}@", buf, 0x2Cu);
      }
    }

    else
    {
      v60 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v61 = NFLogGetLogger();
      if (v61)
      {
        v62 = v61;
        v63 = object_getClass(v3);
        v64 = class_isMetaClass(v63);
        v65 = object_getClassName(v3);
        v120 = sel_getName(sel_persistentStoreCoordinator);
        v66 = 45;
        if (v64)
        {
          v66 = 43;
        }

        v62(3, "%c[%{public}s %{public}s]:%i Failed to load model", v66, v65, v120, 95);
      }

      dispatch_get_specific(*v60);
      v67 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        v68 = object_getClass(v3);
        if (class_isMetaClass(v68))
        {
          v69 = 43;
        }

        else
        {
          v69 = 45;
        }

        v70 = object_getClassName(v3);
        v71 = sel_getName(sel_persistentStoreCoordinator);
        *buf = 67109890;
        v130 = v69;
        v131 = 2082;
        v132 = v70;
        v133 = 2082;
        v134 = v71;
        v135 = 1024;
        v136 = 95;
        _os_log_impl(&dword_2994CA000, v67, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to load model", buf, 0x22u);
      }

      v13 = 0;
    }

    v6 = 0;
LABEL_51:

    goto LABEL_52;
  }

LABEL_55:
  v105 = *MEMORY[0x29EDCA608];

  return v3;
}