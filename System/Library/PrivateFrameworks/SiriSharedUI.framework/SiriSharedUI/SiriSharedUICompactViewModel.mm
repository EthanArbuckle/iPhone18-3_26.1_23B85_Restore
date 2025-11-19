@interface SiriSharedUICompactViewModel
- (SiriSharedUICompactViewModel)initWithInputType:(int64_t)a3 resultTranscriptItems:(id)a4 conversationTranscriptItems:(id)a5 additionalPlatterTranscriptItems:(id)a6 serverUtterances:(id)a7 speechRecognitionHypothesis:(id)a8;
- (id)_copyWithInputType:(int64_t)a3 resultTranscriptItems:(id)a4 conversationTranscriptItems:(id)a5 additionalPlatterTranscriptItems:(id)a6 serverUtterances:(id)a7 speechRecognitionHypothesis:(id)a8 latencyViewUtterance:(id)a9;
- (id)_initWithInputType:(int64_t)a3 resultTranscriptItems:(id)a4 conversationTranscriptItems:(id)a5 additionalPlatterTranscriptItems:(id)a6 serverUtterances:(id)a7 speechRecognitionHypothesis:(id)a8 latencyViewModel:(id)a9;
- (id)copyWithAdditionalPlatterTranscriptItems:(id)a3;
- (id)copyWithConversationTranscriptItems:(id)a3 serverUtterances:(id)a4 speechRecognitionHypothesis:(id)a5 latencyViewUtterance:(id)a6;
- (id)copyWithInputType:(int64_t)a3;
- (id)copyWithInputType:(int64_t)a3 resultTranscriptItems:(id)a4 conversationTranscriptItems:(id)a5 serverUtterances:(id)a6 speechRecognitionHypothesis:(id)a7;
- (id)copyWithLatencyIntentSummary:(id)a3;
- (id)copyWithLatencyViewModel:(id)a3;
- (id)copyWithResultTranscriptItems:(id)a3;
- (id)copyWithResultTranscriptItems:(id)a3 conversationTranscriptItems:(id)a4 serverUtterances:(id)a5 speechRecognitionHypothesis:(id)a6;
- (id)copyWithServerUtterances:(id)a3 speechRecognitionHypothesis:(id)a4 latencyViewUtterance:(id)a5;
- (id)copyWithSpeechRecognitionHypothesis:(id)a3;
- (id)description;
@end

@implementation SiriSharedUICompactViewModel

- (id)_initWithInputType:(int64_t)a3 resultTranscriptItems:(id)a4 conversationTranscriptItems:(id)a5 additionalPlatterTranscriptItems:(id)a6 serverUtterances:(id)a7 speechRecognitionHypothesis:(id)a8 latencyViewModel:(id)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v34.receiver = self;
  v34.super_class = SiriSharedUICompactViewModel;
  v21 = [(SiriSharedUICompactViewModel *)&v34 init];
  v22 = v21;
  if (v21)
  {
    v21->_inputType = a3;
    v23 = [v15 copy];
    resultTranscriptItems = v22->_resultTranscriptItems;
    v22->_resultTranscriptItems = v23;

    v25 = [v16 copy];
    conversationTranscriptItems = v22->_conversationTranscriptItems;
    v22->_conversationTranscriptItems = v25;

    v27 = [v17 copy];
    additionalPlatterTranscriptItems = v22->_additionalPlatterTranscriptItems;
    v22->_additionalPlatterTranscriptItems = v27;

    v29 = [v18 copy];
    serverUtterances = v22->_serverUtterances;
    v22->_serverUtterances = v29;

    v31 = [v19 copy];
    speechRecognitionHypothesis = v22->_speechRecognitionHypothesis;
    v22->_speechRecognitionHypothesis = v31;

    objc_storeStrong(&v22->_latencyViewModel, a9);
  }

  return v22;
}

