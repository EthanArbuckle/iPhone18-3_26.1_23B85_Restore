@interface TSTCustomFormatListUpgradeHelper
+ (id)upgradedCustomFormatList:(id)list;
@end

@implementation TSTCustomFormatListUpgradeHelper

+ (id)upgradedCustomFormatList:(id)list
{
  listCopy = list;
  v4 = objc_alloc(MEMORY[0x277D80648]);
  v9 = objc_msgSend_context(listCopy, v5, v6, v7, v8);
  v13 = objc_msgSend_initWithContext_(v4, v10, v9, v11, v12);

  objc_msgSend_setUpgrading_(v13, v14, 1, v15, v16);
  objc_opt_class();
  v17 = TSUCheckedDynamicCast();

  if (objc_msgSend_count(v17, v18, v19, v20, v21))
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_22126AAF4;
    v29[3] = &unk_278462028;
    v30 = v13;
    objc_msgSend_enumerateLegacyCustomFormatsUsingBlock_(v17, v25, v29, v26, v27);
  }

  objc_msgSend_setUpgrading_(v13, v22, 0, v23, v24);

  return v13;
}

@end