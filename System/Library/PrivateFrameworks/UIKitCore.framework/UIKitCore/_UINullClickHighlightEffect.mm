@interface _UINullClickHighlightEffect
+ (id)effectWithPreview:(id)preview continuingFromPreview:(id)fromPreview;
- (void)interaction:(id)interaction didChangeWithContext:(id)context;
@end

@implementation _UINullClickHighlightEffect

+ (id)effectWithPreview:(id)preview continuingFromPreview:(id)fromPreview
{
  previewCopy = preview;
  v5 = objc_opt_new();
  v6 = v5[1];
  v5[1] = previewCopy;

  return v5;
}

- (void)interaction:(id)interaction didChangeWithContext:(id)context
{
  if ([context ended])
  {
    completionBlock = [(_UINullClickHighlightEffect *)self completionBlock];
    [(_UINullClickHighlightEffect *)self setCompletionBlock:0];
    v5 = completionBlock;
    if (completionBlock)
    {
      (*(completionBlock + 16))(completionBlock, self);
      v5 = completionBlock;
    }
  }
}

@end