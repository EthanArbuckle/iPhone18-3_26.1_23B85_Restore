@interface TIKeyboardInteractionProtocolEventCandidatesOffered
- (NSString)description;
- (TIKeyboardInteractionProtocolEventCandidatesOffered)initWithCandidatesOffered:(id)offered keyboardState:(id)state;
- (TIKeyboardInteractionProtocolEventCandidatesOffered)initWithCoder:(id)coder;
- (void)adjustSourceMaskForCandidate:(id)candidate;
- (void)encodeWithCoder:(id)coder;
- (void)sendTo:(id)to;
@end

@implementation TIKeyboardInteractionProtocolEventCandidatesOffered

- (NSString)description
{
  v28 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  corrections = [(TIAutocorrectionList *)self->_candidates corrections];
  autocorrection = [corrections autocorrection];
  if (autocorrection)
  {
    v6 = autocorrection;
    corrections2 = [(TIAutocorrectionList *)self->_candidates corrections];
    autocorrection2 = [corrections2 autocorrection];
    candidate = [autocorrection2 candidate];
    v10 = [candidate length];

    if (v10)
    {
      corrections3 = [(TIAutocorrectionList *)self->_candidates corrections];
      autocorrection3 = [corrections3 autocorrection];
      candidate2 = [autocorrection3 candidate];
      [string appendString:candidate2];

      [string appendString:@": "];
    }
  }

  else
  {
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  predictions = [(TIAutocorrectionList *)self->_candidates predictions];
  v15 = [predictions countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(predictions);
        }

        candidate3 = [*(*(&v23 + 1) + 8 * i) candidate];
        [string appendString:candidate3];

        [string appendString:@" "];
      }

      v16 = [predictions countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"<Candidates Offered: %@>", string];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)sendTo:(id)to
{
  candidates = self->_candidates;
  toCopy = to;
  keyboardState = [(TIKeyboardInteractionProtocolBase *)self keyboardState];
  [toCopy candidatesOffered:candidates keyboardState:keyboardState];
}

- (void)adjustSourceMaskForCandidate:(id)candidate
{
  candidateCopy = candidate;
  usageTrackingMask = [candidateCopy usageTrackingMask];
  sourceMask = [candidateCopy sourceMask];
  if ((usageTrackingMask & 0x40000) != 0)
  {
    v5 = 0x20000;
  }

  else
  {
    v5 = 0x8000;
  }

  v6 = v5 | sourceMask & 0xFFFFFFFE;
  if ((usageTrackingMask & 0x40000) != 0)
  {
    v7 = 0x40000;
  }

  else
  {
    v7 = 0x10000;
  }

  if ((sourceMask & 1) == 0)
  {
    v6 = sourceMask;
  }

  v8 = v6 & 0xFFFFFFFD | v7;
  if ((v6 & 2) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  [candidateCopy setSourceMask:v9];
}

- (TIKeyboardInteractionProtocolEventCandidatesOffered)initWithCoder:(id)coder
{
  v23 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = TIKeyboardInteractionProtocolEventCandidatesOffered;
  v5 = [(TIKeyboardInteractionProtocolBase *)&v21 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"candidates"];
    candidates = v5->_candidates;
    v5->_candidates = v6;
  }

  corrections = [(TIAutocorrectionList *)v5->_candidates corrections];
  autocorrection = [corrections autocorrection];
  [(TIKeyboardInteractionProtocolEventCandidatesOffered *)v5 adjustSourceMaskForCandidate:autocorrection];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  predictions = [(TIAutocorrectionList *)v5->_candidates predictions];
  v11 = [predictions countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(predictions);
        }

        [(TIKeyboardInteractionProtocolEventCandidatesOffered *)v5 adjustSourceMaskForCandidate:*(*(&v17 + 1) + 8 * i)];
      }

      v12 = [predictions countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInteractionProtocolEventCandidatesOffered;
  coderCopy = coder;
  [(TIKeyboardInteractionProtocolBase *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_candidates forKey:{@"candidates", v5.receiver, v5.super_class}];
}

- (TIKeyboardInteractionProtocolEventCandidatesOffered)initWithCandidatesOffered:(id)offered keyboardState:(id)state
{
  offeredCopy = offered;
  v11.receiver = self;
  v11.super_class = TIKeyboardInteractionProtocolEventCandidatesOffered;
  v8 = [(TIKeyboardInteractionProtocolBase *)&v11 initWithKeyboardState:state];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_candidates, offered);
  }

  return v9;
}

@end