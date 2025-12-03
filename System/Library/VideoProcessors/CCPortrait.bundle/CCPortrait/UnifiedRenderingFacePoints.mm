@interface UnifiedRenderingFacePoints
- (CGPoint)centerPos;
- (CGPoint)chinCenterPos;
- (CGPoint)leftEyeCenterPos;
- (CGPoint)rightEyeCenterPos;
- (UnifiedRenderingFacePoints)init;
- (UnifiedRenderingFacePoints)initWithCenterPos:(CGPoint)pos leftEyeCenterPos:(CGPoint)centerPos rightEyeCenterPos:(CGPoint)eyeCenterPos chinCenterPos:(CGPoint)chinCenterPos;
- (UnifiedRenderingFacePoints)initWithDictionary:(id)dictionary;
- (id)debugDescription;
@end

@implementation UnifiedRenderingFacePoints

- (UnifiedRenderingFacePoints)init
{
  v4.receiver = self;
  v4.super_class = UnifiedRenderingFacePoints;
  result = [(UnifiedRenderingFacePoints *)&v4 init];
  if (result)
  {
    v3 = *MEMORY[0x29EDB90B8];
    result->_centerPos = *MEMORY[0x29EDB90B8];
    result->_leftEyeCenterPos = v3;
    result->_rightEyeCenterPos = v3;
    result->_chinCenterPos = v3;
  }

  return result;
}

- (UnifiedRenderingFacePoints)initWithCenterPos:(CGPoint)pos leftEyeCenterPos:(CGPoint)centerPos rightEyeCenterPos:(CGPoint)eyeCenterPos chinCenterPos:(CGPoint)chinCenterPos
{
  y = chinCenterPos.y;
  x = chinCenterPos.x;
  v8 = eyeCenterPos.y;
  v9 = eyeCenterPos.x;
  v10 = centerPos.y;
  v11 = centerPos.x;
  v12 = pos.y;
  v13 = pos.x;
  v15.receiver = self;
  v15.super_class = UnifiedRenderingFacePoints;
  result = [(UnifiedRenderingFacePoints *)&v15 init];
  if (result)
  {
    result->_centerPos.x = v13;
    result->_centerPos.y = v12;
    result->_leftEyeCenterPos.x = v11;
    result->_leftEyeCenterPos.y = v10;
    result->_rightEyeCenterPos.x = v9;
    result->_rightEyeCenterPos.y = v8;
    result->_chinCenterPos.x = x;
    result->_chinCenterPos.y = y;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = objc_opt_class();
  v7 = objc_msgSend_description(v4, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"<%@: %p center:%.4f,%.4f leftEye:%.4f,%.4f rightEye:%.4f,%.4f chin:%.4f,%.4f>", v7, self, *&self->_centerPos.x, *&self->_centerPos.y, *&self->_leftEyeCenterPos.x, *&self->_leftEyeCenterPos.y, *&self->_rightEyeCenterPos.x, *&self->_rightEyeCenterPos.y, *&self->_chinCenterPos.x, *&self->_chinCenterPos.y);

  return v9;
}

- (UnifiedRenderingFacePoints)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v64.receiver = self;
  v64.super_class = UnifiedRenderingFacePoints;
  v5 = [(UnifiedRenderingFacePoints *)&v64 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v9 = objc_msgSend_validKeys(v6, v7, v8);
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v12 = objc_msgSend_allKeys(dictionaryCopy, v10, v11);
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v60, v59, 16);
    if (v14)
    {
      v16 = v14;
      v17 = *v61;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v61 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v60 + 1) + 8 * i);
          if ((objc_msgSend_containsObject_(v9, v15, v19) & 1) == 0)
          {
            v20 = uni_logger_api();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v21 = objc_opt_class();
              *buf = 136446722;
              v54 = "[UnifiedRenderingFacePoints initWithDictionary:]";
              v55 = 2112;
              v56 = v21;
              v57 = 2112;
              v58 = v19;
              v22 = v21;
              _os_log_error_impl(&dword_295691000, v20, OS_LOG_TYPE_ERROR, "%{public}s Invalid key for %@: %@; results will be unpredictable", buf, 0x20u);
            }
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v60, v59, 16);
      }

      while (v16);
    }

    v24 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v23, @"centerPos");

    if (v24)
    {
      v26 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v25, @"centerPos");
      objc_msgSend_CGPointValue(v26, v27, v28);
      v5->_centerPos.x = v29;
      v5->_centerPos.y = v30;
    }

    v31 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v25, @"leftEyeCenterPos");

    if (v31)
    {
      v33 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v32, @"leftEyeCenterPos");
      objc_msgSend_CGPointValue(v33, v34, v35);
      v5->_leftEyeCenterPos.x = v36;
      v5->_leftEyeCenterPos.y = v37;
    }

    v38 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v32, @"rightEyeCenterPos");

    if (v38)
    {
      v40 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v39, @"rightEyeCenterPos");
      objc_msgSend_CGPointValue(v40, v41, v42);
      v5->_rightEyeCenterPos.x = v43;
      v5->_rightEyeCenterPos.y = v44;
    }

    v45 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v39, @"chinCenterPos");

    if (v45)
    {
      v47 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v46, @"chinCenterPos");
      objc_msgSend_CGPointValue(v47, v48, v49);
      v5->_chinCenterPos.x = v50;
      v5->_chinCenterPos.y = v51;
    }
  }

  return v5;
}

- (CGPoint)centerPos
{
  x = self->_centerPos.x;
  y = self->_centerPos.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)leftEyeCenterPos
{
  x = self->_leftEyeCenterPos.x;
  y = self->_leftEyeCenterPos.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)rightEyeCenterPos
{
  x = self->_rightEyeCenterPos.x;
  y = self->_rightEyeCenterPos.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)chinCenterPos
{
  x = self->_chinCenterPos.x;
  y = self->_chinCenterPos.y;
  result.y = y;
  result.x = x;
  return result;
}

@end