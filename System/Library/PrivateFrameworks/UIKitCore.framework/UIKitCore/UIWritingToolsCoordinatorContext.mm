@interface UIWritingToolsCoordinatorContext
- (UIWritingToolsCoordinatorContext)initWithAttributedString:(id)string range:(_NSRange)range;
- (_NSRange)evaluatedRange;
- (_NSRange)range;
- (_NSRange)resolvedRange;
- (id)description;
- (void)_setWTContext:(id)context;
@end

@implementation UIWritingToolsCoordinatorContext

- (UIWritingToolsCoordinatorContext)initWithAttributedString:(id)string range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v12.receiver = self;
  v12.super_class = UIWritingToolsCoordinatorContext;
  v8 = [(UIWritingToolsCoordinatorContext *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69E3150]) initWithAttributedText:stringCopy range:{location, length}];
    wtContext = v8->_wtContext;
    v8->_wtContext = v9;

    v8->_proposedRange.location = location;
    v8->_proposedRange.length = length;
    v8->_resolvedRange = xmmword_18A678470;
  }

  return v8;
}

- (_NSRange)range
{
  length = self->_proposedRange.length;
  location = self->_proposedRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)evaluatedRange
{
  length = self->_resolvedRange.length;
  location = self->_resolvedRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)_setWTContext:(id)context
{
  contextCopy = context;
  uuid = [contextCopy uuid];
  uuid2 = [(WTContext *)self->_wtContext uuid];
  currentHandler = uuid;
  v9 = uuid2;
  v10 = v9;
  if (currentHandler == v9)
  {
  }

  else
  {
    if (currentHandler && v9)
    {
      v11 = [currentHandler isEqual:v9];

      if (v11)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIWritingToolsCoordinatorContext.m" lineNumber:58 description:@"Updating UIWritingToolsCoordinatorContext with mismatched WTContext"];
  }

LABEL_8:
  wtContext = self->_wtContext;
  self->_wtContext = contextCopy;
}

- (id)description
{
  v16.receiver = self;
  v16.super_class = UIWritingToolsCoordinatorContext;
  v3 = [(UIWritingToolsCoordinatorContext *)&v16 description];
  range = [(UIWritingToolsCoordinatorContext *)self range];
  [(UIWritingToolsCoordinatorContext *)self range];
  v6 = [v3 stringByAppendingFormat:@" range={%lu, %lu}", range, v5];

  if (self->_resolvedRange.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v6 stringByAppendingString:{@" no resolved range, "}];
LABEL_6:
    v11 = v7;

    v6 = v11;
    goto LABEL_7;
  }

  range2 = [(UIWritingToolsCoordinatorContext *)self range];
  length = self->_resolvedRange.length;
  if (range2 != self->_resolvedRange.location || v9 != length)
  {
    v7 = [v6 stringByAppendingFormat:@" resolvedRange={%lu, %lu}", self->_resolvedRange.location, length];
    goto LABEL_6;
  }

LABEL_7:
  attributedString = [(UIWritingToolsCoordinatorContext *)self attributedString];
  string = [attributedString string];
  v14 = [v6 stringByAppendingFormat:@" text=%@", string];

  return v14;
}

- (_NSRange)resolvedRange
{
  length = self->_resolvedRange.length;
  location = self->_resolvedRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end