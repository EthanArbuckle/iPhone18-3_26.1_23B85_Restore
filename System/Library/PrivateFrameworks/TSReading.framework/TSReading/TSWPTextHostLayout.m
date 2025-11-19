@interface TSWPTextHostLayout
- (void)dealloc;
- (void)setEditingShape:(id)a3;
- (void)updateChildrenFromInfo;
@end

@implementation TSWPTextHostLayout

- (void)dealloc
{
  [(TSDLayout *)self->_editingShapeLayout setParent:0];

  self->_editingShapeLayout = 0;
  self->_editingShapeInfo = 0;
  v3.receiver = self;
  v3.super_class = TSWPTextHostLayout;
  [(TSDDrawableLayout *)&v3 dealloc];
}

- (void)updateChildrenFromInfo
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [(TSDLayout *)self->_editingShapeLayout info];
  editingShapeInfo = self->_editingShapeInfo;
  editingShapeLayout = self->_editingShapeLayout;
  if (v4 == editingShapeInfo)
  {
    if (editingShapeLayout)
    {
LABEL_7:
      v9[0] = editingShapeLayout;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
      goto LABEL_8;
    }
  }

  else
  {
    [(TSDLayout *)self->_editingShapeLayout setParent:0];

    self->_editingShapeLayout = 0;
    editingShapeInfo = self->_editingShapeInfo;
  }

  if (editingShapeInfo)
  {
    v7 = [objc_alloc(-[TSWPShapeInfo layoutClass](editingShapeInfo "layoutClass"))];
    self->_editingShapeLayout = v7;
    [(TSDLayout *)v7 setParent:self];
    editingShapeLayout = self->_editingShapeLayout;
    if (editingShapeLayout)
    {
      goto LABEL_7;
    }
  }

  v8 = 0;
LABEL_8:
  [(TSDAbstractLayout *)self setChildren:v8];
  [v8 makeObjectsPerformSelector:a2];
}

- (void)setEditingShape:(id)a3
{
  editingShapeInfo = self->_editingShapeInfo;
  if (editingShapeInfo != a3)
  {
    [(TSDDrawableInfo *)editingShapeInfo setParentInfo:0];

    self->_editingShapeInfo = a3;
    [(TSDDrawableInfo *)self->_editingShapeInfo setParentInfo:[(TSDLayout *)self info]];

    [(TSDLayout *)self invalidateChildren];
  }
}

@end