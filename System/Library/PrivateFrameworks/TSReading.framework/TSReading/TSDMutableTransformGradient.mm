@interface TSDMutableTransformGradient
- (void)setEndPoint:(CGPoint)a3 inShapeWithNaturalSize:(CGSize)a4;
- (void)setGradientAngleInDegrees:(double)a3;
- (void)setLastColor:(id)a3;
- (void)setStartPoint:(CGPoint)a3 inShapeWithNaturalSize:(CGSize)a4;
- (void)upgradeIfNecessaryWithBaseNaturalSize:(CGSize)a3;
@end

@implementation TSDMutableTransformGradient

- (void)setLastColor:(id)a3
{
  v5 = [(NSArray *)[(TSDGradient *)self gradientStops] count]- 1;

  [(TSDMutableTransformGradient *)self setColorOfStopAtIndex:v5 toColor:a3];
}

- (void)setStartPoint:(CGPoint)a3 inShapeWithNaturalSize:(CGSize)a4
{
  [(TSDTransformGradient *)self p_scalePoint:a3.x fromShapeWithNaturalSize:a3.y, a4.width, a4.height];

  [(TSDTransformGradient *)self setStartPoint:?];
}

- (void)setEndPoint:(CGPoint)a3 inShapeWithNaturalSize:(CGSize)a4
{
  [(TSDTransformGradient *)self p_scalePoint:a3.x fromShapeWithNaturalSize:a3.y, a4.width, a4.height];

  [(TSDTransformGradient *)self setEndPoint:?];
}

- (void)upgradeIfNecessaryWithBaseNaturalSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  p_mTransformBeforeUpgrade = &self->super.mTransformBeforeUpgrade;
  v5 = *&self->super.mTransformBeforeUpgrade.c;
  *&v11.a = *&self->super.mTransformBeforeUpgrade.a;
  *&v11.c = v5;
  *&v11.tx = *&self->super.mTransformBeforeUpgrade.tx;
  CGAffineTransformInvert(&v12, &v11);
  v6 = *&v12.c;
  *&p_mTransformBeforeUpgrade->a = *&v12.a;
  *&p_mTransformBeforeUpgrade->c = v6;
  *&p_mTransformBeforeUpgrade->tx = *&v12.tx;
  [(TSDTransformGradient *)self setBaseNaturalSize:vmlaq_n_f64(vmulq_n_f64(*&p_mTransformBeforeUpgrade->c, height), *&p_mTransformBeforeUpgrade->a, width)];
  v7 = MEMORY[0x277CBF2C0];
  v8 = *(MEMORY[0x277CBF2C0] + 16);
  *&p_mTransformBeforeUpgrade->a = *MEMORY[0x277CBF2C0];
  *&p_mTransformBeforeUpgrade->c = v8;
  *&p_mTransformBeforeUpgrade->tx = *(v7 + 32);
}

- (void)setGradientAngleInDegrees:(double)a3
{
  p_mStart = &self->super.mStart;
  p_mEnd = &self->super.mEnd;
  x = self->super.mStart.x;
  y = self->super.mStart.y;
  v8 = self->super.mEnd.x;
  v9 = TSDMixPoints(x, y, v8, self->super.mEnd.y, 0.5);
  v11 = v10;
  v12 = TSDSubtractPoints(x, y, v8);
  v14 = TSDPointLength(v12, v13);
  v15 = TSDDeltaFromAngle(a3 * 0.0174532925);
  v17 = TSDMultiplyPointScalar(-v15, v16, v14 * 0.5);
  p_mStart->x = TSDAddPoints(v9, v11, v17);
  p_mStart->y = v18;
  p_mEnd->x = TSDSubtractPoints(v9, v11, v17);
  p_mEnd->y = v19;
}

@end