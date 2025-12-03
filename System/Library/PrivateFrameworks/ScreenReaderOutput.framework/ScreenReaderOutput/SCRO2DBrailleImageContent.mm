@interface SCRO2DBrailleImageContent
- (SCRO2DBrailleImageContent)initWithBrailleData:(id)data canvas:(id)canvas;
- (void)drawOnCanvas:(id)canvas;
@end

@implementation SCRO2DBrailleImageContent

- (SCRO2DBrailleImageContent)initWithBrailleData:(id)data canvas:(id)canvas
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = SCRO2DBrailleImageContent;
  v6 = [(SCRO2DBrailleImageContent *)&v11 init];
  if (v6)
  {
    imageData = [dataCopy imageData];
    imageData = v6->_imageData;
    v6->_imageData = imageData;

    v9 = v6;
  }

  return v6;
}

- (void)drawOnCanvas:(id)canvas
{
  imageData = self->_imageData;
  if (imageData)
  {
    [canvas setImageData:imageData];
  }
}

@end