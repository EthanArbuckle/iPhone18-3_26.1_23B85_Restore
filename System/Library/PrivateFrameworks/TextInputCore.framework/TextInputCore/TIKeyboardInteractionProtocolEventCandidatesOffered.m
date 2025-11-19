@interface TIKeyboardInteractionProtocolEventCandidatesOffered
- (NSString)description;
- (TIKeyboardInteractionProtocolEventCandidatesOffered)initWithCandidatesOffered:(id)a3 keyboardState:(id)a4;
- (TIKeyboardInteractionProtocolEventCandidatesOffered)initWithCoder:(id)a3;
- (void)adjustSourceMaskForCandidate:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)sendTo:(id)a3;
@end

@implementation TIKeyboardInteractionProtocolEventCandidatesOffered

- (NSString)description
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [(TIAutocorrectionList *)self->_candidates corrections];
  v5 = [v4 autocorrection];
  if (v5)
  {
    v6 = v5;
    v7 = [(TIAutocorrectionList *)self->_candidates corrections];
    v8 = [v7 autocorrection];
    v9 = [v8 candidate];
    v10 = [v9 length];

    if (v10)
    {
      v11 = [(TIAutocorrectionList *)self->_candidates corrections];
      v12 = [v11 autocorrection];
      v13 = [v12 candidate];
      [v3 appendString:v13];

      [v3 appendString:@": "];
    }
  }

  else
  {
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = [(TIAutocorrectionList *)self->_candidates predictions];
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v23 + 1) + 8 * i) candidate];
        [v3 appendString:v19];

        [v3 appendString:@" "];
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"<Candidates Offered: %@>", v3];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)sendTo:(id)a3
{
  candidates = self->_candidates;
  v5 = a3;
  v6 = [(TIKeyboardInteractionProtocolBase *)self keyboardState];
  [v5 candidatesOffered:candidates keyboardState:v6];
}

- (void)adjustSourceMaskForCandidate:(id)a3
{
  v10 = a3;
  v3 = [v10 usageTrackingMask];
  v4 = [v10 sourceMask];
  if ((v3 & 0x40000) != 0)
  {
    v5 = 0x20000;
  }

  else
  {
    v5 = 0x8000;
  }

  v6 = v5 | v4 & 0xFFFFFFFE;
  if ((v3 & 0x40000) != 0)
  {
    v7 = 0x40000;
  }

  else
  {
    v7 = 0x10000;
  }

  if ((v4 & 1) == 0)
  {
    v6 = v4;
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

  [v10 setSourceMask:v9];
}

- (TIKeyboardInteractionProtocolEventCandidatesOffered)initWithCoder:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = TIKeyboardInteractionProtocolEventCandidatesOffered;
  v5 = [(TIKeyboardInteractionProtocolBase *)&v21 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"candidates"];
    candidates = v5->_candidates;
    v5->_candidates = v6;
  }

  v8 = [(TIAutocorrectionList *)v5->_candidates corrections];
  v9 = [v8 autocorrection];
  [(TIKeyboardInteractionProtocolEventCandidatesOffered *)v5 adjustSourceMaskForCandidate:v9];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [(TIAutocorrectionList *)v5->_candidates predictions];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
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
          objc_enumerationMutation(v10);
        }

        [(TIKeyboardInteractionProtocolEventCandidatesOffered *)v5 adjustSourceMaskForCandidate:*(*(&v17 + 1) + 8 * i)];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInteractionProtocolEventCandidatesOffered;
  v4 = a3;
  [(TIKeyboardInteractionProtocolBase *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_candidates forKey:{@"candidates", v5.receiver, v5.super_class}];
}

- (TIKeyboardInteractionProtocolEventCandidatesOffered)initWithCandidatesOffered:(id)a3 keyboardState:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TIKeyboardInteractionProtocolEventCandidatesOffered;
  v8 = [(TIKeyboardInteractionProtocolBase *)&v11 initWithKeyboardState:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_candidates, a3);
  }

  return v9;
}

@end