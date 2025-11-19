@interface TSCHTextCache
- (TSCHTextCache)init;
- (id)columnForKey:(id)a3;
- (id)equalDigitWidthForFontName:(id)a3;
- (id)numberStringSizeForKey:(id)a3;
- (id)textForKey:(id)a3;
- (void)clear;
- (void)setText:(id)a3 textDelegate:(id)a4 forKey:(id)a5;
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

- (id)textForKey:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v9 = objc_msgSend_objectForKey_(self->_TSWPTextCache, v5, v6, v7, v8, v4);
  v10 = TSUCheckedDynamicCast();

  v15 = objc_msgSend_text(v10, v11, v12, v13, v14);

  return v15;
}

- (void)setText:(id)a3 textDelegate:(id)a4 forKey:(id)a5
{
  v20 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [TSCHTSWPTextWithDelegate alloc];
  v15 = objc_msgSend_initWithText_textDelegate_(v10, v11, v12, v13, v14, v20, v8);
  objc_msgSend_setObject_forKey_(self->_TSWPTextCache, v16, v17, v18, v19, v15, v9);
}

- (id)columnForKey:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v9 = objc_msgSend_objectForKey_(self->_TSWPColumnCache, v5, v6, v7, v8, v4);
  v10 = TSUCheckedDynamicCast();

  return v10;
}

- (id)numberStringSizeForKey:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v9 = objc_msgSend_objectForKey_(self->_numberWidthCache, v5, v6, v7, v8, v4);
  v10 = TSUCheckedDynamicCast();

  return v10;
}

- (id)equalDigitWidthForFontName:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v9 = objc_msgSend_objectForKey_(self->_equalDigitWidthFont, v5, v6, v7, v8, v4);
  v10 = TSUCheckedDynamicCast();

  return v10;
}

@end