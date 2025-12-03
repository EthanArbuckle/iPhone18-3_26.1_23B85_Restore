@interface TIZephyrCandidate
- (BOOL)isAutocorrection;
- (NSString)label;
- (TIZephyrCandidate)initWithCandidate:(id)candidate forInput:(id)input rawInput:(id)rawInput wordOriginFeedbackID:(unint64_t)d usageTrackingMask:(unsigned int)mask sourceMask:(unsigned int)sourceMask learningFlagsMask:(unint64_t)flagsMask;
- (TIZephyrCandidate)initWithCandidate:(id)candidate forInput:(id)input rawInput:(id)rawInput wordOriginFeedbackID:(unint64_t)d usageTrackingMask:(unsigned int)mask sourceMask:(unsigned int)sourceMask secureContentCandidate:(BOOL)contentCandidate proactiveTrigger:(id)self0 proactivePredictedItem:(id)self1 responseKitCategory:(id)self2;
- (TIZephyrCandidate)initWithCandidate:(id)candidate responseKitCategory:(id)category;
- (TIZephyrCandidate)initWithCandidateResultSetCoder:(id)coder;
- (TIZephyrCandidate)initWithCoder:(id)coder;
- (id)candidateByReplacingWithCandidate:(id)candidate input:(id)input label:(id)label;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCandidateResultSetCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setContinuousPathConversion:(BOOL)conversion;
- (void)setLabel:(id)label;
@end

@implementation TIZephyrCandidate

- (void)encodeWithCandidateResultSetCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TIZephyrCandidate;
  coderCopy = coder;
  [(TIKeyboardCandidateSingle *)&v6 encodeWithCandidateResultSetCoder:coderCopy];
  [coderCopy encodeUInt64:{-[TIZephyrCandidate wordOriginFeedbackID](self, "wordOriginFeedbackID", v6.receiver, v6.super_class)}];
  [coderCopy encodeUInt32:self->_usageTrackingMask];
  [coderCopy encodeBool:{-[TIZephyrCandidate isFromPhraseDictionary](self, "isFromPhraseDictionary")}];
  [coderCopy encodeBool:{-[TIZephyrCandidate isFromTextChecker](self, "isFromTextChecker")}];
  if (self->_label)
  {
    label = self->_label;
  }

  else
  {
    label = &stru_1EF56D550;
  }

  [coderCopy encodeString:label];
  [coderCopy encodeBool:self->_continuousPathConversion];
  [coderCopy encodeDouble:self->_excessPathRatio];
  [coderCopy encodeBool:self->_shouldAccept];
  [coderCopy encodeBool:self->_shouldInsertSpaceAfterSelection];
  [coderCopy encodeBool:self->_toucanInlineCompletionCandidate];
}

- (TIZephyrCandidate)initWithCandidateResultSetCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = TIZephyrCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v12 initWithCandidateResultSetCoder:coderCopy];
  if (v5)
  {
    v5->_wordOriginFeedbackID = [coderCopy decodeUInt64];
    v5->_usageTrackingMask = [coderCopy decodeUInt32];
    v5->_isFromPhraseDictionary = [coderCopy decodeBool];
    v5->_isFromTextChecker = [coderCopy decodeBool];
    decodeString = [coderCopy decodeString];
    v7 = [decodeString copy];
    label = v5->_label;
    v5->_label = v7;

    if (![(NSString *)v5->_label length])
    {
      v9 = v5->_label;
      v5->_label = 0;
    }

    -[TIZephyrCandidate setContinuousPathConversion:](v5, "setContinuousPathConversion:", [coderCopy decodeBool]);
    [coderCopy decodeDouble];
    v5->_excessPathRatio = v10;
    v5->_shouldAccept = [coderCopy decodeBool];
    v5->_shouldInsertSpaceAfterSelection = [coderCopy decodeBool];
    v5->_toucanInlineCompletionCandidate = [coderCopy decodeBool];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  input = [(TIKeyboardCandidateSingle *)self input];
  candidate = [(TIKeyboardCandidateSingle *)self candidate];
  isExtensionCandidate = [(TIKeyboardCandidateSingle *)self isExtensionCandidate];
  v8 = autoCorrectionTypeAsString([(TIZephyrCandidate *)self usageTrackingMask]);
  v9 = candidateSourceAsString([(TIKeyboardCandidateSingle *)self sourceMask]);
  v15.receiver = self;
  v15.super_class = TIZephyrCandidate;
  v10 = [(TIZephyrCandidate *)&v15 class];
  v14.receiver = self;
  v14.super_class = TIZephyrCandidate;
  v11 = [(TIKeyboardCandidateSingle *)&v14 description];
  v12 = [v3 stringWithFormat:@"<%@: %p '%@' -> '%@' (extension: %d) UTM=%@, SM=%@> <%@: %@>", v4, self, input, candidate, isExtensionCandidate, v8, v9, v10, v11];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TIZephyrCandidate;
  [(TIKeyboardCandidateSingle *)&v9 encodeWithCoder:coderCopy];
  wordOriginFeedbackID = self->_wordOriginFeedbackID;
  if (wordOriginFeedbackID)
  {
    [coderCopy encodeInteger:wordOriginFeedbackID forKey:@"wordOriginFeedbackID"];
  }

  usageTrackingMask = self->_usageTrackingMask;
  if (usageTrackingMask)
  {
    [coderCopy encodeInteger:usageTrackingMask forKey:@"usageTrackingMask"];
  }

  if (self->_isFromPhraseDictionary)
  {
    [coderCopy encodeBool:1 forKey:@"isFromPhraseDictionary"];
  }

  if (self->_isFromTextChecker)
  {
    [coderCopy encodeBool:1 forKey:@"isFromTextChecker"];
  }

  label = self->_label;
  if (label)
  {
    [coderCopy encodeObject:label forKey:@"label"];
  }

  responseKitCategory = self->_responseKitCategory;
  if (responseKitCategory)
  {
    [coderCopy encodeObject:responseKitCategory forKey:@"responseKitCategory"];
  }

  if (self->_continuousPathConversion)
  {
    [coderCopy encodeBool:1 forKey:@"continuousPathConversion"];
  }

  if (self->_shouldAccept)
  {
    [coderCopy encodeBool:1 forKey:@"shouldAccept"];
  }

  if (self->_shouldInsertSpaceAfterSelection)
  {
    [coderCopy encodeBool:1 forKey:@"shouldInsertSpaceAfterSelection"];
  }

  [coderCopy encodeDouble:@"pathLengthDelta" forKey:self->_excessPathRatio];
  if (self->_toucanInlineCompletionCandidate)
  {
    [coderCopy encodeBool:1 forKey:@"toucanInlineCompletionCandidate"];
  }
}

