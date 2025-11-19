@interface TIZephyrCandidate
- (BOOL)isAutocorrection;
- (NSString)label;
- (TIZephyrCandidate)initWithCandidate:(id)a3 forInput:(id)a4 rawInput:(id)a5 wordOriginFeedbackID:(unint64_t)a6 usageTrackingMask:(unsigned int)a7 sourceMask:(unsigned int)a8 learningFlagsMask:(unint64_t)a9;
- (TIZephyrCandidate)initWithCandidate:(id)a3 forInput:(id)a4 rawInput:(id)a5 wordOriginFeedbackID:(unint64_t)a6 usageTrackingMask:(unsigned int)a7 sourceMask:(unsigned int)a8 secureContentCandidate:(BOOL)a9 proactiveTrigger:(id)a10 proactivePredictedItem:(id)a11 responseKitCategory:(id)a12;
- (TIZephyrCandidate)initWithCandidate:(id)a3 responseKitCategory:(id)a4;
- (TIZephyrCandidate)initWithCandidateResultSetCoder:(id)a3;
- (TIZephyrCandidate)initWithCoder:(id)a3;
- (id)candidateByReplacingWithCandidate:(id)a3 input:(id)a4 label:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCandidateResultSetCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setContinuousPathConversion:(BOOL)a3;
- (void)setLabel:(id)a3;
@end

@implementation TIZephyrCandidate

- (void)encodeWithCandidateResultSetCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TIZephyrCandidate;
  v4 = a3;
  [(TIKeyboardCandidateSingle *)&v6 encodeWithCandidateResultSetCoder:v4];
  [v4 encodeUInt64:{-[TIZephyrCandidate wordOriginFeedbackID](self, "wordOriginFeedbackID", v6.receiver, v6.super_class)}];
  [v4 encodeUInt32:self->_usageTrackingMask];
  [v4 encodeBool:{-[TIZephyrCandidate isFromPhraseDictionary](self, "isFromPhraseDictionary")}];
  [v4 encodeBool:{-[TIZephyrCandidate isFromTextChecker](self, "isFromTextChecker")}];
  if (self->_label)
  {
    label = self->_label;
  }

  else
  {
    label = &stru_1EF56D550;
  }

  [v4 encodeString:label];
  [v4 encodeBool:self->_continuousPathConversion];
  [v4 encodeDouble:self->_excessPathRatio];
  [v4 encodeBool:self->_shouldAccept];
  [v4 encodeBool:self->_shouldInsertSpaceAfterSelection];
  [v4 encodeBool:self->_toucanInlineCompletionCandidate];
}

