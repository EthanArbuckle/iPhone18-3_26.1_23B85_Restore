@interface TSWPTextHostRep
- (TSWPTextHostRep)initWithLayout:(id)a3 canvas:(id)a4;
- (id)childReps;
- (void)dealloc;
- (void)updateChildrenFromLayout;
@end

@implementation TSWPTextHostRep

- (TSWPTextHostRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v5.receiver = self;
  v5.super_class = TSWPTextHostRep;
  return [(TSDRep *)&v5 initWithLayout:a3 canvas:a4];
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2);
  objc_msgSend_removeObserver_(v4, v5, self);

  objc_msgSend_setParentRep_(self->_editingRep, v6, 0);
  editingRep = self->_editingRep;
  self->_editingRep = 0;

  v8.receiver = self;
  v8.super_class = TSWPTextHostRep;
  [(TSDRep *)&v8 dealloc];
}

- (void)updateChildrenFromLayout
{
  v4 = objc_msgSend_layout(self, a2, v2);
  v7 = objc_msgSend_editingShapeLayout(v4, v5, v6);

  v10 = objc_msgSend_layout(self->_editingRep, v8, v9);

  if (v10 != v7)
  {
    objc_msgSend_setParentRep_(self->_editingRep, v11, 0);
    editingRep = self->_editingRep;
    self->_editingRep = 0;
  }

  v14 = self->_editingRep;
  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = v7 == 0;
  }

  if (!v15)
  {
    v16 = objc_alloc(objc_msgSend_repClassOverride(v7, v11, v12));
    v19 = objc_msgSend_canvas(self, v17, v18);
    v21 = objc_msgSend_initWithLayout_canvas_(v16, v20, v7, v19);
    v22 = self->_editingRep;
    self->_editingRep = v21;

    objc_msgSend_setParentRep_(self->_editingRep, v23, self);
    v14 = self->_editingRep;
  }

  objc_msgSend_updateChildrenFromLayout(v14, v11, v12);
  v24.receiver = self;
  v24.super_class = TSWPTextHostRep;
  [(TSDRep *)&v24 updateChildrenFromLayout];
}

- (id)childReps
{
  v9.receiver = self;
  v9.super_class = TSWPTextHostRep;
  v3 = [(TSDRep *)&v9 childReps];
  v5 = v3;
  editingRep = self->_editingRep;
  if (editingRep)
  {
    v7 = objc_msgSend_arrayByAddingObject_(v3, v4, editingRep);

    v5 = v7;
  }

  return v5;
}

@end