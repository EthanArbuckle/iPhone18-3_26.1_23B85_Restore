@interface TTKKeyboardPlane
- (CGRect)frame;
- (TTKKeyboardPlane)initWithUIKBTree:(id)a3 layoutUtils:(id)a4;
- (TTKKeyboardPlane)initWithUIKBTree:(id)a3 locale:(id)a4;
- (id)findKey:(id)a3;
- (id)jsonFrameArrayForWord:(id)a3;
@end

@implementation TTKKeyboardPlane

- (CGRect)frame
{
  [(UIKBTree *)self->_keyplane frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)jsonFrameArrayForWord:(id)a3
{
  v25[5] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v22 = [MEMORY[0x277CBEB18] array];
  if ([v3 length])
  {
    v4 = 0;
    do
    {
      v5 = [v3 substringWithRange:{v4, 1}];
      v6 = [(TTKKeyboardPlane *)self findKey:v5];
      v7 = v6;
      if (v6)
      {
        v25[0] = v5;
        v24[0] = @"k";
        v24[1] = @"x";
        v8 = MEMORY[0x277CCABB0];
        [v6 frame];
        v10 = [v8 numberWithInteger:v9];
        v25[1] = v10;
        v24[2] = @"y";
        v11 = MEMORY[0x277CCABB0];
        [v7 frame];
        v13 = [v11 numberWithInteger:v12];
        v25[2] = v13;
        v24[3] = @"w";
        v14 = MEMORY[0x277CCABB0];
        [v7 frame];
        v16 = [v14 numberWithInteger:v15];
        v25[3] = v16;
        v24[4] = @"h";
        v17 = MEMORY[0x277CCABB0];
        [v7 frame];
        v19 = [v17 numberWithInteger:v18];
        v25[4] = v19;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:5];
        [v22 addObject:v20];
      }

      ++v4;
    }

    while ([v3 length] > v4);
  }

  return v22;
}

- (id)findKey:(id)a3
{
  v4 = a3;
  LOBYTE(v9) = 1;
  v5 = [(ACTKeyboardLayoutUtils *)self->_layoutUtils anyKeyForString:v4 keyplane:self->_keyplane wantSecondaryString:0 isRetyping:0 preferBaseKeyVariants:1 preferManualShift:0 substituteUpperCaseForLowerCase:v9];
  if (v5 || (LOBYTE(v10) = 1, [(ACTKeyboardLayoutUtils *)self->_layoutUtils anyKeyForString:v4 keyplane:self->_keyplane wantSecondaryString:1 isRetyping:0 preferBaseKeyVariants:1 preferManualShift:0 substituteUpperCaseForLowerCase:v10], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [[TTKKey alloc] initWithUIKBTree:v5 layoutUtils:self->_layoutUtils];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (TTKKeyboardPlane)initWithUIKBTree:(id)a3 locale:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = TTKKeyboardPlane;
  v9 = [(TTKKeyboardPlane *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyplane, a3);
    v11 = [[ACTKeyboardLayoutUtils alloc] initWithLocale:v8];
    layoutUtils = v10->_layoutUtils;
    v10->_layoutUtils = v11;
  }

  return v10;
}

- (TTKKeyboardPlane)initWithUIKBTree:(id)a3 layoutUtils:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TTKKeyboardPlane;
  v9 = [(TTKKeyboardPlane *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyplane, a3);
    objc_storeStrong(&v10->_layoutUtils, a4);
  }

  return v10;
}

@end