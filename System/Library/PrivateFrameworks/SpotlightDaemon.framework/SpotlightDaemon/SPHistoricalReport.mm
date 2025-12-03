@interface SPHistoricalReport
- (SPHistoricalReport)initWithDictionary:(id)dictionary;
- (id)dictionaryRepresentation;
@end

@implementation SPHistoricalReport

- (SPHistoricalReport)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SPHistoricalReport;
  v5 = [(SPHistoricalReport *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    -[SPHistoricalReport setType:](v5, "setType:", [v6 unsignedIntValue]);

    v7 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
    [v7 doubleValue];
    v9 = v8;

    v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
    [(SPHistoricalReport *)v5 setTimestamp:v10];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"report"];
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
  timestamp = [(SPHistoricalReport *)self timestamp];
  [timestamp timeIntervalSinceReferenceDate];
  v6 = [v4 numberWithDouble:?];
  v14[1] = v6;
  v13[2] = @"report";
  report = [(SPHistoricalReport *)self report];
  v8 = report;
  v9 = MEMORY[0x277CBEC10];
  if (report)
  {
    v9 = report;
  }

  v14[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end