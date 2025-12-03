@interface _PKPassImageConstruction_ImageRepresentation
+ (id)representationFromDocument:(CGPDFDocument *)document page:(CGPDFPage *)page;
+ (id)representationFromImage:(id)image;
- (void)dealloc;
@end

@implementation _PKPassImageConstruction_ImageRepresentation

+ (id)representationFromImage:(id)image
{
  result = image;
  if (result)
  {
    v4 = result;
    v5 = objc_alloc_init(_PKPassImageConstruction_ImageRepresentation);
    image = v5->_image;
    v5->_image = v4;

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

+ (id)representationFromDocument:(CGPDFDocument *)document page:(CGPDFPage *)page
{
  if (document && page)
  {
    v6 = objc_alloc_init(_PKPassImageConstruction_ImageRepresentation);
    v6->_documentRef = CGPDFDocumentRetain(document);
    v6->_pageRef = CGPDFPageRetain(page);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)dealloc
{
  CGPDFPageRelease(self->_pageRef);
  CGPDFDocumentRelease(self->_documentRef);
  v3.receiver = self;
  v3.super_class = _PKPassImageConstruction_ImageRepresentation;
  [(_PKPassImageConstruction_ImageRepresentation *)&v3 dealloc];
}

@end