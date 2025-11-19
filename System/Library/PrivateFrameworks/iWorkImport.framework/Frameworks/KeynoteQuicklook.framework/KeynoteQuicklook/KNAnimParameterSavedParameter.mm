@interface KNAnimParameterSavedParameter
- (KNAnimParameterSavedParameter)initWithCoder:(id)a3;
- (id)p_bezierPathFromSavedPathElements:(id)a3;
- (id)p_savedPathFromPath:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KNAnimParameterSavedParameter

- (KNAnimParameterSavedParameter)initWithCoder:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = KNAnimParameterSavedParameter;
  v5 = [(KNAnimParameterSavedParameter *)&v42 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"nm");
    v11 = objc_msgSend_copy(v8, v9, v10);
    name = v5->_name;
    v5->_name = v11;

    v5->_type = objc_msgSend_decodeIntegerForKey_(v4, v13, @"tp");
    objc_msgSend_decodeDoubleForKey_(v4, v14, @"dblValue");
    v5->_doubleValue = v15;
    objc_msgSend_decodeDoubleForKey_(v4, v16, @"max");
    v5->_maxValue = v17;
    objc_msgSend_decodeDoubleForKey_(v4, v18, @"min");
    v5->_minValue = v19;
    v5->_hasMaxValue = objc_msgSend_decodeBoolForKey_(v4, v20, @"hmax");
    v5->_hasMinValue = objc_msgSend_decodeBoolForKey_(v4, v21, @"hmin");
    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v26 = objc_msgSend_setWithObjects_(v22, v25, v23, v24, 0);
    v28 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v27, v26, @"svdPth");

    v30 = objc_msgSend_p_bezierPathFromSavedPathElements_(v5, v29, v28);
    pathValue = v5->_pathValue;
    v5->_pathValue = v30;

    v5->_removed = objc_msgSend_decodeBoolForKey_(v4, v32, @"removed");
    v5->_debugOnly = objc_msgSend_decodeBoolForKey_(v4, v33, @"dbg");
    v34 = objc_opt_class();
    v36 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v35, v34, @"desc");
    v39 = objc_msgSend_copy(v36, v37, v38);
    parameterDescription = v5->_parameterDescription;
    v5->_parameterDescription = v39;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_name(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v4, v8, v7, @"nm");

  v11 = objc_msgSend_type(self, v9, v10);
  objc_msgSend_encodeInteger_forKey_(v4, v12, v11, @"tp");
  objc_msgSend_doubleValue(self, v13, v14);
  objc_msgSend_encodeDouble_forKey_(v4, v15, @"dblValue");
  objc_msgSend_maxValue(self, v16, v17);
  objc_msgSend_encodeDouble_forKey_(v4, v18, @"max");
  objc_msgSend_minValue(self, v19, v20);
  objc_msgSend_encodeDouble_forKey_(v4, v21, @"min");
  hasMaxValue = objc_msgSend_hasMaxValue(self, v22, v23);
  objc_msgSend_encodeBool_forKey_(v4, v25, hasMaxValue, @"hmax");
  hasMinValue = objc_msgSend_hasMinValue(self, v26, v27);
  objc_msgSend_encodeBool_forKey_(v4, v29, hasMinValue, @"hmin");
  v32 = objc_msgSend_pathValue(self, v30, v31);
  v34 = objc_msgSend_p_savedPathFromPath_(self, v33, v32);
  objc_msgSend_encodeObject_forKey_(v4, v35, v34, @"svdPth");

  v38 = objc_msgSend_removed(self, v36, v37);
  objc_msgSend_encodeBool_forKey_(v4, v39, v38, @"removed");
  v42 = objc_msgSend_debugOnly(self, v40, v41);
  objc_msgSend_encodeBool_forKey_(v4, v43, v42, @"dbg");
  v47 = objc_msgSend_parameterDescription(self, v44, v45);
  objc_msgSend_encodeObject_forKey_(v4, v46, v47, @"desc");
}

- (id)p_savedPathFromPath:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = objc_msgSend_array(MEMORY[0x277CBEB18], v3, v4);
    if (objc_msgSend_elementCount(v5, v7, v8) >= 1)
    {
      v10 = 0;
      while (1)
      {
        v11 = objc_msgSend_elementAtIndex_associatedPoints_(v5, v9, v10, &v26);
        v12 = objc_alloc_init(KNAnimParameterGroupSavedPathElement);
        v14 = v12;
        if (v11 > 1)
        {
          if (v11 == 2)
          {
            objc_msgSend_setElementType_(v12, v13, 2);
            objc_msgSend_setToPoint_(v14, v17, v18, v30, v31);
            objc_msgSend_setCp1_(v14, v19, v20, v26, v27);
            objc_msgSend_setCp2_(v14, v21, v22, v28, v29);
          }

          else if (v11 == 3)
          {
            objc_msgSend_setElementType_(v12, v13, 3);
          }

          goto LABEL_14;
        }

        if (!v11)
        {
          break;
        }

        if (v11 == 1)
        {
          objc_msgSend_setElementType_(v12, v13, 1);
LABEL_12:
          objc_msgSend_setToPoint_(v14, v15, v16, v26, v27);
        }

LABEL_14:
        objc_msgSend_addObject_(v6, v13, v14);

        if (++v10 >= objc_msgSend_elementCount(v5, v23, v24))
        {
          goto LABEL_17;
        }
      }

      objc_msgSend_setElementType_(v12, v13, 0);
      goto LABEL_12;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_17:

  return v6;
}

- (id)p_bezierPathFromSavedPathElements:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D81160]);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v5 = v3;
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v36, v40, 16);
    if (v7)
    {
      v10 = v7;
      v11 = *v37;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(v5);
          }

          v13 = *(*(&v36 + 1) + 8 * i);
          v14 = objc_msgSend_elementType(v13, v8, v9, v36);
          if (v14 > 1)
          {
            if (v14 == 2)
            {
              objc_msgSend_toPoint(v13, v8, v9);
              v20 = v19;
              v22 = v21;
              objc_msgSend_cp1(v13, v23, v24);
              v26 = v25;
              v28 = v27;
              objc_msgSend_cp2(v13, v29, v30);
              objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v4, v31, v32, v20, v22, v26, v28, v33, v34);
            }

            else if (v14 == 3)
            {
              objc_msgSend_closePath(v4, v8, v9);
            }
          }

          else if (v14)
          {
            if (v14 == 1)
            {
              objc_msgSend_toPoint(v13, v8, v9);
              objc_msgSend_lineToPoint_(v4, v15, v16);
            }
          }

          else
          {
            objc_msgSend_toPoint(v13, v8, v9);
            objc_msgSend_moveToPoint_(v4, v17, v18);
          }
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v36, v40, 16);
      }

      while (v10);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end