@interface KNBuildWebVideoStart
+ (id)localizedMenuString:(int64_t)string;
+ (id)thumbnailImageNameForType:(int64_t)type;
- (void)addAnimationsTo:(id)to context:(id)context;
@end

@implementation KNBuildWebVideoStart

+ (id)localizedMenuString:(int64_t)string
{
  v4 = sub_275DC204C();
  v6 = v4;
  if (string == 1)
  {
    objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"Load Video *BuildStartWebVideo*", @"Load Video", @"Keynote");
  }

  else
  {
    objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"Stop Video *BuildStartWebVideo*", @"Stop Video", @"Keynote");
  }
  v7 = ;

  return v7;
}

+ (id)thumbnailImageNameForType:(int64_t)type
{
  if (type == 1)
  {
    return @"anim-icons-startMovie";
  }

  else
  {
    return @"anim-icons-stopMovie";
  }
}

- (void)addAnimationsTo:(id)to context:(id)context
{
  v55[1] = *MEMORY[0x277D85DE8];
  toCopy = to;
  contextCopy = context;
  v9 = objc_msgSend_textures(contextCopy, v7, v8);
  v12 = objc_msgSend_animatedBuild(contextCopy, v10, v11);
  objc_msgSend_duration(v12, v13, v14);
  v16 = v15;

  v18 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v17, *MEMORY[0x277D80560]);
  v19 = MEMORY[0x277CBEC28];
  objc_msgSend_setFromValue_(v18, v20, MEMORY[0x277CBEC28]);
  objc_msgSend_setToValue_(v18, v21, v19);
  objc_msgSend_setDuration_(v18, v22, v23, v16);
  v25 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v24, *MEMORY[0x277D80568]);
  v26 = MEMORY[0x277CBEC38];
  objc_msgSend_setFromValue_(v25, v27, MEMORY[0x277CBEC38]);
  objc_msgSend_setToValue_(v25, v28, v26);
  objc_msgSend_setDuration_(v25, v29, v30, v16);
  v31 = objc_opt_new();
  if (objc_msgSend_isMetalRenderer(contextCopy, v32, v33))
  {
    v55[0] = v18;
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v34, v55, 1);
  }

  else
  {
    v54[0] = v25;
    v54[1] = v18;
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v34, v54, 2);
  }
  v35 = ;
  objc_msgSend_setAnimations_(v31, v36, v35);

  objc_msgSend_setDuration_(v31, v37, v38, v16);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v39 = v9;
  v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v49, v53, 16);
  if (v41)
  {
    v44 = v41;
    v45 = *v50;
    do
    {
      v46 = 0;
      do
      {
        if (*v50 != v45)
        {
          objc_enumerationMutation(v39);
        }

        v47 = objc_msgSend_layer(*(*(&v49 + 1) + 8 * v46), v42, v43, v49);
        objc_msgSend_setObject_forKey_(toCopy, v48, v31, v47);

        ++v46;
      }

      while (v44 != v46);
      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v42, &v49, v53, 16);
    }

    while (v44);
  }
}

@end