@interface SXBookmarkActionSerializer
- (id)URLForAction:(id)action type:(int64_t)type;
@end

@implementation SXBookmarkActionSerializer

- (id)URLForAction:(id)action type:(int64_t)type
{
  actionCopy = action;
  if (actionCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = 0;
    if (type != 1 && (isKindOfClass & 1) != 0)
    {
      bookmark = [actionCopy bookmark];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = objc_alloc_init(MEMORY[0x1E696AF20]);
        componentIdentifier = [bookmark componentIdentifier];
        uRLFragmentAllowedCharacterSet = [MEMORY[0x1E696AB08] URLFragmentAllowedCharacterSet];
        v12 = [componentIdentifier stringByAddingPercentEncodingWithAllowedCharacters:uRLFragmentAllowedCharacterSet];
        [v9 setFragment:v12];

        v7 = [v9 URL];
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end