@interface MakeBlurMapArgs
- (BOOL)validateForCoreImage;
- (BOOL)validateForMetal;
- (CGRect)focusWindow;
- (MakeBlurMapArgs)init;
- (MakeBlurMapArgs)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation MakeBlurMapArgs

- (MakeBlurMapArgs)init
{
  v8.receiver = self;
  v8.super_class = MakeBlurMapArgs;
  v2 = [(MakeBlurMapArgs *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_inputScale = 1.0;
    v4 = *(MEMORY[0x29EDB90D8] + 16);
    v2->_focusWindow.origin = *MEMORY[0x29EDB90D8];
    v2->_focusWindow.size = v4;
    v5 = objc_alloc_init(MakeBlurMapIntermediates);
    intermediates = v3->_intermediates;
    v3->_intermediates = v5;

    v3->_focalLengthInPixels = 0.0;
    v3->_normalizedFocalLength = 0.0;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA050];
  v4 = objc_opt_class();
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"<%@: %p\n", v4, self);
  v8 = objc_msgSend_setWithObjects_(MEMORY[0x29EDB8E50], v7, @"simulatedAperture", @"focalLengthInPixels", @"maxBlur", @"inputScale", @"focusWindow", 0);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = objc_opt_class();
  v12 = objc_msgSend_validKeys(v9, v10, v11);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v40, v39, 16);
  if (v14)
  {
    v15 = v14;
    v16 = *v41;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v41 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v40 + 1) + 8 * i);
        v19 = NSSelectorFromString(v18);
        v21 = objc_msgSend_methodForSelector_(self, v20, v19);
        if (v21)
        {
          v23 = v21;
          if (objc_opt_respondsToSelector())
          {
            if (objc_msgSend_containsObject_(v8, v22, v18))
            {
              if (objc_msgSend_isEqualToString_(v18, v24, @"focusWindow"))
              {
                v25 = v23(self, v19);
                objc_msgSend_appendFormat_(v6, v26, @"\t%@: { x=%g,y=%g width=%g, height=%g },\n", v18, *&v25, v27, v28, v29);
              }

              else
              {
                v35 = v23(self, v19);
                objc_msgSend_appendFormat_(v6, v32, @"\t%@: %g,\n", v18, *&v35, v36, v37, v38);
              }
            }

            else
            {
              v30 = v23(self, v19);
              objc_msgSend_appendFormat_(v6, v31, @"\t%@: %@,\n", v18, v30);
            }
          }
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v22, &v40, v39, 16);
    }

    while (v15);
  }

  objc_msgSend_appendFormat_(v6, v33, @">\n");

  return v6;
}

