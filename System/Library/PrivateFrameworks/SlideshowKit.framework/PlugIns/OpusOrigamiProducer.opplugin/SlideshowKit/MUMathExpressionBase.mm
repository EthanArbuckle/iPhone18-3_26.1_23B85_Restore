@interface MUMathExpressionBase
+ (id)parserErrorToString:(id *)string;
- (MUMathExpressionBase)init;
- (void)_cleanup;
- (void)dealloc;
- (void)setLastError:(id *)error;
@end

@implementation MUMathExpressionBase

- (MUMathExpressionBase)init
{
  v4.receiver = self;
  v4.super_class = MUMathExpressionBase;
  v2 = [(MUMathExpressionBase *)&v4 init];
  if (v2)
  {
    v2->_indicesForVariables = objc_alloc_init(NSMutableDictionary);
  }

  return v2;
}

- (void)_cleanup
{
  self->_indicesForVariables = 0;
  lastError = self->_lastError;
}

- (void)dealloc
{
  [(MUMathExpressionBase *)self _cleanup];
  v3.receiver = self;
  v3.super_class = MUMathExpressionBase;
  [(MUMathExpressionBase *)&v3 dealloc];
}

+ (id)parserErrorToString:(id *)string
{
  v3 = string->var0 - 1;
  if (v3 > 0x1B)
  {
    return @"Unknown Parser Error Type!";
  }

  else
  {
    return off_1A5290[v3];
  }
}

- (void)setLastError:(id *)error
{
  v5 = [NSDictionary dictionaryWithObjectsAndKeys:[MUMathExpressionBase parserErrorToString:error], NSLocalizedDescriptionKey, [NSNumber numberWithInteger:error->var0], @"kMUMathParserErrorCode", [NSNumber numberWithLong:error->var1], @"kMUMathParserErrorStartOffset", [NSNumber numberWithLong:error->var2], @"kMUMathParserErrorEndOffset", 0];
  self->_lastError = [NSError errorWithDomain:@"kMUMathParserErrorDomain" code:error->var0 userInfo:v5];
  NSLog(@"MathExpression ParserError :\n %@\n", v5);
}

@end