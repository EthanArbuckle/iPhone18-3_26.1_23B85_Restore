@interface TSCH3DGridlineResource
+ (id)resourceWithAxisEnumerator:(id)a3;
- (BOOL)enabled;
- (TSCH3DGridlineResource)initWithAxisEnumerator:(id)a3;
- (TSDStroke)stroke;
- (float)opacity;
- (id)get;
@end

@implementation TSCH3DGridlineResource

+ (id)resourceWithAxisEnumerator:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v10 = objc_msgSend_initWithAxisEnumerator_(v5, v6, v7, v8, v9, v4);

  return v10;
}

- (TSCH3DGridlineResource)initWithAxisEnumerator:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSCH3DGridlineResource;
  v6 = [(TSCH3DResource *)&v9 initWithCaching:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_axis, a3);
  }

  return v7;
}

- (BOOL)enabled
{
  v5 = objc_msgSend_axis(self->_axis, a2, v2, v3, v4);
  v10 = objc_msgSend_intValueForProperty_defaultValue_(v5, v6, v7, v8, v9, 1054, 0) != 0;

  return v10;
}

- (TSDStroke)stroke
{
  v5 = objc_msgSend_axis(self->_axis, a2, v2, v3, v4);
  v10 = objc_msgSend_objectValueForProperty_(v5, v6, v7, v8, v9, 1027);

  return v10;
}

- (float)opacity
{
  v5 = objc_msgSend_axis(self->_axis, a2, v2, v3, v4);
  LODWORD(v6) = 1.0;
  objc_msgSend_floatValueForProperty_defaultValue_(v5, v7, v6, v8, v9, 1026);
  v11 = v10;

  return v11;
}

- (id)get
{
  if (objc_msgSend_enabled(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_count(self->_axis, v6, v7, v8, v9);
    v15 = objc_msgSend_bufferWithCapacity_(TSCH3Dvec3DataBuffer, v11, v12, v13, v14, v10);
    v20 = objc_msgSend_container(v15, v16, v17, v18, v19);
    v26 = objc_msgSend_enumerator(self->_axis, v21, v22, v23, v24);
    while (1)
    {
      v30 = objc_msgSend_nextObject(v26, v25, v27, v28, v29);
      v35 = v30;
      if (!v30)
      {
        break;
      }

      if (objc_msgSend_isValid(v30, v31, v32, v33, v34))
      {
        objc_msgSend_position(v35, v36, v37, v38, v39);
        if (v43)
        {
          v42[0] = v45;
          v42[1] = v46;
          v42[2] = v47;
          v41[0] = v45;
          v41[1] = v46;
          v41[2] = v47;
          v41[v44] = 1065353216;
          sub_27618F4B4(v20, v42);
          sub_27618F4B4(v20, v41);
        }
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end