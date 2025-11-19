@interface SCRO2DBrailleImageContent
- (SCRO2DBrailleImageContent)initWithBrailleData:(id)a3 canvas:(id)a4;
- (void)drawOnCanvas:(id)a3;
@end

@implementation SCRO2DBrailleImageContent

- (SCRO2DBrailleImageContent)initWithBrailleData:(id)a3 canvas:(id)a4
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SCRO2DBrailleImageContent;
  v6 = [(SCRO2DBrailleImageContent *)&v11 init];
  if (v6)
  {
    v7 = [v5 imageData];
    imageData = v6->_imageData;
    v6->_imageData = v7;

    v9 = v6;
  }

  return v6;
}

- (void)drawOnCanvas:(id)a3
{
  imageData = self->_imageData;
  if (imageData)
  {
    [a3 setImageData:imageData];
  }
}

@end