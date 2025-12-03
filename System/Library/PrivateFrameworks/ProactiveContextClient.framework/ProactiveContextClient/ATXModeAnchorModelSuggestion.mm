@interface ATXModeAnchorModelSuggestion
- (ATXModeAnchorModelSuggestion)initWithCoder:(id)coder;
- (ATXModeAnchorModelSuggestion)initWithModeUUID:(id)d isStart:(BOOL)start anchorType:(id)type score:(double)score numUniqueOccurrencesAfterAnchor:(unint64_t)anchor posteriorProbability:(double)probability classConditionalProbability:(double)conditionalProbability serializedTriggers:(id)self0;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXModeAnchorModelSuggestion

- (ATXModeAnchorModelSuggestion)initWithModeUUID:(id)d isStart:(BOOL)start anchorType:(id)type score:(double)score numUniqueOccurrencesAfterAnchor:(unint64_t)anchor posteriorProbability:(double)probability classConditionalProbability:(double)conditionalProbability serializedTriggers:(id)self0
{
  dCopy = d;
  typeCopy = type;
  triggersCopy = triggers;
  v25.receiver = self;
  v25.super_class = ATXModeAnchorModelSuggestion;
  v21 = [(ATXModeAnchorModelSuggestion *)&v25 init];
  if (v21)
  {
    v22 = [dCopy copy];
    modeUUID = v21->_modeUUID;
    v21->_modeUUID = v22;

    v21->_isStart = start;
    objc_storeStrong(&v21->_anchorType, type);
    v21->_score = score;
    v21->_numUniqueOccurrencesAfterAnchor = anchor;
    v21->_posteriorProbability = probability;
    v21->_classConditionalProbability = conditionalProbability;
    objc_storeStrong(&v21->_serializedTriggers, triggers);
  }

  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  modeUUID = self->_modeUUID;
  coderCopy = coder;
  [coderCopy encodeObject:modeUUID forKey:@"modeUUID"];
  [coderCopy encodeObject:self->_anchorType forKey:@"anchorType"];
  [coderCopy encodeBool:self->_isStart forKey:@"isStart"];
  [coderCopy encodeDouble:@"score" forKey:self->_score];
  [coderCopy encodeInteger:self->_numUniqueOccurrencesAfterAnchor forKey:@"numUniqueOccurrencesAfterAnchor"];
  [coderCopy encodeDouble:@"posteriorProbability" forKey:self->_posteriorProbability];
  [coderCopy encodeDouble:@"classConditionalProbability" forKey:self->_classConditionalProbability];
  [coderCopy encodeObject:self->_serializedTriggers forKey:@"triggers"];
}

- (ATXModeAnchorModelSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modeUUID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"anchorType"];
  v7 = [coderCopy decodeBoolForKey:@"isStart"];
  [coderCopy decodeDoubleForKey:@"score"];
  v9 = v8;
  v10 = [coderCopy decodeIntegerForKey:@"numUniqueOccurrencesAfterAnchor"];
  [coderCopy decodeDoubleForKey:@"classConditionalProbability"];
  v12 = v11;
  [coderCopy decodeDoubleForKey:@"classConditionalProbability"];
  v14 = v13;
  v15 = MEMORY[0x277CBEB98];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"triggers"];

  v19 = [(ATXModeAnchorModelSuggestion *)self initWithModeUUID:v5 isStart:v7 anchorType:v6 score:v10 numUniqueOccurrencesAfterAnchor:v18 posteriorProbability:v9 classConditionalProbability:v12 serializedTriggers:v14];
  return v19;
}

@end