@interface _CHCSVAggregator
- (void)parser:(id)parser didBeginLine:(unint64_t)line;
- (void)parser:(id)parser didEndLine:(unint64_t)line;
- (void)parser:(id)parser didFailWithError:(id)error;
- (void)parser:(id)parser didReadField:(id)field atIndex:(int64_t)index;
- (void)parserDidBeginDocument:(id)document;
@end

@implementation _CHCSVAggregator

- (void)parserDidBeginDocument:(id)document
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(_CHCSVAggregator *)self setLines:v4];
}

- (void)parser:(id)parser didBeginLine:(unint64_t)line
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(_CHCSVAggregator *)self setCurrentLine:v5];
}

- (void)parser:(id)parser didEndLine:(unint64_t)line
{
  v5 = [(_CHCSVAggregator *)self lines:parser];
  currentLine = [(_CHCSVAggregator *)self currentLine];
  [v5 addObject:currentLine];

  [(_CHCSVAggregator *)self setCurrentLine:0];
}

- (void)parser:(id)parser didReadField:(id)field atIndex:(int64_t)index
{
  fieldCopy = field;
  currentLine = [(_CHCSVAggregator *)self currentLine];
  [currentLine addObject:fieldCopy];
}

- (void)parser:(id)parser didFailWithError:(id)error
{
  [(_CHCSVAggregator *)self setError:error];

  [(_CHCSVAggregator *)self setLines:0];
}

@end