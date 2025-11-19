@interface TNPageRepContainer
- (TNPageRepContainer)initWithLayout:(id)a3 canvas:(id)a4;
- (id)accessibilityLabel;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3;
@end

@implementation TNPageRepContainer

- (TNPageRepContainer)initWithLayout:(id)a3 canvas:(id)a4
{
  v6.receiver = self;
  v6.super_class = TNPageRepContainer;
  result = [(TSDRep *)&v6 initWithLayout:a3 canvas:a4];
  if (result)
  {
    v5 = *(MEMORY[0x277CBF3A0] + 16);
    result->_shadowPathRect.origin = *MEMORY[0x277CBF3A0];
    result->_shadowPathRect.size = v5;
  }

  return result;
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2);
  objc_msgSend_removeObserver_(v4, v5, self);

  v6.receiver = self;
  v6.super_class = TNPageRepContainer;
  [(TSDRep *)&v6 dealloc];
}

- (void)drawInContext:(CGContext *)a3
{
  v17 = objc_msgSend_layout(self, a2, a3);
  CGContextSaveGState(a3);
  objc_msgSend_pageBounds(v17, v4, v5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v16 = objc_msgSend_backgroundColor(v17, v14, v15);
  sub_275F2FF6C(a3, v16, 0, v7, v9, v11, v13);
  CGContextRestoreGState(a3);
}

- (id)accessibilityLabel
{
  v3 = sub_275F37BC8();
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"Page %ld", &stru_2884F65E0, @"Numbers");

  v6 = MEMORY[0x277CCACA8];
  v9 = objc_msgSend_layout(self, v7, v8);
  v12 = objc_msgSend_contentLayout(v9, v10, v11);
  v15 = objc_msgSend_pageNumber(v12, v13, v14);
  v17 = objc_msgSend_localizedStringWithFormat_(v6, v16, v5, v15);

  return v17;
}

@end