- (TIZephyrCandidate)initWithCandidateResultSetCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TIZephyrCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v12 initWithCandidateResultSetCoder:v4];
  if (v5)
  {
    v5->_wordOriginFeedbackID = [v4 decodeUInt64];
    v5->_usageTrackingMask = [v4 decodeUInt32];
    v5->_isFromPhraseDictionary = [v4 decodeBool];
    v5->_isFromTextChecker = [v4 decodeBool];
    v6 = [v4 decodeString];
    v7 = [v6 copy];
    label = v5->_label;
    v5->_label = v7;

    if (![(NSString *)v5->_label length])
    {
      v9 = v5->_label;
      v5->_label = 0;
    }

    -[TIZephyrCandidate setContinuousPathConversion:](v5, "setContinuousPathConversion:", [v4 decodeBool]);
    [v4 decodeDouble];
    v5->_excessPathRatio = v10;
    v5->_shouldAccept = [v4 decodeBool];
    v5->_shouldInsertSpaceAfterSelection = [v4 decodeBool];
    v5->_toucanInlineCompletionCandidate = [v4 decodeBool];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(TIKeyboardCandidateSingle *)self input];
  v6 = [(TIKeyboardCandidateSingle *)self candidate];
  v7 = [(TIKeyboardCandidateSingle *)self isExtensionCandidate];
  v8 = autoCorrectionTypeAsString([(TIZephyrCandidate *)self usageTrackingMask]);
  v9 = candidateSourceAsString([(TIKeyboardCandidateSingle *)self sourceMask]);
  v15.receiver = self;
  v15.super_class = TIZephyrCandidate;
  v10 = [(TIZephyrCandidate *)&v15 class];
  v14.receiver = self;
  v14.super_class = TIZephyrCandidate;
  v11 = [(TIKeyboardCandidateSingle *)&v14 description];
  v12 = [v3 stringWithFormat:@"<%@: %p '%@' -> '%@' (extension: %d) UTM=%@, SM=%@> <%@: %@>", v4, self, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TIZephyrCandidate;
  [(TIKeyboardCandidateSingle *)&v9 encodeWithCoder:v4];
  wordOriginFeedbackID = self->_wordOriginFeedbackID;
  if (wordOriginFeedbackID)
  {
    [v4 encodeInteger:wordOriginFeedbackID forKey:@"wordOriginFeedbackID"];
  }

  usageTrackingMask = self->_usageTrackingMask;
  if (usageTrackingMask)
  {
    [v4 encodeInteger:usageTrackingMask forKey:@"usageTrackingMask"];
  }

  if (self->_isFromPhraseDictionary)
  {
    [v4 encodeBool:1 forKey:@"isFromPhraseDictionary"];
  }

  if (self->_isFromTextChecker)
  {
    [v4 encodeBool:1 forKey:@"isFromTextChecker"];
  }

  label = self->_label;
  if (label)
  {
    [v4 encodeObject:label forKey:@"label"];
  }

  responseKitCategory = self->_responseKitCategory;
  if (responseKitCategory)
  {
    [v4 encodeObject:responseKitCategory forKey:@"responseKitCategory"];
  }

  if (self->_continuousPathConversion)
  {
    [v4 encodeBool:1 forKey:@"continuousPathConversion"];
  }

  if (self->_shouldAccept)
  {
    [v4 encodeBool:1 forKey:@"shouldAccept"];
  }

  if (self->_shouldInsertSpaceAfterSelection)
  {
    [v4 encodeBool:1 forKey:@"shouldInsertSpaceAfterSelection"];
  }

  [v4 encodeDouble:@"pathLengthDelta" forKey:self->_excessPathRatio];
  if (self->_toucanInlineCompletionCandidate)
  {
    [v4 encodeBool:1 forKey:@"toucanInlineCompletionCandidate"];
  }
}

- (TIZephyrCandidate)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TIZephyrCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v12 initWithCoder:v4];
  if (v5)
  {
    v5->_wordOriginFeedbackID = [v4 decodeIntegerForKey:@"wordOriginFeedbackID"];
    v5->_usageTrackingMask = [v4 decodeIntegerForKey:@"usageTrackingMask"];
    v5->_isFromPhraseDictionary = [v4 decodeBoolForKey:@"isFromPhraseDictionary"];
    v5->_isFromTextChecker = [v4 decodeBoolForKey:@"isFromTextChecker"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"responseKitCategory"];
    responseKitCategory = v5->_responseKitCategory;
    v5->_responseKitCategory = v8;

    -[TIZephyrCandidate setContinuousPathConversion:](v5, "setContinuousPathConversion:", [v4 decodeBoolForKey:@"continuousPathConversion"]);
    [v4 decodeDoubleForKey:@"pathLengthDelta"];
    v5->_excessPathRatio = v10;
    v5->_shouldAccept = [v4 decodeBoolForKey:@"shouldAccept"];
    v5->_shouldInsertSpaceAfterSelection = [v4 decodeBoolForKey:@"shouldInsertSpaceAfterSelection"];
    v5->_toucanInlineCompletionCandidate = [v4 decodeBoolForKey:@"toucanInlineCompletionCandidate"];
  }

  return v5;
}

