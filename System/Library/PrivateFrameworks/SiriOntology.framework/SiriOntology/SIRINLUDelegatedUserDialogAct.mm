@interface SIRINLUDelegatedUserDialogAct
- (SIRINLUDelegatedUserDialogAct)initWithAsrHypothesisIndex:(int)index rewrittenUtterace:(id)utterace externalParserId:(id)id;
- (SIRINLUDelegatedUserDialogAct)initWithAsrHypothesisIndex:(int)index rewrittenUtterace:(id)utterace externalParserId:(id)id spans:(id)spans;
- (SIRINLUDelegatedUserDialogAct)initWithAsrHypothesisIndex:(int)index rewrittenUtterace:(id)utterace externalParserId:(id)id spans:(id)spans rewriteMessage:(id)message;
- (SIRINLUDelegatedUserDialogAct)initWithAsrHypothesisIndex:(int)index rewrittenUtterace:(id)utterace externalParserId:(id)id spans:(id)spans rewriteMessage:(id)message referenceContext:(id)context;
- (SIRINLUDelegatedUserDialogAct)initWithAsrHypothesisIndex:(int)index rewrittenUtterace:(id)utterace externalParserId:(id)id spans:(id)spans rewriteMessages:(id)messages;
- (SIRINLUDelegatedUserDialogAct)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLUDelegatedUserDialogAct

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  asrHypothesisIndex = [(SIRINLUDelegatedUserDialogAct *)self asrHypothesisIndex];
  rewrittenUtterance = [(SIRINLUDelegatedUserDialogAct *)self rewrittenUtterance];
  rewrite = [(SIRINLUDelegatedUserDialogAct *)self rewrite];
  v4 = [rewrite description];
  externalParserId = [(SIRINLUDelegatedUserDialogAct *)self externalParserId];
  spans = [(SIRINLUDelegatedUserDialogAct *)self spans];
  v7 = [SIRINLUPrintUtils indentArray:spans numSpaces:4];
  rewrites = [(SIRINLUDelegatedUserDialogAct *)self rewrites];
  v9 = [SIRINLUPrintUtils indentArray:rewrites numSpaces:4];
  referenceContext = [(SIRINLUDelegatedUserDialogAct *)self referenceContext];
  v11 = [referenceContext description];
  v12 = [v15 stringWithFormat:@"{DelegatedUserDialogAct:\n  asrHypothesisIndex: %d\n  rewrittenUtterance: %@\n  rewrite: %@\n  externalParserId: %@\n  spans: %@\n  rewrites: %@\n  referenceContext: %@\n}", asrHypothesisIndex, rewrittenUtterance, v4, externalParserId, v7, v9, v11];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  asrHypothesisIndex = self->_asrHypothesisIndex;
  coderCopy = coder;
  v13 = [v4 numberWithInt:asrHypothesisIndex];
  [coderCopy encodeObject:v13 forKey:@"asrHypothesisIndex"];
  rewrittenUtterance = [(SIRINLUDelegatedUserDialogAct *)self rewrittenUtterance];
  [coderCopy encodeObject:rewrittenUtterance forKey:@"rewrittenUtterance"];

  externalParserId = [(SIRINLUDelegatedUserDialogAct *)self externalParserId];
  [coderCopy encodeObject:externalParserId forKey:@"externalParserId"];

  spans = [(SIRINLUDelegatedUserDialogAct *)self spans];
  [coderCopy encodeObject:spans forKey:@"spans"];

  rewrites = [(SIRINLUDelegatedUserDialogAct *)self rewrites];
  [coderCopy encodeObject:rewrites forKey:@"rewrites"];

  rewrite = [(SIRINLUDelegatedUserDialogAct *)self rewrite];
  [coderCopy encodeObject:rewrite forKey:@"rewrite"];

  referenceContext = [(SIRINLUDelegatedUserDialogAct *)self referenceContext];
  [coderCopy encodeObject:referenceContext forKey:@"referenceContext"];
}

- (SIRINLUDelegatedUserDialogAct)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = SIRINLUDelegatedUserDialogAct;
  v5 = [(SIRINLUDelegatedUserDialogAct *)&v26 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"asrHypothesisIndex"];
    v5->_asrHypothesisIndex = [v6 intValue];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rewrittenUtterance"];
    rewrittenUtterance = v5->_rewrittenUtterance;
    v5->_rewrittenUtterance = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalParserId"];
    externalParserId = v5->_externalParserId;
    v5->_externalParserId = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"spans"];
    spans = v5->_spans;
    v5->_spans = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"rewrites"];
    rewrites = v5->_rewrites;
    v5->_rewrites = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rewrite"];
    rewrite = v5->_rewrite;
    v5->_rewrite = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referenceContext"];
    referenceContext = v5->_referenceContext;
    v5->_referenceContext = v23;
  }

  return v5;
}

