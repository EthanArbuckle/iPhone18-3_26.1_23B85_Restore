@interface WFAQIScaleGradient
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToScaleGradient:(id)gradient;
- (WFAQIScaleGradient)initWithCoder:(id)coder;
- (WFAQIScaleGradient)initWithStops:(id)stops;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAQIScaleGradient

- (WFAQIScaleGradient)initWithStops:(id)stops
{
  stopsCopy = stops;
  v9.receiver = self;
  v9.super_class = WFAQIScaleGradient;
  v5 = [(WFAQIScaleGradient *)&v9 init];
  if (v5)
  {
    v6 = [stopsCopy copy];
    stops = v5->_stops;
    v5->_stops = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WFAQIScaleGradient *)self isEqualToScaleGradient:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToScaleGradient:(id)gradient
{
  stops = [gradient stops];
  stops2 = [(WFAQIScaleGradient *)self stops];
  v6 = [stops isEqualToArray:stops2];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [WFAQIScaleGradient alloc];
  stops = [(WFAQIScaleGradient *)self stops];
  v6 = [(WFAQIScaleGradient *)v4 initWithStops:stops];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  stops = [(WFAQIScaleGradient *)self stops];
  [coderCopy encodeObject:stops forKey:@"WFAQIScaleGradientStopsKey"];
}

- (WFAQIScaleGradient)initWithCoder:(id)coder
{
  v4 = initWithCoder__onceToken_2;
  coderCopy = coder;
  if (v4 != -1)
  {
    [WFAQIScaleGradient initWithCoder:];
  }

  v6 = [coderCopy decodeObjectOfClasses:initWithCoder__classes_1 forKey:@"WFAQIScaleGradientStopsKey"];

  v7 = [v6 copy];
  v8 = [(WFAQIScaleGradient *)self initWithStops:v7];

  return v8;
}

uint64_t __36__WFAQIScaleGradient_initWithCoder___block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = [v0 setWithObjects:{v1, objc_opt_class(), 0}];
  v3 = initWithCoder__classes_1;
  initWithCoder__classes_1 = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  stops = [(WFAQIScaleGradient *)self stops];
  v4 = [v2 stringWithFormat:@"<WFAQIScaleGradient stops: %@", stops];

  return v4;
}

@end