@interface TSTHiddenRowsColumnsCacheValidationCollection
- (TSTHiddenRowsColumnsCacheValidationCollection)init;
@end

@implementation TSTHiddenRowsColumnsCacheValidationCollection

- (TSTHiddenRowsColumnsCacheValidationCollection)init
{
  v28.receiver = self;
  v28.super_class = TSTHiddenRowsColumnsCacheValidationCollection;
  v6 = [(TSTHiddenRowsColumnsCacheValidationCollection *)&v28 init];
  if (v6)
  {
    v7 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v2, v3, v4, v5);
    visible = v6->_visible;
    v6->_visible = v7;

    v13 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v9, v10, v11, v12);
    hidden = v6->_hidden;
    v6->_hidden = v13;

    v19 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v15, v16, v17, v18);
    userVisible = v6->_userVisible;
    v6->_userVisible = v19;

    v25 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v21, v22, v23, v24);
    userHidden = v6->_userHidden;
    v6->_userHidden = v25;
  }

  return v6;
}

@end