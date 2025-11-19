@interface Prediction
- (Prediction)initWithModelOutput:(id)a3;
- (id)description;
@end

@implementation Prediction

- (Prediction)initWithModelOutput:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v14;
  v14 = 0;
  v12.receiver = v3;
  v12.super_class = Prediction;
  v14 = [(Prediction *)&v12 init];
  objc_storeStrong(&v14, v14);
  if (v14)
  {
    v9 = [location[0] objectAtIndexedSubscript:0];
    [v9 doubleValue];
    v14->_noneScore = v4;
    MEMORY[0x277D82BD8](v9);
    v10 = [location[0] objectAtIndexedSubscript:1];
    [v10 doubleValue];
    v14->_doubleTapScore = v5;
    MEMORY[0x277D82BD8](v10);
    v11 = [location[0] objectAtIndexedSubscript:2];
    [v11 doubleValue];
    v14->_tripleTapScore = v6;
    MEMORY[0x277D82BD8](v11);
    v14->_maxConfidence = v14->_noneScore;
    v14->_predictedClass = 0;
    if (v14->_doubleTapScore > v14->_maxConfidence)
    {
      v14->_maxConfidence = v14->_doubleTapScore;
      v14->_predictedClass = 1;
    }

    if (v14->_tripleTapScore > v14->_maxConfidence)
    {
      v14->_maxConfidence = v14->_tripleTapScore;
      v14->_predictedClass = 2;
    }
  }

  v8 = MEMORY[0x277D82BE0](v14);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
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