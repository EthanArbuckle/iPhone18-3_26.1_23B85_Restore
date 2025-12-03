@interface VKCPreDeclare
+ (CGRect)cropRectForMatteResult:(id)result;
@end

@implementation VKCPreDeclare

+ (CGRect)cropRectForMatteResult:(id)result
{
  resultCopy = result;
  if (objc_opt_respondsToSelector())
  {
    [resultCopy cropRect];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = *MEMORY[0x1E695F050];
    v7 = *(MEMORY[0x1E695F050] + 8);
    v9 = *(MEMORY[0x1E695F050] + 16);
    v11 = *(MEMORY[0x1E695F050] + 24);
  }

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

@end