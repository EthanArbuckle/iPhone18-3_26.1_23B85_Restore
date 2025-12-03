@interface TSSPropertyTypesafeDefinitionUtility
+ (TSSPropertyTypesafeDefinitionUtility)shared;
- (id)initPrivate;
- (int)propertyAccessedDuringBlock:(id)block;
@end

@implementation TSSPropertyTypesafeDefinitionUtility

+ (TSSPropertyTypesafeDefinitionUtility)shared
{
  if (qword_280A54BF0 != -1)
  {
    sub_276CE1928();
  }

  v3 = qword_280A54BE8;

  return v3;
}

- (id)initPrivate
{
  v23.receiver = self;
  v23.super_class = TSSPropertyTypesafeDefinitionUtility;
  v2 = [(TSSPropertyTypesafeDefinitionUtility *)&v23 init];
  v3 = v2;
  if (v2)
  {
    v2->_lastPropertyAccessed = 0;
    v4 = dispatch_queue_create("com.apple.iwork.tsIstyles.propertyconverter", 0);
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = objc_opt_new();
    placeholderObject = v3->_placeholderObject;
    v3->_placeholderObject = v6;

    v10 = objc_msgSend_date(MEMORY[0x277CBEAA8], v8, v9);
    placeholderDate = v3->_placeholderDate;
    v3->_placeholderDate = v10;

    placeholderString = v3->_placeholderString;
    v3->_placeholderString = &stru_2885E7A20;

    placeholderArray = v3->_placeholderArray;
    v3->_placeholderArray = MEMORY[0x277CBEBF8];

    v14 = [TSSStyle alloc];
    isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v14, v15, 0, 0, 0, 0);
    placeholderStyle = v3->_placeholderStyle;
    v3->_placeholderStyle = isVariation;

    v20 = objc_msgSend_clearColor(MEMORY[0x277D81180], v18, v19);
    placeholderColor = v3->_placeholderColor;
    v3->_placeholderColor = v20;
  }

  return v3;
}

- (int)propertyAccessedDuringBlock:(id)block
{
  blockCopy = block;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276CBEDC8;
  block[3] = &unk_27A6EF380;
  block[4] = self;
  v9 = blockCopy;
  v10 = &v11;
  v6 = blockCopy;
  dispatch_sync(queue, block);
  LODWORD(queue) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return queue;
}

@end