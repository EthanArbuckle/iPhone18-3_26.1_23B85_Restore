@interface NSWritingToolsContextState
+ (_NSRange)contextRangeForString:(id)string proposedRange:(_NSRange)range;
- (NSWritingToolsContextState)init;
- (NSWritingToolsContextState)initWithContextString:(id)string contextLocation:(unint64_t)location proposedRange:(_NSRange)range;
- (NSWritingToolsContextState)initWithDocumentString:(id)string proposedRange:(_NSRange)range;
- (_NSRange)contextRange;
- (_NSRange)proposedRange;
@end

@implementation NSWritingToolsContextState

+ (_NSRange)contextRangeForString:(id)string proposedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v7 = [stringCopy paragraphRangeForRange:{location, length}];
  v9 = v8;
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  if (v7)
  {
    v11 = v7 + v9++;
    --v7;
    while ([newlineCharacterSet characterIsMember:{objc_msgSend(stringCopy, "characterAtIndex:", v7)}])
    {
      ++v9;
      if (--v7 == -1)
      {
        v7 = 0;
        goto LABEL_7;
      }
    }
  }

  v11 = v9;
LABEL_7:
  v12 = [stringCopy paragraphRangeForRange:{v7, v11}];
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.length = v16;
  result.location = v15;
  return result;
}

- (NSWritingToolsContextState)init
{
  [(NSWritingToolsContextState *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (NSWritingToolsContextState)initWithContextString:(id)string contextLocation:(unint64_t)location proposedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v14.receiver = self;
  v14.super_class = NSWritingToolsContextState;
  v11 = [(NSWritingToolsContextState *)&v14 init];
  if (v11)
  {
    v12 = [stringCopy length];
    [(NSWritingToolsContextState *)v11 setContextString:stringCopy];
    [(NSWritingToolsContextState *)v11 setContextRange:location, v12];
    [(NSWritingToolsContextState *)v11 setProposedRange:location, length];
    if (location > v12 || location + length > v12)
    {
      [NSWritingToolsContextState initWithContextString:a2 contextLocation:v11 proposedRange:?];
    }
  }

  return v11;
}

- (NSWritingToolsContextState)initWithDocumentString:(id)string proposedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v8 = objc_opt_class();
  string = [stringCopy string];
  v10 = [v8 contextRangeForString:string proposedRange:{location, length}];
  v12 = v11;

  v13 = [stringCopy attributedSubstringFromRange:{v10, v12}];

  v14 = [(NSWritingToolsContextState *)self initWithContextString:v13 contextLocation:v10 proposedRange:location - v10, length];
  return v14;
}

- (_NSRange)contextRange
{
  length = self->_contextRange.length;
  location = self->_contextRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)proposedRange
{
  length = self->_proposedRange.length;
  location = self->_proposedRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)initWithContextString:(uint64_t)a1 contextLocation:(uint64_t)a2 proposedRange:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSWritingToolsContextState.m" lineNumber:58 description:@"proposedRange is not a subset of the contextRange."];
}

@end