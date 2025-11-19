@interface TSDFill
+ (id)drawablesSpecificInstanceWithArchive:(const void *)a3 unarchiver:(id)a4;
+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4;
+ (id)p_subclassRegistry;
+ (void)registerSubclass:(Class)a3;
- (NSString)presetKind;
- (TSDFill)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (id)initFromPropertyCommandMessage:(const Message *)a3 unarchiver:(id)a4;
- (int64_t)fillType;
- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4;
@end

@implementation TSDFill

+ (id)p_subclassRegistry
{
  if (qword_280A4C1F8 != -1)
  {
    sub_2768085A0();
  }

  v3 = qword_280A4C200;

  return v3;
}

+ (void)registerSubclass:(Class)a3
{
  v13 = objc_msgSend_p_subclassRegistry(a1, a2, a3);
  if (objc_msgSend_indexOfObject_(v13, v4, a3) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "+[TSDFill(TSDFillPersistenceAdditions) registerSubclass:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFillPersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 44, 0, "subclass is already registered %@", a3);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  objc_msgSend_addObject_(v13, v5, a3);
}

+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = objc_msgSend_p_subclassRegistry(a1, v7, v8, 0);
  v12 = objc_msgSend_reverseObjectEnumerator(v9, v10, v11);

  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v21, v25, 16);
  if (v15)
  {
    v16 = *v22;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = objc_msgSend_instanceWithArchive_unarchiver_(*(*(&v21 + 1) + 8 * i), v14, a3, v6);
        if (v18)
        {

          goto LABEL_11;
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v21, v25, 16);
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v18 = objc_msgSend_drawablesSpecificInstanceWithArchive_unarchiver_(a1, v19, a3, v6);
LABEL_11:

  return v18;
}

+ (id)drawablesSpecificInstanceWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v5 = a4;
  v8 = v5;
  v9 = *(a3 + 10);
  if (v9)
  {
    v11 = off_27A6CB850;
LABEL_7:
    v10 = objc_msgSend_instanceWithArchive_unarchiver_(*v11, v6, a3, v5);
    goto LABEL_8;
  }

  if ((v9 & 2) != 0)
  {
    v11 = off_27A6CB900;
    goto LABEL_7;
  }

  if ((v9 & 4) == 0)
  {
    v10 = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7);
LABEL_8:
    v12 = v10;
    goto LABEL_9;
  }

  v14 = *(a3 + 8);
  if (*(v14 + 56))
  {
    objc_msgSend_readDataReferenceMessage_(v5, v6, *(v14 + 56));
  }

  else
  {
    objc_msgSend_readDataReferenceMessage_(v5, v6, MEMORY[0x277D80A30]);
  }
  v15 = ;
  if (objc_msgSend_isApplicationData(v15, v16, v17))
  {
    if (objc_msgSend_isReadable(v15, v18, v19))
    {
      v20 = objc_msgSend_newCGDataProvider(v15, v18, v19);
      v21 = v20 == 0;
      CGDataProviderRelease(v20);
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = objc_msgSend_documentResourceLocator(v15, v18, v19);
  v25 = objc_msgSend_uppercaseString(v22, v23, v24);

  v28 = objc_msgSend_fallbackColor(v15, v26, v27);
  v30 = v28;
  if (v21)
  {
    if (v28)
    {
      v31 = v28;
    }

    else
    {
      v31 = objc_msgSend_colorForResource_(MEMORY[0x277D812E8], v29, v25);
    }

    v33 = v31;
    if ((*(v14 + 16) & 2) != 0)
    {
      v34 = TSPTSUColorCreateFromMessage();
      v37 = objc_msgSend_colorWithAlphaComponent_(v34, v35, v36, 1.0);
      objc_msgSend_alphaComponent(v33, v38, v39);
      v41 = objc_msgSend_blendedColorWithFraction_ofColor_(v33, v40, v37);

      v33 = v41;
    }

    v12 = objc_msgSend_colorWithColor_(TSDColorFill, v32, v33);
  }

  else
  {
    v12 = objc_msgSend_instanceWithArchive_unarchiver_(TSDImageFill, v29, a3, v8);
  }

LABEL_9:

  return v12;
}

- (TSDFill)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v5.receiver = self;
  v5.super_class = TSDFill;
  return [(TSDFill *)&v5 init:a3];
}

- (id)initFromPropertyCommandMessage:(const Message *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v7 = objc_opt_class();
  v9 = objc_msgSend_instanceWithArchive_unarchiver_(v7, v8, a3, v6);

  return v9;
}

- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4
{
  Mutable = CGPathCreateMutable();
  CGPathAddRectSafe();
  objc_msgSend_paintPath_inContext_(self, v7, Mutable, a4);

  CGPathRelease(Mutable);
}

- (int64_t)fillType
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDFill fillType]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFill.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 117, 0, "subclasses must override");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  return 5;
}

- (NSString)presetKind
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDFill presetKind]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFill.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 122, 0, "subclasses must override");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = *MEMORY[0x277D80B78];

  return v9;
}

@end