@interface TSWPMutableDropCap
- (id)copyWithZone:(_NSZone *)a3;
- (void)setPropertiesFromDropCap:(id)a3;
@end

@implementation TSWPMutableDropCap

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSWPDropCap alloc];
  v7 = objc_msgSend_dropCapType(self, v5, v6);
  v10 = objc_msgSend_numberOfLines(self, v8, v9);
  v13 = objc_msgSend_numberOfRaisedLines(self, v11, v12);
  objc_msgSend_outdent(self, v14, v15);
  v17 = v16;
  objc_msgSend_padding(self, v18, v19);
  v21 = v20;
  v24 = objc_msgSend_shapeEnabled(self, v22, v23);
  objc_msgSend_cornerRadius(self, v25, v26);
  v28 = v27;
  objc_msgSend_characterScale(self, v29, v30);
  v32 = v31;
  v35 = objc_msgSend_wrapType(self, v33, v34);
  v39 = objc_msgSend_numberOfCharacters(self, v36, v37);

  return objc_msgSend_initWithType_numberOfLines_numberOfRaisedLines_outdent_padding_shapeEnabled_cornerRadius_characterScale_wrapType_numberOfCharacters_(v4, v38, v7, v10, v13, v24, v35, v39, v17, v21, v28, v32);
}

- (void)setPropertiesFromDropCap:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_dropCapType(v4, v5, v6);
  objc_msgSend_setDropCapType_(self, v8, v7);
  v11 = objc_msgSend_numberOfLines(v4, v9, v10);
  objc_msgSend_setNumberOfLines_(self, v12, v11);
  v15 = objc_msgSend_numberOfRaisedLines(v4, v13, v14);
  objc_msgSend_setNumberOfRaisedLines_(self, v16, v15);
  objc_msgSend_outdent(v4, v17, v18);
  objc_msgSend_setOutdent_(self, v19, v20);
  objc_msgSend_padding(v4, v21, v22);
  objc_msgSend_setPadding_(self, v23, v24);
  v27 = objc_msgSend_shapeEnabled(v4, v25, v26);
  objc_msgSend_setShapeEnabled_(self, v28, v27);
  objc_msgSend_cornerRadius(v4, v29, v30);
  objc_msgSend_setCornerRadius_(self, v31, v32);
  objc_msgSend_characterScale(v4, v33, v34);
  objc_msgSend_setCharacterScale_(self, v35, v36);
  v39 = objc_msgSend_wrapType(v4, v37, v38);
  objc_msgSend_setWrapType_(self, v40, v39);
  v43 = objc_msgSend_numberOfCharacters(v4, v41, v42);

  objc_msgSend_setNumberOfCharacters_(self, v44, v43);
}

@end