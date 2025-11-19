@interface SIRINLUDelegatedUserDialogAct
- (SIRINLUDelegatedUserDialogAct)initWithAsrHypothesisIndex:(int)a3 rewrittenUtterace:(id)a4 externalParserId:(id)a5;
- (SIRINLUDelegatedUserDialogAct)initWithAsrHypothesisIndex:(int)a3 rewrittenUtterace:(id)a4 externalParserId:(id)a5 spans:(id)a6;
- (SIRINLUDelegatedUserDialogAct)initWithAsrHypothesisIndex:(int)a3 rewrittenUtterace:(id)a4 externalParserId:(id)a5 spans:(id)a6 rewriteMessage:(id)a7;
- (SIRINLUDelegatedUserDialogAct)initWithAsrHypothesisIndex:(int)a3 rewrittenUtterace:(id)a4 externalParserId:(id)a5 spans:(id)a6 rewriteMessage:(id)a7 referenceContext:(id)a8;
- (SIRINLUDelegatedUserDialogAct)initWithAsrHypothesisIndex:(int)a3 rewrittenUtterace:(id)a4 externalParserId:(id)a5 spans:(id)a6 rewriteMessages:(id)a7;
- (SIRINLUDelegatedUserDialogAct)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLUDelegatedUserDialogAct

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  v14 = [(SIRINLUDelegatedUserDialogAct *)self asrHypothesisIndex];
  v3 = [(SIRINLUDelegatedUserDialogAct *)self rewrittenUtterance];
  v16 = [(SIRINLUDelegatedUserDialogAct *)self rewrite];
  v4 = [v16 description];
  v5 = [(SIRINLUDelegatedUserDialogAct *)self externalParserId];
  v6 = [(SIRINLUDelegatedUserDialogAct *)self spans];
  v7 = [SIRINLUPrintUtils indentArray:v6 numSpaces:4];
  v8 = [(SIRINLUDelegatedUserDialogAct *)self rewrites];
  v9 = [SIRINLUPrintUtils indentArray:v8 numSpaces:4];
  v10 = [(SIRINLUDelegatedUserDialogAct *)self referenceContext];
  v11 = [v10 description];
  v12 = [v15 stringWithFormat:@"{DelegatedUserDialogAct:\n  asrHypothesisIndex: %d\n  rewrittenUtterance: %@\n  rewrite: %@\n  externalParserId: %@\n  spans: %@\n  rewrites: %@\n  referenceContext: %@\n}", v14, v3, v4, v5, v7, v9, v11];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  asrHypothesisIndex = self->_asrHypothesisIndex;
  v6 = a3;
  v13 = [v4 numberWithInt:asrHypothesisIndex];
  [v6 encodeObject:v13 forKey:@"asrHypothesisIndex"];
  v7 = [(SIRINLUDelegatedUserDialogAct *)self rewrittenUtterance];
  [v6 encodeObject:v7 forKey:@"rewrittenUtterance"];

  v8 = [(SIRINLUDelegatedUserDialogAct *)self externalParserId];
  [v6 encodeObject:v8 forKey:@"externalParserId"];

  v9 = [(SIRINLUDelegatedUserDialogAct *)self spans];
  [v6 encodeObject:v9 forKey:@"spans"];

  v10 = [(SIRINLUDelegatedUserDialogAct *)self rewrites];
  [v6 encodeObject:v10 forKey:@"rewrites"];

  v11 = [(SIRINLUDelegatedUserDialogAct *)self rewrite];
  [v6 encodeObject:v11 forKey:@"rewrite"];

  v12 = [(SIRINLUDelegatedUserDialogAct *)self referenceContext];
  [v6 encodeObject:v12 forKey:@"referenceContext"];
}

- (SIRINLUDelegatedUserDialogAct)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = SIRINLUDelegatedUserDialogAct;
  v5 = [(SIRINLUDelegatedUserDialogAct *)&v26 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"asrHypothesisIndex"];
    v5->_asrHypothesisIndex = [v6 intValue];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rewrittenUtterance"];
    rewrittenUtterance = v5->_rewrittenUtterance;
    v5->_rewrittenUtterance = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalParserId"];
    externalParserId = v5->_externalParserId;
    v5->_externalParserId = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"spans"];
    spans = v5->_spans;
    v5->_spans = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"rewrites"];
    rewrites = v5->_rewrites;
    v5->_rewrites = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rewrite"];
    rewrite = v5->_rewrite;
    v5->_rewrite = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referenceContext"];
    referenceContext = v5->_referenceContext;
    v5->_referenceContext = v23;
  }

  return v5;
}

