@interface PGCABackdropLayer
- (void)setScale:(double)a3;
- (void)setValue:(id)a3 forKeyPath:(id)a4;
@end

@implementation PGCABackdropLayer

- (void)setValue:(id)a3 forKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PGCABackdropLayer *)self valueForKeyPath:v7];
  if (([v8 isEqual:v6] & 1) == 0)
  {
    v9.receiver = self;
    v9.super_class = PGCABackdropLayer;
    [(PGCABackdropLayer *)&v9 setValue:v6 forKeyPath:v7];
  }
}

- (void)setScale:(double)a3
{
  v3.receiver = self;
  v3.super_class = PGCABackdropLayer;
  [(PGCABackdropLayer *)&v3 setScale:0.25];
}

@end