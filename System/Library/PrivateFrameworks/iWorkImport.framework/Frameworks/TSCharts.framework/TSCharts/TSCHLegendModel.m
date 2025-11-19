@interface TSCHLegendModel
- (BOOL)hasFloatValueForProperty:(int)a3 value:(float *)a4;
- (BOOL)hasIntValueForProperty:(int)a3 value:(int *)a4;
- (BOOL)hasObjectValueForProperty:(int)a3 value:(id *)a4;
- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)a3;
- (CGPoint)legendOffset;
- (CGSize)legendSize;
- (TSCHChartInfo)chartInfo;
- (TSCHLegendModel)init;
- (float)floatValueForProperty:(int)a3 defaultValue:(float)a4;
- (id)context;
- (id)copyWithZone:(_NSZone *)a3;
- (id)defaultProperties;
- (id)g_genericToDefaultPropertyMap;
- (id)g_operationPropertyNameForGenericProperty:(int)a3;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)model;
- (id)nonstyle;
- (id)objectValueForProperty:(int)a3;
- (id)style;
- (id)transformedTuplesWithTuple:(id)a3;
- (id)valueForProperty:(int)a3;
- (int)defaultPropertyForGeneric:(int)a3;
- (int)intValueForProperty:(int)a3 defaultValue:(int)a4;
- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4;
- (void)loadFromPreUFFArchive:(const void *)a3;
- (void)loadFromUnityArchive:(const void *)a3;
- (void)saveToUnityArchive:(void *)a3;
- (void)setLegendOffset:(CGPoint)a3;
- (void)setLegendSize:(CGSize)a3;
- (void)willModify;
@end

@implementation TSCHLegendModel

- (TSCHLegendModel)init
{
  v4.receiver = self;
  v4.super_class = TSCHLegendModel;
  result = [(TSCHLegendModel *)&v4 init];
  if (result)
  {
    v3 = *(MEMORY[0x277CBF398] + 16);
    result->_legendFrame.origin = *MEMORY[0x277CBF398];
    result->_legendFrame.size = v3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  if (v5)
  {
    v9 = objc_msgSend_chartInfo(self, v4, v6, v7, v8);
    objc_storeWeak(v5 + 1, v9);

    objc_msgSend_legendSize(self, v10, v11, v12, v13);
    *(v5 + 4) = v14;
    *(v5 + 5) = v15;
    objc_msgSend_legendOffset(self, v16, v14, v15, v17);
    v5[2] = v18;
    v5[3] = v19;
  }

  return v5;
}

- (void)willModify
{
  v9 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  objc_msgSend_willModify(v9, v5, v6, v7, v8);
}

- (id)model
{
  v5 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_model(v5, v6, v7, v8, v9);

  return v10;
}

- (CGPoint)legendOffset
{
  x = self->_legendFrame.origin.x;
  y = self->_legendFrame.origin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setLegendOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = self->_legendFrame.origin.x;
  v7 = self->_legendFrame.origin.y;
  if (v6 != x || v7 != y)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v3);
    self->_legendFrame.origin.x = x;
    self->_legendFrame.origin.y = y;
  }
}

- (CGSize)legendSize
{
  width = self->_legendFrame.size.width;
  height = self->_legendFrame.size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setLegendSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = self->_legendFrame.size.width;
  v7 = self->_legendFrame.size.height;
  if (v6 != width || v7 != height)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v3);
    self->_legendFrame.size.width = width;
    self->_legendFrame.size.height = height;
  }
}

- (id)defaultProperties
{
  v5 = objc_msgSend_g_genericToDefaultPropertyMap(self, a2, v2, v3, v4);
  v10 = objc_msgSend_arrayOfBoxedKeys(v5, v6, v7, v8, v9);

  return v10;
}

