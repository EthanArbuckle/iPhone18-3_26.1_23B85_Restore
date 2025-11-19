@interface WiFiAwareDataSessionStatisticsHistogramBin
- (BOOL)isEqual:(id)a3;
- (WiFiAwareDataSessionStatisticsHistogramBin)initWithBinStart:(double)a3 binEnd:(double)a4 value:(double)a5;
- (WiFiAwareDataSessionStatisticsHistogramBin)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WiFiAwareDataSessionStatisticsHistogramBin

- (WiFiAwareDataSessionStatisticsHistogramBin)initWithBinStart:(double)a3 binEnd:(double)a4 value:(double)a5
{
  v9.receiver = self;
  v9.super_class = WiFiAwareDataSessionStatisticsHistogramBin;
  result = [(WiFiAwareDataSessionStatisticsHistogramBin *)&v9 init];
  if (result)
  {
    result->_binStart = a3;
    result->_binEnd = a4;
    result->_value = a5;
  }

  return result;
}

- (WiFiAwareDataSessionStatisticsHistogramBin)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsHistogramBin.binStart"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsHistogramBin.binEnd"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsHistogramBin.value"];

  [v11 doubleValue];
  v13 = v12;

  return [(WiFiAwareDataSessionStatisticsHistogramBin *)self initWithBinStart:v7 binEnd:v10 value:v13];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [(WiFiAwareDataSessionStatisticsHistogramBin *)self binStart];
  v6 = [v4 numberWithDouble:?];
  [v5 encodeObject:v6 forKey:@"WiFiAwareDataSessionStatisticsHistogramBin.binStart"];

  v7 = MEMORY[0x277CCABB0];
  [(WiFiAwareDataSessionStatisticsHistogramBin *)self binEnd];
  v8 = [v7 numberWithDouble:?];
  [v5 encodeObject:v8 forKey:@"WiFiAwareDataSessionStatisticsHistogramBin.binEnd"];

  v9 = MEMORY[0x277CCABB0];
  [(WiFiAwareDataSessionStatisticsHistogramBin *)self value];
  v10 = [v9 numberWithDouble:?];
  [v5 encodeObject:v10 forKey:@"WiFiAwareDataSessionStatisticsHistogramBin.value"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 0;
LABEL_8:
    v15 = 1;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = 0;
    v5 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  [(WiFiAwareDataSessionStatisticsHistogramBin *)self binStart];
  v7 = v6;
  [(WiFiAwareDataSessionStatisticsHistogramBin *)v5 binStart];
  if (vabdd_f64(v7, v8) < 2.22044605e-16)
  {
    [(WiFiAwareDataSessionStatisticsHistogramBin *)self binEnd];
    v10 = v9;
    [(WiFiAwareDataSessionStatisticsHistogramBin *)v5 binEnd];
    if (vabdd_f64(v10, v11) < 2.22044605e-16)
    {
      [(WiFiAwareDataSessionStatisticsHistogramBin *)self value];
      v13 = v12;
      [(WiFiAwareDataSessionStatisticsHistogramBin *)v5 value];
      if (vabdd_f64(v13, v14) < 2.22044605e-16)
      {
        goto LABEL_8;
      }
    }
  }

  v15 = 0;
LABEL_10:

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(WiFiAwareDataSessionStatisticsHistogramBin *)self binStart];
  v5 = v4;
  [(WiFiAwareDataSessionStatisticsHistogramBin *)self binEnd];
  v7 = v6;
  [(WiFiAwareDataSessionStatisticsHistogramBin *)self value];
  return [v3 stringWithFormat:@"[<%lld...%lld> = %lld]", v5, v7, v8];
}

@end