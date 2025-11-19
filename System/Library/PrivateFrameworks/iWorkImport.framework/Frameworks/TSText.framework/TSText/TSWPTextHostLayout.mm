@interface TSWPTextHostLayout
- (void)dealloc;
- (void)updateChildrenFromInfo;
@end

@implementation TSWPTextHostLayout

- (void)dealloc
{
  objc_msgSend_setParent_(self->_editingShapeLayout, a2, 0);
  editingShapeLayout = self->_editingShapeLayout;
  self->_editingShapeLayout = 0;

  editingShapeInfo = self->_editingShapeInfo;
  self->_editingShapeInfo = 0;

  v5.receiver = self;
  v5.super_class = TSWPTextHostLayout;
  [(TSWPTextHostLayout *)&v5 dealloc];
}

- (void)updateChildrenFromInfo
{
  v24.receiver = self;
  v24.super_class = TSWPTextHostLayout;
  [(TSWPTextHostLayout *)&v24 updateChildrenFromInfo];
  v6 = objc_msgSend_children(self, v4, v5);
  v9 = objc_msgSend_info(self->_editingShapeLayout, v7, v8);
  editingShapeInfo = self->_editingShapeInfo;

  if (v9 != editingShapeInfo)
  {
    objc_msgSend_setParent_(self->_editingShapeLayout, v11, 0);
    editingShapeLayout = self->_editingShapeLayout;
    self->_editingShapeLayout = 0;
  }

  if (self->_editingShapeLayout || (v18 = self->_editingShapeInfo) != 0 && (v19 = objc_alloc(objc_msgSend_layoutClass(v18, v11, v12)), v21 = objc_msgSend_initWithInfo_(v19, v20, self->_editingShapeInfo), v22 = self->_editingShapeLayout, self->_editingShapeLayout = v21, v22, objc_msgSend_setParent_(self->_editingShapeLayout, v23, self), self->_editingShapeLayout))
  {
    v14 = objc_msgSend_children(self, v11, v12);
    v16 = objc_msgSend_arrayByAddingObject_(v14, v15, self->_editingShapeLayout);

    v6 = v16;
  }

  objc_msgSend_setChildren_(self, v11, v6);
  objc_msgSend_makeObjectsPerformSelector_(v6, v17, a2);
}

@end