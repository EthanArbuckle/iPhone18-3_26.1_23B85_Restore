@interface SIRINLUTurnContext
+ (id)createEmptyPlaceholderLegacyNLContext;
+ (id)createEmptyPlaceholderNLContext;
- (SIRINLUTurnContext)init;
- (SIRINLUTurnContext)initWithCoder:(id)coder;
- (SIRINLUTurnContext)initWithLegacyNLContext:(id)context;
- (SIRINLUTurnContext)initWithNLContext:(id)context;
- (SIRINLUTurnContext)initWithNLContext:(id)context legacyNLContext:(id)lContext;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLUTurnContext

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  nlContext = [(SIRINLUTurnContext *)self nlContext];
  nlContextNullable = [(SIRINLUTurnContext *)self nlContextNullable];
  legacyNLContext = [(SIRINLUTurnContext *)self legacyNLContext];
  legacyNLContextNullable = [(SIRINLUTurnContext *)self legacyNLContextNullable];
  v8 = [v3 stringWithFormat:@"{TurnContext\n  nlContext: %@\n  nlContextNullable: %@\n  legacyNLContext: %@\n  legacyNLContextNullable: %@\n}", nlContext, nlContextNullable, legacyNLContext, legacyNLContextNullable];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  nlContext = [(SIRINLUTurnContext *)self nlContext];
  [coderCopy encodeObject:nlContext forKey:@"nlContext"];

  nlContextNullable = [(SIRINLUTurnContext *)self nlContextNullable];
  [coderCopy encodeObject:nlContextNullable forKey:@"nlContextNullable"];

  legacyNLContext = [(SIRINLUTurnContext *)self legacyNLContext];
  [coderCopy encodeObject:legacyNLContext forKey:@"legacyNLContext"];

  legacyNLContextNullable = [(SIRINLUTurnContext *)self legacyNLContextNullable];
  [coderCopy encodeObject:legacyNLContextNullable forKey:@"legacyNLContextNullable"];
}

- (SIRINLUTurnContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SIRINLUTurnContext;
  v5 = [(SIRINLUTurnContext *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nlContext"];
    nlContext = v5->_nlContext;
    v5->_nlContext = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nlContextNullable"];
    nlContextNullable = v5->_nlContextNullable;
    v5->_nlContextNullable = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"legacyNLContext"];
    legacyNLContext = v5->_legacyNLContext;
    v5->_legacyNLContext = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"legacyNLContextNullable"];
    legacyNLContextNullable = v5->_legacyNLContextNullable;
    v5->_legacyNLContextNullable = v12;
  }

  return v5;
}

- (SIRINLUTurnContext)initWithLegacyNLContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = SIRINLUTurnContext;
  v6 = [(SIRINLUTurnContext *)&v11 init];
  if (v6)
  {
    createEmptyPlaceholderNLContext = [objc_opt_class() createEmptyPlaceholderNLContext];
    nlContext = v6->_nlContext;
    v6->_nlContext = createEmptyPlaceholderNLContext;

    nlContextNullable = v6->_nlContextNullable;
    v6->_nlContextNullable = 0;

    objc_storeStrong(&v6->_legacyNLContext, context);
    objc_storeStrong(&v6->_legacyNLContextNullable, context);
  }

  return v6;
}

- (SIRINLUTurnContext)initWithNLContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = SIRINLUTurnContext;
  v6 = [(SIRINLUTurnContext *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nlContext, context);
    objc_storeStrong(&v7->_nlContextNullable, context);
    createEmptyPlaceholderLegacyNLContext = [objc_opt_class() createEmptyPlaceholderLegacyNLContext];
    legacyNLContext = v7->_legacyNLContext;
    v7->_legacyNLContext = createEmptyPlaceholderLegacyNLContext;

    legacyNLContextNullable = v7->_legacyNLContextNullable;
    v7->_legacyNLContextNullable = 0;
  }

  return v7;
}

- (SIRINLUTurnContext)initWithNLContext:(id)context legacyNLContext:(id)lContext
{
  contextCopy = context;
  lContextCopy = lContext;
  v12.receiver = self;
  v12.super_class = SIRINLUTurnContext;
  v9 = [(SIRINLUTurnContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_nlContext, context);
    objc_storeStrong(&v10->_nlContextNullable, context);
    objc_storeStrong(&v10->_legacyNLContext, lContext);
    objc_storeStrong(&v10->_legacyNLContextNullable, lContext);
  }

  return v10;
}

- (SIRINLUTurnContext)init
{
  v3.receiver = self;
  v3.super_class = SIRINLUTurnContext;
  return [(SIRINLUTurnContext *)&v3 init];
}

+ (id)createEmptyPlaceholderLegacyNLContext
{
  v2 = [[SIRINLULegacyNLContext alloc] initWithDictationPrompt:0 strictPrompt:0 previousDomainName:&stru_1F3FA57D0 listenAfterSpeaking:0];

  return v2;
}

+ (id)createEmptyPlaceholderNLContext
{
  v2 = [SIRINLUNLContext alloc];
  array = [MEMORY[0x1E695DEC8] array];
  array2 = [MEMORY[0x1E695DEC8] array];
  array3 = [MEMORY[0x1E695DEC8] array];
  v6 = [(SIRINLUNLContext *)v2 initWithSystemDialogActs:array activeTasks:array2 executedTasks:array3];

  return v6;
}

@end