- (SiriSharedUICompactViewModel)initWithInputType:(int64_t)a3 resultTranscriptItems:(id)a4 conversationTranscriptItems:(id)a5 additionalPlatterTranscriptItems:(id)a6 serverUtterances:(id)a7 speechRecognitionHypothesis:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = [[SiriSharedUILatencyViewModel alloc] initWithUserUtterance:0 shouldSuppress:0];
  v20 = [(SiriSharedUICompactViewModel *)self _initWithInputType:a3 resultTranscriptItems:v18 conversationTranscriptItems:v17 additionalPlatterTranscriptItems:v16 serverUtterances:v15 speechRecognitionHypothesis:v14 latencyViewModel:v19];

  return v20;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"<%@ %p:", objc_opt_class(), self];
  [v3 appendString:@" inputType="];
  v4 = SiriSharedUIViewModelInputTypeGetDescription([(SiriSharedUICompactViewModel *)self inputType]);
  [v3 appendString:v4];

  [v3 appendString:@" resultTranscriptItems="];
  v5 = [(SiriSharedUICompactViewModel *)self resultTranscriptItems];
  v6 = [v5 description];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"nil";
  }

  [v3 appendString:v8];

  [v3 appendString:@"; conversationTranscriptItem="];
  v9 = [(SiriSharedUICompactViewModel *)self conversationTranscriptItems];
  v10 = [v9 description];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"nil";
  }

  [v3 appendString:v12];

  [v3 appendString:@"; additionalPlatterTranscriptItems="];
  v13 = [(SiriSharedUICompactViewModel *)self additionalPlatterTranscriptItems];
  v14 = [v13 description];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = @"nil";
  }

  [v3 appendString:v16];

  [v3 appendString:@"; serverUtterances="];
  v17 = [(SiriSharedUICompactViewModel *)self serverUtterances];
  v18 = [v17 description];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = @"nil";
  }

  [v3 appendString:v20];

  [v3 appendString:@"; speechRecognitionHypothesis="];
  v21 = [(SiriSharedUICompactViewModel *)self speechRecognitionHypothesis];
  v22 = [v21 description];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = @"nil";
  }

  [v3 appendString:v24];

  [v3 appendString:@"; latencyViewModel="];
  v25 = [(SiriSharedUICompactViewModel *)self latencyViewModel];
  v26 = [v25 description];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = @"nil";
  }

  [v3 appendString:v28];

  [v3 appendString:@">"];
  v29 = [v3 copy];

  return v29;
}

- (id)_copyWithInputType:(int64_t)a3 resultTranscriptItems:(id)a4 conversationTranscriptItems:(id)a5 additionalPlatterTranscriptItems:(id)a6 serverUtterances:(id)a7 speechRecognitionHypothesis:(id)a8 latencyViewUtterance:(id)a9
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  if (a3 != 1)
  {
    v23 = 1;
    goto LABEL_24;
  }

  v22 = [v16 count];
  if (v22)
  {
    v9 = [(SiriSharedUICompactViewModel *)self resultTranscriptItems];
    if (![v16 isEqualToArray:v9])
    {
      v23 = 1;
LABEL_23:

      goto LABEL_24;
    }
  }

  v35 = [v17 count];
  v36 = v22;
  if (!v35 || (-[SiriSharedUICompactViewModel conversationTranscriptItems](self, "conversationTranscriptItems"), v33 = objc_claimAutoreleasedReturnValue(), [v17 isEqualToArray:?]))
  {
    v34 = v9;
    v24 = [v18 valueForKeyPath:@"@unionOfArrays.self"];
    v31 = [v24 count];
    if (v31)
    {
      v30 = [(SiriSharedUICompactViewModel *)self additionalPlatterTranscriptItems];
      if (([v18 isEqualToArray:?] & 1) == 0)
      {
        v32 = v24;
        v23 = 1;
        goto LABEL_17;
      }

      if (![v19 count])
      {
        v32 = v24;
        v23 = 0;
LABEL_17:
        v9 = v34;

        goto LABEL_20;
      }
    }

    else if (![v19 count])
    {

      v23 = 0;
      goto LABEL_19;
    }

    v32 = v24;
    v25 = [(SiriSharedUICompactViewModel *)self serverUtterances];
    v23 = [v19 isEqualToArray:v25] ^ 1;

    if (v31)
    {
      goto LABEL_17;
    }

LABEL_19:
    v9 = v34;
LABEL_20:
    if (!v35)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v23 = 1;
LABEL_21:

LABEL_22:
  if (v36)
  {
    goto LABEL_23;
  }

LABEL_24:
  v26 = objc_alloc(objc_opt_class());
  v27 = [[SiriSharedUILatencyViewModel alloc] initWithUserUtterance:v21 shouldSuppress:v23];
  v28 = [v26 _initWithInputType:a3 resultTranscriptItems:v16 conversationTranscriptItems:v17 additionalPlatterTranscriptItems:v18 serverUtterances:v19 speechRecognitionHypothesis:v20 latencyViewModel:v27];

  return v28;
}

