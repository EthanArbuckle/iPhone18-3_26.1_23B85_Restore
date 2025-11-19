@interface ApplyBlurMapArgs
- (ApplyBlurMapArgs)init;
- (ApplyBlurMapArgs)initWithDictionary:(id)a3;
- (BOOL)validateForCoreImage;
- (BOOL)validateForMetal;
- (id)description;
@end

@implementation ApplyBlurMapArgs

- (ApplyBlurMapArgs)init
{
  v7.receiver = self;
  v7.super_class = ApplyBlurMapArgs;
  v2 = [(ApplyBlurMapArgs *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_inputScale = 1.0;
    v4 = objc_alloc_init(ApplyBlurMapIntermediates);
    intermediates = v3->_intermediates;
    v3->_intermediates = v4;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA050];
  v4 = objc_opt_class();
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"<%@: %p\n", v4, self);
  v8 = objc_msgSend_setWithObjects_(MEMORY[0x29EDB8E50], v7, @"simulatedAperture", @"maxBlur", @"inputScale", @"lumaNoiseAmplitude", 0);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = objc_opt_class();
  v12 = objc_msgSend_validKeys(v9, v10, v11);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v31, v30, 16);
  if (v14)
  {
    v15 = v14;
    v16 = *v32;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        v19 = NSSelectorFromString(v18);
        v21 = objc_msgSend_methodForSelector_(self, v20, v19);
        if (v21)
        {
          v23 = v21;
          if (objc_opt_respondsToSelector())
          {
            if (objc_msgSend_containsObject_(v8, v22, v18))
            {
              v24 = v23(self, v19);
              objc_msgSend_appendFormat_(v6, v25, @"\t%@: %g,\n", v18, v24);
            }

            else
            {
              v26 = v23(self, v19);
              objc_msgSend_appendFormat_(v6, v27, @"\t%@: %@,\n", v18, v26);
            }
          }
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v22, &v31, v30, 16);
    }

    while (v15);
  }

  objc_msgSend_appendFormat_(v6, v28, @">\n");

  return v6;
}

- (ApplyBlurMapArgs)initWithDictionary:(id)a3
{
  v4 = a3;
  v75.receiver = self;
  v75.super_class = ApplyBlurMapArgs;
  v5 = [(ApplyBlurMapArgs *)&v75 init];
  v6 = v5;
  if (v5)
  {
    v5->_inputScale = 1.0;
    v7 = objc_alloc_init(ApplyBlurMapIntermediates);
    intermediates = v6->_intermediates;
    v6->_intermediates = v7;

    if (v4)
    {
      v60 = v6;
      v9 = objc_opt_class();
      v12 = objc_msgSend_validKeys(v9, v10, v11);
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      obj = objc_msgSend_allKeys(v4, v13, v14);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v71, v70, 16);
      if (!v16)
      {
        goto LABEL_41;
      }

      v18 = v16;
      v19 = *v72;
      v61 = *v72;
      while (1)
      {
        v20 = 0;
        v62 = v18;
        do
        {
          if (*v72 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v71 + 1) + 8 * v20);
          if (objc_msgSend_containsObject_(v12, v17, v21))
          {
            v23 = v12;
            v24 = objc_msgSend_substringToIndex_(v21, v22, 1);
            v27 = objc_msgSend_capitalizedString(v24, v25, v26);
            v29 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v21, v28, 0, 1, v27);

            v31 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v30, @"set%@:", v29);
            v32 = NSSelectorFromString(v31);
            v33 = v4;
            v35 = objc_msgSend_objectForKeyedSubscript_(v4, v34, v21);
            if (v35)
            {
              v36 = v32 == 0;
            }

            else
            {
              v36 = 1;
            }

            if (v36)
            {
              goto LABEL_36;
            }

            if (objc_opt_respondsToSelector())
            {
              v38 = objc_msgSend_methodForSelector_(v60, v37, v32);
              if (v38)
              {
                v39 = v38;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v40 = v35;
                  v43 = objc_msgSend_count(v40, v41, v42);
                  if (v43 == 4)
                  {
                    objc_msgSend_CGRectValue(v40, v44, v45);
                    v39(v60, v32);
                  }

                  else
                  {
                    if (v43 == 2)
                    {
                      objc_msgSend_CGPointValue(v40, v44, v45);
                      v39(v60, v32);
                      goto LABEL_35;
                    }

                    v49 = uni_logger_api();
                    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                    {
                      v55 = objc_opt_class();
                      *buf = 136446722;
                      v65 = "[ApplyBlurMapArgs initWithDictionary:]";
                      v66 = 2112;
                      v67 = v21;
                      v68 = 2112;
                      v69 = v55;
                      v56 = v55;
                      _os_log_error_impl(&dword_295691000, v49, OS_LOG_TYPE_ERROR, "%{public}s Unexpected # of components for %@ on class %@", buf, 0x20u);
                    }

LABEL_33:
                  }

LABEL_35:

LABEL_36:
                  v4 = v33;
                  v12 = v23;
                  v19 = v61;
                  v18 = v62;
                  goto LABEL_37;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  objc_msgSend_floatValue(v35, v53, v54);
                  v39(v60, v32);
                  goto LABEL_36;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  (v39)(v60, v32, v35);
                  goto LABEL_36;
                }

                v40 = uni_logger_api();
                if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_35;
                }

                v57 = objc_opt_class();
                *buf = 136446722;
                v65 = "[ApplyBlurMapArgs initWithDictionary:]";
                v66 = 2112;
                v67 = v21;
                v68 = 2112;
                v69 = v57;
                v49 = v57;
                v50 = v40;
                v51 = "%{public}s Unexpected type (not NSObject) for %@ on class %@";
              }

              else
              {
                v40 = uni_logger_api();
                if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_35;
                }

                v52 = objc_opt_class();
                *buf = 136446722;
                v65 = "[ApplyBlurMapArgs initWithDictionary:]";
                v66 = 2112;
                v67 = v31;
                v68 = 2112;
                v69 = v52;
                v49 = v52;
                v50 = v40;
                v51 = "%{public}s can't find implementation for %@ in %@ class; results will be unpredictable";
              }
            }

            else
            {
              v40 = uni_logger_api();
              if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_35;
              }

              v48 = objc_opt_class();
              *buf = 136446722;
              v65 = "[ApplyBlurMapArgs initWithDictionary:]";
              v66 = 2112;
              v67 = v48;
              v68 = 2112;
              v69 = v31;
              v49 = v48;
              v50 = v40;
              v51 = "%{public}s Class %@ does not respond to selector %@; results will be unpredictable";
            }

            _os_log_error_impl(&dword_295691000, v50, OS_LOG_TYPE_ERROR, v51, buf, 0x20u);
            goto LABEL_33;
          }

          v29 = uni_logger_api();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v46 = objc_opt_class();
            *buf = 136446722;
            v65 = "[ApplyBlurMapArgs initWithDictionary:]";
            v66 = 2112;
            v67 = v46;
            v68 = 2112;
            v69 = v21;
            v47 = v46;
            _os_log_error_impl(&dword_295691000, v29, OS_LOG_TYPE_ERROR, "%{public}s Invalid key for %@: %@; results will be unpredictable", buf, 0x20u);
          }

