@interface NFPowerAssertion
+ (id)sharedPowerAssertion;
- (NFPowerAssertion)init;
- (id)assertionHolders;
- (id)dumpState;
- (void)releasePowerAssertion:(id)assertion logFaultOnOverRelease:(BOOL)release;
@end

@implementation NFPowerAssertion

+ (id)sharedPowerAssertion
{
  if (qword_280AEEF08 != -1)
  {
    dispatch_once(&qword_280AEEF08, &unk_2843ADB00);
  }

  v3 = qword_280AEEF00;

  return v3;
}

- (NFPowerAssertion)init
{
  v6.receiver = self;
  v6.super_class = NFPowerAssertion;
  v2 = [(NFPowerAssertion *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    assertionHolders = v2->_assertionHolders;
    v2->_assertionHolders = v3;
  }

  return v2;
}

- (void)releasePowerAssertion:(id)assertion logFaultOnOverRelease:(BOOL)release
{
  releaseCopy = release;
  v126 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  v8 = self->_assertionHolders;
  objc_sync_enter(v8);
  v10 = objc_msgSend_objectForKey_(self->_assertionHolders, v9, assertionCopy);
  v13 = v10;
  if (!v10)
  {
    if (qword_280AEEFD8 != -1)
    {
      dispatch_once(&qword_280AEEFD8, &unk_2843ADA20);
    }

    if (byte_280AEEFE0 == 1 && releaseCopy)
    {
      v16 = NFSharedLogGetLogger(0);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_73;
      }

      *buf = 138543362;
      *v117 = assertionCopy;
LABEL_51:
      _os_log_fault_impl(&dword_22EEC4000, v16, OS_LOG_TYPE_FAULT, "%{public}@ does not hold assertion", buf, 0xCu);
      goto LABEL_73;
    }

    v84 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      goto LABEL_77;
    }

    v86 = *(&off_27DA9DE50 + specific);
    if (v86)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v89 = 45;
      if (isMetaClass)
      {
        v89 = 43;
      }

      v86(3, "%c[%{public}s %{public}s]:%i %{public}@ does not hold assertion", v89, ClassName, Name, 162, assertionCopy);
      v84 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v90 = dispatch_get_specific(v84);
    v16 = NFSharedLogGetLogger(v90);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }

    v91 = object_getClass(self);
    if (class_isMetaClass(v91))
    {
      v92 = 43;
    }

    else
    {
      v92 = 45;
    }

    *buf = 67110146;
    *v117 = v92;
    *&v117[4] = 2082;
    *&v117[6] = object_getClassName(self);
    v118 = 2082;
    v119 = sel_getName(a2);
    v120 = 1024;
    v121 = 162;
    v122 = 2114;
    v123 = assertionCopy;