- (id)copyWithInputType:(int64_t)a3 resultTranscriptItems:(id)a4 conversationTranscriptItems:(id)a5 serverUtterances:(id)a6 speechRecognitionHypothesis:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = [(SiriSharedUICompactViewModel *)self additionalPlatterTranscriptItems];
  v17 = [(SiriSharedUICompactViewModel *)self latencyViewModel];
  v18 = [v17 userUtterance];
  v19 = [(SiriSharedUICompactViewModel *)self _copyWithInputType:a3 resultTranscriptItems:v15 conversationTranscriptItems:v14 additionalPlatterTranscriptItems:v16 serverUtterances:v13 speechRecognitionHypothesis:v12 latencyViewUtterance:v18];

  return v19;
}

- (id)copyWithResultTranscriptItems:(id)a3 conversationTranscriptItems:(id)a4 serverUtterances:(id)a5 speechRecognitionHypothesis:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(SiriSharedUICompactViewModel *)self inputType];
  v15 = [(SiriSharedUICompactViewModel *)self additionalPlatterTranscriptItems];
  v16 = [(SiriSharedUICompactViewModel *)self latencyViewModel];
  v17 = [v16 userUtterance];
  v18 = [(SiriSharedUICompactViewModel *)self _copyWithInputType:v14 resultTranscriptItems:v13 conversationTranscriptItems:v12 additionalPlatterTranscriptItems:v15 serverUtterances:v11 speechRecognitionHypothesis:v10 latencyViewUtterance:v17];

  return v18;
}

- (id)copyWithConversationTranscriptItems:(id)a3 serverUtterances:(id)a4 speechRecognitionHypothesis:(id)a5 latencyViewUtterance:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(SiriSharedUICompactViewModel *)self inputType];
  v15 = [(SiriSharedUICompactViewModel *)self resultTranscriptItems];
  v16 = [(SiriSharedUICompactViewModel *)self additionalPlatterTranscriptItems];
  v17 = [(SiriSharedUICompactViewModel *)self _copyWithInputType:v14 resultTranscriptItems:v15 conversationTranscriptItems:v13 additionalPlatterTranscriptItems:v16 serverUtterances:v12 speechRecognitionHypothesis:v11 latencyViewUtterance:v10];

  return v17;
}

- (id)copyWithInputType:(int64_t)a3
{
  v5 = [(SiriSharedUICompactViewModel *)self resultTranscriptItems];
  v6 = [(SiriSharedUICompactViewModel *)self conversationTranscriptItems];
  v7 = [(SiriSharedUICompactViewModel *)self additionalPlatterTranscriptItems];
  v8 = [(SiriSharedUICompactViewModel *)self serverUtterances];
  v9 = [(SiriSharedUICompactViewModel *)self speechRecognitionHypothesis];
  v10 = [(SiriSharedUICompactViewModel *)self latencyViewModel];
  v11 = [v10 userUtterance];
  v12 = [(SiriSharedUICompactViewModel *)self _copyWithInputType:a3 resultTranscriptItems:v5 conversationTranscriptItems:v6 additionalPlatterTranscriptItems:v7 serverUtterances:v8 speechRecognitionHypothesis:v9 latencyViewUtterance:v11];

  return v12;
}

- (id)copyWithResultTranscriptItems:(id)a3
{
  v4 = a3;
  v5 = [(SiriSharedUICompactViewModel *)self inputType];
  v6 = [(SiriSharedUICompactViewModel *)self conversationTranscriptItems];
  v7 = [(SiriSharedUICompactViewModel *)self additionalPlatterTranscriptItems];
  v8 = [(SiriSharedUICompactViewModel *)self serverUtterances];
  v9 = [(SiriSharedUICompactViewModel *)self speechRecognitionHypothesis];
  v10 = [(SiriSharedUICompactViewModel *)self latencyViewModel];
  v11 = [v10 userUtterance];
  v12 = [(SiriSharedUICompactViewModel *)self _copyWithInputType:v5 resultTranscriptItems:v4 conversationTranscriptItems:v6 additionalPlatterTranscriptItems:v7 serverUtterances:v8 speechRecognitionHypothesis:v9 latencyViewUtterance:v11];

  return v12;
}

