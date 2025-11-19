@interface PUReviewScreenBarsSnapshot
- (void)setZRotation:(double)a3;
@end

@implementation PUReviewScreenBarsSnapshot

- (void)setZRotation:(double)a3
{
  if (self->_zRotation != a3)
  {
    self->_zRotation = a3;
    v5 = [(PUReviewScreenBarsSnapshot *)self snapshotLayer];
    [v5 setZRotation:a3];

    memset(&v8, 0, sizeof(v8));
    CGAffineTransformMakeRotation(&v8, a3);
    v7.receiver = self;
    v7.super_class = PUReviewScreenBarsSnapshot;
    v6 = v8;
    [(PUReviewScreenBarsSnapshot *)&v7 setTransform:&v6];
  }
}

@end