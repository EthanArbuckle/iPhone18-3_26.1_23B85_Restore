@interface TIKeyboardInteractionProtocolEventCandidateAccepted
- (NSString)description;
- (TIKeyboardInteractionProtocolEventCandidateAccepted)initWithCandidateAccepted:(id)accepted withInput:(id)input documentState:(id)state inputContext:(id)context inputStem:(id)stem predictionBarHit:(BOOL)hit useCandidateSelection:(BOOL)selection candidateIndex:(int64_t)self0 keyboardState:(id)self1;
- (TIKeyboardInteractionProtocolEventCandidateAccepted)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)sendTo:(id)to;
@end

@implementation TIKeyboardInteractionProtocolEventCandidateAccepted

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  candidate = [(TIKeyboardCandidate *)self->_candWord candidate];
  v4 = [v2 stringWithFormat:@"<Candidates accepted: %@>", candidate];

  return v4;
}

- (void)sendTo:(id)to
{
  candWord = self->_candWord;
  input = self->_input;
  documentState = self->_documentState;
  context = self->_context;
  inputStem = self->_inputStem;
  predictionBarHit = self->_predictionBarHit;
  useCandidateSelection = self->_useCandidateSelection;
  candidateIndex = self->_candidateIndex;
  toCopy = to;
  keyboardState = [(TIKeyboardInteractionProtocolBase *)self keyboardState];
  LOBYTE(v13) = useCandidateSelection;
  [toCopy candidateAccepted:candWord withInput:input documentState:documentState inputContext:context inputStem:inputStem predictionBarHit:predictionBarHit useCandidateSelection:v13 candidateIndex:candidateIndex keyboardState:keyboardState];
}

- (TIKeyboardInteractionProtocolEventCandidateAccepted)initWithCoder:(id)coder
{
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = TIKeyboardInteractionProtocolEventCandidateAccepted;
  v5 = [(TIKeyboardInteractionProtocolBase *)&v36 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"candWord"];
    candWord = v5->_candWord;
    v5->_candWord = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"input"];
    input = v5->_input;
    v5->_input = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"documentState"];
    documentState = v5->_documentState;
    v5->_documentState = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    context = v5->_context;
    v5->_context = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputStem"];
    inputStem = v5->_inputStem;
    v5->_inputStem = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predictionBarHit"];
    v5->_predictionBarHit = [v16 BOOLValue];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"useCandidateSelection"];
    v5->_useCandidateSelection = [v17 BOOLValue];

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"candidateIndex"];
    v5->_candidateIndex = [v18 integerValue];
  }

  v19 = v5->_candWord;
  if (v19)
  {
    usageTrackingMask = [(TIKeyboardCandidate *)v19 usageTrackingMask];
    sourceMask = [(TIKeyboardCandidate *)v5->_candWord sourceMask];
    if ((usageTrackingMask & 0x40000) != 0)
    {
      v22 = 0x20000;
    }

    else
    {
      v22 = 0x8000;
    }

    v23 = sourceMask & 0xFFFFFFFE | v22;
    if ((usageTrackingMask & 0x40000) != 0)
    {
      v24 = 0x40000;
    }

    else
    {
      v24 = 0x10000;
    }

    if ((sourceMask & 1) == 0)
    {
      v23 = sourceMask;
    }

    v25 = v23 & 0xFFFFFFFD | v24;
    if ((v23 & 2) != 0)
    {
      v26 = v25;
    }

    else
    {
      v26 = v23;
    }

    v27 = v5->_candWord;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v26 | 4;
    }

    else
    {
      v28 = v26;
    }

    if ([(TIKeyboardCandidate *)v5->_candWord isResponseKitCandidate])
    {
      v29 = v28 | 0x2000;
    }

    else
    {
      v29 = v28;
    }

    v30 = v5->_candWord;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      proactiveTrigger = [(TIKeyboardCandidate *)v5->_candWord proactiveTrigger];

      if (proactiveTrigger)
      {
        v29 |= 0x40u;
      }
    }

    candidate = [(TIKeyboardCandidate *)v5->_candWord candidate];
    _containsEmoji = [candidate _containsEmoji];

    if (_containsEmoji)
    {
      v34 = v29 | 0x4000;
    }

    else
    {
      v34 = v29;
    }

    [(TIKeyboardCandidate *)v5->_candWord setSourceMask:v34];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInteractionProtocolEventCandidateAccepted;
  coderCopy = coder;
  [(TIKeyboardInteractionProtocolBase *)&v8 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_candWord forKey:{@"candWord", v8.receiver, v8.super_class}];
  [coderCopy encodeObject:self->_input forKey:@"input"];
  [coderCopy encodeObject:self->_documentState forKey:@"documentState"];
  [coderCopy encodeObject:self->_context forKey:@"context"];
  [coderCopy encodeObject:self->_inputStem forKey:@"inputStem"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_predictionBarHit];
  [coderCopy encodeObject:v5 forKey:@"predictionBarHit"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_useCandidateSelection];
  [coderCopy encodeObject:v6 forKey:@"useCandidateSelection"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_candidateIndex];
  [coderCopy encodeObject:v7 forKey:@"candidateIndex"];
}

- (TIKeyboardInteractionProtocolEventCandidateAccepted)initWithCandidateAccepted:(id)accepted withInput:(id)input documentState:(id)state inputContext:(id)context inputStem:(id)stem predictionBarHit:(BOOL)hit useCandidateSelection:(BOOL)selection candidateIndex:(int64_t)self0 keyboardState:(id)self1
{
  acceptedCopy = accepted;
  inputCopy = input;
  stateCopy = state;
  contextCopy = context;
  stemCopy = stem;
  v26.receiver = self;
  v26.super_class = TIKeyboardInteractionProtocolEventCandidateAccepted;
  v20 = [(TIKeyboardInteractionProtocolBase *)&v26 initWithKeyboardState:keyboardState];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_candWord, accepted);
    objc_storeStrong(&v21->_input, input);
    objc_storeStrong(&v21->_documentState, state);
    objc_storeStrong(&v21->_context, context);
    objc_storeStrong(&v21->_inputStem, stem);
    v21->_predictionBarHit = hit;
    v21->_useCandidateSelection = selection;
    v21->_candidateIndex = index;
  }

  return v21;
}

@end