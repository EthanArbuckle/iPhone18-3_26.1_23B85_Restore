@interface TSTDupContentCache
- (id)description;
@end

@implementation TSTDupContentCache

- (id)description
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_2215C4CDC;
  v27 = sub_2215C4CEC;
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10 = objc_msgSend_count(self, v6, v7, v8, v9);
  v28 = objc_msgSend_stringWithFormat_(v3, v11, @"<%@ %p with %d key/value pairs \n{\n", v12, v13, v5, self, v10);

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2215C4CF4;
  v22[3] = &unk_278467628;
  v22[4] = &v23;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(self, v14, v22, v15, v16);
  objc_msgSend_appendString_(v24[5], v17, @"}>", v18, v19);
  v20 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v20;
}

@end