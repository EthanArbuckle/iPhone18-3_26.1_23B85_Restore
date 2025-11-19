@interface SPHistoricalReport
- (SPHistoricalReport)initWithDictionary:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation SPHistoricalReport

- (SPHistoricalReport)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SPHistoricalReport;
  v5 = [(SPHistoricalReport *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"type"];
    -[SPHistoricalReport setType:](v5, "setType:", [v6 unsignedIntValue]);

    v7 = [v4 objectForKeyedSubscript:@"timestamp"];
    [v7 doubleValue];
    v9 = v8;

    v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
    [(SPHistoricalReport *)v5 setTimestamp:v10];

    v11 = [v4 objectForKeyedSubscript:@"report"];
    [(SPHistoricalReport *)v5 setReport:v11];
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v14[3] = *MEMORY[0x277D85DE8];
  v13[0] = @"type";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[SPHistoricalReport type](self, "type")}];
  v14[0] = v3;
  v13[1] = @"timestamp";
  v4 = MEMORY[0x277CCABB0];
  v5 = [(SPHistoricalReport *)self timestamp];
  [v5 timeIntervalSinceReferenceDate];
  v6 = [v4 numberWithDouble:?];
  v14[1] = v6;
  v13[2] = @"report";
  v7 = [(SPHistoricalReport *)self report];
  v8 = v7;
  v9 = MEMORY[0x277CBEC10];
  if (v7)
  {
    v9 = v7;
  }

  v14[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end