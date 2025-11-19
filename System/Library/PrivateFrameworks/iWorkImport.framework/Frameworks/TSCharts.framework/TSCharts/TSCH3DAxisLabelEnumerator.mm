@interface TSCH3DAxisLabelEnumerator
+ (id)enumeratorWithAxis:(id)a3 kind:(id)a4;
- (TSCH3DAxisLabelEnumerator)initWithAxis:(id)a3 kind:(id)a4;
- (id)string;
- (id)stringForLabelResources:(id)a3;
- (void)update;
@end

@implementation TSCH3DAxisLabelEnumerator

+ (id)enumeratorWithAxis:(id)a3 kind:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 alloc];
  v13 = objc_msgSend_initWithAxis_kind_(v8, v9, v10, v11, v12, v6, v7);

  return v13;
}

- (TSCH3DAxisLabelEnumerator)initWithAxis:(id)a3 kind:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TSCH3DAxisLabelEnumerator;
  v9 = [(TSCH3DAxisLabelEnumerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_axis, a3);
    objc_storeStrong(&v10->_kind, a4);
  }

  return v10;
}

- (void)update
{
  kind = self->_kind;
  axis = self->_axis;
  v8 = objc_msgSend_index(self, a2, v2, v3, v4);
  objc_msgSend_unitSpaceValueForAxis_index_(kind, v9, v10, v11, v12, axis, v8);

  objc_msgSend_setValue_(self, v13, v14, v15, v16);
}

- (id)string
{
  kind = self->_kind;
  axis = self->_axis;
  v7 = objc_msgSend_index(self, a2, v2, v3, v4);
  v12 = objc_msgSend_labelForAxis_index_(kind, v8, v9, v10, v11, axis, v7);
  if (objc_msgSend_length(v12, v13, v14, v15, v16))
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)stringForLabelResources:(id)a3
{
  v4 = a3;
  v34[0] = objc_msgSend_index(self, v5, v6, v7, v8);
  v34[1] = 0;
  if (!objc_msgSend_hasResourceAtIndex_(v4, v9, v10, v11, v12, v34) || (objc_opt_class(), objc_msgSend_resourceAtIndex_(v4, v17, v18, v19, v20, v34), v21 = objc_claimAutoreleasedReturnValue(), TSUDynamicCast(), v22 = objc_claimAutoreleasedReturnValue(), v21, objc_msgSend_attributes(v22, v23, v24, v25, v26), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend_string(v27, v28, v29, v30, v31), v32 = objc_claimAutoreleasedReturnValue(), v27, v22, !v32))
  {
    v32 = objc_msgSend_string(self, v13, v14, v15, v16);
  }

  return v32;
}

@end