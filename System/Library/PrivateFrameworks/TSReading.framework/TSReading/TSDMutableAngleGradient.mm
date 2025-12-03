@interface TSDMutableAngleGradient
- (void)setLastColor:(id)color;
@end

@implementation TSDMutableAngleGradient

- (void)setLastColor:(id)color
{
  v5 = [(NSArray *)[(TSDGradient *)self gradientStops] count]- 1;

  [(TSDMutableAngleGradient *)self setColorOfStopAtIndex:v5 toColor:color];
}

@end