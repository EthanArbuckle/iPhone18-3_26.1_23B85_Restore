@interface MRCAMLTextLayer
- (void)dealloc;
- (void)setTextImage:(id)a3;
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

- (void)setTextImage:(id)a3
{
  textImage = self->textImage;
  if (textImage != a3)
  {
    [(MRImage *)textImage releaseByUser];
    self->textImage = [a3 retainByUser];
  }
}

@end