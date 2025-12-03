@interface _CHCSVKeyedAggregator
- (void)parser:(id)parser didEndLine:(unint64_t)line;
@end

@implementation _CHCSVKeyedAggregator

- (void)parser:(id)parser didEndLine:(unint64_t)line
{
  parserCopy = parser;
  firstLine = [(_CHCSVKeyedAggregator *)self firstLine];

  currentLine = [(_CHCSVAggregator *)self currentLine];
  v7 = currentLine;
  if (firstLine)
  {
    v8 = [(CHCSVOrderedDictionary *)currentLine count];
    firstLine2 = [(_CHCSVKeyedAggregator *)self firstLine];
    v10 = [firstLine2 count];

    if (v8 == v10)
    {
      v11 = [CHCSVOrderedDictionary alloc];
      currentLine2 = [(_CHCSVAggregator *)self currentLine];
      firstLine3 = [(_CHCSVKeyedAggregator *)self firstLine];
      v7 = [(CHCSVOrderedDictionary *)v11 initWithObjects:currentLine2 forKeys:firstLine3];

      lines = [(_CHCSVAggregator *)self lines];
      [lines addObject:v7];
    }

    else
    {
      [parserCopy cancelParsing];
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.davedelong.csv" code:2 userInfo:0];
      [(_CHCSVAggregator *)self setError:v7];
    }
  }

  else
  {
    [(_CHCSVKeyedAggregator *)self setFirstLine:currentLine];
  }

  [(_CHCSVAggregator *)self setCurrentLine:0];
}

@end