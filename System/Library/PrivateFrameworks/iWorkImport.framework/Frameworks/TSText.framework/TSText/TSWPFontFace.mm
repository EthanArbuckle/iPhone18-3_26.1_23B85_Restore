@interface TSWPFontFace
+ (id)fontFaceWithPostScriptName:(id)a3 faceName:(id)a4;
- (TSWPFontFace)initWithPostScriptName:(id)a3 faceName:(id)a4;
- (id)description;
@end

@implementation TSWPFontFace

+ (id)fontFaceWithPostScriptName:(id)a3 faceName:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithPostScriptName_faceName_(v7, v8, v6, v5);

  return v9;
}

- (TSWPFontFace)initWithPostScriptName:(id)a3 faceName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = TSWPFontFace;
  v8 = [(TSWPFontFace *)&v13 init];
  v10 = v8;
  if (v8)
  {
    objc_msgSend_setPostScriptName_(v8, v9, v6);
    objc_msgSend_setFaceName_(v10, v11, v7);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return objc_msgSend_stringWithFormat_(v3, v5, @"(%@*) %p %@ %@", v4, self, self->_postScriptName, self->_faceName);
}

@end