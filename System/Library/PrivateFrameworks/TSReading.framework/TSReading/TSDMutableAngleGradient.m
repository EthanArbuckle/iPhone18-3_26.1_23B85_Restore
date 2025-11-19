@interface TSDMutableAngleGradient
- (void)setLastColor:(id)a3;
@end

@implementation TSDMutableAngleGradient

- (void)setLastColor:(id)a3
{
  v5 = [(NSArray *)[(TSDGradient *)self gradientStops] count]- 1;

  [(TSDMutableAngleGradient *)self setColorOfStopAtIndex:v5 toColor:a3];
}

@end