- (TIZephyrCandidate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = TIZephyrCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_wordOriginFeedbackID = [coderCopy decodeIntegerForKey:@"wordOriginFeedbackID"];
    v5->_usageTrackingMask = [coderCopy decodeIntegerForKey:@"usageTrackingMask"];
    v5->_isFromPhraseDictionary = [coderCopy decodeBoolForKey:@"isFromPhraseDictionary"];
    v5->_isFromTextChecker = [coderCopy decodeBoolForKey:@"isFromTextChecker"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"responseKitCategory"];
    responseKitCategory = v5->_responseKitCategory;
    v5->_responseKitCategory = v8;

    -[TIZephyrCandidate setContinuousPathConversion:](v5, "setContinuousPathConversion:", [coderCopy decodeBoolForKey:@"continuousPathConversion"]);
    [coderCopy decodeDoubleForKey:@"pathLengthDelta"];
    v5->_excessPathRatio = v10;
    v5->_shouldAccept = [coderCopy decodeBoolForKey:@"shouldAccept"];
    v5->_shouldInsertSpaceAfterSelection = [coderCopy decodeBoolForKey:@"shouldInsertSpaceAfterSelection"];
    v5->_toucanInlineCompletionCandidate = [coderCopy decodeBoolForKey:@"toucanInlineCompletionCandidate"];
  }

  return v5;
}

- (id)candidateByReplacingWithCandidate:(id)candidate input:(id)input label:(id)label
{
  labelCopy = label;
  v9 = [(TIKeyboardCandidateSingle *)self candidateByReplacingWithCandidate:candidate input:input];
  [v9 setLabel:labelCopy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18.receiver = self;
  v18.super_class = TIZephyrCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v18 copyWithZone:?];
  v6 = v5;
  if (v5)
  {
    v5[32] = self->_wordOriginFeedbackID;
    *(v5 + 60) = self->_usageTrackingMask;
    *(v5 + 232) = self->_isFromPhraseDictionary;
    *(v5 + 233) = self->_isFromTextChecker;
    v7 = [(NSString *)self->_label copyWithZone:zone];
    v8 = v6[39];
    v6[39] = v7;

    v9 = [(TIProactiveTrigger *)self->_proactiveTrigger copyWithZone:zone];
    v10 = v6[33];
    v6[33] = v9;

    v11 = [(NSString *)self->_responseKitCategory copyWithZone:zone];
    v12 = v6[34];
    v6[34] = v11;

    v13 = [(NSString *)self->_fromBundleId copyWithZone:zone];
    v14 = v6[35];
    v6[35] = v13;

    v6[36] = self->_ageForConnectionsMetrics;
    [v6 setContinuousPathConversion:self->_continuousPathConversion];
    v6[37] = *&self->_excessPathRatio;
    *(v6 + 236) = self->_shouldAccept;
    *(v6 + 237) = self->_shouldInsertSpaceAfterSelection;
    v15 = [(_ICPredictedItem *)self->_proactivePredictedItem copyWithZone:zone];
    v16 = v6[38];
    v6[38] = v15;

    *(v6 + 238) = self->_toucanInlineCompletionCandidate;
  }

  return v6;
}

