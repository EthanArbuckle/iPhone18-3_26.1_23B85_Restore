@interface KNSlideExporter
- (BOOL)incrementPage;
- (CGRect)boundsRect;
- (CGRect)monoSlideRectFromScaledClipRect:(CGRect)a3 outScaledClipRect:(CGRect *)a4;
- (id)slideNodesForPrintHelper:(id)a3;
- (unint64_t)pageCount;
- (void)p_preparePrintHelperIfNeeded;
- (void)setCurrentSlideNode:(id)a3;
- (void)setup;
@end

@implementation KNSlideExporter

- (unint64_t)pageCount
{
  objc_msgSend_p_preparePrintHelperIfNeeded(self, a2, v2);
  helper = self->_helper;

  return objc_msgSend_pageCount(helper, v4, v5);
}

- (BOOL)incrementPage
{
  objc_msgSend_p_preparePrintHelperIfNeeded(self, a2, v2);
  if (!self->super._currentSlideNode)
  {
    objc_msgSend_resetPage(self->_helper, v4, v5);
  }

  v6 = objc_msgSend_incrementPage(self->_helper, v4, v5);
  v9 = objc_msgSend_slideNode(self->_helper, v7, v8);
  currentSlideNode = self->super._currentSlideNode;
  self->super._currentSlideNode = v9;

  self->super._currentBuildIndex = objc_msgSend_buildIndex(self->_helper, v11, v12);
  if (!v6)
  {
    return 0;
  }

  v14.receiver = self;
  v14.super_class = KNSlideExporter;
  return [(KNRenderingExporter *)&v14 incrementPage];
}

- (void)p_preparePrintHelperIfNeeded
{
  if (!self->_helper)
  {
    v3 = [KNSlideLayoutPrintHelper alloc];
    v5 = objc_msgSend_initWithRenderingExporter_(v3, v4, self);
    helper = self->_helper;
    self->_helper = v5;

    v7 = self->_helper;

    MEMORY[0x2821F9670](v7, sel_setDataSource_, self);
  }
}

- (CGRect)monoSlideRectFromScaledClipRect:(CGRect)a3 outScaledClipRect:(CGRect *)a4
{
  v5 = objc_msgSend_show(*(&self->super.super.super.isa + *MEMORY[0x277D7FFD8]), a2, a4);
  objc_msgSend_size(v5, v6, v7);
  TSUFitOrFillSizeInRect();
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  if (a4)
  {
    a4->origin.x = v8;
    a4->origin.y = v9;
    a4->size.width = v10;
    a4->size.height = v11;
  }

  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)setup
{
  v8.receiver = self;
  v8.super_class = KNSlideExporter;
  [(KNRenderingExporter *)&v8 setup];
  objc_msgSend_setPrintingBackgrounds_(self, v3, 1);
  objc_msgSend_setPrintingBuilds_(self, v4, 0);
  objc_msgSend_setPrintingBorders_(self, v5, 1);
  objc_msgSend_setPrintingSlideNumbers_(self, v6, 0);
  objc_msgSend_setPrintingDate_(self, v7, 0);
}

- (CGRect)boundsRect
{
  if ((objc_msgSend_isPrinting(*(&self->super.super.super.isa + *MEMORY[0x277D7FFE8]), a2, v2) & 1) == 0 && (objc_msgSend_isPrintingComments(self, v4, v5) & 1) == 0)
  {
    v8 = objc_msgSend_show(*(&self->super.super.super.isa + *MEMORY[0x277D7FFD8]), v6, v7);
    objc_msgSend_size(v8, v9, v10);
  }

  TSURectWithSize();
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setCurrentSlideNode:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = KNSlideExporter;
  [(KNRenderingExporter *)&v6 setCurrentSlideNode:v4];
  self->super._currentBuildIndex = 0;
  objc_msgSend_setCurrentSlideNode_(self->_helper, v5, v4);
}

- (id)slideNodesForPrintHelper:(id)a3
{
  v3 = objc_msgSend_slidesForPrinting(self, a2, a3);

  return v3;
}

@end