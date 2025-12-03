@interface TSTimeConverter
- (TSTimeConverter)init;
- (TSTimeConverter)initWithContentsOfURL:(id)l;
- (TSTimeConverter)initWithTAIUTCArray:(id)array;
- (double)leapSecondForTAIDate:(id)date;
- (double)leapSecondForUTCDate:(id)date;
- (id)taiDateFromUTCDate:(id)date;
- (id)utcDateFromTAIDate:(id)date;
@end

@implementation TSTimeConverter

- (TSTimeConverter)init
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  resourceURL = [v3 resourceURL];
  v5 = [resourceURL URLByAppendingPathComponent:@"tai_utc_history.plist"];

  v6 = [(TSTimeConverter *)self initWithContentsOfURL:v5];
  return v6;
}

- (TSTimeConverter)initWithTAIUTCArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = TSTimeConverter;
  v5 = [(TSTimeConverter *)&v9 init];
  if (v5)
  {
    if ([arrayCopy count])
    {
      v6 = [arrayCopy copy];
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

- (TSTimeConverter)initWithContentsOfURL:(id)l
{
  lCopy = l;
  v5 = +[NSMutableArray array];
  v6 = [NSArray arrayWithContentsOfURL:lCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [[TSTAIUTCValue alloc] initWithDictionary:*(*(&v14 + 1) + 8 * v10)];
        if (v11)
        {
          [v5 addObject:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [(TSTimeConverter *)self initWithTAIUTCArray:v5];

  return v12;
}

- (id)taiDateFromUTCDate:(id)date
{
  dateCopy = date;
  [(TSTimeConverter *)self leapSecondForUTCDate:dateCopy];
  v5 = [dateCopy dateByAddingTimeInterval:?];

  return v5;
}

- (id)utcDateFromTAIDate:(id)date
{
  dateCopy = date;
  [(TSTimeConverter *)self leapSecondForTAIDate:dateCopy];
  v6 = [dateCopy dateByAddingTimeInterval:-v5];

  return v6;
}

- (double)leapSecondForUTCDate:(id)date
{
  dateCopy = date;
  v5 = [(NSArray *)self->_taiutc count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:v7];
      utcDate = [v8 utcDate];
      [dateCopy timeIntervalSinceDate:utcDate];
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
      utcDate2 = [v16 utcDate];
      [dateCopy timeIntervalSinceDate:utcDate2];
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

- (double)leapSecondForTAIDate:(id)date
{
  dateCopy = date;
  v5 = [(NSArray *)self->_taiutc count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:v7];
      taiDate = [v8 taiDate];
      [dateCopy timeIntervalSinceDate:taiDate];
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
      taiDate2 = [v16 taiDate];
      [dateCopy timeIntervalSinceDate:taiDate2];
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

      v17 = [dateCopy dateByAddingTimeInterval:-(v25 + v27 * v30)];
      v31 = [(NSArray *)self->_taiutc objectAtIndexedSubscript:v7];
      utcDate = [v31 utcDate];
      [v17 timeIntervalSinceDate:utcDate];
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