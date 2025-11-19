@interface TTSApplebetMapperRule
+ (id)ruleWithHeterogeniousArray:(id)a3;
@end

@implementation TTSApplebetMapperRule

+ (id)ruleWithHeterogeniousArray:(id)a3
{
  v3 = a3;
  v4 = [TTSApplebetMapperRule alloc];
  v9 = objc_msgSend_init(v4, v5, v6, v7, v8);
  v13 = objc_msgSend_objectAtIndexedSubscript_(v3, v10, 0, v11, v12);
  objc_msgSend_setLeft_(v9, v14, v13, v15, v16);

  v20 = objc_msgSend_objectAtIndexedSubscript_(v3, v17, 1, v18, v19);
  objc_msgSend_setMatch_(v9, v21, v20, v22, v23);

  v27 = objc_msgSend_objectAtIndexedSubscript_(v3, v24, 2, v25, v26);
  objc_msgSend_setRight_(v9, v28, v27, v29, v30);

  v34 = objc_msgSend_objectAtIndexedSubscript_(v3, v31, 3, v32, v33);
  objc_msgSend_setMatchRule_(v9, v35, v34, v36, v37);

  v41 = objc_msgSend_objectAtIndexedSubscript_(v3, v38, 4, v39, v40);
  objc_msgSend_setSubstitution_(v9, v42, v41, v43, v44);

  return v9;
}

@end