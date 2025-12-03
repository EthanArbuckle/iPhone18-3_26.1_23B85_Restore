@interface SiriSharedUICompactViewModel
- (SiriSharedUICompactViewModel)initWithInputType:(int64_t)type resultTranscriptItems:(id)items conversationTranscriptItems:(id)transcriptItems additionalPlatterTranscriptItems:(id)platterTranscriptItems serverUtterances:(id)utterances speechRecognitionHypothesis:(id)hypothesis;
- (id)_copyWithInputType:(int64_t)type resultTranscriptItems:(id)items conversationTranscriptItems:(id)transcriptItems additionalPlatterTranscriptItems:(id)platterTranscriptItems serverUtterances:(id)utterances speechRecognitionHypothesis:(id)hypothesis latencyViewUtterance:(id)utterance;
- (id)_initWithInputType:(int64_t)type resultTranscriptItems:(id)items conversationTranscriptItems:(id)transcriptItems additionalPlatterTranscriptItems:(id)platterTranscriptItems serverUtterances:(id)utterances speechRecognitionHypothesis:(id)hypothesis latencyViewModel:(id)model;
- (id)copyWithAdditionalPlatterTranscriptItems:(id)items;
- (id)copyWithConversationTranscriptItems:(id)items serverUtterances:(id)utterances speechRecognitionHypothesis:(id)hypothesis latencyViewUtterance:(id)utterance;
- (id)copyWithInputType:(int64_t)type;
- (id)copyWithInputType:(int64_t)type resultTranscriptItems:(id)items conversationTranscriptItems:(id)transcriptItems serverUtterances:(id)utterances speechRecognitionHypothesis:(id)hypothesis;
- (id)copyWithLatencyIntentSummary:(id)summary;
- (id)copyWithLatencyViewModel:(id)model;
- (id)copyWithResultTranscriptItems:(id)items;
- (id)copyWithResultTranscriptItems:(id)items conversationTranscriptItems:(id)transcriptItems serverUtterances:(id)utterances speechRecognitionHypothesis:(id)hypothesis;
- (id)copyWithServerUtterances:(id)utterances speechRecognitionHypothesis:(id)hypothesis latencyViewUtterance:(id)utterance;
- (id)copyWithSpeechRecognitionHypothesis:(id)hypothesis;
- (id)description;
@end

@implementation SiriSharedUICompactViewModel

- (id)_initWithInputType:(int64_t)type resultTranscriptItems:(id)items conversationTranscriptItems:(id)transcriptItems additionalPlatterTranscriptItems:(id)platterTranscriptItems serverUtterances:(id)utterances speechRecognitionHypothesis:(id)hypothesis latencyViewModel:(id)model
{
  itemsCopy = items;
  transcriptItemsCopy = transcriptItems;
  platterTranscriptItemsCopy = platterTranscriptItems;
  utterancesCopy = utterances;
  hypothesisCopy = hypothesis;
  modelCopy = model;
  v34.receiver = self;
  v34.super_class = SiriSharedUICompactViewModel;
  v21 = [(SiriSharedUICompactViewModel *)&v34 init];
  v22 = v21;
  if (v21)
  {
    v21->_inputType = type;
    v23 = [itemsCopy copy];
    resultTranscriptItems = v22->_resultTranscriptItems;
    v22->_resultTranscriptItems = v23;

    v25 = [transcriptItemsCopy copy];
    conversationTranscriptItems = v22->_conversationTranscriptItems;
    v22->_conversationTranscriptItems = v25;

    v27 = [platterTranscriptItemsCopy copy];
    additionalPlatterTranscriptItems = v22->_additionalPlatterTranscriptItems;
    v22->_additionalPlatterTranscriptItems = v27;

    v29 = [utterancesCopy copy];
    serverUtterances = v22->_serverUtterances;
    v22->_serverUtterances = v29;

    v31 = [hypothesisCopy copy];
    speechRecognitionHypothesis = v22->_speechRecognitionHypothesis;
    v22->_speechRecognitionHypothesis = v31;

    objc_storeStrong(&v22->_latencyViewModel, model);
  }

  return v22;
}

