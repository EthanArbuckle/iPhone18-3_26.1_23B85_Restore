@interface WAAQIGradient
- (WAAQIGradient)initWithRange:(_NSRange)a3;
- (_NSRange)range;
- (id)gradientStopForLocation:(unint64_t)a3;
- (void)addGradientStop:(id)a3;
@end

@implementation WAAQIGradient

- (WAAQIGradient)initWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v14.receiver = self;
  v14.super_class = WAAQIGradient;
  v5 = [(WAAQIGradient *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_range.location = location;
    v5->_range.length = length;
    v7 = [MEMORY[0x277CBEB18] array];
    internalStops = v6->_internalStops;
    v6->_internalStops = v7;

    v9 = [MEMORY[0x277CCAB58] indexSet];
    locationStops = v6->_locationStops;
    v6->_locationStops = v9;

    v11 = [MEMORY[0x277CBEB38] dictionary];
    colorsByLocation = v6->_colorsByLocation;
    v6->_colorsByLocation = v11;
  }

  return v6;
}

- (void)addGradientStop:(id)a3
{
  if (a3)
  {
    internalStops = self->_internalStops;
    v5 = a3;
    [(NSMutableArray *)internalStops addObject:v5];
    colorsByLocation = self->_colorsByLocation;
    v7 = [v5 color];
    v8 = MEMORY[0x277CCABB0];
    [v5 location];
    v9 = [v8 numberWithFloat:?];
    [(NSMutableDictionary *)colorsByLocation setObject:v7 forKey:v9];

    locationStops = self->_locationStops;
    [v5 location];
    v12 = v11;

    [(NSMutableIndexSet *)locationStops addIndex:v12];
  }
}

uint64_t __22__WAAQIGradient_stops__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 location];
  v6 = [v4 numberWithFloat:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 location];
  v9 = v8;

  LODWORD(v10) = v9;
  v11 = [v7 numberWithFloat:v10];
  v12 = [v6 compare:v11];

  return v12;
}

- (id)gradientStopForLocation:(unint64_t)a3
{
  colorsByLocation = self->_colorsByLocation;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)colorsByLocation objectForKey:v6];

  if (!v7)
  {
    v9 = [(NSMutableIndexSet *)self->_locationStops indexLessThanOrEqualToIndex:a3];
    v10 = [(NSMutableIndexSet *)self->_locationStops indexGreaterThanOrEqualToIndex:a3];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [(NSMutableIndexSet *)self->_locationStops firstIndex];
    }

    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [(NSMutableIndexSet *)self->_locationStops lastIndex];
    }

    v11 = self->_colorsByLocation;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
    v13 = [(NSMutableDictionary *)v11 objectForKey:v12];

    v14 = self->_colorsByLocation;
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
    v16 = [(NSMutableDictionary *)v14 objectForKey:v15];

    v24 = 0.0;
    v25 = 0.0;
    v23 = 0.0;
    [v13 getRed:&v25 green:&v24 blue:&v23 alpha:0];
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    [v16 getRed:&v22 green:&v21 blue:&v20 alpha:0];
    v17 = 0.0;
    if (v9 != v10)
    {
      v17 = (a3 - v9) / (v10 - v9);
    }

    v7 = [MEMORY[0x277D75348] colorWithRed:v25 - (v25 - v22) * v17 green:v24 - (v24 - v21) * v17 blue:v23 - (v23 - v20) * v17 alpha:1.0];
  }

  *&v8 = a3;
  v18 = [WAAQIGradientStop gradientStopWithColor:v7 location:v8];

  return v18;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end