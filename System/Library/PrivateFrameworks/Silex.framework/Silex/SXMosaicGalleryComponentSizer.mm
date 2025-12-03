@interface SXMosaicGalleryComponentSizer
- (CGSize)galleryLayouter:(id)layouter dimensionsForItemAtIndex:(unint64_t)index;
- (SXMosaicGalleryLayouter)layouter;
- (double)calculateHeightForWidth:(double)width layoutContext:(id)context;
- (id)documentColumnLayoutForGalleryLayouter:(id)layouter;
- (unint64_t)numberOfItemsForGalleryLayouter:(id)layouter;
@end

@implementation SXMosaicGalleryComponentSizer

- (double)calculateHeightForWidth:(double)width layoutContext:(id)context
{
  layouter = [(SXMosaicGalleryComponentSizer *)self layouter];
  [layouter calculateLayoutForWidth:width];

  layouter2 = [(SXMosaicGalleryComponentSizer *)self layouter];
  [layouter2 contentSize];
  v9 = v8;

  return v9;
}

- (SXMosaicGalleryLayouter)layouter
{
  layouter = self->_layouter;
  if (!layouter)
  {
    v4 = [[SXMosaicGalleryLayouter alloc] initWithDataSource:self];
    v5 = self->_layouter;
    self->_layouter = v4;

    [(SXComponentSizer *)self saveInfo:self->_layouter forRenderingPhaseWithIdentifier:@"Layouter"];
    layouter = self->_layouter;
  }

  return layouter;
}

- (CGSize)galleryLayouter:(id)layouter dimensionsForItemAtIndex:(unint64_t)index
{
  component = [(SXComponentSizer *)self component];
  items = [component items];
  v8 = [items objectAtIndex:index];

  dOMObjectProvider = [(SXComponentSizer *)self DOMObjectProvider];
  imageIdentifier = [v8 imageIdentifier];
  v11 = [dOMObjectProvider imageResourceForIdentifier:imageIdentifier];

  [v11 dimensions];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (unint64_t)numberOfItemsForGalleryLayouter:(id)layouter
{
  component = [(SXComponentSizer *)self component];
  items = [component items];
  v5 = [items count];

  return v5;
}

- (id)documentColumnLayoutForGalleryLayouter:(id)layouter
{
  layoutOptions = [(SXComponentSizer *)self layoutOptions];
  columnLayout = [layoutOptions columnLayout];

  return columnLayout;
}

@end