- (SIRINLUDelegatedUserDialogAct)initWithAsrHypothesisIndex:(int)index rewrittenUtterace:(id)utterace externalParserId:(id)id spans:(id)spans rewriteMessage:(id)message
{
  v26[1] = *MEMORY[0x1E69E9840];
  utteraceCopy = utterace;
  idCopy = id;
  spansCopy = spans;
  messageCopy = message;
  v25.receiver = self;
  v25.super_class = SIRINLUDelegatedUserDialogAct;
  v17 = [(SIRINLUDelegatedUserDialogAct *)&v25 init];
  v18 = v17;
  if (v17)
  {
    v17->_asrHypothesisIndex = index;
    objc_storeStrong(&v17->_rewrittenUtterance, utterace);
    objc_storeStrong(&v18->_externalParserId, id);
    objc_storeStrong(&v18->_spans, spans);
    rewrites = v18->_rewrites;
    v18->_rewrites = MEMORY[0x1E695E0F0];

    if (messageCopy)
    {
      v26[0] = messageCopy;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      v21 = v18->_rewrites;
      v18->_rewrites = v20;
    }

    objc_storeStrong(&v18->_rewrite, message);
    referenceContext = v18->_referenceContext;
    v18->_referenceContext = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v18;
}

- (SIRINLUDelegatedUserDialogAct)initWithAsrHypothesisIndex:(int)index rewrittenUtterace:(id)utterace externalParserId:(id)id spans:(id)spans rewriteMessage:(id)message referenceContext:(id)context
{
  v28[1] = *MEMORY[0x1E69E9840];
  utteraceCopy = utterace;
  idCopy = id;
  spansCopy = spans;
  messageCopy = message;
  contextCopy = context;
  v27.receiver = self;
  v27.super_class = SIRINLUDelegatedUserDialogAct;
  v18 = [(SIRINLUDelegatedUserDialogAct *)&v27 init];
  v19 = v18;
  if (v18)
  {
    v18->_asrHypothesisIndex = index;
    objc_storeStrong(&v18->_rewrittenUtterance, utterace);
    objc_storeStrong(&v19->_externalParserId, id);
    objc_storeStrong(&v19->_spans, spans);
    rewrites = v19->_rewrites;
    v19->_rewrites = MEMORY[0x1E695E0F0];

    if (messageCopy)
    {
      v28[0] = messageCopy;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:{1, idCopy, utteraceCopy}];
      v22 = v19->_rewrites;
      v19->_rewrites = v21;
    }

    objc_storeStrong(&v19->_rewrite, message);
    objc_storeStrong(&v19->_referenceContext, context);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v19;
}

- (SIRINLUDelegatedUserDialogAct)initWithAsrHypothesisIndex:(int)index rewrittenUtterace:(id)utterace externalParserId:(id)id spans:(id)spans rewriteMessages:(id)messages
{
  utteraceCopy = utterace;
  idCopy = id;
  spansCopy = spans;
  messagesCopy = messages;
  v22.receiver = self;
  v22.super_class = SIRINLUDelegatedUserDialogAct;
  v17 = [(SIRINLUDelegatedUserDialogAct *)&v22 init];
  v18 = v17;
  if (v17)
  {
    v17->_asrHypothesisIndex = index;
    objc_storeStrong(&v17->_rewrittenUtterance, utterace);
    objc_storeStrong(&v18->_externalParserId, id);
    objc_storeStrong(&v18->_spans, spans);
    objc_storeStrong(&v18->_rewrites, messages);
    rewrite = v18->_rewrite;
    v18->_rewrite = 0;

    referenceContext = v18->_referenceContext;
    v18->_referenceContext = 0;
  }

  return v18;
}

- (SIRINLUDelegatedUserDialogAct)initWithAsrHypothesisIndex:(int)index rewrittenUtterace:(id)utterace externalParserId:(id)id spans:(id)spans
{
  utteraceCopy = utterace;
  idCopy = id;
  spansCopy = spans;
  v20.receiver = self;
  v20.super_class = SIRINLUDelegatedUserDialogAct;
  v14 = [(SIRINLUDelegatedUserDialogAct *)&v20 init];
  v15 = v14;
  if (v14)
  {
    v14->_asrHypothesisIndex = index;
    objc_storeStrong(&v14->_rewrittenUtterance, utterace);
    objc_storeStrong(&v15->_externalParserId, id);
    objc_storeStrong(&v15->_spans, spans);
    rewrites = v15->_rewrites;
    v15->_rewrites = MEMORY[0x1E695E0F0];

    rewrite = v15->_rewrite;
    v15->_rewrite = 0;

    referenceContext = v15->_referenceContext;
    v15->_referenceContext = 0;
  }

  return v15;
}

- (SIRINLUDelegatedUserDialogAct)initWithAsrHypothesisIndex:(int)index rewrittenUtterace:(id)utterace externalParserId:(id)id
{
  utteraceCopy = utterace;
  idCopy = id;
  v19.receiver = self;
  v19.super_class = SIRINLUDelegatedUserDialogAct;
  v11 = [(SIRINLUDelegatedUserDialogAct *)&v19 init];
  v12 = v11;
  if (v11)
  {
    v11->_asrHypothesisIndex = index;
    objc_storeStrong(&v11->_rewrittenUtterance, utterace);
    objc_storeStrong(&v12->_externalParserId, id);
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