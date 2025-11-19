@interface TSCH3DAxisGridEnumerator
+ (TSCH3DAxisGridEnumerator)enumeratorWithAxis:(id)a3;
- (AxisGridLocation)position;
- (TSCH3DAxisGridEnumerator)initWithAxis:(id)a3;
- (int)type;
- (unint64_t)count;
- (void)update;
@end

@implementation TSCH3DAxisGridEnumerator

+ (TSCH3DAxisGridEnumerator)enumeratorWithAxis:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v10 = objc_msgSend_initWithAxis_(v5, v6, v7, v8, v9, v4);

  return v10;
}

- (TSCH3DAxisGridEnumerator)initWithAxis:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSCH3DAxisGridEnumerator;
  v6 = [(TSCH3DAxisGridEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_axis, a3);
  }

  return v7;
}

- (int)type
{
  v5 = objc_msgSend_axisID(self->_axis, a2, v2, v3, v4);
  v10 = objc_msgSend_type(v5, v6, v7, v8, v9);

  return v10;
}

- (unint64_t)count
{
  v5 = objc_msgSend_majorGridLocations(self->_axis, a2, v2, v3, v4);
  v10 = objc_msgSend_count(v5, v6, v7, v8, v9);

  return v10;
}

- (void)update
{
  v6 = objc_msgSend_majorGridLocations(self->_axis, a2, v2, v3, v4);
  v11 = objc_msgSend_index(self, v7, v8, v9, v10);
  v45 = objc_msgSend_objectAtIndexedSubscript_(v6, v12, v13, v14, v15, v11);

  if (v45)
  {
    axis = self->_axis;
    objc_msgSend_doubleValue(v45, v16, v17, v18, v19);
    objc_msgSend_unitSpaceValueForDataSpaceValue_(axis, v21, v22, v23, v24);
  }

  else
  {
    v25 = NAN;
  }

  objc_msgSend_setValue_(self, v16, v25, v18, v19);
  if (v45)
  {
    objc_msgSend_min(self->_axis, v26, v27, v28, v29);
    v31 = v30;
    objc_msgSend_max(self->_axis, v32, v30, v33, v34);
    if (v31 == v36)
    {
      v40 = objc_msgSend_count(self, v35, v36, v37, v38);
      v43 = 0.0;
      if (v40 >= 2)
      {
        v44 = objc_msgSend_index(self, v39, 0.0, v41, v42);
        v41 = (v40 - 1);
        v43 = v44 / v41;
      }

      objc_msgSend_setValue_(self, v39, v43, v41, v42);
    }
  }
}

- (AxisGridLocation)position
{
  v8 = objc_msgSend_type(self, a3, v3, v4, v5);
  if (v8 == 1)
  {
    v14 = 0;
    v13 = 1;
  }

  else
  {
    if (v8 != 2)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DAxisGridEnumerator position]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAxisEnumerator.mm");
      v27 = objc_msgSend_type(self, v23, v24, v25, v26);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v28, v29, v30, v31, v17, v22, 86, 0, "Axis type is not supported %lu", v27);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
      v14 = 0;
      v13 = 0;
      v15 = 0;
      goto LABEL_7;
    }

    v13 = 0;
    v14 = 1;
  }

  v15 = 1;
LABEL_7:
  result = objc_msgSend_value(self, v9, v10, v11, v12);
  retstr->var0 = v15;
  *&v37 = v37;
  retstr->var1 = v14;
  retstr->var2 = v13;
  retstr->var3.var0.var0 = *&v37;
  retstr->var3.var1.var0 = 0.0;
  retstr->var3.var2.var0 = 0.0;
  *(&retstr->var3.var0.var0 + v14) = LODWORD(v37);
  *(&retstr->var3.var0.var0 + v13) = 0;
  return result;
}

@end