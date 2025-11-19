@interface EQKitMathMLMLongDivision
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (id)layoutSchemata;
- (void)dealloc;
@end

@implementation EQKitMathMLMLongDivision

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v33.receiver = self;
  v33.super_class = EQKitMathMLMLongDivision;
  v8 = [(EQKitMathMLMLongDivision *)&v33 init];
  if (v8)
  {
    v9 = objc_msgSend_parseChildrenAsArrayFromXMLNode_(a4, v6, a3, v7);
    if (objc_msgSend_count(v9, v10, v11, v12) < 3)
    {
      objc_msgSend_reportError_withNode_(a4, v13, 5, a3);

      return 0;
    }

    else
    {
      v15 = objc_msgSend_objectAtIndex_(v9, v13, 0, v14);
      v8->mDivisor = v15;
      objc_msgSend_setParent_(v15, v16, v8, v17);
      v21 = objc_msgSend_mutableCopy(v9, v18, v19, v20);
      objc_msgSend_removeObjectAtIndex_(v21, v22, 0, v23);
      v24 = objc_alloc_init(EQKitMathMLMStackLine);
      objc_msgSend_insertObject_atIndex_(v21, v25, v24, 1);
      v26 = [EQKitMathMLMStack alloc];
      v29 = objc_msgSend_initWithChildren_(v26, v27, v21, v28);
      v8->mStack = v29;
      objc_msgSend_setParent_(v29, v30, v8, v31);
    }
  }

  return v8;
}

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A38960, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38960))
  {
    sub_275C8E754(qword_280A38948, &dword_275D0BEF4, dword_275D0BEF8);
    __cxa_guard_release(&qword_280A38960);
  }

  return qword_280A38948;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMLongDivision;
  [(EQKitMathMLMLongDivision *)&v3 dealloc];
}

- (id)layoutSchemata
{
  *a2 = &unk_2884CB990;
  *(a2 + 8) = 18;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

@end