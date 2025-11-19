@interface WFAQIScaleGradient
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToScaleGradient:(id)a3;
- (WFAQIScaleGradient)initWithCoder:(id)a3;
- (WFAQIScaleGradient)initWithStops:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFAQIScaleGradient

- (WFAQIScaleGradient)initWithStops:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WFAQIScaleGradient;
  v5 = [(WFAQIScaleGradient *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    stops = v5->_stops;
    v5->_stops = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WFAQIScaleGradient *)self isEqualToScaleGradient:v4];
  }

  return v5;
}

- (BOOL)isEqualToScaleGradient:(id)a3
{
  v4 = [a3 stops];
  v5 = [(WFAQIScaleGradient *)self stops];
  v6 = [v4 isEqualToArray:v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [WFAQIScaleGradient alloc];
  v5 = [(WFAQIScaleGradient *)self stops];
  v6 = [(WFAQIScaleGradient *)v4 initWithStops:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFAQIScaleGradient *)self stops];
  [v4 encodeObject:v5 forKey:@"WFAQIScaleGradientStopsKey"];
}

- (WFAQIScaleGradient)initWithCoder:(id)a3
{
  v4 = initWithCoder__onceToken_2;
  v5 = a3;
  if (v4 != -1)
  {
    [WFAQIScaleGradient initWithCoder:];
  }

  v6 = [v5 decodeObjectOfClasses:initWithCoder__classes_1 forKey:@"WFAQIScaleGradientStopsKey"];

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
  v3 = [(WFAQIScaleGradient *)self stops];
  v4 = [v2 stringWithFormat:@"<WFAQIScaleGradient stops: %@", v3];

  return v4;
}

@end