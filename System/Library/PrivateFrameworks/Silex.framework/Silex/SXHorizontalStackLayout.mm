@interface SXHorizontalStackLayout
- (NSString)description;
- (SXHorizontalStackLayout)init;
- (double)positionForIdentifier:(id)a3;
- (double)widthForIdentifier:(id)a3;
- (void)setPosition:(double)a3 forIdentifier:(id)a4;
- (void)setWidth:(double)a3 forIdentifier:(id)a4;
@end

@implementation SXHorizontalStackLayout

- (SXHorizontalStackLayout)init
{
  v8.receiver = self;
  v8.super_class = SXHorizontalStackLayout;
  v2 = [(SXHorizontalStackLayout *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    widths = v2->_widths;
    v2->_widths = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    positions = v2->_positions;
    v2->_positions = v5;
  }

  return v2;
}

- (double)widthForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SXHorizontalStackLayout *)self widths];
  v6 = [v5 objectForKey:v4];

  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (double)positionForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SXHorizontalStackLayout *)self positions];
  v6 = [v5 objectForKey:v4];

  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (void)setWidth:(double)a3 forIdentifier:(id)a4
{
  v6 = a4;
  v8 = [(SXHorizontalStackLayout *)self widths];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v8 setObject:v7 forKey:v6];
}

- (void)setPosition:(double)a3 forIdentifier:(id)a4
{
  v6 = a4;
  v8 = [(SXHorizontalStackLayout *)self positions];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v8 setObject:v7 forKey:v6];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(SXHorizontalStackLayout *)self positions];
  v6 = [(SXHorizontalStackLayout *)self widths];
  v7 = [v3 stringWithFormat:@"<%@: %p\nPositions: %@ \nWidths: %@>", v4, self, v5, v6];

  return v7;
}

@end