- (id)copyWithAdditionalPlatterTranscriptItems:(id)a3
{
  v4 = a3;
  v5 = [(SiriSharedUICompactViewModel *)self inputType];
  v6 = [(SiriSharedUICompactViewModel *)self resultTranscriptItems];
  v7 = [(SiriSharedUICompactViewModel *)self conversationTranscriptItems];
  v8 = [(SiriSharedUICompactViewModel *)self serverUtterances];
  v9 = [(SiriSharedUICompactViewModel *)self speechRecognitionHypothesis];
  v10 = [(SiriSharedUICompactViewModel *)self latencyViewModel];
  v11 = [v10 userUtterance];
  v12 = [(SiriSharedUICompactViewModel *)self _copyWithInputType:v5 resultTranscriptItems:v6 conversationTranscriptItems:v7 additionalPlatterTranscriptItems:v4 serverUtterances:v8 speechRecognitionHypothesis:v9 latencyViewUtterance:v11];

  return v12;
}

- (id)copyWithSpeechRecognitionHypothesis:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(SiriSharedUICompactViewModel *)self inputType];
  v7 = [(SiriSharedUICompactViewModel *)self resultTranscriptItems];
  v8 = [(SiriSharedUICompactViewModel *)self conversationTranscriptItems];
  v9 = [(SiriSharedUICompactViewModel *)self additionalPlatterTranscriptItems];
  v10 = [(SiriSharedUICompactViewModel *)self serverUtterances];
  v11 = [(SiriSharedUICompactViewModel *)self latencyViewModel];
  v12 = [v5 _initWithInputType:v6 resultTranscriptItems:v7 conversationTranscriptItems:v8 additionalPlatterTranscriptItems:v9 serverUtterances:v10 speechRecognitionHypothesis:v4 latencyViewModel:v11];

  return v12;
}

- (id)copyWithServerUtterances:(id)a3 speechRecognitionHypothesis:(id)a4 latencyViewUtterance:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SiriSharedUICompactViewModel *)self inputType];
  v12 = [(SiriSharedUICompactViewModel *)self resultTranscriptItems];
  v13 = [(SiriSharedUICompactViewModel *)self conversationTranscriptItems];
  v14 = [(SiriSharedUICompactViewModel *)self additionalPlatterTranscriptItems];
  v15 = [(SiriSharedUICompactViewModel *)self _copyWithInputType:v11 resultTranscriptItems:v12 conversationTranscriptItems:v13 additionalPlatterTranscriptItems:v14 serverUtterances:v10 speechRecognitionHypothesis:v9 latencyViewUtterance:v8];

  return v15;
}

- (id)copyWithLatencyViewModel:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(SiriSharedUICompactViewModel *)self inputType];
  v7 = [(SiriSharedUICompactViewModel *)self resultTranscriptItems];
  v8 = [(SiriSharedUICompactViewModel *)self conversationTranscriptItems];
  v9 = [(SiriSharedUICompactViewModel *)self additionalPlatterTranscriptItems];
  v10 = [(SiriSharedUICompactViewModel *)self serverUtterances];
  v11 = [(SiriSharedUICompactViewModel *)self speechRecognitionHypothesis];
  v12 = [v5 _initWithInputType:v6 resultTranscriptItems:v7 conversationTranscriptItems:v8 additionalPlatterTranscriptItems:v9 serverUtterances:v10 speechRecognitionHypothesis:v11 latencyViewModel:v4];

  return v12;
}

- (id)copyWithLatencyIntentSummary:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(SiriSharedUICompactViewModel *)self inputType];
  v7 = [(SiriSharedUICompactViewModel *)self resultTranscriptItems];
  v8 = [(SiriSharedUICompactViewModel *)self conversationTranscriptItems];
  v9 = [(SiriSharedUICompactViewModel *)self additionalPlatterTranscriptItems];
  v10 = [(SiriSharedUICompactViewModel *)self serverUtterances];
  v11 = [(SiriSharedUICompactViewModel *)self speechRecognitionHypothesis];
  v12 = [[SiriSharedUILatencyViewModel alloc] initWithUserUtterance:v4 shouldSuppress:0];

  v13 = [v5 _initWithInputType:v6 resultTranscriptItems:v7 conversationTranscriptItems:v8 additionalPlatterTranscriptItems:v9 serverUtterances:v10 speechRecognitionHypothesis:v11 latencyViewModel:v12];
  return v13;
}

@end