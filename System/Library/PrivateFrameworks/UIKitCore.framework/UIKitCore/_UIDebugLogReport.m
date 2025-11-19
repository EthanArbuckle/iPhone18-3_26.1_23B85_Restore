@interface _UIDebugLogReport
- (_UIDebugLogReport)init;
- (id)_messagePrefixAtIndentLevel:(unint64_t)a3;
- (id)fallbackMessagePrefixHandler;
- (unint64_t)messageCount;
- (void)addLineBreak;
- (void)addMessage:(id)a3;
- (void)addMessageWithFormat:(id)a3;
- (void)clearAllMessagePrefixes;
- (void)decrementIndentLevel;
- (void)decrementIndentLevelAndPopMessagePrefix;
- (void)incrementIndentLevel;
- (void)incrementIndentLevelAndPushMessagePrefix:(id)a3;
- (void)popMessagePrefix;
- (void)pushMessagePrefix:(id)a3;
- (void)pushMessagePrefixHandler:(id)a3;
@end

@implementation _UIDebugLogReport

- (_UIDebugLogReport)init
{
  v8.receiver = self;
  v8.super_class = _UIDebugLogReport;
  v2 = [(_UIDebugLogReport *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    statements = v2->_statements;
    v2->_statements = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    prefixStack = v2->_prefixStack;
    v2->_prefixStack = v5;
  }

  return v2;
}

- (unint64_t)messageCount
{
  v2 = [(_UIDebugLogReport *)self _statements];
  v3 = [v2 count];

  return v3;
}

- (void)addMessageWithFormat:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UIDebugLogReport.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"messageFormat"}];
  }

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v5 arguments:&v8];
  [(_UIDebugLogReport *)self addMessage:v6];
}

- (void)addMessage:(id)a3
{
  v10 = a3;
  if (!v10)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIDebugLogReport.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"message"}];
  }

  v5 = [(_UIDebugLogReport *)self currentIndentLevel];
  v6 = objc_alloc_init(_UIDebugLogStatement);
  [(_UIDebugLogStatement *)v6 setType:0];
  [(_UIDebugLogStatement *)v6 setIndentLevel:v5];
  v7 = [(_UIDebugLogReport *)self _messagePrefixAtIndentLevel:v5];
  [(_UIDebugLogStatement *)v6 setPrefix:v7];

  [(_UIDebugLogStatement *)v6 setText:v10];
  v8 = [(_UIDebugLogReport *)self _statements];
  [v8 addObject:v6];
}

- (void)addLineBreak
{
  v4 = objc_alloc_init(_UIDebugLogStatement);
  [(_UIDebugLogStatement *)v4 setType:1];
  v3 = [(_UIDebugLogReport *)self _statements];
  [v3 addObject:v4];
}

- (void)incrementIndentLevel
{
  v3 = [(_UIDebugLogReport *)self currentIndentLevel]+ 1;

  [(_UIDebugLogReport *)self setCurrentIndentLevel:v3];
}

- (void)decrementIndentLevel
{
  v3 = [(_UIDebugLogReport *)self currentIndentLevel]- 1;

  [(_UIDebugLogReport *)self setCurrentIndentLevel:v3];
}

- (id)fallbackMessagePrefixHandler
{
  fallbackMessagePrefixHandler = self->_fallbackMessagePrefixHandler;
  if (!fallbackMessagePrefixHandler)
  {
    self->_fallbackMessagePrefixHandler = &__block_literal_global_222;
    fallbackMessagePrefixHandler = &__block_literal_global_222;
  }

  v4 = _Block_copy(fallbackMessagePrefixHandler);

  return v4;
}

- (void)pushMessagePrefix:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UIDebugLogReport.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"prefix"}];
  }

  v5 = [(_UIDebugLogReport *)self _prefixStack];
  [v5 addObject:v7];
}

- (void)pushMessagePrefixHandler:(id)a3
{
  aBlock = a3;
  if (!aBlock)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UIDebugLogReport.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"prefixHandler"}];
  }

  v5 = [(_UIDebugLogReport *)self _prefixStack];
  v6 = _Block_copy(aBlock);
  [v5 addObject:v6];
}

- (void)popMessagePrefix
{
  v2 = [(_UIDebugLogReport *)self _prefixStack];
  [v2 removeLastObject];
}

- (void)clearAllMessagePrefixes
{
  v2 = [(_UIDebugLogReport *)self _prefixStack];
  [v2 removeAllObjects];
}

- (id)_messagePrefixAtIndentLevel:(unint64_t)a3
{
  v6 = [(_UIDebugLogReport *)self _prefixStack];
  v7 = [v6 lastObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v9 = _Block_copy(v7);
    v8 = v9[2](v9, a3);

    if (v8)
    {
      goto LABEL_8;
    }
  }

  v10 = [(_UIDebugLogReport *)self fallbackMessagePrefixHandler];
  v8 = v10[2](v10, a3);

  if (!v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIDebugLogReport.m" lineNumber:177 description:@"nil message prefixes are not allowed."];
  }

LABEL_8:

  return v8;
}

- (void)incrementIndentLevelAndPushMessagePrefix:(id)a3
{
  v4 = a3;
  [(_UIDebugLogReport *)self incrementIndentLevel];
  [(_UIDebugLogReport *)self pushMessagePrefix:v4];
}

- (void)decrementIndentLevelAndPopMessagePrefix
{
  [(_UIDebugLogReport *)self popMessagePrefix];

  [(_UIDebugLogReport *)self decrementIndentLevel];
}

@end