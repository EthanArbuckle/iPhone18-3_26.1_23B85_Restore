@interface GQDMedia
- (id)imageBinary;
- (void)dealloc;
@end

@implementation GQDMedia

- (void)dealloc
{
  mAlphaMaskBezier = self->mAlphaMaskBezier;
  if (mAlphaMaskBezier)
  {
    CFRelease(mAlphaMaskBezier);
  }

  v4.receiver = self;
  v4.super_class = GQDMedia;
  [(GQDGraphic *)&v4 dealloc];
}

- (id)imageBinary
{
  if (self->mOriginalImageBinary)
  {
    return self->mOriginalImageBinary;
  }

  else
  {
    return [(GQDFilteredImage *)self->mFilteredImage imageBinary];
  }
}

@end