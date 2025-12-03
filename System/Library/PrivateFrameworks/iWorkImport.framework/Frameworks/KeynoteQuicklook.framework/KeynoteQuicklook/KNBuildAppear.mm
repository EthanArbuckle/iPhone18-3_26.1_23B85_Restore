@interface KNBuildAppear
+ (NSDictionary)defaultAttributes;
+ (id)localizedMenuString:(int64_t)string;
+ (id)thumbnailImageNameForType:(int64_t)type;
- (void)addAnimationsTo:(id)to context:(id)context;
@end

@implementation KNBuildAppear

+ (id)localizedMenuString:(int64_t)string
{
  v4 = sub_275DC204C();
  v6 = v4;
  if (string == 1)
  {
    objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"Appear *AppearBuild*", @"Appear", @"Keynote");
  }

  else
  {
    objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"Disappear *AppearBuild*", @"Disappear", @"Keynote");
  }
  v7 = ;

  return v7;
}

+ (NSDictionary)defaultAttributes
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"KNBuildAttributesDefaultDuration";
  v5[0] = &unk_2884F3F40;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, &v4, 1);

  return v2;
}

+ (id)thumbnailImageNameForType:(int64_t)type
{
  if (type == 1)
  {
    return @"anim-icons-builds-appear";
  }

  else
  {
    return @"anim-icons-builds-disappear";
  }
}

- (void)addAnimationsTo:(id)to context:(id)context
{
  v114 = *MEMORY[0x277D85DE8];
  toCopy = to;
  contextCopy = context;
  v8 = objc_msgSend_textures(contextCopy, v6, v7);
  v11 = objc_msgSend_animatedBuild(contextCopy, v9, v10);
  isBuildIn = objc_msgSend_isBuildIn(v11, v12, v13);
  objc_msgSend_duration(v11, v15, v16);
  v18 = v17;
  v19 = objc_opt_class();
  v22 = objc_msgSend_animationFilter(v19, v20, v21);
  isEqualToString = objc_msgSend_isEqualToString_(v22, v23, *MEMORY[0x277D80578]);

  v101 = contextCopy;
  if (isEqualToString)
  {
    v27 = objc_msgSend_attributes(v11, v25, v26, contextCopy);
    v29 = objc_msgSend_valueForAttributeKey_(v27, v28, @"KNBuildCustomAttributesDeliveryOption");

    v32 = objc_msgSend_unsignedIntegerValue(v29, v30, v31);
    v34 = objc_msgSend_directionFromCustomAttributesDeliveryOption_(KNAnimationUtils, v33, v32);
    v37 = objc_msgSend_count(v8, v35, v36);
    v40 = objc_msgSend_randomGenerator(contextCopy, v38, v39);
    v42 = objc_msgSend_timingsArrayWithDirection_duration_count_chunkDuration_randomness_randomGenerator_(KNAnimationUtils, v41, v34, v37, v40, v18, 0.0001, 0.0);
  }

  else
  {
    v42 = MEMORY[0x277CBEBF8];
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = v8;
  v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v43, &v109, v113, 16);
  if (v108)
  {
    v46 = 0;
    v105 = *v110;
    if (isBuildIn)
    {
      v47 = 0.0;
    }

    else
    {
      v47 = v18 + -0.0001;
    }

    v48 = *MEMORY[0x277D80560];
    v104 = *MEMORY[0x277CDA230];
    v102 = *MEMORY[0x277CDA238];
    v49 = MEMORY[0x277CBEC28];
    v50 = MEMORY[0x277CBEC38];
    v106 = v42;
    do
    {
      for (i = 0; i != v108; ++i)
      {
        if (*v110 != v105)
        {
          objc_enumerationMutation(obj);
        }

        v52 = *(*(&v109 + 1) + 8 * i);
        if (objc_msgSend_count(v42, v44, v45, v101))
        {
          v55 = objc_msgSend_objectAtIndexedSubscript_(v42, v53, v46);
          objc_msgSend_CGPointValue(v55, v56, v57);
          v59 = v58;

          ++v46;
        }

        else
        {
          v59 = 0.0;
        }

        if (objc_msgSend_isBackgroundTexture(v52, v53, v54))
        {
          v59 = v47;
        }

        if (v18 - v59 <= 0.0001)
        {
          v62 = v18 - v59;
        }

        else
        {
          v62 = 0.0001;
        }

        v63 = objc_msgSend_array(MEMORY[0x277CBEB18], v60, v61);
        v65 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v64, v48);
        if (objc_msgSend_isBuildIn(v11, v66, v67))
        {
          objc_msgSend_setFromValue_(v65, v68, v50);
        }

        else
        {
          objc_msgSend_setFromValue_(v65, v68, v49);
        }

        if (objc_msgSend_isBuildIn(v11, v69, v70))
        {
          objc_msgSend_setToValue_(v65, v71, v49);
        }

        else
        {
          objc_msgSend_setToValue_(v65, v71, v50);
        }

        objc_msgSend_setBeginTime_(v65, v72, v73, v59);
        objc_msgSend_setDuration_(v65, v74, v75, v62);
        objc_msgSend_setFillMode_(v65, v76, v104);
        objc_msgSend_addObject_(v63, v77, v65);
        v79 = v59 + v62;
        if (v79 < v18)
        {
          v80 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v78, v48);
          if (objc_msgSend_isBuildIn(v11, v81, v82))
          {
            objc_msgSend_setFromValue_(v80, v83, v49);
          }

          else
          {
            objc_msgSend_setFromValue_(v80, v83, v50);
          }

          if (objc_msgSend_isBuildIn(v11, v84, v85))
          {
            objc_msgSend_setToValue_(v80, v86, v49);
          }

          else
          {
            objc_msgSend_setToValue_(v80, v86, v50);
          }

          objc_msgSend_setBeginTime_(v80, v87, v88, v79);
          objc_msgSend_setDuration_(v80, v89, v90, v18 - v79);
          objc_msgSend_setFillMode_(v80, v91, v102);
          objc_msgSend_addObject_(v63, v92, v80);
        }

        v93 = objc_opt_new();
        objc_msgSend_setDuration_(v93, v94, v95, v18);
        objc_msgSend_setAnimations_(v93, v96, v63);
        v99 = objc_msgSend_layer(v52, v97, v98);
        objc_msgSend_setObject_forKey_(toCopy, v100, v93, v99);

        v42 = v106;
      }

      v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v44, &v109, v113, 16);
    }

    while (v108);
  }
}

@end