- (SiriSharedUICompactViewModel)initWithInputType:(int64_t)type resultTranscriptItems:(id)items conversationTranscriptItems:(id)transcriptItems additionalPlatterTranscriptItems:(id)platterTranscriptItems serverUtterances:(id)utterances speechRecognitionHypothesis:(id)hypothesis
{
  hypothesisCopy = hypothesis;
  utterancesCopy = utterances;
  platterTranscriptItemsCopy = platterTranscriptItems;
  transcriptItemsCopy = transcriptItems;
  itemsCopy = items;
  v19 = [[SiriSharedUILatencyViewModel alloc] initWithUserUtterance:0 shouldSuppress:0];
  v20 = [(SiriSharedUICompactViewModel *)self _initWithInputType:type resultTranscriptItems:itemsCopy conversationTranscriptItems:transcriptItemsCopy additionalPlatterTranscriptItems:platterTranscriptItemsCopy serverUtterances:utterancesCopy speechRecognitionHypothesis:hypothesisCopy latencyViewModel:v19];

  return v20;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"<%@ %p:", objc_opt_class(), self];
  [v3 appendString:@" inputType="];
  v4 = SiriSharedUIViewModelInputTypeGetDescription([(SiriSharedUICompactViewModel *)self inputType]);
  [v3 appendString:v4];

  [v3 appendString:@" resultTranscriptItems="];
  resultTranscriptItems = [(SiriSharedUICompactViewModel *)self resultTranscriptItems];
  v6 = [resultTranscriptItems description];
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
  conversationTranscriptItems = [(SiriSharedUICompactViewModel *)self conversationTranscriptItems];
  v10 = [conversationTranscriptItems description];
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
  additionalPlatterTranscriptItems = [(SiriSharedUICompactViewModel *)self additionalPlatterTranscriptItems];
  v14 = [additionalPlatterTranscriptItems description];
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
  serverUtterances = [(SiriSharedUICompactViewModel *)self serverUtterances];
  v18 = [serverUtterances description];
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
  speechRecognitionHypothesis = [(SiriSharedUICompactViewModel *)self speechRecognitionHypothesis];
  v22 = [speechRecognitionHypothesis description];
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
  latencyViewModel = [(SiriSharedUICompactViewModel *)self latencyViewModel];
  v26 = [latencyViewModel description];
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