LABEL_72:
    _os_log_impl(&dword_22EEC4000, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@ does not hold assertion", buf, 0x2Cu);
    goto LABEL_73;
  }

  if (objc_msgSend_count(v10, v11, v12))
  {
    v16 = objc_msgSend_lastObject(v13, v14, v15);
    v19 = objc_msgSend_unsignedLongValue(v16, v17, v18);
    v20 = IOPMAssertionRelease(v19);
    sel = a2;
    if (v20)
    {
      v23 = v20;
      v24 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      v25 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      if (v25 >= 5)
      {
        goto LABEL_77;
      }

      v26 = *(&off_27DA9DE50 + v25);
      if (v26)
      {
        v27 = object_getClass(self);
        v28 = class_isMetaClass(v27);
        v106 = object_getClassName(self);
        v109 = sel_getName(a2);
        v29 = 45;
        if (v28)
        {
          v29 = 43;
        }

        v26(3, "%c[%{public}s %{public}s]:%i Failed with 0x%x", v29, v106, v109, 183, v23);
        v24 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v30 = dispatch_get_specific(v24);
      v31 = NFSharedLogGetLogger(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = object_getClass(self);
        if (class_isMetaClass(v32))
        {
          v33 = 43;
        }

        else
        {
          v33 = 45;
        }

        *buf = 67110146;
        *v117 = v33;
        *&v117[4] = 2082;
        *&v117[6] = object_getClassName(self);
        v118 = 2082;
        v119 = sel_getName(a2);
        v120 = 1024;
        v121 = 183;
        v122 = 1024;
        LODWORD(v123) = v23;
        _os_log_impl(&dword_22EEC4000, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed with 0x%x", buf, 0x28u);
      }

      NFSimulateCrash(57005, "PM assertion release failure");
    }

    objc_msgSend_removeLastObject(v13, v21, v22);
    if (!objc_msgSend_count(v13, v34, v35))
    {
      objc_msgSend_removeObjectForKey_(self->_assertionHolders, v36, assertionCopy);
    }

    if (self->_enableDebug)
    {
      v37 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      v38 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      if (v38 < 5)
      {
        v39 = *(&off_27DA9DE50 + v38);
        if (v39)
        {
          v40 = object_getClass(self);
          v41 = class_isMetaClass(v40);
          v42 = object_getClassName(self);
          v43 = sel_getName(a2);
          v112 = objc_msgSend_count(v13, v44, v45);
          v46 = 45;
          if (v41)
          {
            v46 = 43;
          }

          v39(6, "%c[%{public}s %{public}s]:%i released assertion: counter: %lu id: %{public}@", v46, v42, v43, 195, v112, assertionCopy);
          v37 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        }

        v113 = v16;
        v47 = dispatch_get_specific(v37);
        v48 = NFSharedLogGetLogger(v47);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = object_getClass(self);
          if (class_isMetaClass(v49))
          {
            v50 = 43;
          }

          else
          {
            v50 = 45;
          }

          v51 = object_getClassName(self);
          v52 = sel_getName(sel);
          v55 = objc_msgSend_count(v13, v53, v54);
          *buf = 67110402;
          *v117 = v50;
          *&v117[4] = 2082;
          *&v117[6] = v51;
          v118 = 2082;
          v119 = v52;
          v120 = 1024;
          v121 = 195;
          v122 = 2048;
          v123 = v55;
          v124 = 2114;
          v125 = assertionCopy;
          _os_log_impl(&dword_22EEC4000, v48, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i released assertion: counter: %lu id: %{public}@", buf, 0x36u);
        }

        v56 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        v57 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        if (v57 < 5)
        {
          v58 = *(&off_27DA9DE50 + v57);
          if (v58)
          {
            v59 = object_getClass(self);
            v60 = class_isMetaClass(v59);
            v61 = object_getClassName(self);
            v62 = sel_getName(sel);
            objc_msgSend_dumpState(self, v63, v64);
            v65 = v8;
            v67 = v66 = assertionCopy;
            v70 = objc_msgSend_description(v67, v68, v69);
            v71 = 45;
            if (v60)
            {
              v71 = 43;
            }

            v58(6, "%c[%{public}s %{public}s]:%i all assertions: %{public}@", v71, v61, v62, 196, v70);

            assertionCopy = v66;
            v8 = v65;
            v56 = kNFLOG_DISPATCH_SPECIFIC_KEY;
          }

          v16 = v113;
          v72 = dispatch_get_specific(v56);
          v73 = NFSharedLogGetLogger(v72);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            v74 = object_getClass(self);
            if (class_isMetaClass(v74))
            {
              v75 = 43;
            }

            else
            {
              v75 = 45;
            }

            v76 = object_getClassName(self);
            v77 = sel_getName(sel);
            v80 = objc_msgSend_dumpState(self, v78, v79);
            objc_msgSend_description(v80, v81, v82);
            v83 = sela = assertionCopy;
            *buf = 67110146;
            *v117 = v75;
            *&v117[4] = 2082;
            *&v117[6] = v76;
            v118 = 2082;
            v119 = v77;
            v120 = 1024;
            v121 = 196;
            v122 = 2114;
            v123 = v83;
            _os_log_impl(&dword_22EEC4000, v73, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i all assertions: %{public}@", buf, 0x2Cu);

            assertionCopy = sela;
          }

          goto LABEL_73;
        }
      }

LABEL_77:
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    goto LABEL_73;
  }

  objc_msgSend_removeObjectForKey_(self->_assertionHolders, v14, assertionCopy);
  if (qword_280AEEFD8 != -1)
  {
    dispatch_once(&qword_280AEEFD8, &unk_2843ADA20);
  }

  if (byte_280AEEFE0 == 1 && releaseCopy)
  {
    v16 = NFSharedLogGetLogger(0);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_73;
    }

    *buf = 138543362;
    *v117 = assertionCopy;
    goto LABEL_51;
  }

  v93 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  v94 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  if (v94 >= 5)
  {
    goto LABEL_77;
  }

  v95 = *(&off_27DA9DE50 + v94);
  if (v95)
  {
    v96 = object_getClass(self);
    v97 = class_isMetaClass(v96);
    v108 = object_getClassName(self);
    v111 = sel_getName(a2);
    v98 = 45;
    if (v97)
    {
      v98 = 43;
    }

    v95(3, "%c[%{public}s %{public}s]:%i %{public}@ does not hold assertion", v98, v108, v111, 171, assertionCopy);
    v93 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  }

  v99 = dispatch_get_specific(v93);
  v16 = NFSharedLogGetLogger(v99);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v100 = object_getClass(self);
    if (class_isMetaClass(v100))
    {
      v101 = 43;
    }

    else
    {
      v101 = 45;
    }

    *buf = 67110146;
    *v117 = v101;
    *&v117[4] = 2082;
    *&v117[6] = object_getClassName(self);
    v118 = 2082;
    v119 = sel_getName(a2);
    v120 = 1024;
    v121 = 171;
    v122 = 2114;
    v123 = assertionCopy;
    goto LABEL_72;
  }

LABEL_73:

  if (self->_powerAssertTransaction && !objc_msgSend_count(self->_assertionHolders, v102, v103))
  {
    powerAssertTransaction = self->_powerAssertTransaction;
    self->_powerAssertTransaction = 0;
  }

  objc_sync_exit(v8);
  v105 = *MEMORY[0x277D85DE8];
}

- (id)assertionHolders
{
  v3 = self->_assertionHolders;
  objc_sync_enter(v3);
  v6 = objc_msgSend_dumpState(self, v4, v5);
  objc_sync_exit(v3);

  return v6;
}

- (id)dumpState
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = self->_assertionHolders;
  objc_sync_enter(v4);
  assertionHolders = self->_assertionHolders;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = sub_22EED96E8;
  v17 = &unk_278872B18;
  v18 = v3;
  v6 = v3;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(assertionHolders, v7, &v14);

  objc_sync_exit(v4);
  v20 = v6;
  v21 = @"NFPowerAssertion";
  v19 = @"holders";
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, &v20, &v19, 1, v14, v15, v16, v17);
  v22[0] = v9;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v22, &v21, 1);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end