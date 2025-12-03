@interface MRCAMLTextLayer
- (void)dealloc;
- (void)setTextImage:(id)image;
@end

@implementation MRCAMLTextLayer

- (void)dealloc
{
  [(MRImage *)self->textImage releaseByUser];
  self->textImage = 0;
  [(MRCAMLTextLayer *)self setTextRenderer:0];
  v3.receiver = self;
  v3.super_class = MRCAMLTextLayer;
  [(MRCAMLLayer *)&v3 dealloc];
}

- (void)setTextImage:(id)image
{
  textImage = self->textImage;
  if (textImage != image)
  {
    [(MRImage *)textImage releaseByUser];
    self->textImage = [image retainByUser];
  }
}

@end