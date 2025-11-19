@interface ATXModeAnchorModelSuggestion
- (ATXModeAnchorModelSuggestion)initWithCoder:(id)a3;
- (ATXModeAnchorModelSuggestion)initWithModeUUID:(id)a3 isStart:(BOOL)a4 anchorType:(id)a5 score:(double)a6 numUniqueOccurrencesAfterAnchor:(unint64_t)a7 posteriorProbability:(double)a8 classConditionalProbability:(double)a9 serializedTriggers:(id)a10;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXModeAnchorModelSuggestion

- (ATXModeAnchorModelSuggestion)initWithModeUUID:(id)a3 isStart:(BOOL)a4 anchorType:(id)a5 score:(double)a6 numUniqueOccurrencesAfterAnchor:(unint64_t)a7 posteriorProbability:(double)a8 classConditionalProbability:(double)a9 serializedTriggers:(id)a10
{
  v18 = a3;
  v19 = a5;
  v20 = a10;
  v25.receiver = self;
  v25.super_class = ATXModeAnchorModelSuggestion;
  v21 = [(ATXModeAnchorModelSuggestion *)&v25 init];
  if (v21)
  {
    v22 = [v18 copy];
    modeUUID = v21->_modeUUID;
    v21->_modeUUID = v22;

    v21->_isStart = a4;
    objc_storeStrong(&v21->_anchorType, a5);
    v21->_score = a6;
    v21->_numUniqueOccurrencesAfterAnchor = a7;
    v21->_posteriorProbability = a8;
    v21->_classConditionalProbability = a9;
    objc_storeStrong(&v21->_serializedTriggers, a10);
  }

  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  modeUUID = self->_modeUUID;
  v5 = a3;
  [v5 encodeObject:modeUUID forKey:@"modeUUID"];
  [v5 encodeObject:self->_anchorType forKey:@"anchorType"];
  [v5 encodeBool:self->_isStart forKey:@"isStart"];
  [v5 encodeDouble:@"score" forKey:self->_score];
  [v5 encodeInteger:self->_numUniqueOccurrencesAfterAnchor forKey:@"numUniqueOccurrencesAfterAnchor"];
  [v5 encodeDouble:@"posteriorProbability" forKey:self->_posteriorProbability];
  [v5 encodeDouble:@"classConditionalProbability" forKey:self->_classConditionalProbability];
  [v5 encodeObject:self->_serializedTriggers forKey:@"triggers"];
}

- (ATXModeAnchorModelSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modeUUID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"anchorType"];
  v7 = [v4 decodeBoolForKey:@"isStart"];
  [v4 decodeDoubleForKey:@"score"];
  v9 = v8;
  v10 = [v4 decodeIntegerForKey:@"numUniqueOccurrencesAfterAnchor"];
  [v4 decodeDoubleForKey:@"classConditionalProbability"];
  v12 = v11;
  [v4 decodeDoubleForKey:@"classConditionalProbability"];
  v14 = v13;
  v15 = MEMORY[0x277CBEB98];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  v18 = [v4 decodeObjectOfClasses:v17 forKey:@"triggers"];

  v19 = [(ATXModeAnchorModelSuggestion *)self initWithModeUUID:v5 isStart:v7 anchorType:v6 score:v10 numUniqueOccurrencesAfterAnchor:v18 posteriorProbability:v9 classConditionalProbability:v12 serializedTriggers:v14];
  return v19;
}

@end