@interface TSDMutableGradient
- (void)setFraction:(double)fraction ofStopAtIndex:(unint64_t)index;
- (void)setLastColor:(id)color;
@end

@implementation TSDMutableGradient

- (void)setLastColor:(id)color
{
  v5 = [(NSArray *)[(TSDGradient *)self gradientStops] count]- 1;

  [(TSDMutableGradient *)self setColorOfStopAtIndex:v5 toColor:color];
}

- (void)setFraction:(double)fraction ofStopAtIndex:(unint64_t)index
{
  v5 = [(NSMutableArray *)self->super.mStops objectAtIndex:index];

  [v5 p_setFraction:fraction];
}

@end