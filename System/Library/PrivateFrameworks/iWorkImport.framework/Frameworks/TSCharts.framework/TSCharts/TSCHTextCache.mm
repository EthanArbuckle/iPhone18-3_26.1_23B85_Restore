@interface TSCHTextCache
- (TSCHTextCache)init;
- (id)columnForKey:(id)key;
- (id)equalDigitWidthForFontName:(id)name;
- (id)numberStringSizeForKey:(id)key;
- (id)textForKey:(id)key;
- (void)clear;
- (void)setText:(id)text textDelegate:(id)delegate forKey:(id)key;
@end

@implementation TSCHTextCache

- (TSCHTextCache)init
{
  v12.receiver = self;
  v12.super_class = TSCHTextCache;
  v2 = [(TSCHTextCache *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D81170]);
    TSWPTextCache = v2->_TSWPTextCache;
    v2->_TSWPTextCache = v3;

    v5 = objc_alloc_init(MEMORY[0x277D81170]);
    TSWPColumnCache = v2->_TSWPColumnCache;
    v2->_TSWPColumnCache = v5;

    v7 = objc_alloc_init(MEMORY[0x277D81170]);
    numberWidthCache = v2->_numberWidthCache;
    v2->_numberWidthCache = v7;

    v9 = objc_alloc_init(MEMORY[0x277D81170]);
    equalDigitWidthFont = v2->_equalDigitWidthFont;
    v2->_equalDigitWidthFont = v9;
  }

  return v2;
}

- (void)clear
{
  objc_msgSend_removeAllObjects(self->_TSWPTextCache, a2, v2, v3, v4);
  objc_msgSend_removeAllObjects(self->_TSWPColumnCache, v6, v7, v8, v9);
  objc_msgSend_removeAllObjects(self->_numberWidthCache, v10, v11, v12, v13);
  equalDigitWidthFont = self->_equalDigitWidthFont;

  objc_msgSend_removeAllObjects(equalDigitWidthFont, v14, v15, v16, v17);
}

- (id)textForKey:(id)key
{
  keyCopy = key;
  objc_opt_class();
  v9 = objc_msgSend_objectForKey_(self->_TSWPTextCache, v5, v6, v7, v8, keyCopy);
  v10 = TSUCheckedDynamicCast();

  v15 = objc_msgSend_text(v10, v11, v12, v13, v14);

  return v15;
}

- (void)setText:(id)text textDelegate:(id)delegate forKey:(id)key
{
  textCopy = text;
  delegateCopy = delegate;
  keyCopy = key;
  v10 = [TSCHTSWPTextWithDelegate alloc];
  v15 = objc_msgSend_initWithText_textDelegate_(v10, v11, v12, v13, v14, textCopy, delegateCopy);
  objc_msgSend_setObject_forKey_(self->_TSWPTextCache, v16, v17, v18, v19, v15, keyCopy);
}

- (id)columnForKey:(id)key
{
  keyCopy = key;
  objc_opt_class();
  v9 = objc_msgSend_objectForKey_(self->_TSWPColumnCache, v5, v6, v7, v8, keyCopy);
  v10 = TSUCheckedDynamicCast();

  return v10;
}

- (id)numberStringSizeForKey:(id)key
{
  keyCopy = key;
  objc_opt_class();
  v9 = objc_msgSend_objectForKey_(self->_numberWidthCache, v5, v6, v7, v8, keyCopy);
  v10 = TSUCheckedDynamicCast();

  return v10;
}

- (id)equalDigitWidthForFontName:(id)name
{
  nameCopy = name;
  objc_opt_class();
  v9 = objc_msgSend_objectForKey_(self->_equalDigitWidthFont, v5, v6, v7, v8, nameCopy);
  v10 = TSUCheckedDynamicCast();

  return v10;
}

@end