@interface Prediction
- (Prediction)initWithModelOutput:(id)output;
- (id)description;
@end

@implementation Prediction

- (Prediction)initWithModelOutput:(id)output
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, output);
  v3 = selfCopy;
  selfCopy = 0;
  v12.receiver = v3;
  v12.super_class = Prediction;
  selfCopy = [(Prediction *)&v12 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v9 = [location[0] objectAtIndexedSubscript:0];
    [v9 doubleValue];
    selfCopy->_noneScore = v4;
    MEMORY[0x277D82BD8](v9);
    v10 = [location[0] objectAtIndexedSubscript:1];
    [v10 doubleValue];
    selfCopy->_doubleTapScore = v5;
    MEMORY[0x277D82BD8](v10);
    v11 = [location[0] objectAtIndexedSubscript:2];
    [v11 doubleValue];
    selfCopy->_tripleTapScore = v6;
    MEMORY[0x277D82BD8](v11);
    selfCopy->_maxConfidence = selfCopy->_noneScore;
    selfCopy->_predictedClass = 0;
    if (selfCopy->_doubleTapScore > selfCopy->_maxConfidence)
    {
      selfCopy->_maxConfidence = selfCopy->_doubleTapScore;
      selfCopy->_predictedClass = 1;
    }

    if (selfCopy->_tripleTapScore > selfCopy->_maxConfidence)
    {
      selfCopy->_maxConfidence = selfCopy->_tripleTapScore;
      selfCopy->_predictedClass = 2;
    }
  }

  v8 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_predictedClass];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_maxConfidence];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_noneScore];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_doubleTapScore];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_tripleTapScore];
  v9 = [v3 stringWithFormat:@"class: %@, maxScore: %@ scores:{%@, %@, %@}", v8, v7, v6, v5, v4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);

  return v9;
}

@end