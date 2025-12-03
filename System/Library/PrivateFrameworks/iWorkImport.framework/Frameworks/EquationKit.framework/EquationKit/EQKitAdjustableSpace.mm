@interface EQKitAdjustableSpace
+ (__CTRunDelegate)newRunDelegateWithAscent:(double)ascent descent:(double)descent width:(double)width;
+ (void)appendSpaceToAttributedString:(id)string ascent:(double)ascent descent:(double)descent width:(double)width;
- (EQKitAdjustableSpace)initWithAscent:(double)ascent descent:(double)descent width:(double)width;
@end

@implementation EQKitAdjustableSpace

- (EQKitAdjustableSpace)initWithAscent:(double)ascent descent:(double)descent width:(double)width
{
  v9.receiver = self;
  v9.super_class = EQKitAdjustableSpace;
  result = [(EQKitAdjustableSpace *)&v9 init];
  if (result)
  {
    result->mAscent = ascent;
    result->mDescent = descent;
    result->mWidth = width;
  }

  return result;
}

+ (__CTRunDelegate)newRunDelegateWithAscent:(double)ascent descent:(double)descent width:(double)width
{
  v8 = objc_alloc(objc_opt_class());
  v12 = objc_msgSend_initWithAscent_descent_width_(v8, v9, v10, v11, ascent, descent, width);

  return CTRunDelegateCreate(&stru_2884CBA10, v12);
}

+ (void)appendSpaceToAttributedString:(id)string ascent:(double)ascent descent:(double)descent width:(double)width
{
  keys[2] = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_newRunDelegateWithAscent_descent_width_(self, a2, string, v6, ascent, descent, width);
  v9 = *MEMORY[0x277CC49C8];
  keys[0] = *MEMORY[0x277CC4A00];
  keys[1] = v9;
  v10 = *MEMORY[0x277CBED28];
  values[0] = v8;
  values[1] = v10;
  v11 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 2, 0, MEMORY[0x277CBF150]);
  v12 = objc_alloc(MEMORY[0x277CCACA8]);
  v14 = objc_msgSend_initWithCharacters_length_(v12, v13, &unk_275D0C200, 1);
  v15 = objc_alloc(MEMORY[0x277CCA898]);
  v17 = objc_msgSend_initWithString_attributes_(v15, v16, v14, v11);
  objc_msgSend_appendAttributedString_(string, v18, v17, v19);
  CFRelease(v8);
  CFRelease(v11);
}

@end