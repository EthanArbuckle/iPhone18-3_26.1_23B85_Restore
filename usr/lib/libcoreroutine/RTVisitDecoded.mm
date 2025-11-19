@interface RTVisitDecoded
- (NSNumber)outputType;
- (RTVisitDecoded)initWithEntryDate:(id)a3 exitDate:(id)a4 logProbability:(double)a5;
- (id)description;
@end

@implementation RTVisitDecoded

- (RTVisitDecoded)initWithEntryDate:(id)a3 exitDate:(id)a4 logProbability:(double)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = RTVisitDecoded;
  v11 = [(RTVisitDecoded *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_entryDate, a3);
    objc_storeStrong(&v12->_exitDate, a4);
    v12->_logProbability = a5;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  logProbability = self->_logProbability;
  v5 = [(NSDate *)self->_entryDate stringFromDate];
  v6 = [(NSDate *)self->_exitDate stringFromDate];
  v7 = [v3 stringWithFormat:@"logProbability=%f, entryDate=%@, exitDate=%@", *&logProbability, v5, v6];

  return v7;
}

- (NSNumber)outputType
{
  if ([(RTVisitDecoded *)self noVisit])
  {
    v3 = 0;
LABEL_7:
    v4 = [MEMORY[0x277CCABB0] numberWithInt:v3];
    goto LABEL_8;
  }

  if ([(RTVisitDecoded *)self partialVisit])
  {
    v3 = 2;
    goto LABEL_7;
  }

  if ([(RTVisitDecoded *)self completeVisit])
  {
    v3 = 3;
    goto LABEL_7;
  }

  v4 = 0;
LABEL_8:

  return v4;
}

@end