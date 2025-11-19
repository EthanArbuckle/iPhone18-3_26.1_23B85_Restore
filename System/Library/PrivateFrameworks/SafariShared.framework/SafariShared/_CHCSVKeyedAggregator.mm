@interface _CHCSVKeyedAggregator
- (void)parser:(id)a3 didEndLine:(unint64_t)a4;
@end

@implementation _CHCSVKeyedAggregator

- (void)parser:(id)a3 didEndLine:(unint64_t)a4
{
  v15 = a3;
  v5 = [(_CHCSVKeyedAggregator *)self firstLine];

  v6 = [(_CHCSVAggregator *)self currentLine];
  v7 = v6;
  if (v5)
  {
    v8 = [(CHCSVOrderedDictionary *)v6 count];
    v9 = [(_CHCSVKeyedAggregator *)self firstLine];
    v10 = [v9 count];

    if (v8 == v10)
    {
      v11 = [CHCSVOrderedDictionary alloc];
      v12 = [(_CHCSVAggregator *)self currentLine];
      v13 = [(_CHCSVKeyedAggregator *)self firstLine];
      v7 = [(CHCSVOrderedDictionary *)v11 initWithObjects:v12 forKeys:v13];

      v14 = [(_CHCSVAggregator *)self lines];
      [v14 addObject:v7];
    }

    else
    {
      [v15 cancelParsing];
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.davedelong.csv" code:2 userInfo:0];
      [(_CHCSVAggregator *)self setError:v7];
    }
  }

  else
  {
    [(_CHCSVKeyedAggregator *)self setFirstLine:v6];
  }

  [(_CHCSVAggregator *)self setCurrentLine:0];
}

@end