@interface TSTimeConverter
- (TSTimeConverter)init;
- (TSTimeConverter)initWithContentsOfURL:(id)a3;
- (TSTimeConverter)initWithTAIUTCArray:(id)a3;
- (double)leapSecondForTAIDate:(id)a3;
- (double)leapSecondForUTCDate:(id)a3;
- (id)taiDateFromUTCDate:(id)a3;
- (id)utcDateFromTAIDate:(id)a3;
@end

@implementation TSTimeConverter

- (TSTimeConverter)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 resourceURL];
  v5 = [v4 URLByAppendingPathComponent:@"tai_utc_history.plist"];

  v6 = [(TSTimeConverter *)self initWithContentsOfURL:v5];
  return v6;
}

- (TSTimeConverter)initWithTAIUTCArray:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TSTimeConverter;
  v5 = [(TSTimeConverter *)&v9 init];
  if (v5)
  {
    if ([v4 count])
    {
      v6 = [v4 copy];
      taiutc = v5->_taiutc;
      v5->_taiutc = v6;
    }

    else
    {
      taiutc = v5;
      v5 = 0;
    }
  }

  return v5;
}

- (TSTimeConverter)initWithContentsOfURL:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEA60] arrayWithContentsOfURL:v4];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [[TSTAIUTCValue alloc] initWithDictionary:*(*(&v15 + 1) + 8 * v10)];
        if (v11)
        {
          [v5 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [(TSTimeConverter *)self initWithTAIUTCArray:v5];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)taiDateFromUTCDate:(id)a3
{
  v4 = a3;
  [(TSTimeConverter *)self leapSecondForUTCDate:v4];
  v5 = [v4 dateByAddingTimeInterval:?];

  return v5;
}

- (id)utcDateFromTAIDate:(id)a3
{
  v4 = a3;
  [(TSTimeConverter *)self leapSecondForTAIDate:v4];
  v6 = [v4 dateByAddingTimeInterval:-v5];

  return v6;
}

- (double)leapSecondForUTCDate:(id)a3
{
  v4 = a3;
  v5 = [(NSArray *)self->_taiutc count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:v7];
      v9 = [v8 utcDate];
      [v4 timeIntervalSinceDate:v9];
      v11 = v10;

      if (v11 >= 0.0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }

    v13 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:v7];
    [v13 coefficient];
    v15 = v14;

    v16 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:v7];
    v17 = v16;
    if (v15 == 0.0)
    {
      [v16 constant];
      v12 = v29;
    }

    else
    {
      v18 = [v16 utcDate];
      [v4 timeIntervalSinceDate:v18];
      v20 = v19 / 86400.0;
      v21 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:v7];
      v22 = (v20 + [v21 modifiedJulianDay]);

      v17 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:v7];
      [v17 constant];
      v24 = v23;
      v25 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:v7];
      v26 = (v22 - [v25 offset]);
      v27 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:v7];
      [v27 coefficient];
      v12 = v24 + v26 * v28;
    }
  }

  else
  {
LABEL_5:
    v12 = NAN;
  }

  return v12;
}

- (double)leapSecondForTAIDate:(id)a3
{
  v4 = a3;
  v5 = [(NSArray *)self->_taiutc count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:v7];
      v9 = [v8 taiDate];
      [v4 timeIntervalSinceDate:v9];
      v11 = v10;

      if (v11 >= 0.0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }

    v13 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:v7];
    [v13 coefficient];
    v15 = v14;

    v16 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:v7];
    v17 = v16;
    if (v15 == 0.0)
    {
      [v16 constant];
      v12 = v44;
    }

    else
    {
      v18 = [v16 taiDate];
      [v4 timeIntervalSinceDate:v18];
      v20 = v19 / 86400.0;
      v21 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:v7];
      v22 = (v20 + [v21 modifiedJulianDay]);

      v23 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:v7];
      [v23 constant];
      v25 = v24;
      v26 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:v7];
      v27 = (v22 - [v26 offset]);
      v28 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:v7];
      [v28 coefficient];
      v30 = v29;

      v17 = [v4 dateByAddingTimeInterval:-(v25 + v27 * v30)];
      v31 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:v7];
      v32 = [v31 utcDate];
      [v17 timeIntervalSinceDate:v32];
      v34 = v33 / 86400.0;
      v35 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:v7];
      v36 = (v34 + [v35 modifiedJulianDay]);

      v37 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:v7];
      [v37 constant];
      v39 = v38;
      v40 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:v7];
      v41 = (v36 - [v40 offset]);
      v42 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:v7];
      [v42 coefficient];
      v12 = v39 + v41 * v43;
    }
  }

  else
  {
LABEL_5:
    v12 = NAN;
  }

  return v12;
}

@end