@interface WAAQIScale
+ (id)scaleFromFoundationScale:(id)scale;
- (NSMutableArray)categories;
- (WAAQIScale)initWithRange:(_NSRange)range;
- (_NSRange)range;
- (void)addCategory:(id)category;
@end

@implementation WAAQIScale

- (WAAQIScale)initWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v12.receiver = self;
  v12.super_class = WAAQIScale;
  v5 = [(WAAQIScale *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_range.location = location;
    v5->_range.length = length;
    array = [MEMORY[0x277CBEB18] array];
    categories = v6->_categories;
    v6->_categories = array;

    v9 = [[WAAQIGradient alloc] initWithRange:location, length];
    gradient = v6->_gradient;
    v6->_gradient = v9;
  }

  return v6;
}

- (void)addCategory:(id)category
{
  if (category)
  {
    [(NSMutableArray *)self->_categories addObject:?];
  }
}

- (NSMutableArray)categories
{
  v2 = [(NSMutableArray *)self->_categories copy];

  return v2;
}

+ (id)scaleFromFoundationScale:(id)scale
{
  v47 = *MEMORY[0x277D85DE8];
  scaleCopy = scale;
  if (scaleCopy)
  {
    v4 = [WAAQIScale alloc];
    range = [scaleCopy range];
    v7 = [(WAAQIScale *)v4 initWithRange:range, v6];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v35 = scaleCopy;
    obj = [scaleCopy categories];
    v8 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v42;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v41 + 1) + 8 * i);
          v13 = [WAAQICategory alloc];
          range2 = [v12 range];
          v16 = v15;
          v17 = MEMORY[0x277D75348];
          color = [v12 color];
          v19 = [v17 wa_colorFromHexString:color];
          v20 = [(WAAQICategory *)v13 initWithRange:range2 color:v16, v19];

          [(WAAQIScale *)v7 addCategory:v20];
        }

        v9 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v9);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    gradient = [v35 gradient];
    stops = [gradient stops];

    v23 = [stops countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v38;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v38 != v25)
          {
            objc_enumerationMutation(stops);
          }

          v27 = *(*(&v37 + 1) + 8 * j);
          v28 = MEMORY[0x277D75348];
          color2 = [v27 color];
          v30 = [v28 wa_colorFromHexString:color2];
          [v27 location];
          v31 = [WAAQIGradientStop gradientStopWithColor:v30 location:?];

          gradient2 = [(WAAQIScale *)v7 gradient];
          [gradient2 addGradientStop:v31];
        }

        v24 = [stops countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v24);
    }

    scaleCopy = v35;
  }

  else
  {
    v7 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v7;
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