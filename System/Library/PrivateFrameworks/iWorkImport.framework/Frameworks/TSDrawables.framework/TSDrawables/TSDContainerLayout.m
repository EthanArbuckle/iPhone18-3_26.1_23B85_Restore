@interface TSDContainerLayout
- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)a3;
- (TSDContainerLayout)initWithInfo:(id)a3;
- (id)childInfosForChildLayouts;
- (void)processChangedProperty:(int)a3;
@end

@implementation TSDContainerLayout

- (TSDContainerLayout)initWithInfo:(id)a3
{
  v4 = a3;
  if ((objc_msgSend_conformsToProtocol_(v4, v5, &unk_2885A1758) & 1) == 0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDContainerLayout initWithInfo:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDContainerLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 24, 0, "info is wrong protocol for layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v16.receiver = self;
  v16.super_class = TSDContainerLayout;
  v14 = [(TSDLayout *)&v16 initWithInfo:v4];

  return v14;
}

- (void)processChangedProperty:(int)a3
{
  v3 = *&a3;
  if (a3 == 514)
  {
    v5 = objc_msgSend_layoutController(self, a2, *&a3);
    objc_msgSend_invalidateChildrenOfLayout_(v5, v6, self);
  }

  v7.receiver = self;
  v7.super_class = TSDContainerLayout;
  [(TSDLayout *)&v7 processChangedProperty:v3];
}

- (id)childInfosForChildLayouts
{
  v15.receiver = self;
  v15.super_class = TSDContainerLayout;
  v3 = [(TSDLayout *)&v15 childInfosForChildLayouts];
  v6 = objc_msgSend_containerInfo(self, v4, v5);
  v9 = objc_msgSend_childInfos(v6, v7, v8);

  if (objc_msgSend_count(v9, v10, v11))
  {
    v13 = objc_msgSend_arrayByAddingObjectsFromArray_(v9, v12, v3);

    v3 = v13;
  }

  return v3;
}

- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)a3
{
  v4 = objc_msgSend_pureGeometry(self, a2, a3);
  objc_msgSend_frame(v4, v5, v6);
  v7 = *&a3->c;
  *&v16.a = *&a3->a;
  *&v16.c = v7;
  *&v16.tx = *&a3->tx;
  v18 = CGRectApplyAffineTransform(v17, &v16);
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

@end