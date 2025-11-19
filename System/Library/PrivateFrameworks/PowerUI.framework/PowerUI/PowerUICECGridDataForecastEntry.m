@interface PowerUICECGridDataForecastEntry
- (BOOL)isEqual:(id)a3;
- (PowerUICECGridDataForecastEntry)initWithDate:(id)a3 forecastValue:(id)a4;
- (id)description;
@end

@implementation PowerUICECGridDataForecastEntry

- (PowerUICECGridDataForecastEntry)initWithDate:(id)a3 forecastValue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PowerUICECGridDataForecastEntry;
  v9 = [(PowerUICECGridDataForecastEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_forecastDate, a3);
    objc_storeStrong(&v10->_forecastValue, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    forecastDate = self->_forecastDate;
    v7 = [(PowerUICECGridDataForecastEntry *)v4 forecastDate];
    if ([(NSDate *)forecastDate isEqualToDate:v7])
    {
      forecastValue = self->_forecastValue;
      v9 = [(PowerUICECGridDataForecastEntry *)v5 forecastValue];
      v10 = [(NSNumber *)forecastValue isEqualToNumber:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)description
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v11[0] = @"forecastDate";
  v5 = [(PowerUICECGridDataForecastEntry *)self forecastDate];
  v11[1] = @"forecastValue";
  v12[0] = v5;
  v6 = [(PowerUICECGridDataForecastEntry *)self forecastValue];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end