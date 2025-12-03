@interface TSCHStyleAndPropertyPair
+ (id)pairWithStyle:(id)style property:(int)property;
- (BOOL)isEqual:(id)equal;
- (TSCHStyleAndPropertyPair)initWithStyle:(id)style property:(int)property;
- (id)description;
@end

@implementation TSCHStyleAndPropertyPair

+ (id)pairWithStyle:(id)style property:(int)property
{
  v4 = *&property;
  styleCopy = style;
  v7 = [self alloc];
  v12 = objc_msgSend_initWithStyle_property_(v7, v8, v9, v10, v11, styleCopy, v4);

  return v12;
}

- (TSCHStyleAndPropertyPair)initWithStyle:(id)style property:(int)property
{
  styleCopy = style;
  v11.receiver = self;
  v11.super_class = TSCHStyleAndPropertyPair;
  v8 = [(TSCHStyleAndPropertyPair *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_style, style);
    v9->_property = property;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();

  v6 = v5 && self->_style == *(v5 + 16) && self->_property == *(v5 + 8);
  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10 = objc_msgSend_style(self, v6, v7, v8, v9);
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v17 = objc_msgSend_style(self, v13, v14, v15, v16);
  objc_msgSend_property(self, v18, v19, v20, v21);
  v22 = String();
  v27 = objc_msgSend_style(self, v23, v24, v25, v26);
  v32 = objc_msgSend_property(self, v28, v29, v30, v31);
  v37 = objc_msgSend_intValueForProperty_(v27, v33, v34, v35, v36, v32);
  v42 = objc_msgSend_style(self, v38, v39, v40, v41);
  v47 = objc_msgSend_property(self, v43, v44, v45, v46);
  v52 = objc_msgSend_intValueForMUXedProperty_(v42, v48, v49, v50, v51, v47);
  v57 = objc_msgSend_stringWithFormat_(v3, v53, v54, v55, v56, @"<%@: %p style: <%@: %p> property: %@ index: %ld muxIndex: %ld>", v5, self, v12, v17, v22, v37, v52);

  return v57;
}

@end