@interface _UIInlineTextCompletion
+ (id)inlineTextCompletion:(id)completion source:(id)source;
- (NSString)candidate;
- (NSString)input;
- (_UIInlineTextCompletion)initWithCompletion:(id)completion source:(id)source;
@end

@implementation _UIInlineTextCompletion

+ (id)inlineTextCompletion:(id)completion source:(id)source
{
  sourceCopy = source;
  completionCopy = completion;
  v7 = [objc_alloc(objc_opt_class()) initWithCompletion:completionCopy source:sourceCopy];

  return v7;
}

- (_UIInlineTextCompletion)initWithCompletion:(id)completion source:(id)source
{
  completionCopy = completion;
  sourceCopy = source;
  v14.receiver = self;
  v14.super_class = _UIInlineTextCompletion;
  v8 = [(_UIInlineTextCompletion *)&v14 init];
  if (v8)
  {
    v9 = [completionCopy copy];
    completion = v8->_completion;
    v8->_completion = v9;

    v11 = [sourceCopy copy];
    source = v8->_source;
    v8->_source = v11;
  }

  return v8;
}

- (NSString)candidate
{
  completion = [(_UIInlineTextCompletion *)self completion];
  candidate = [completion candidate];

  return candidate;
}

- (NSString)input
{
  completion = [(_UIInlineTextCompletion *)self completion];
  input = [completion input];

  return input;
}

@end