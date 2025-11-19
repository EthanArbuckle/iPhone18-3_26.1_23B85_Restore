@interface PXGLayoutGuide
- (CGRect)rectInLayout:(id)a3;
- (CGRect)referenceRect;
- (PXGLayout)referenceLayout;
- (void)performChanges:(id)a3;
- (void)setRect:(CGRect)a3 inLayout:(id)a4;
@end

@implementation PXGLayoutGuide

- (PXGLayout)referenceLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_referenceLayout);

  return WeakRetained;
}

- (CGRect)referenceRect
{
  x = self->_referenceRect.origin.x;
  y = self->_referenceRect.origin.y;
  width = self->_referenceRect.size.width;
  height = self->_referenceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setRect:(CGRect)a3 inLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  [(PXGLayoutGuide *)self rectInLayout:v9];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(PXGLayoutGuide *)self setReferenceRect:x, y, width, height];
  [(PXGLayoutGuide *)self setReferenceLayout:v9];

  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v20.origin.x = v11;
  v20.origin.y = v13;
  v20.size.width = v15;
  v20.size.height = v17;
  if (!CGRectEqualToRect(v19, v20))
  {

    [(PXGLayoutGuide *)self signalChange:1];
  }
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXGLayoutGuide;
  [(PXGLayoutGuide *)&v3 performChanges:a3];
}

- (CGRect)rectInLayout:(id)a3
{
  v4 = a3;
  [(PXGLayoutGuide *)self referenceRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(PXGLayoutGuide *)self referenceLayout];
  if (v13)
  {
    [v4 convertRect:v13 fromLayout:{v6, v8, v10, v12}];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
  }

  else
  {
    v15 = *MEMORY[0x277CBF398];
    v17 = *(MEMORY[0x277CBF398] + 8);
    v19 = *(MEMORY[0x277CBF398] + 16);
    v21 = *(MEMORY[0x277CBF398] + 24);
  }

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

@end