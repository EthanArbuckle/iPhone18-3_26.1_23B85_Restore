@interface TSAPdfTagInfo
+ (id)tagPropertiesWithActualText:(id)a3 alternativeText:(id)a4 titleText:(id)a5;
- (TSAPdfTagInfo)initWithTagType:(int)a3 tagProperties:(id)a4;
@end

@implementation TSAPdfTagInfo

- (TSAPdfTagInfo)initWithTagType:(int)a3 tagProperties:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TSAPdfTagInfo;
  v8 = [(TSAPdfTagInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_tagType = a3;
    objc_storeStrong(&v8->_tagProperties, a4);
  }

  return v9;
}

+ (id)tagPropertiesWithActualText:(id)a3 alternativeText:(id)a4 titleText:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v12 = v10;
  if (v7)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v10, v11, v7, *MEMORY[0x277CBF5F8]);
  }

  if (v8)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v12, v11, v8, *MEMORY[0x277CBF600]);
  }

  if (v9)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v12, v11, v9, *MEMORY[0x277CBF608]);
  }

  return v12;
}

@end