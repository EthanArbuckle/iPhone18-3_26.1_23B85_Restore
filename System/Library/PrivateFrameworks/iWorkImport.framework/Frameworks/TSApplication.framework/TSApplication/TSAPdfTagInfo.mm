@interface TSAPdfTagInfo
+ (id)tagPropertiesWithActualText:(id)text alternativeText:(id)alternativeText titleText:(id)titleText;
- (TSAPdfTagInfo)initWithTagType:(int)type tagProperties:(id)properties;
@end

@implementation TSAPdfTagInfo

- (TSAPdfTagInfo)initWithTagType:(int)type tagProperties:(id)properties
{
  propertiesCopy = properties;
  v11.receiver = self;
  v11.super_class = TSAPdfTagInfo;
  v8 = [(TSAPdfTagInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_tagType = type;
    objc_storeStrong(&v8->_tagProperties, properties);
  }

  return v9;
}

+ (id)tagPropertiesWithActualText:(id)text alternativeText:(id)alternativeText titleText:(id)titleText
{
  textCopy = text;
  alternativeTextCopy = alternativeText;
  titleTextCopy = titleText;
  v10 = objc_opt_new();
  v12 = v10;
  if (textCopy)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v10, v11, textCopy, *MEMORY[0x277CBF5F8]);
  }

  if (alternativeTextCopy)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v12, v11, alternativeTextCopy, *MEMORY[0x277CBF600]);
  }

  if (titleTextCopy)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v12, v11, titleTextCopy, *MEMORY[0x277CBF608]);
  }

  return v12;
}

@end