@interface KNNoteRep
- (BOOL)canBeginEditingChildRepOnDoubleTap:(id)a3;
- (KNNoteRep)initWithLayout:(id)a3 canvas:(id)a4;
- (TSDContainerInfo)containerInfo;
- (double)columnHeight;
- (id)childReps;
- (void)dealloc;
- (void)storage:(id)a3 didChangeRange:(_NSRange)a4 delta:(int64_t)a5 broadcastKind:(unint64_t)a6;
- (void)updateChildrenFromLayout;
- (void)willBeginEditingContainedInfo:(id)a3;
- (void)willEndEditingContainedInfo:(id)a3;
@end

@implementation KNNoteRep

- (KNNoteRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v17.receiver = self;
  v17.super_class = KNNoteRep;
  v4 = [(TSDRep *)&v17 initWithLayout:a3 canvas:a4];
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_layout(v4, v5, v6);
    v11 = objc_msgSend_info(v8, v9, v10);
    v14 = objc_msgSend_containedStorage(v11, v12, v13);

    if (v14)
    {
      objc_msgSend_addObserver_(v14, v15, v7);
    }
  }

  return v7;
}

- (void)dealloc
{
  objc_msgSend_setParentRep_(self->_containedRep, a2, 0);
  v3.receiver = self;
  v3.super_class = KNNoteRep;
  [(TSDRep *)&v3 dealloc];
}

- (BOOL)canBeginEditingChildRepOnDoubleTap:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_containedRep(self, v5, v6);
  LOBYTE(self) = v7 == v4;

  return self;
}

- (void)updateChildrenFromLayout
{
  v4 = objc_msgSend_layout(self, a2, v2);
  v22 = objc_msgSend_containedLayout(v4, v5, v6);

  v9 = objc_msgSend_layout(self->_containedRep, v7, v8);

  if (v9 != v22)
  {
    objc_msgSend_setParentRep_(self->_containedRep, v10, 0);
    containedRep = self->_containedRep;
    self->_containedRep = 0;
  }

  v13 = self->_containedRep;
  if (!v13)
  {
    v14 = objc_alloc(objc_msgSend_repClassOverride(v22, v10, v11));
    v17 = objc_msgSend_canvas(self, v15, v16);
    v19 = objc_msgSend_initWithLayout_canvas_(v14, v18, v22, v17);
    v20 = self->_containedRep;
    self->_containedRep = v19;

    objc_msgSend_setParentRep_(self->_containedRep, v21, self);
    v13 = self->_containedRep;
  }

  objc_msgSend_updateChildrenFromLayout(v13, v10, v11);
}

- (id)childReps
{
  v4 = objc_msgSend_containedRep(self, a2, v2);
  if (v4)
  {
    v5 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v3, v4);
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (double)columnHeight
{
  v3 = objc_msgSend_containedRep(self, a2, v2);
  v6 = objc_msgSend_columns(v3, v4, v5);
  v8 = objc_msgSend_objectAtIndex_(v6, v7, 0);

  objc_msgSend_contentBlockBottom(v8, v9, v10);
  *&v11 = v11;
  v12 = *&v11;

  return v12;
}

- (TSDContainerInfo)containerInfo
{
  v3 = objc_msgSend_info(self, a2, v2);
  v4 = TSUProtocolCast();

  return v4;
}

- (void)willBeginEditingContainedInfo:(id)a3
{
  v4 = objc_msgSend_layout(self, a2, a3);
  objc_msgSend_createContainedLayoutForEditing(v4, v5, v6);

  objc_msgSend_updateChildrenFromLayout(self, v7, v8);
}

- (void)willEndEditingContainedInfo:(id)a3
{
  v4 = objc_msgSend_layout(self, a2, a3);
  objc_msgSend_createContainedLayoutForEditing(v4, v5, v6);

  objc_msgSend_updateChildrenFromLayout(self, v7, v8);
}

- (void)storage:(id)a3 didChangeRange:(_NSRange)a4 delta:(int64_t)a5 broadcastKind:(unint64_t)a6
{
  v8 = objc_msgSend_layout(self, a2, a3, a4.location, a4.length, a5, a6);
  objc_msgSend_createContainedLayoutForEditing(v8, v6, v7);
}

@end