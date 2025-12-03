@interface SXHorizontalStackLayout
- (NSString)description;
- (SXHorizontalStackLayout)init;
- (double)positionForIdentifier:(id)identifier;
- (double)widthForIdentifier:(id)identifier;
- (void)setPosition:(double)position forIdentifier:(id)identifier;
- (void)setWidth:(double)width forIdentifier:(id)identifier;
@end

@implementation SXHorizontalStackLayout

- (SXHorizontalStackLayout)init
{
  v8.receiver = self;
  v8.super_class = SXHorizontalStackLayout;
  v2 = [(SXHorizontalStackLayout *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    widths = v2->_widths;
    v2->_widths = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    positions = v2->_positions;
    v2->_positions = dictionary2;
  }

  return v2;
}

- (double)widthForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  widths = [(SXHorizontalStackLayout *)self widths];
  v6 = [widths objectForKey:identifierCopy];

  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (double)positionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  positions = [(SXHorizontalStackLayout *)self positions];
  v6 = [positions objectForKey:identifierCopy];

  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (void)setWidth:(double)width forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  widths = [(SXHorizontalStackLayout *)self widths];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:width];
  [widths setObject:v7 forKey:identifierCopy];
}

- (void)setPosition:(double)position forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  positions = [(SXHorizontalStackLayout *)self positions];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:position];
  [positions setObject:v7 forKey:identifierCopy];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  positions = [(SXHorizontalStackLayout *)self positions];
  widths = [(SXHorizontalStackLayout *)self widths];
  v7 = [v3 stringWithFormat:@"<%@: %p\nPositions: %@ \nWidths: %@>", v4, self, positions, widths];

  return v7;
}

@end