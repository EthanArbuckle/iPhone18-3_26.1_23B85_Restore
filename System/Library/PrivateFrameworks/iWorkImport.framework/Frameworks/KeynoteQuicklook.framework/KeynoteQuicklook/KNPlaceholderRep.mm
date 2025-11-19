@interface KNPlaceholderRep
+ (id)mixableObjectClasses;
- (id)textureForDescription:(id)a3;
@end

@implementation KNPlaceholderRep

- (id)textureForDescription:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_layout(self, v5, v6);
  v10 = objc_msgSend_info(v7, v8, v9);
  v13 = objc_msgSend_textStorage(v10, v11, v12);

  v16 = objc_msgSend_copy(v4, v14, v15);
  objc_msgSend_setShouldNotAddShapeAttributes_(v16, v17, 1);
  if (!objc_msgSend_length(v13, v18, v19))
  {
    v22 = objc_msgSend_layout(self, v20, v21);
    v25 = objc_msgSend_info(v22, v23, v24);
    if (objc_msgSend_displaysInstructionalText(v25, v26, v27))
    {
      v30 = objc_msgSend_canvas(self, v28, v29);
      v33 = objc_msgSend_layout(self, v31, v32);
      shouldShowInstructionalTextForLayout = objc_msgSend_shouldShowInstructionalTextForLayout_(v30, v34, v33);

      if (shouldShowInstructionalTextForLayout)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    objc_msgSend_setShouldNotAddText_(v16, v36, 1);
  }

LABEL_7:
  v39.receiver = self;
  v39.super_class = KNPlaceholderRep;
  v37 = [(TSWPShapeRep *)&v39 textureForDescription:v16];

  return v37;
}

+ (id)mixableObjectClasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v5, 1);

  return v3;
}

@end