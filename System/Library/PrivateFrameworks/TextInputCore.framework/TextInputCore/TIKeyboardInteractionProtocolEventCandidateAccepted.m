@interface TIKeyboardInteractionProtocolEventCandidateAccepted
- (NSString)description;
- (TIKeyboardInteractionProtocolEventCandidateAccepted)initWithCandidateAccepted:(id)a3 withInput:(id)a4 documentState:(id)a5 inputContext:(id)a6 inputStem:(id)a7 predictionBarHit:(BOOL)a8 useCandidateSelection:(BOOL)a9 candidateIndex:(int64_t)a10 keyboardState:(id)a11;
- (TIKeyboardInteractionProtocolEventCandidateAccepted)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)sendTo:(id)a3;
@end

@implementation TIKeyboardInteractionProtocolEventCandidateAccepted

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(TIKeyboardCandidate *)self->_candWord candidate];
  v4 = [v2 stringWithFormat:@"<Candidates accepted: %@>", v3];

  return v4;
}

- (void)sendTo:(id)a3
{
  candWord = self->_candWord;
  input = self->_input;
  documentState = self->_documentState;
  context = self->_context;
  inputStem = self->_inputStem;
  predictionBarHit = self->_predictionBarHit;
  useCandidateSelection = self->_useCandidateSelection;
  candidateIndex = self->_candidateIndex;
  v12 = a3;
  v14 = [(TIKeyboardInteractionProtocolBase *)self keyboardState];
  LOBYTE(v13) = useCandidateSelection;
  [v12 candidateAccepted:candWord withInput:input documentState:documentState inputContext:context inputStem:inputStem predictionBarHit:predictionBarHit useCandidateSelection:v13 candidateIndex:candidateIndex keyboardState:v14];
}

- (TIKeyboardInteractionProtocolEventCandidateAccepted)initWithCoder:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = TIKeyboardInteractionProtocolEventCandidateAccepted;
  v5 = [(TIKeyboardInteractionProtocolBase *)&v36 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"candWord"];
    candWord = v5->_candWord;
    v5->_candWord = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"input"];
    input = v5->_input;
    v5->_input = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"documentState"];
    documentState = v5->_documentState;
    v5->_documentState = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    context = v5->_context;
    v5->_context = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputStem"];
    inputStem = v5->_inputStem;
    v5->_inputStem = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predictionBarHit"];
    v5->_predictionBarHit = [v16 BOOLValue];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"useCandidateSelection"];
    v5->_useCandidateSelection = [v17 BOOLValue];

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"candidateIndex"];
    v5->_candidateIndex = [v18 integerValue];
  }

  v19 = v5->_candWord;
  if (v19)
  {
    v20 = [(TIKeyboardCandidate *)v19 usageTrackingMask];
    v21 = [(TIKeyboardCandidate *)v5->_candWord sourceMask];
    if ((v20 & 0x40000) != 0)
    {
      v22 = 0x20000;
    }

    else
    {
      v22 = 0x8000;
    }

    v23 = v21 & 0xFFFFFFFE | v22;
    if ((v20 & 0x40000) != 0)
    {
      v24 = 0x40000;
    }

    else
    {
      v24 = 0x10000;
    }

    if ((v21 & 1) == 0)
    {
      v23 = v21;
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
      v31 = [(TIKeyboardCandidate *)v5->_candWord proactiveTrigger];

      if (v31)
      {
        v29 |= 0x40u;
      }
    }

    v32 = [(TIKeyboardCandidate *)v5->_candWord candidate];
    v33 = [v32 _containsEmoji];

    if (v33)
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

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInteractionProtocolEventCandidateAccepted;
  v4 = a3;
  [(TIKeyboardInteractionProtocolBase *)&v8 encodeWithCoder:v4];
  [v4 encodeObject:self->_candWord forKey:{@"candWord", v8.receiver, v8.super_class}];
  [v4 encodeObject:self->_input forKey:@"input"];
  [v4 encodeObject:self->_documentState forKey:@"documentState"];
  [v4 encodeObject:self->_context forKey:@"context"];
  [v4 encodeObject:self->_inputStem forKey:@"inputStem"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_predictionBarHit];
  [v4 encodeObject:v5 forKey:@"predictionBarHit"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_useCandidateSelection];
  [v4 encodeObject:v6 forKey:@"useCandidateSelection"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_candidateIndex];
  [v4 encodeObject:v7 forKey:@"candidateIndex"];
}

- (TIKeyboardInteractionProtocolEventCandidateAccepted)initWithCandidateAccepted:(id)a3 withInput:(id)a4 documentState:(id)a5 inputContext:(id)a6 inputStem:(id)a7 predictionBarHit:(BOOL)a8 useCandidateSelection:(BOOL)a9 candidateIndex:(int64_t)a10 keyboardState:(id)a11
{
  v17 = a3;
  v25 = a4;
  v24 = a5;
  v18 = a6;
  v19 = a7;
  v26.receiver = self;
  v26.super_class = TIKeyboardInteractionProtocolEventCandidateAccepted;
  v20 = [(TIKeyboardInteractionProtocolBase *)&v26 initWithKeyboardState:a11];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_candWord, a3);
    objc_storeStrong(&v21->_input, a4);
    objc_storeStrong(&v21->_documentState, a5);
    objc_storeStrong(&v21->_context, a6);
    objc_storeStrong(&v21->_inputStem, a7);
    v21->_predictionBarHit = a8;
    v21->_useCandidateSelection = a9;
    v21->_candidateIndex = a10;
  }

  return v21;
}

@end