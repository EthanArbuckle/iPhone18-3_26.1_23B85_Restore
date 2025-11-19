@interface _UINullClickHighlightEffect
+ (id)effectWithPreview:(id)a3 continuingFromPreview:(id)a4;
- (void)interaction:(id)a3 didChangeWithContext:(id)a4;
@end

@implementation _UINullClickHighlightEffect

+ (id)effectWithPreview:(id)a3 continuingFromPreview:(id)a4
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = v5[1];
  v5[1] = v4;

  return v5;
}

- (void)interaction:(id)a3 didChangeWithContext:(id)a4
{
  if ([a4 ended])
  {
    v6 = [(_UINullClickHighlightEffect *)self completionBlock];
    [(_UINullClickHighlightEffect *)self setCompletionBlock:0];
    v5 = v6;
    if (v6)
    {
      (*(v6 + 16))(v6, self);
      v5 = v6;
    }
  }
}

@end