- (id)candidateByReplacingWithCandidate:(id)a3 input:(id)a4 label:(id)a5
{
  v8 = a5;
  v9 = [(TIKeyboardCandidateSingle *)self candidateByReplacingWithCandidate:a3 input:a4];
  [v9 setLabel:v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
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
    v7 = [(NSString *)self->_label copyWithZone:a3];
    v8 = v6[39];
    v6[39] = v7;

    v9 = [(TIProactiveTrigger *)self->_proactiveTrigger copyWithZone:a3];
    v10 = v6[33];
    v6[33] = v9;

    v11 = [(NSString *)self->_responseKitCategory copyWithZone:a3];
    v12 = v6[34];
    v6[34] = v11;

    v13 = [(NSString *)self->_fromBundleId copyWithZone:a3];
    v14 = v6[35];
    v6[35] = v13;

    v6[36] = self->_ageForConnectionsMetrics;
    [v6 setContinuousPathConversion:self->_continuousPathConversion];
    v6[37] = *&self->_excessPathRatio;
    *(v6 + 236) = self->_shouldAccept;
    *(v6 + 237) = self->_shouldInsertSpaceAfterSelection;
    v15 = [(_ICPredictedItem *)self->_proactivePredictedItem copyWithZone:a3];
    v16 = v6[38];
    v6[38] = v15;

    *(v6 + 238) = self->_toucanInlineCompletionCandidate;
  }

  return v6;
}

- (BOOL)isAutocorrection
{
  v3 = [(TIKeyboardCandidateSingle *)self candidate];
  if (v3)
  {
    v4 = [(TIKeyboardCandidateSingle *)self candidate];
    v5 = [(TIKeyboardCandidateSingle *)self input];
    v6 = [v4 isEqualToString:v5] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (TIZephyrCandidate)initWithCandidate:(id)a3 responseKitCategory:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = TIZephyrCandidate;
  v8 = [(TIKeyboardCandidateSingle *)&v13 initWithResponseCandidate:a3];
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

    objc_storeStrong(&v9->_responseKitCategory, a4);
  }

  return v9;
}

- (TIZephyrCandidate)initWithCandidate:(id)a3 forInput:(id)a4 rawInput:(id)a5 wordOriginFeedbackID:(unint64_t)a6 usageTrackingMask:(unsigned int)a7 sourceMask:(unsigned int)a8 secureContentCandidate:(BOOL)a9 proactiveTrigger:(id)a10 proactivePredictedItem:(id)a11 responseKitCategory:(id)a12
{
  v12 = *&a8;
  v24 = a10;
  v23 = a11;
  v18 = a12;
  v25.receiver = self;
  v25.super_class = TIZephyrCandidate;
  v19 = [(TIKeyboardCandidateSingle *)&v25 initWithCandidate:a3 forInput:a4 rawInput:a5 sourceMask:v12];
  v20 = v19;
  if (v19)
  {
    v19->_wordOriginFeedbackID = a6;
    v19->_usageTrackingMask = a7;
    v19->_isSecureContentCandidate = a9;
    objc_storeStrong(&v19->_proactiveTrigger, a10);
    objc_storeStrong(&v20->_proactivePredictedItem, a11);
    objc_storeStrong(&v20->_responseKitCategory, a12);
    v20->_dynamicUsageCount = -1;
    v20->_dynamicPenaltyCount = -1;
  }

  return v20;
}

- (TIZephyrCandidate)initWithCandidate:(id)a3 forInput:(id)a4 rawInput:(id)a5 wordOriginFeedbackID:(unint64_t)a6 usageTrackingMask:(unsigned int)a7 sourceMask:(unsigned int)a8 learningFlagsMask:(unint64_t)a9
{
  v17.receiver = self;
  v17.super_class = TIZephyrCandidate;
  v11 = [(TIKeyboardCandidateSingle *)&v17 initWithCandidate:a3 forInput:a4 rawInput:a5 sourceMask:*&a8 learningFlagsMask:a9];
  v12 = v11;
  if (v11)
  {
    v11->_wordOriginFeedbackID = a6;
    v11->_usageTrackingMask = a7;
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

- (void)setLabel:(id)a3
{
  v4 = [a3 copy];
  label = self->_label;
  self->_label = v4;

  MEMORY[0x1EEE66BB8](v4, label);
}

- (NSString)label
{
  label = self->_label;
  if (label)
  {
    v3 = label;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TIZephyrCandidate;
    v3 = [(TIKeyboardCandidate *)&v5 label];
  }

  return v3;
}

- (void)setContinuousPathConversion:(BOOL)a3
{
  self->_continuousPathConversion = a3;
  if (a3)
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