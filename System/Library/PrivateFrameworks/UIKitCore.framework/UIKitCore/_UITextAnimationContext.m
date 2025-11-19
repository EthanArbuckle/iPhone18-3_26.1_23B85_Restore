@interface _UITextAnimationContext
- (_UITextAnimationContext)initWithTextLayoutManager:(id)a3 textRanges:(id)a4 animationName:(id)a5;
- (id)description;
@end

@implementation _UITextAnimationContext

- (_UITextAnimationContext)initWithTextLayoutManager:(id)a3 textRanges:(id)a4 animationName:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = _UITextAnimationContext;
  v9 = [(NSTextAnimationContext *)&v13 initWithTextLayoutManager:a3 textRanges:a4];
  if (v9)
  {
    v10 = [v8 length];
    if (v10)
    {
      v11 = [v8 copy];
    }

    else
    {
      v11 = @"Unknown";
    }

    objc_storeStrong(&v9->_animationName, v11);
    if (v10)
    {
    }
  }

  return v9;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = _UITextAnimationContext;
  v3 = [(_UITextAnimationContext *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" (%@)", self->_animationName];

  return v4;
}

@end