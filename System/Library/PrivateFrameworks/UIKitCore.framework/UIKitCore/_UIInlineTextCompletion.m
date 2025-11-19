@interface _UIInlineTextCompletion
+ (id)inlineTextCompletion:(id)a3 source:(id)a4;
- (NSString)candidate;
- (NSString)input;
- (_UIInlineTextCompletion)initWithCompletion:(id)a3 source:(id)a4;
@end

@implementation _UIInlineTextCompletion

+ (id)inlineTextCompletion:(id)a3 source:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithCompletion:v6 source:v5];

  return v7;
}

- (_UIInlineTextCompletion)initWithCompletion:(id)a3 source:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _UIInlineTextCompletion;
  v8 = [(_UIInlineTextCompletion *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    completion = v8->_completion;
    v8->_completion = v9;

    v11 = [v7 copy];
    source = v8->_source;
    v8->_source = v11;
  }

  return v8;
}

- (NSString)candidate
{
  v2 = [(_UIInlineTextCompletion *)self completion];
  v3 = [v2 candidate];

  return v3;
}

- (NSString)input
{
  v2 = [(_UIInlineTextCompletion *)self completion];
  v3 = [v2 input];

  return v3;
}

@end