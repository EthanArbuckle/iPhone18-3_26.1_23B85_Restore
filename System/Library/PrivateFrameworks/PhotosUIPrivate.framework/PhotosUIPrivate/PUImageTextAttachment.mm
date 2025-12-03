@interface PUImageTextAttachment
- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position;
- (CGSize)size;
- (PUImageTextAttachment)initWithImageView:(id)view size:(CGSize)size;
- (id)viewProviderForParentView:(id)view location:(id)location textContainer:(id)container;
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

- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position
{
  v16.receiver = self;
  v16.super_class = PUImageTextAttachment;
  [(PUImageTextAttachment *)&v16 attachmentBoundsForAttributes:attributes location:location textContainer:container proposedLineFragment:fragment.origin.x position:fragment.origin.y, fragment.size.width, fragment.size.height, position.x, position.y];
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

- (id)viewProviderForParentView:(id)view location:(id)location textContainer:(id)container
{
  viewProvider = self->_viewProvider;
  if (!viewProvider)
  {
    containerCopy = container;
    locationCopy = location;
    viewCopy = view;
    v12 = [_PUImageTextAttachmentViewProvider alloc];
    textLayoutManager = [containerCopy textLayoutManager];

    v14 = [(NSTextAttachmentViewProvider *)v12 initWithTextAttachment:self parentView:viewCopy textLayoutManager:textLayoutManager location:locationCopy];
    v15 = self->_viewProvider;
    self->_viewProvider = v14;

    viewProvider = self->_viewProvider;
  }

  return viewProvider;
}

- (PUImageTextAttachment)initWithImageView:(id)view size:(CGSize)size
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = PUImageTextAttachment;
  v9 = [(PUImageTextAttachment *)&v12 initWithData:0 ofType:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imageView, view);
    v10->_size.width = width;
    v10->_size.height = height;
  }

  return v10;
}

@end