- (BOOL)isAutocorrection
{
  candidate = [(TIKeyboardCandidateSingle *)self candidate];
  if (candidate)
  {
    candidate2 = [(TIKeyboardCandidateSingle *)self candidate];
    input = [(TIKeyboardCandidateSingle *)self input];
    v6 = [candidate2 isEqualToString:input] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (TIZephyrCandidate)initWithCandidate:(id)candidate responseKitCategory:(id)category
{
  categoryCopy = category;
  v13.receiver = self;
  v13.super_class = TIZephyrCandidate;
  v8 = [(TIKeyboardCandidateSingle *)&v13 initWithResponseCandidate:candidate];
  v9 = v8;
  if (v8)
  {
    v8->_wordOriginFeedbackID = 0;
    v8->_usageTrackingMask = 0;
    v8->_isSecureContentCandidate = 0;
    proactiveTrigger = v8->_proactiveTrigger;
    v8->_proactiveTrigger = 0;

    proactivePredictedItem = v9->_proactivePredictedItem;
    v9->_proactivePredictedItem = 0;

    objc_storeStrong(&v9->_responseKitCategory, category);
  }

  return v9;
}

- (TIZephyrCandidate)initWithCandidate:(id)candidate forInput:(id)input rawInput:(id)rawInput wordOriginFeedbackID:(unint64_t)d usageTrackingMask:(unsigned int)mask sourceMask:(unsigned int)sourceMask secureContentCandidate:(BOOL)contentCandidate proactiveTrigger:(id)self0 proactivePredictedItem:(id)self1 responseKitCategory:(id)self2
{
  v12 = *&sourceMask;
  triggerCopy = trigger;
  itemCopy = item;
  categoryCopy = category;
  v25.receiver = self;
  v25.super_class = TIZephyrCandidate;
  v19 = [(TIKeyboardCandidateSingle *)&v25 initWithCandidate:candidate forInput:input rawInput:rawInput sourceMask:v12];
  v20 = v19;
  if (v19)
  {
    v19->_wordOriginFeedbackID = d;
    v19->_usageTrackingMask = mask;
    v19->_isSecureContentCandidate = contentCandidate;
    objc_storeStrong(&v19->_proactiveTrigger, trigger);
    objc_storeStrong(&v20->_proactivePredictedItem, item);
    objc_storeStrong(&v20->_responseKitCategory, category);
    v20->_dynamicUsageCount = -1;
    v20->_dynamicPenaltyCount = -1;
  }

  return v20;
}

- (TIZephyrCandidate)initWithCandidate:(id)candidate forInput:(id)input rawInput:(id)rawInput wordOriginFeedbackID:(unint64_t)d usageTrackingMask:(unsigned int)mask sourceMask:(unsigned int)sourceMask learningFlagsMask:(unint64_t)flagsMask
{
  v17.receiver = self;
  v17.super_class = TIZephyrCandidate;
  v11 = [(TIKeyboardCandidateSingle *)&v17 initWithCandidate:candidate forInput:input rawInput:rawInput sourceMask:*&sourceMask learningFlagsMask:flagsMask];
  v12 = v11;
  if (v11)
  {
    v11->_wordOriginFeedbackID = d;
    v11->_usageTrackingMask = mask;
    v11->_isSecureContentCandidate = 0;
    proactiveTrigger = v11->_proactiveTrigger;
    v11->_proactiveTrigger = 0;

    proactivePredictedItem = v12->_proactivePredictedItem;
    v12->_proactivePredictedItem = 0;

    responseKitCategory = v12->_responseKitCategory;
    v12->_responseKitCategory = 0;

    v12->_dynamicUsageCount = -1;
    v12->_dynamicPenaltyCount = -1;
  }

  return v12;
}

- (void)setLabel:(id)label
{
  v4 = [label copy];
  label = self->_label;
  self->_label = v4;

  MEMORY[0x1EEE66BB8](v4, label);
}

- (NSString)label
{
  label = self->_label;
  if (label)
  {
    label = label;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TIZephyrCandidate;
    label = [(TIKeyboardCandidate *)&v5 label];
  }

  return label;
}

- (void)setContinuousPathConversion:(BOOL)conversion
{
  self->_continuousPathConversion = conversion;
  if (conversion)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_usageTrackingMask = self->_usageTrackingMask & 0xFFF7FFFF | v3;
}

@end