- (MakeBlurMapArgs)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v76.receiver = self;
  v76.super_class = MakeBlurMapArgs;
  v5 = [(MakeBlurMapArgs *)&v76 init];
  v6 = v5;
  if (v5)
  {
    v5->_inputScale = 1.0;
    v7 = *(MEMORY[0x29EDB90D8] + 16);
    v5->_focusWindow.origin = *MEMORY[0x29EDB90D8];
    v5->_focusWindow.size = v7;
    v8 = objc_alloc_init(MakeBlurMapIntermediates);
    intermediates = v6->_intermediates;
    v6->_intermediates = v8;

    if (dictionaryCopy)
    {
      v61 = v6;
      v10 = objc_opt_class();
      v13 = objc_msgSend_validKeys(v10, v11, v12);
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      obj = objc_msgSend_allKeys(dictionaryCopy, v14, v15);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v72, v71, 16);
      if (!v17)
      {
        goto LABEL_41;
      }

      v19 = v17;
      v20 = *v73;
      v62 = *v73;
      while (1)
      {
        v21 = 0;
        v63 = v19;
        do
        {
          if (*v73 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v72 + 1) + 8 * v21);
          if (objc_msgSend_containsObject_(v13, v18, v22))
          {
            v24 = v13;
            v25 = objc_msgSend_substringToIndex_(v22, v23, 1);
            v28 = objc_msgSend_capitalizedString(v25, v26, v27);
            v30 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v22, v29, 0, 1, v28);

            v32 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v31, @"set%@:", v30);
            v33 = NSSelectorFromString(v32);
            v34 = dictionaryCopy;
            v36 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v35, v22);
            if (v36)
            {
              v37 = v33 == 0;
            }

            else
            {
              v37 = 1;
            }

            if (v37)
            {
              goto LABEL_36;
            }

            if (objc_opt_respondsToSelector())
            {
              v39 = objc_msgSend_methodForSelector_(v61, v38, v33);
              if (v39)
              {
                v40 = v39;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v41 = v36;
                  v44 = objc_msgSend_count(v41, v42, v43);
                  if (v44 == 4)
                  {
                    objc_msgSend_CGRectValue(v41, v45, v46);
                    v40(v61, v33);
                  }

                  else
                  {
                    if (v44 == 2)
                    {
                      objc_msgSend_CGPointValue(v41, v45, v46);
                      v40(v61, v33);
                      goto LABEL_35;
                    }

                    v50 = uni_logger_api();
                    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                    {
                      v56 = objc_opt_class();
                      *buf = 136446722;
                      v66 = "[MakeBlurMapArgs initWithDictionary:]";
                      v67 = 2112;
                      v68 = v22;
                      v69 = 2112;
                      v70 = v56;
                      v57 = v56;
                      _os_log_error_impl(&dword_295691000, v50, OS_LOG_TYPE_ERROR, "%{public}s Unexpected # of components for %@ on class %@", buf, 0x20u);
                    }

LABEL_33:
                  }

LABEL_35:

LABEL_36:
                  dictionaryCopy = v34;
                  v13 = v24;
                  v20 = v62;
                  v19 = v63;
                  goto LABEL_37;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  objc_msgSend_floatValue(v36, v54, v55);
                  v40(v61, v33);
                  goto LABEL_36;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  (v40)(v61, v33, v36);
                  goto LABEL_36;
                }

                v41 = uni_logger_api();
                if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_35;
                }

                v58 = objc_opt_class();
                *buf = 136446722;
                v66 = "[MakeBlurMapArgs initWithDictionary:]";
                v67 = 2112;
                v68 = v22;
                v69 = 2112;
                v70 = v58;
                v50 = v58;
                v51 = v41;
                v52 = "%{public}s Unexpected type (not NSObject) for %@ on class %@";
              }

              else
              {
                v41 = uni_logger_api();
                if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_35;
                }

                v53 = objc_opt_class();
                *buf = 136446722;
                v66 = "[MakeBlurMapArgs initWithDictionary:]";
                v67 = 2112;
                v68 = v32;
                v69 = 2112;
                v70 = v53;
                v50 = v53;
                v51 = v41;
                v52 = "%{public}s can't find implementation for %@ in %@ class; results will be unpredictable";
              }
            }

            else
            {
              v41 = uni_logger_api();
              if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_35;
              }

              v49 = objc_opt_class();
              *buf = 136446722;
              v66 = "[MakeBlurMapArgs initWithDictionary:]";
              v67 = 2112;
              v68 = v49;
              v69 = 2112;
              v70 = v32;
              v50 = v49;
              v51 = v41;
              v52 = "%{public}s Class %@ does not respond to selector %@; results will be unpredictable";
            }

            _os_log_error_impl(&dword_295691000, v51, OS_LOG_TYPE_ERROR, v52, buf, 0x20u);
            goto LABEL_33;
          }

          v30 = uni_logger_api();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v47 = objc_opt_class();
            *buf = 136446722;
            v66 = "[MakeBlurMapArgs initWithDictionary:]";
            v67 = 2112;
            v68 = v47;
            v69 = 2112;
            v70 = v22;
            v48 = v47;
            _os_log_error_impl(&dword_295691000, v30, OS_LOG_TYPE_ERROR, "%{public}s Invalid key for %@: %@; results will be unpredictable", buf, 0x20u);
          }