- (int)defaultPropertyForGeneric:(int)a3
{
  v7 = objc_msgSend_p_genericToDefaultPropertyMap(self, a2, v3, v4, v5);
  if (objc_msgSend_containsKey_(v7, v8, v9, v10, v11, a3))
  {
    v16 = objc_msgSend_intForKey_(v7, v12, v13, v14, v15, a3);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)hasIntValueForProperty:(int)a3 value:(int *)a4
{
  v8 = *&a3;
  v10 = objc_msgSend_chartInfo(self, a2, v4, v5, v6);
  v15 = objc_msgSend_legendStyle(v10, v11, v12, v13, v14);
  v20 = objc_msgSend_chartInfo(self, v16, v17, v18, v19);
  v25 = objc_msgSend_legendNonStyle(v20, v21, v22, v23, v24);
  LOBYTE(a4) = sub_2762E5130(self, v15, v25, v8, a4);

  return a4;
}

- (BOOL)hasFloatValueForProperty:(int)a3 value:(float *)a4
{
  v8 = *&a3;
  v10 = objc_msgSend_chartInfo(self, a2, v4, v5, v6);
  v15 = objc_msgSend_legendStyle(v10, v11, v12, v13, v14);
  v20 = objc_msgSend_chartInfo(self, v16, v17, v18, v19);
  v25 = objc_msgSend_legendNonStyle(v20, v21, v22, v23, v24);
  LOBYTE(a4) = sub_2762E5658(self, v15, v25, v8, a4);

  return a4;
}

- (BOOL)hasObjectValueForProperty:(int)a3 value:(id *)a4
{
  v8 = *&a3;
  v10 = objc_msgSend_chartInfo(self, a2, v4, v5, v6);
  v15 = objc_msgSend_legendStyle(v10, v11, v12, v13, v14);
  v20 = objc_msgSend_chartInfo(self, v16, v17, v18, v19);
  v25 = objc_msgSend_legendNonStyle(v20, v21, v22, v23, v24);
  LOBYTE(a4) = sub_2762E579C(self, v15, v25, v8, a4);

  return a4;
}

- (int)intValueForProperty:(int)a3 defaultValue:(int)a4
{
  v8 = *&a3;
  v27 = 0;
  v10 = objc_msgSend_chartInfo(self, a2, v4, v5, v6);
  v15 = objc_msgSend_legendStyle(v10, v11, v12, v13, v14);
  v20 = objc_msgSend_chartInfo(self, v16, v17, v18, v19);
  v25 = objc_msgSend_legendNonStyle(v20, v21, v22, v23, v24);
  LODWORD(v8) = sub_2762E5130(self, v15, v25, v8, &v27);

  if (v8)
  {
    return v27;
  }

  else
  {
    return a4;
  }
}

- (float)floatValueForProperty:(int)a3 defaultValue:(float)a4
{
  v7 = *&a3;
  v26 = 0.0;
  v9 = objc_msgSend_chartInfo(self, a2, *&a4, v4, v5);
  v14 = objc_msgSend_legendStyle(v9, v10, v11, v12, v13);
  v19 = objc_msgSend_chartInfo(self, v15, v16, v17, v18);
  v24 = objc_msgSend_legendNonStyle(v19, v20, v21, v22, v23);
  LODWORD(v7) = sub_2762E5658(self, v14, v24, v7, &v26);

  result = v26;
  if (!v7)
  {
    return a4;
  }

  return result;
}

- (id)objectValueForProperty:(int)a3
{
  v6 = *&a3;
  v7 = self;
  v8 = objc_msgSend_chartInfo(self, a2, v3, v4, v5);
  v13 = objc_msgSend_legendStyle(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_chartInfo(v7, v14, v15, v16, v17);
  v23 = objc_msgSend_legendNonStyle(v18, v19, v20, v21, v22);
  v27 = 0;
  LODWORD(v7) = sub_2762E579C(v7, v13, v23, v6, &v27);
  v24 = v27;
  if (!v7)
  {

    goto LABEL_5;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
LABEL_5:

    v24 = 0;
  }

  return v24;
}

- (id)valueForProperty:(int)a3
{
  v6 = *&a3;
  v8 = objc_msgSend_chartInfo(self, a2, v3, v4, v5);
  v13 = objc_msgSend_legendStyle(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_chartInfo(self, v14, v15, v16, v17);
  v23 = objc_msgSend_legendNonStyle(v18, v19, v20, v21, v22);
  v24 = sub_2762E58F0(self, v13, v23, v6);

  return v24;
}

- (id)context
{
  v5 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_context(v5, v6, v7, v8, v9);

  return v10;
}

- (id)style
{
  objc_opt_class();
  v7 = objc_msgSend_chartInfo(self, v3, v4, v5, v6);
  v12 = objc_msgSend_legendStyle(v7, v8, v9, v10, v11);
  v13 = TSUDynamicCast();

  return v13;
}

- (id)nonstyle
{
  objc_opt_class();
  v7 = objc_msgSend_chartInfo(self, v3, v4, v5, v6);
  v12 = objc_msgSend_legendNonStyle(v7, v8, v9, v10, v11);
  v13 = TSUDynamicCast();

  return v13;
}

- (id)transformedTuplesWithTuple:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = a3;
  v3 = MEMORY[0x277CBEA60];
  v4 = a3;
  v9 = objc_msgSend_arrayWithObjects_count_(v3, v5, v6, v7, v8, v11, 1);

  return v9;
}

- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (!v5)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHLegendModel mixingTypeWithObject:context:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLegendModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 206, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  return 4;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v5 = a4;
  objc_opt_class();
  v6 = TSUDynamicCast();

  v11 = objc_msgSend_copy(self, v7, v8, v9, v10);
  TSUMixRects();
  v11[2] = v12;
  v11[3] = v13;
  v11[4] = v14;
  v11[5] = v15;

  return v11;
}

- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v3 = a3;
  objc_opt_class();
  v4 = TSUDynamicCast();

  if (v4)
  {
    v5 = TSUNearlyEqualRects();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (TSCHChartInfo)chartInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_chartInfo);

  return WeakRetained;
}

