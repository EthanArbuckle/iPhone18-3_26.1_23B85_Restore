@interface SIRINLUTurnContext
+ (id)createEmptyPlaceholderLegacyNLContext;
+ (id)createEmptyPlaceholderNLContext;
- (SIRINLUTurnContext)init;
- (SIRINLUTurnContext)initWithCoder:(id)a3;
- (SIRINLUTurnContext)initWithLegacyNLContext:(id)a3;
- (SIRINLUTurnContext)initWithNLContext:(id)a3;
- (SIRINLUTurnContext)initWithNLContext:(id)a3 legacyNLContext:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLUTurnContext

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SIRINLUTurnContext *)self nlContext];
  v5 = [(SIRINLUTurnContext *)self nlContextNullable];
  v6 = [(SIRINLUTurnContext *)self legacyNLContext];
  v7 = [(SIRINLUTurnContext *)self legacyNLContextNullable];
  v8 = [v3 stringWithFormat:@"{TurnContext\n  nlContext: %@\n  nlContextNullable: %@\n  legacyNLContext: %@\n  legacyNLContextNullable: %@\n}", v4, v5, v6, v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SIRINLUTurnContext *)self nlContext];
  [v4 encodeObject:v5 forKey:@"nlContext"];

  v6 = [(SIRINLUTurnContext *)self nlContextNullable];
  [v4 encodeObject:v6 forKey:@"nlContextNullable"];

  v7 = [(SIRINLUTurnContext *)self legacyNLContext];
  [v4 encodeObject:v7 forKey:@"legacyNLContext"];

  v8 = [(SIRINLUTurnContext *)self legacyNLContextNullable];
  [v4 encodeObject:v8 forKey:@"legacyNLContextNullable"];
}

- (SIRINLUTurnContext)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SIRINLUTurnContext;
  v5 = [(SIRINLUTurnContext *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nlContext"];
    nlContext = v5->_nlContext;
    v5->_nlContext = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nlContextNullable"];
    nlContextNullable = v5->_nlContextNullable;
    v5->_nlContextNullable = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"legacyNLContext"];
    legacyNLContext = v5->_legacyNLContext;
    v5->_legacyNLContext = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"legacyNLContextNullable"];
    legacyNLContextNullable = v5->_legacyNLContextNullable;
    v5->_legacyNLContextNullable = v12;
  }

  return v5;
}

- (SIRINLUTurnContext)initWithLegacyNLContext:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SIRINLUTurnContext;
  v6 = [(SIRINLUTurnContext *)&v11 init];
  if (v6)
  {
    v7 = [objc_opt_class() createEmptyPlaceholderNLContext];
    nlContext = v6->_nlContext;
    v6->_nlContext = v7;

    nlContextNullable = v6->_nlContextNullable;
    v6->_nlContextNullable = 0;

    objc_storeStrong(&v6->_legacyNLContext, a3);
    objc_storeStrong(&v6->_legacyNLContextNullable, a3);
  }

  return v6;
}

- (SIRINLUTurnContext)initWithNLContext:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SIRINLUTurnContext;
  v6 = [(SIRINLUTurnContext *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nlContext, a3);
    objc_storeStrong(&v7->_nlContextNullable, a3);
    v8 = [objc_opt_class() createEmptyPlaceholderLegacyNLContext];
    legacyNLContext = v7->_legacyNLContext;
    v7->_legacyNLContext = v8;

    legacyNLContextNullable = v7->_legacyNLContextNullable;
    v7->_legacyNLContextNullable = 0;
  }

  return v7;
}

- (SIRINLUTurnContext)initWithNLContext:(id)a3 legacyNLContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SIRINLUTurnContext;
  v9 = [(SIRINLUTurnContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_nlContext, a3);
    objc_storeStrong(&v10->_nlContextNullable, a3);
    objc_storeStrong(&v10->_legacyNLContext, a4);
    objc_storeStrong(&v10->_legacyNLContextNullable, a4);
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
  v3 = [MEMORY[0x1E695DEC8] array];
  v4 = [MEMORY[0x1E695DEC8] array];
  v5 = [MEMORY[0x1E695DEC8] array];
  v6 = [(SIRINLUNLContext *)v2 initWithSystemDialogActs:v3 activeTasks:v4 executedTasks:v5];

  return v6;
}

@end