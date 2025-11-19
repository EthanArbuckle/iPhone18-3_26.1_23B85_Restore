@interface TSDMutableGradient
- (void)setFraction:(double)a3 ofStopAtIndex:(unint64_t)a4;
- (void)setLastColor:(id)a3;
@end

@implementation TSDMutableGradient

- (void)setLastColor:(id)a3
{
  v5 = [(NSArray *)[(TSDGradient *)self gradientStops] count]- 1;

  [(TSDMutableGradient *)self setColorOfStopAtIndex:v5 toColor:a3];
}

- (void)setFraction:(double)a3 ofStopAtIndex:(unint64_t)a4
{
  v5 = [(NSMutableArray *)self->super.mStops objectAtIndex:a4];

  [v5 p_setFraction:a3];
}

@end