- (SIRINLUDelegatedUserDialogAct)initWithAsrHypothesisIndex:(int)a3 rewrittenUtterace:(id)a4 externalParserId:(id)a5 spans:(id)a6 rewriteMessage:(id)a7
{
  v26[1] = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v25.receiver = self;
  v25.super_class = SIRINLUDelegatedUserDialogAct;
  v17 = [(SIRINLUDelegatedUserDialogAct *)&v25 init];
  v18 = v17;
  if (v17)
  {
    v17->_asrHypothesisIndex = a3;
    objc_storeStrong(&v17->_rewrittenUtterance, a4);
    objc_storeStrong(&v18->_externalParserId, a5);
    objc_storeStrong(&v18->_spans, a6);
    rewrites = v18->_rewrites;
    v18->_rewrites = MEMORY[0x1E695E0F0];

    if (v16)
    {
      v26[0] = v16;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      v21 = v18->_rewrites;
      v18->_rewrites = v20;
    }

    objc_storeStrong(&v18->_rewrite, a7);
    referenceContext = v18->_referenceContext;
    v18->_referenceContext = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v18;
}

- (SIRINLUDelegatedUserDialogAct)initWithAsrHypothesisIndex:(int)a3 rewrittenUtterace:(id)a4 externalParserId:(id)a5 spans:(id)a6 rewriteMessage:(id)a7 referenceContext:(id)a8
{
  v28[1] = *MEMORY[0x1E69E9840];
  v26 = a4;
  v25 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v27.receiver = self;
  v27.super_class = SIRINLUDelegatedUserDialogAct;
  v18 = [(SIRINLUDelegatedUserDialogAct *)&v27 init];
  v19 = v18;
  if (v18)
  {
    v18->_asrHypothesisIndex = a3;
    objc_storeStrong(&v18->_rewrittenUtterance, a4);
    objc_storeStrong(&v19->_externalParserId, a5);
    objc_storeStrong(&v19->_spans, a6);
    rewrites = v19->_rewrites;
    v19->_rewrites = MEMORY[0x1E695E0F0];

    if (v16)
    {
      v28[0] = v16;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:{1, v25, v26}];
      v22 = v19->_rewrites;
      v19->_rewrites = v21;
    }

    objc_storeStrong(&v19->_rewrite, a7);
    objc_storeStrong(&v19->_referenceContext, a8);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v19;
}

- (SIRINLUDelegatedUserDialogAct)initWithAsrHypothesisIndex:(int)a3 rewrittenUtterace:(id)a4 externalParserId:(id)a5 spans:(id)a6 rewriteMessages:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = SIRINLUDelegatedUserDialogAct;
  v17 = [(SIRINLUDelegatedUserDialogAct *)&v22 init];
  v18 = v17;
  if (v17)
  {
    v17->_asrHypothesisIndex = a3;
    objc_storeStrong(&v17->_rewrittenUtterance, a4);
    objc_storeStrong(&v18->_externalParserId, a5);
    objc_storeStrong(&v18->_spans, a6);
    objc_storeStrong(&v18->_rewrites, a7);
    rewrite = v18->_rewrite;
    v18->_rewrite = 0;

    referenceContext = v18->_referenceContext;
    v18->_referenceContext = 0;
  }

  return v18;
}

- (SIRINLUDelegatedUserDialogAct)initWithAsrHypothesisIndex:(int)a3 rewrittenUtterace:(id)a4 externalParserId:(id)a5 spans:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = SIRINLUDelegatedUserDialogAct;
  v14 = [(SIRINLUDelegatedUserDialogAct *)&v20 init];
  v15 = v14;
  if (v14)
  {
    v14->_asrHypothesisIndex = a3;
    objc_storeStrong(&v14->_rewrittenUtterance, a4);
    objc_storeStrong(&v15->_externalParserId, a5);
    objc_storeStrong(&v15->_spans, a6);
    rewrites = v15->_rewrites;
    v15->_rewrites = MEMORY[0x1E695E0F0];

    rewrite = v15->_rewrite;
    v15->_rewrite = 0;

    referenceContext = v15->_referenceContext;
    v15->_referenceContext = 0;
  }

  return v15;
}

- (SIRINLUDelegatedUserDialogAct)initWithAsrHypothesisIndex:(int)a3 rewrittenUtterace:(id)a4 externalParserId:(id)a5
{
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = SIRINLUDelegatedUserDialogAct;
  v11 = [(SIRINLUDelegatedUserDialogAct *)&v19 init];
  v12 = v11;
  if (v11)
  {
    v11->_asrHypothesisIndex = a3;
    objc_storeStrong(&v11->_rewrittenUtterance, a4);
    objc_storeStrong(&v12->_externalParserId, a5);
    spans = v12->_spans;
    v14 = MEMORY[0x1E695E0F0];
    v12->_spans = MEMORY[0x1E695E0F0];

    rewrites = v12->_rewrites;
    v12->_rewrites = v14;

    rewrite = v12->_rewrite;
    v12->_rewrite = 0;

    referenceContext = v12->_referenceContext;
    v12->_referenceContext = 0;
  }

  return v12;
}

@end