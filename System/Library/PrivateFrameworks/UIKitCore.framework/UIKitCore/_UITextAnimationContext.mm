@interface _UITextAnimationContext
- (_UITextAnimationContext)initWithTextLayoutManager:(id)manager textRanges:(id)ranges animationName:(id)name;
- (id)description;
@end

@implementation _UITextAnimationContext

- (_UITextAnimationContext)initWithTextLayoutManager:(id)manager textRanges:(id)ranges animationName:(id)name
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = _UITextAnimationContext;
  v9 = [(NSTextAnimationContext *)&v13 initWithTextLayoutManager:manager textRanges:ranges];
  if (v9)
  {
    v10 = [nameCopy length];
    if (v10)
    {
      v11 = [nameCopy copy];
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