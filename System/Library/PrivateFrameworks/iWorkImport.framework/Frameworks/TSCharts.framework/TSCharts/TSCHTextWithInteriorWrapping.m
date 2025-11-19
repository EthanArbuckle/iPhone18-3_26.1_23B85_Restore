@interface TSCHTextWithInteriorWrapping
- (id)interiorWrapPath;
- (id)interiorWrapSegments;
@end

@implementation TSCHTextWithInteriorWrapping

- (id)interiorWrapSegments
{
  cachedInteriorWrapSegments = self->_cachedInteriorWrapSegments;
  if (!cachedInteriorWrapSegments)
  {
    v7 = objc_msgSend_interiorWrapPath(self, a2, v2, v3, v4);
    v8 = objc_alloc(MEMORY[0x277D803F0]);
    v13 = objc_msgSend_initWithPath_(v8, v9, v10, v11, v12, v7);
    v14 = self->_cachedInteriorWrapSegments;
    self->_cachedInteriorWrapSegments = v13;

    cachedInteriorWrapSegments = self->_cachedInteriorWrapSegments;
  }

  return cachedInteriorWrapSegments;
}

- (id)interiorWrapPath
{
  v6 = objc_msgSend_bezierPath(MEMORY[0x277D81160], a2, v2, v3, v4);
  objc_msgSend_minSize(self, v7, v8, v9, v10);
  objc_msgSend_minSize(self, v11, v12, v13, v14);
  v16 = v15;
  objc_msgSend_minSize(self, v17, v15, v18, v19);
  objc_msgSend_minSize(self, v20, v21, v22, v23);
  TSURectWithCenterAndSize();
  objc_msgSend_appendBezierPathWithOvalInRect_(v6, v24, v25, v26, v27);
  v32 = objc_msgSend_defaultLineJoinStyle(MEMORY[0x277D81160], v28, v29, v30, v31);
  v36 = objc_msgSend_bezierPathByOffsettingPath_joinStyle_attemptingUsingLivarotFirstWithThresholds_(v6, v33, v16 * -0.05, v34, v35, v32, &unk_28856EB40);

  return v36;
}

@end