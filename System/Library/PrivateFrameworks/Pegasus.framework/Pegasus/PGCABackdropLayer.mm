@interface PGCABackdropLayer
- (void)setScale:(double)scale;
- (void)setValue:(id)value forKeyPath:(id)path;
@end

@implementation PGCABackdropLayer

- (void)setValue:(id)value forKeyPath:(id)path
{
  valueCopy = value;
  pathCopy = path;
  v8 = [(PGCABackdropLayer *)self valueForKeyPath:pathCopy];
  if (([v8 isEqual:valueCopy] & 1) == 0)
  {
    v9.receiver = self;
    v9.super_class = PGCABackdropLayer;
    [(PGCABackdropLayer *)&v9 setValue:valueCopy forKeyPath:pathCopy];
  }
}

- (void)setScale:(double)scale
{
  v3.receiver = self;
  v3.super_class = PGCABackdropLayer;
  [(PGCABackdropLayer *)&v3 setScale:0.25];
}

@end