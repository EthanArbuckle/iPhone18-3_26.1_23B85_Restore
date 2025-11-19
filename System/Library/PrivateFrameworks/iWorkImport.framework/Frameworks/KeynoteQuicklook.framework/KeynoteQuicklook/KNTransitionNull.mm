@interface KNTransitionNull
+ (NSDictionary)defaultAttributes;
+ (id)localizedMenuString:(int64_t)a3;
- (void)addAnimationsTo:(id)a3 context:(id)a4;
@end

@implementation KNTransitionNull

+ (id)localizedMenuString:(int64_t)a3
{
  v3 = sub_275DC204C();
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"None *NullTransition*", @"None", @"Keynote");

  return v5;
}

+ (NSDictionary)defaultAttributes
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"KNTransitionAttributesDuration";
  v5[0] = &unk_2884F3738;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, &v4, 1);

  return v2;
}

- (void)addAnimationsTo:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = objc_msgSend_textures(v5, v7, v8);
  v55 = objc_msgSend_firstObject(v9, v10, v11);

  v14 = objc_msgSend_textures(v5, v12, v13);
  v17 = objc_msgSend_lastObject(v14, v15, v16);

  isFrameRenderer = objc_msgSend_isFrameRenderer(v5, v18, v19);
  v21 = *MEMORY[0x277D80560];
  v23 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v22, *MEMORY[0x277D80560]);
  v25 = v23;
  if (isFrameRenderer)
  {
    v26 = MEMORY[0x277CBEC38];
    objc_msgSend_setFromValue_(v23, v24, MEMORY[0x277CBEC38]);
    v27 = MEMORY[0x277CBEC28];
    objc_msgSend_setToValue_(v25, v28, MEMORY[0x277CBEC28]);
    objc_msgSend_setDuration_(v25, v29, v30, 0.001);
    v31 = *MEMORY[0x277CDA230];
    objc_msgSend_setFillMode_(v25, v32, *MEMORY[0x277CDA230]);
    v35 = objc_msgSend_layer(v17, v33, v34);
    objc_msgSend_setObject_forKey_(v6, v36, v25, v35);

    v38 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v37, v21);
    objc_msgSend_setFromValue_(v38, v39, v27);
    objc_msgSend_setToValue_(v38, v40, v26);
    objc_msgSend_setDuration_(v38, v41, v42, 0.001);
    objc_msgSend_setFillMode_(v38, v43, v31);
    v46 = objc_msgSend_layer(v55, v44, v45);
    objc_msgSend_setObject_forKey_(v6, v47, v38, v46);

    v6 = v46;
  }

  else
  {
    objc_msgSend_setFromValue_(v23, v24, MEMORY[0x277CBEC28]);
    objc_msgSend_setToValue_(v25, v48, MEMORY[0x277CBEC38]);
    objc_msgSend_setDuration_(v25, v49, v50, 0.001);
    objc_msgSend_setFillMode_(v25, v51, *MEMORY[0x277CDA238]);
    v38 = objc_msgSend_layer(v55, v52, v53);
    objc_msgSend_setObject_forKey_(v6, v54, v25, v38);
  }
}

@end