LABEL_37:

          ++v20;
        }

        while (v18 != v20);
        v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v71, v70, 16);
        v18 = v58;
        if (!v58)
        {
LABEL_41:

          v6 = v60;
          break;
        }
      }
    }
  }

  return v6;
}

- (BOOL)validateForMetal
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self->_simulatedAperture <= 0.0)
    {
      sub_2956C84D8();
    }

    else
    {
      maxBlur = self->_maxBlur;
      if (maxBlur <= 0.0 || maxBlur > 1.0)
      {
        sub_2956C8478();
      }

      else if (self->_inputScale <= 0.0)
      {
        sub_2956C8418();
      }

      else if (self->_lumaNoiseAmplitude < 0.0)
      {
        sub_2956C83B8();
      }

      else if (objc_msgSend_conformsToProtocol_(self->_inputBlurMap, v3, &unk_2A1CA0A70))
      {
        inputAlpha = self->_inputAlpha;
        if (inputAlpha && (objc_msgSend_conformsToProtocol_(inputAlpha, v6, &unk_2A1CA0A70) & 1) == 0)
        {
          sub_2956C8118();
        }

        else if (self->_inputImage)
        {
          sub_2956C8178();
        }

        else if (objc_msgSend_conformsToProtocol_(self->_inputImageLuma, v6, &unk_2A1CA0A70))
        {
          if (objc_msgSend_conformsToProtocol_(self->_inputImageChroma, v8, &unk_2A1CA0A70))
          {
            if (objc_msgSend_conformsToProtocol_(self->_outputImageLuma, v9, &unk_2A1CA0A70))
            {
              if (objc_msgSend_conformsToProtocol_(self->_outputImageChroma, v10, &unk_2A1CA0A70))
              {
                if (objc_msgSend_validateForMetal(self->_intermediates, v11, v12))
                {
                  return 1;
                }

                sub_2956C8358();
              }

              else
              {
                sub_2956C82F8();
              }
            }

            else
            {
              sub_2956C8298();
            }
          }

          else
          {
            sub_2956C8238();
          }
        }

        else
        {
          sub_2956C81D8();
        }
      }

      else
      {
        sub_2956C80B8();
      }
    }
  }

  else
  {
    sub_2956C8058();
  }

  return 0;
}

- (BOOL)validateForCoreImage
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_2956C8538();
    return 0;
  }

  if (self->_simulatedAperture <= 0.0)
  {
    sub_2956C8A18();
    return 0;
  }

  maxBlur = self->_maxBlur;
  if (maxBlur <= 0.0 || maxBlur > 1.0)
  {
    sub_2956C89B8();
    return 0;
  }

  if (self->_inputScale <= 0.0)
  {
    sub_2956C8958();
    return 0;
  }

  if (self->_lumaNoiseAmplitude < 0.0)
  {
    sub_2956C88F8();
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_2956C8598();
    return 0;
  }

  if (self->_inputAlpha)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_2956C85F8();
      return 0;
    }
  }

  if (self->_inputImage)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_2956C8658();
      return 0;
    }

    if (self->_inputImageLuma)
    {
      sub_2956C86B8();
      return 0;
    }

    if (self->_inputImageChroma)
    {
      sub_2956C8718();
      return 0;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_2956C8778();
      return 0;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_2956C87D8();
      return 0;
    }
  }

  if (self->_outputImageLuma)
  {
    sub_2956C8838();
  }

  else
  {
    if (!self->_outputImageChroma)
    {
      return 1;
    }

    sub_2956C8898();
  }

  return 0;
}

@end