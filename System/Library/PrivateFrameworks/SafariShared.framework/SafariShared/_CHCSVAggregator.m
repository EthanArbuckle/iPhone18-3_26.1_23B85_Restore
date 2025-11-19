@interface _CHCSVAggregator
- (void)parser:(id)a3 didBeginLine:(unint64_t)a4;
- (void)parser:(id)a3 didEndLine:(unint64_t)a4;
- (void)parser:(id)a3 didFailWithError:(id)a4;
- (void)parser:(id)a3 didReadField:(id)a4 atIndex:(int64_t)a5;
- (void)parserDidBeginDocument:(id)a3;
@end

@implementation _CHCSVAggregator

- (void)parserDidBeginDocument:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(_CHCSVAggregator *)self setLines:v4];
}

- (void)parser:(id)a3 didBeginLine:(unint64_t)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(_CHCSVAggregator *)self setCurrentLine:v5];
}

- (void)parser:(id)a3 didEndLine:(unint64_t)a4
{
  v5 = [(_CHCSVAggregator *)self lines:a3];
  v6 = [(_CHCSVAggregator *)self currentLine];
  [v5 addObject:v6];

  [(_CHCSVAggregator *)self setCurrentLine:0];
}

- (void)parser:(id)a3 didReadField:(id)a4 atIndex:(int64_t)a5
{
  v6 = a4;
  v7 = [(_CHCSVAggregator *)self currentLine];
  [v7 addObject:v6];
}

- (void)parser:(id)a3 didFailWithError:(id)a4
{
  [(_CHCSVAggregator *)self setError:a4];

  [(_CHCSVAggregator *)self setLines:0];
}

@end