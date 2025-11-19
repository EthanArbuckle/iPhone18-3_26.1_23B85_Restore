@interface TSAAnnotationReference
- (BOOL)isValidAndInDocument;
- (BOOL)referencesAnnotation:(id)a3;
@end

@implementation TSAAnnotationReference

- (BOOL)referencesAnnotation:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_annotation(self, v5, v6, v7);
  isEqual = v8 == v4;

  v13 = objc_msgSend_annotation(self, v10, v11, v12);
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v18 = objc_msgSend_annotation(self, v15, v16, v17);
    isEqual = objc_msgSend_isEqual_(v18, v19, v4, v20);
  }

  return isEqual;
}

- (BOOL)isValidAndInDocument
{
  v4 = objc_msgSend_annotation(self, a2, v2, v3);
  v8 = objc_msgSend_isInDocument(v4, v5, v6, v7);

  return v8;
}

@end