LABEL_37:

          ++v21;
        }

        while (v19 != v21);
        v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v72, v71, 16);
        v19 = v59;
        if (!v59)
        {
LABEL_41:

          v6 = v61;
          break;
        }
      }
    }
  }

  return v6;
}

- (CGRect)focusWindow
{
  x = self->_focusWindow.origin.x;
  y = self->_focusWindow.origin.y;
  width = self->_focusWindow.size.width;
  height = self->_focusWindow.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)validateForMetal
{
  objc_opt_class();
  if ((sub_2956A8A48() & 1) == 0 || self->_simulatedAperture <= 0.0 || self->_normalizedFocalLength <= 0.0 || ((maxBlur = self->_maxBlur, maxBlur > 0.0) ? (v4 = maxBlur > 1.0) : (v4 = 1), v4 || self->_inputScale <= 0.0 || CGRectIsEmpty(self->_focusWindow) || self->_inputImage))
  {
LABEL_24:
    LOBYTE(v6) = 0;
    return v6;
  }

  v6 = objc_msgSend_conformsToProtocol_(self->_inputImageLuma, v5, &unk_2A1CA0A70);
  if (v6)
  {
    v6 = objc_msgSend_conformsToProtocol_(self->_inputImageChroma, v7, &unk_2A1CA0A70);
    if (v6)
    {
      v6 = objc_msgSend_conformsToProtocol_(self->_inputShiftMap, v8, &unk_2A1CA0A70);
      if (v6)
      {
        inputSegmentation = self->_inputSegmentation;
        if (!inputSegmentation || (v6 = objc_msgSend_conformsToProtocol_(inputSegmentation, v9, &unk_2A1CA0A70)) != 0)
        {
          inputHair = self->_inputHair;
          if (!inputHair || (v6 = objc_msgSend_conformsToProtocol_(inputHair, v9, &unk_2A1CA0A70)) != 0)
          {
            inputGlasses = self->_inputGlasses;
            if (!inputGlasses || (v6 = objc_msgSend_conformsToProtocol_(inputGlasses, v9, &unk_2A1CA0A70)) != 0)
            {
              v6 = objc_msgSend_conformsToProtocol_(self->_outputBlurMap, v9, &unk_2A1CA0A70);
              if (v6)
              {
                if (objc_msgSend_validateForMetal(self->_intermediates, v13, v14))
                {
                  LOBYTE(v6) = 1;
                  return v6;
                }

                goto LABEL_24;
              }
            }
          }
        }
      }
    }
  }

  return v6;
}

- (BOOL)validateForCoreImage
{
  objc_opt_class();
  if ((sub_2956A8A48() & 1) == 0 || self->_simulatedAperture <= 0.0 || self->_focalLengthInPixels <= 0.0 && self->_normalizedFocalLength <= 0.0)
  {
    return 0;
  }

  maxBlur = self->_maxBlur;
  v4 = maxBlur <= 0.0 || maxBlur > 1.0;
  if (v4 || self->_inputScale <= 0.0 || CGRectIsEmpty(self->_focusWindow))
  {
    return 0;
  }

  if (self->_inputImage)
  {
    objc_opt_class();
    if ((sub_2956A8A48() & 1) == 0 || self->_inputImageLuma || self->_inputImageChroma)
    {
      return 0;
    }
  }

  else
  {
    objc_opt_class();
    if ((sub_2956A8A48() & 1) == 0)
    {
      return 0;
    }

    objc_opt_class();
    if ((sub_2956A8A48() & 1) == 0)
    {
      return 0;
    }
  }

  objc_opt_class();
  if (sub_2956A8A48())
  {
    if (!self->_inputSegmentation || (objc_opt_class(), (sub_2956A8A48() & 1) != 0))
    {
      if (!self->_inputHair || (objc_opt_class(), (sub_2956A8A48() & 1) != 0))
      {
        if (!self->_inputGlasses || (objc_opt_class(), (sub_2956A8A48() & 1) != 0))
        {
          if (!self->_inputGainMap || (objc_opt_class(), (sub_2956A8A48() & 1) != 0))
          {
            if (!self->_outputBlurMap)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return 0;
}

@end