@interface PUImageTextAttachment
- (CGRect)attachmentBoundsForAttributes:(id)a3 location:(id)a4 textContainer:(id)a5 proposedLineFragment:(CGRect)a6 position:(CGPoint)a7;
- (CGSize)size;
- (PUImageTextAttachment)initWithImageView:(id)a3 size:(CGSize)a4;
- (id)viewProviderForParentView:(id)a3 location:(id)a4 textContainer:(id)a5;
@end

@implementation PUImageTextAttachment

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)attachmentBoundsForAttributes:(id)a3 location:(id)a4 textContainer:(id)a5 proposedLineFragment:(CGRect)a6 position:(CGPoint)a7
{
  v16.receiver = self;
  v16.super_class = PUImageTextAttachment;
  [(PUImageTextAttachment *)&v16 attachmentBoundsForAttributes:a3 location:a4 textContainer:a5 proposedLineFragment:a6.origin.x position:a6.origin.y, a6.size.width, a6.size.height, a7.x, a7.y];
  v9 = v8;
  [(PUImageTextAttachment *)self size];
  v11 = v10;
  v13 = v12;
  v14 = round(v12 / -5.0);
  v15 = v9;
  result.size.height = v13;
  result.size.width = v11;
  result.origin.y = v14;
  result.origin.x = v15;
  return result;
}

- (id)viewProviderForParentView:(id)a3 location:(id)a4 textContainer:(id)a5
{
  viewProvider = self->_viewProvider;
  if (!viewProvider)
  {
    v9 = a5;
    v10 = a4;
    v11 = a3;
    v12 = [_PUImageTextAttachmentViewProvider alloc];
    v13 = [v9 textLayoutManager];

    v14 = [(NSTextAttachmentViewProvider *)v12 initWithTextAttachment:self parentView:v11 textLayoutManager:v13 location:v10];
    v15 = self->_viewProvider;
    self->_viewProvider = v14;

    viewProvider = self->_viewProvider;
  }

  return viewProvider;
}

- (PUImageTextAttachment)initWithImageView:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v12.receiver = self;
  v12.super_class = PUImageTextAttachment;
  v9 = [(PUImageTextAttachment *)&v12 initWithData:0 ofType:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imageView, a3);
    v10->_size.width = width;
    v10->_size.height = height;
  }

  return v10;
}

@end