- (id)_copyWithInputType:(int64_t)type resultTranscriptItems:(id)items conversationTranscriptItems:(id)transcriptItems additionalPlatterTranscriptItems:(id)platterTranscriptItems serverUtterances:(id)utterances speechRecognitionHypothesis:(id)hypothesis latencyViewUtterance:(id)utterance
{
  itemsCopy = items;
  transcriptItemsCopy = transcriptItems;
  platterTranscriptItemsCopy = platterTranscriptItems;
  utterancesCopy = utterances;
  hypothesisCopy = hypothesis;
  utteranceCopy = utterance;
  if (type != 1)
  {
    v23 = 1;
    goto LABEL_24;
  }

  v22 = [itemsCopy count];
  if (v22)
  {
    resultTranscriptItems = [(SiriSharedUICompactViewModel *)self resultTranscriptItems];
    if (![itemsCopy isEqualToArray:resultTranscriptItems])
    {
      v23 = 1;
LABEL_23:

      goto LABEL_24;
    }
  }

  v35 = [transcriptItemsCopy count];
  v36 = v22;
  if (!v35 || (-[SiriSharedUICompactViewModel conversationTranscriptItems](self, "conversationTranscriptItems"), v33 = objc_claimAutoreleasedReturnValue(), [transcriptItemsCopy isEqualToArray:?]))
  {
    v34 = resultTranscriptItems;
    v24 = [platterTranscriptItemsCopy valueForKeyPath:@"@unionOfArrays.self"];
    v31 = [v24 count];
    if (v31)
    {
      additionalPlatterTranscriptItems = [(SiriSharedUICompactViewModel *)self additionalPlatterTranscriptItems];
      if (([platterTranscriptItemsCopy isEqualToArray:?] & 1) == 0)
      {
        v32 = v24;
        v23 = 1;
        goto LABEL_17;
      }

      if (![utterancesCopy count])
      {
        v32 = v24;
        v23 = 0;
LABEL_17:
        resultTranscriptItems = v34;

        goto LABEL_20;
      }
    }

    else if (![utterancesCopy count])
    {

      v23 = 0;
      goto LABEL_19;
    }

    v32 = v24;
    serverUtterances = [(SiriSharedUICompactViewModel *)self serverUtterances];
    v23 = [utterancesCopy isEqualToArray:serverUtterances] ^ 1;

    if (v31)
    {
      goto LABEL_17;
    }

LABEL_19:
    resultTranscriptItems = v34;
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
  v27 = [[SiriSharedUILatencyViewModel alloc] initWithUserUtterance:utteranceCopy shouldSuppress:v23];
  v28 = [v26 _initWithInputType:type resultTranscriptItems:itemsCopy conversationTranscriptItems:transcriptItemsCopy additionalPlatterTranscriptItems:platterTranscriptItemsCopy serverUtterances:utterancesCopy speechRecognitionHypothesis:hypothesisCopy latencyViewModel:v27];

  return v28;
}

- (id)copyWithInputType:(int64_t)type resultTranscriptItems:(id)items conversationTranscriptItems:(id)transcriptItems serverUtterances:(id)utterances speechRecognitionHypothesis:(id)hypothesis
{
  hypothesisCopy = hypothesis;
  utterancesCopy = utterances;
  transcriptItemsCopy = transcriptItems;
  itemsCopy = items;
  additionalPlatterTranscriptItems = [(SiriSharedUICompactViewModel *)self additionalPlatterTranscriptItems];
  latencyViewModel = [(SiriSharedUICompactViewModel *)self latencyViewModel];
  userUtterance = [latencyViewModel userUtterance];
  v19 = [(SiriSharedUICompactViewModel *)self _copyWithInputType:type resultTranscriptItems:itemsCopy conversationTranscriptItems:transcriptItemsCopy additionalPlatterTranscriptItems:additionalPlatterTranscriptItems serverUtterances:utterancesCopy speechRecognitionHypothesis:hypothesisCopy latencyViewUtterance:userUtterance];

  return v19;
}

- (id)copyWithResultTranscriptItems:(id)items conversationTranscriptItems:(id)transcriptItems serverUtterances:(id)utterances speechRecognitionHypothesis:(id)hypothesis
{
  hypothesisCopy = hypothesis;
  utterancesCopy = utterances;
  transcriptItemsCopy = transcriptItems;
  itemsCopy = items;
  inputType = [(SiriSharedUICompactViewModel *)self inputType];
  additionalPlatterTranscriptItems = [(SiriSharedUICompactViewModel *)self additionalPlatterTranscriptItems];
  latencyViewModel = [(SiriSharedUICompactViewModel *)self latencyViewModel];
  userUtterance = [latencyViewModel userUtterance];
  v18 = [(SiriSharedUICompactViewModel *)self _copyWithInputType:inputType resultTranscriptItems:itemsCopy conversationTranscriptItems:transcriptItemsCopy additionalPlatterTranscriptItems:additionalPlatterTranscriptItems serverUtterances:utterancesCopy speechRecognitionHypothesis:hypothesisCopy latencyViewUtterance:userUtterance];

  return v18;
}

- (id)copyWithConversationTranscriptItems:(id)items serverUtterances:(id)utterances speechRecognitionHypothesis:(id)hypothesis latencyViewUtterance:(id)utterance
{
  utteranceCopy = utterance;
  hypothesisCopy = hypothesis;
  utterancesCopy = utterances;
  itemsCopy = items;
  inputType = [(SiriSharedUICompactViewModel *)self inputType];
  resultTranscriptItems = [(SiriSharedUICompactViewModel *)self resultTranscriptItems];
  additionalPlatterTranscriptItems = [(SiriSharedUICompactViewModel *)self additionalPlatterTranscriptItems];
  v17 = [(SiriSharedUICompactViewModel *)self _copyWithInputType:inputType resultTranscriptItems:resultTranscriptItems conversationTranscriptItems:itemsCopy additionalPlatterTranscriptItems:additionalPlatterTranscriptItems serverUtterances:utterancesCopy speechRecognitionHypothesis:hypothesisCopy latencyViewUtterance:utteranceCopy];

  return v17;
}

- (id)copyWithInputType:(int64_t)type
{
  resultTranscriptItems = [(SiriSharedUICompactViewModel *)self resultTranscriptItems];
  conversationTranscriptItems = [(SiriSharedUICompactViewModel *)self conversationTranscriptItems];
  additionalPlatterTranscriptItems = [(SiriSharedUICompactViewModel *)self additionalPlatterTranscriptItems];
  serverUtterances = [(SiriSharedUICompactViewModel *)self serverUtterances];
  speechRecognitionHypothesis = [(SiriSharedUICompactViewModel *)self speechRecognitionHypothesis];
  latencyViewModel = [(SiriSharedUICompactViewModel *)self latencyViewModel];
  userUtterance = [latencyViewModel userUtterance];
  v12 = [(SiriSharedUICompactViewModel *)self _copyWithInputType:type resultTranscriptItems:resultTranscriptItems conversationTranscriptItems:conversationTranscriptItems additionalPlatterTranscriptItems:additionalPlatterTranscriptItems serverUtterances:serverUtterances speechRecognitionHypothesis:speechRecognitionHypothesis latencyViewUtterance:userUtterance];

  return v12;
}

- (id)copyWithResultTranscriptItems:(id)items
{
  itemsCopy = items;
  inputType = [(SiriSharedUICompactViewModel *)self inputType];
  conversationTranscriptItems = [(SiriSharedUICompactViewModel *)self conversationTranscriptItems];
  additionalPlatterTranscriptItems = [(SiriSharedUICompactViewModel *)self additionalPlatterTranscriptItems];
  serverUtterances = [(SiriSharedUICompactViewModel *)self serverUtterances];
  speechRecognitionHypothesis = [(SiriSharedUICompactViewModel *)self speechRecognitionHypothesis];
  latencyViewModel = [(SiriSharedUICompactViewModel *)self latencyViewModel];
  userUtterance = [latencyViewModel userUtterance];
  v12 = [(SiriSharedUICompactViewModel *)self _copyWithInputType:inputType resultTranscriptItems:itemsCopy conversationTranscriptItems:conversationTranscriptItems additionalPlatterTranscriptItems:additionalPlatterTranscriptItems serverUtterances:serverUtterances speechRecognitionHypothesis:speechRecognitionHypothesis latencyViewUtterance:userUtterance];

  return v12;
}

- (id)copyWithAdditionalPlatterTranscriptItems:(id)items
{
  itemsCopy = items;
  inputType = [(SiriSharedUICompactViewModel *)self inputType];
  resultTranscriptItems = [(SiriSharedUICompactViewModel *)self resultTranscriptItems];
  conversationTranscriptItems = [(SiriSharedUICompactViewModel *)self conversationTranscriptItems];
  serverUtterances = [(SiriSharedUICompactViewModel *)self serverUtterances];
  speechRecognitionHypothesis = [(SiriSharedUICompactViewModel *)self speechRecognitionHypothesis];
  latencyViewModel = [(SiriSharedUICompactViewModel *)self latencyViewModel];
  userUtterance = [latencyViewModel userUtterance];
  v12 = [(SiriSharedUICompactViewModel *)self _copyWithInputType:inputType resultTranscriptItems:resultTranscriptItems conversationTranscriptItems:conversationTranscriptItems additionalPlatterTranscriptItems:itemsCopy serverUtterances:serverUtterances speechRecognitionHypothesis:speechRecognitionHypothesis latencyViewUtterance:userUtterance];

  return v12;
}

- (id)copyWithSpeechRecognitionHypothesis:(id)hypothesis
{
  hypothesisCopy = hypothesis;
  v5 = objc_alloc(objc_opt_class());
  inputType = [(SiriSharedUICompactViewModel *)self inputType];
  resultTranscriptItems = [(SiriSharedUICompactViewModel *)self resultTranscriptItems];
  conversationTranscriptItems = [(SiriSharedUICompactViewModel *)self conversationTranscriptItems];
  additionalPlatterTranscriptItems = [(SiriSharedUICompactViewModel *)self additionalPlatterTranscriptItems];
  serverUtterances = [(SiriSharedUICompactViewModel *)self serverUtterances];
  latencyViewModel = [(SiriSharedUICompactViewModel *)self latencyViewModel];
  v12 = [v5 _initWithInputType:inputType resultTranscriptItems:resultTranscriptItems conversationTranscriptItems:conversationTranscriptItems additionalPlatterTranscriptItems:additionalPlatterTranscriptItems serverUtterances:serverUtterances speechRecognitionHypothesis:hypothesisCopy latencyViewModel:latencyViewModel];

  return v12;
}

- (id)copyWithServerUtterances:(id)utterances speechRecognitionHypothesis:(id)hypothesis latencyViewUtterance:(id)utterance
{
  utteranceCopy = utterance;
  hypothesisCopy = hypothesis;
  utterancesCopy = utterances;
  inputType = [(SiriSharedUICompactViewModel *)self inputType];
  resultTranscriptItems = [(SiriSharedUICompactViewModel *)self resultTranscriptItems];
  conversationTranscriptItems = [(SiriSharedUICompactViewModel *)self conversationTranscriptItems];
  additionalPlatterTranscriptItems = [(SiriSharedUICompactViewModel *)self additionalPlatterTranscriptItems];
  v15 = [(SiriSharedUICompactViewModel *)self _copyWithInputType:inputType resultTranscriptItems:resultTranscriptItems conversationTranscriptItems:conversationTranscriptItems additionalPlatterTranscriptItems:additionalPlatterTranscriptItems serverUtterances:utterancesCopy speechRecognitionHypothesis:hypothesisCopy latencyViewUtterance:utteranceCopy];

  return v15;
}

- (id)copyWithLatencyViewModel:(id)model
{
  modelCopy = model;
  v5 = objc_alloc(objc_opt_class());
  inputType = [(SiriSharedUICompactViewModel *)self inputType];
  resultTranscriptItems = [(SiriSharedUICompactViewModel *)self resultTranscriptItems];
  conversationTranscriptItems = [(SiriSharedUICompactViewModel *)self conversationTranscriptItems];
  additionalPlatterTranscriptItems = [(SiriSharedUICompactViewModel *)self additionalPlatterTranscriptItems];
  serverUtterances = [(SiriSharedUICompactViewModel *)self serverUtterances];
  speechRecognitionHypothesis = [(SiriSharedUICompactViewModel *)self speechRecognitionHypothesis];
  v12 = [v5 _initWithInputType:inputType resultTranscriptItems:resultTranscriptItems conversationTranscriptItems:conversationTranscriptItems additionalPlatterTranscriptItems:additionalPlatterTranscriptItems serverUtterances:serverUtterances speechRecognitionHypothesis:speechRecognitionHypothesis latencyViewModel:modelCopy];

  return v12;
}

- (id)copyWithLatencyIntentSummary:(id)summary
{
  summaryCopy = summary;
  v5 = objc_alloc(objc_opt_class());
  inputType = [(SiriSharedUICompactViewModel *)self inputType];
  resultTranscriptItems = [(SiriSharedUICompactViewModel *)self resultTranscriptItems];
  conversationTranscriptItems = [(SiriSharedUICompactViewModel *)self conversationTranscriptItems];
  additionalPlatterTranscriptItems = [(SiriSharedUICompactViewModel *)self additionalPlatterTranscriptItems];
  serverUtterances = [(SiriSharedUICompactViewModel *)self serverUtterances];
  speechRecognitionHypothesis = [(SiriSharedUICompactViewModel *)self speechRecognitionHypothesis];
  v12 = [[SiriSharedUILatencyViewModel alloc] initWithUserUtterance:summaryCopy shouldSuppress:0];

  v13 = [v5 _initWithInputType:inputType resultTranscriptItems:resultTranscriptItems conversationTranscriptItems:conversationTranscriptItems additionalPlatterTranscriptItems:additionalPlatterTranscriptItems serverUtterances:serverUtterances speechRecognitionHypothesis:speechRecognitionHypothesis latencyViewModel:v12];
  return v13;
}

@end