- (void)loadFromPreUFFArchive:(const void *)a3
{
  if (*(a3 + 4))
  {
    v4 = *(a3 + 4);
  }

  else
  {
    v4 = &qword_2812F0190;
  }

  self->_legendFrame.origin.x = sub_2762A792C(v4);
  self->_legendFrame.origin.y = v5;
  self->_legendFrame.size.width = v6;
  self->_legendFrame.size.height = v7;
}

- (id)g_genericToDefaultPropertyMap
{
  if (qword_280A47280 != -1)
  {
    sub_2764A776C();
  }

  v3 = qword_280A47278;

  return v3;
}

- (id)g_operationPropertyNameForGenericProperty:(int)a3
{
  v6 = *&a3;
  v8 = objc_msgSend_specificPropertyForGeneric_(self, a2, v3, v4, v5);
  if (v8 || (v8 = objc_msgSend_defaultPropertyForGeneric_(self, v9, v10, v11, v12, v6), v8))
  {
    v13 = v8;
  }

  else
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHLegendModel(__PropertyMaps_GEN) g_operationPropertyNameForGenericProperty:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPropertyMaps.GEN.m");
    v33 = String();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v34, v35, v36, v37, v27, v32, 148, 0, "No specific property found for generic %@", v33);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
    v13 = 0;
  }

  v14 = objc_msgSend_g_specificPropertyToOperationNameBimap(TSCHBaseStyle, v9, v10, v11, v12);
  v19 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v15, v16, v17, v18, v13);
  v24 = objc_msgSend_objectForKeyedSubscript_(v14, v20, v21, v22, v23, v19);

  return v24;
}

- (void)loadFromUnityArchive:(const void *)a3
{
  if (*(a3 + 24))
  {
    v4 = *(a3 + 24);
  }

  else
  {
    v4 = &qword_2812F0190;
  }

  v10.origin.x = sub_2762A792C(v4);
  p_legendFrame = &self->_legendFrame;
  *p_legendFrame = v10;
  if (!CGRectIsNull(v10))
  {
    x = p_legendFrame->origin.x;
    y = p_legendFrame->origin.y;
    if ((TSURectIsFinite() & 1) == 0)
    {
      v8 = 0.0;
      if ((*&x & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = x;
      }

      if ((*&y & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        v8 = y;
      }

      p_legendFrame->origin.x = v9;
      p_legendFrame->origin.y = v8;
    }
  }
}

- (void)saveToUnityArchive:(void *)a3
{
  *(a3 + 10) |= 1u;
  v4 = *(a3 + 24);
  if (!v4)
  {
    v6 = *(a3 + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = sub_276406958(v6);
    *(a3 + 24) = v4;
  }

  x = self->_legendFrame.origin.x;
  y = self->_legendFrame.origin.y;
  width = self->_legendFrame.size.width;
  height = self->_legendFrame.size.height;

  sub_2762A796C(v4, x, y, width, height);
}

@end