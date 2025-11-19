@interface UIWritingToolsCoordinatorContext
- (UIWritingToolsCoordinatorContext)initWithAttributedString:(id)a3 range:(_NSRange)a4;
- (_NSRange)evaluatedRange;
- (_NSRange)range;
- (_NSRange)resolvedRange;
- (id)description;
- (void)_setWTContext:(id)a3;
@end

@implementation UIWritingToolsCoordinatorContext

- (UIWritingToolsCoordinatorContext)initWithAttributedString:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v12.receiver = self;
  v12.super_class = UIWritingToolsCoordinatorContext;
  v8 = [(UIWritingToolsCoordinatorContext *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69E3150]) initWithAttributedText:v7 range:{location, length}];
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

- (void)_setWTContext:(id)a3
{
  v5 = a3;
  v6 = [v5 uuid];
  v7 = [(WTContext *)self->_wtContext uuid];
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    if (v8 && v9)
    {
      v11 = [v8 isEqual:v9];

      if (v11)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIWritingToolsCoordinatorContext.m" lineNumber:58 description:@"Updating UIWritingToolsCoordinatorContext with mismatched WTContext"];
  }

LABEL_8:
  wtContext = self->_wtContext;
  self->_wtContext = v5;
}

- (id)description
{
  v16.receiver = self;
  v16.super_class = UIWritingToolsCoordinatorContext;
  v3 = [(UIWritingToolsCoordinatorContext *)&v16 description];
  v4 = [(UIWritingToolsCoordinatorContext *)self range];
  [(UIWritingToolsCoordinatorContext *)self range];
  v6 = [v3 stringByAppendingFormat:@" range={%lu, %lu}", v4, v5];

  if (self->_resolvedRange.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v6 stringByAppendingString:{@" no resolved range, "}];
LABEL_6:
    v11 = v7;

    v6 = v11;
    goto LABEL_7;
  }

  v8 = [(UIWritingToolsCoordinatorContext *)self range];
  length = self->_resolvedRange.length;
  if (v8 != self->_resolvedRange.location || v9 != length)
  {
    v7 = [v6 stringByAppendingFormat:@" resolvedRange={%lu, %lu}", self->_resolvedRange.location, length];
    goto LABEL_6;
  }

LABEL_7:
  v12 = [(UIWritingToolsCoordinatorContext *)self attributedString];
  v13 = [v12 string];
  v14 = [v6 stringByAppendingFormat:@" text=%@", v13];

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