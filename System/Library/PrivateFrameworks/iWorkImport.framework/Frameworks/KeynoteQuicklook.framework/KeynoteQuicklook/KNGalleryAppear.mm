@interface KNGalleryAppear
+ (NSDictionary)defaultAttributes;
+ (id)localizedMenuString:(int64_t)string;
- (void)addAnimationsTo:(id)to context:(id)context;
@end

@implementation KNGalleryAppear

+ (id)localizedMenuString:(int64_t)string
{
  v3 = sub_275DC204C();
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"Appear *gallery content build*", @"Appear", @"Keynote");

  return v5;
}

+ (NSDictionary)defaultAttributes
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"KNBuildAttributesDefaultDuration";
  v5[0] = &unk_2884F3F10;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, &v4, 1);

  return v2;
}

- (void)addAnimationsTo:(id)to context:(id)context
{
  v50 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = objc_msgSend_textures(context, v5, v6);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v44, v49, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v45;
    v41 = *MEMORY[0x277CDA230];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v44 + 1) + 8 * i);
        if ((objc_msgSend_isBackgroundTexture(v14, v9, v10) & 1) == 0)
        {
          isIncomingContent = objc_msgSend_isIncomingContent(v14, v9, v10);
          v18 = objc_msgSend_isIncomingContent(v14, v16, v17);
          v20 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9EC8], v19, @"hidden");
          v22 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v21, isIncomingContent);
          v48[0] = v22;
          v24 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v23, isIncomingContent);
          v48[1] = v24;
          v26 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v25, v18 ^ 1u);
          v48[2] = v26;
          v28 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v27, v18 ^ 1u);
          v48[3] = v28;
          objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v29, v48, 4);
          v31 = v30 = v12;
          objc_msgSend_setValues_(v20, v32, v31);

          objc_msgSend_setKeyTimes_(v20, v33, &unk_2884F3E80);
          objc_msgSend_setDuration_(v20, v34, v35, 0.001);
          objc_msgSend_setFillMode_(v20, v36, v41);
          v39 = objc_msgSend_layer(v14, v37, v38);
          objc_msgSend_setObject_forKey_(toCopy, v40, v20, v39);

          v12 = v30;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v44, v49, 16);
    }

    while (v11);
  }
}

@end