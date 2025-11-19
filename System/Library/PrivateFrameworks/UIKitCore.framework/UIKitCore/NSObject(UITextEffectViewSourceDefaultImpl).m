@interface NSObject(UITextEffectViewSourceDefaultImpl)
- (void)_textEffects_sourceCanGenerateTargetedPreviewForChunk:()UITextEffectViewSourceDefaultImpl completion:;
- (void)_textEffects_sourceCanGenerateTargetedPreviewsWithCompletion:()UITextEffectViewSourceDefaultImpl;
- (void)_textEffects_updatedTargetedPreviewGeometryForChunk:()UITextEffectViewSourceDefaultImpl previous:completion:;
@end

@implementation NSObject(UITextEffectViewSourceDefaultImpl)

- (void)_textEffects_sourceCanGenerateTargetedPreviewsWithCompletion:()UITextEffectViewSourceDefaultImpl
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [a1 canGenerateTargetedPreviewsWithCompletionHandler:v4];
  }

  else
  {
    v4[2](v4, 1);
  }
}

- (void)_textEffects_updatedTargetedPreviewGeometryForChunk:()UITextEffectViewSourceDefaultImpl previous:completion:
{
  v15 = a7;
  v14 = a8;
  if (objc_opt_respondsToSelector())
  {
    [a1 updatedTargetedPreviewGeometryFor:v15 previous:v14 completionHandler:{a2, a3, a4, a5}];
  }

  else
  {
    v14[2](v14, a2, a3, a4, a5);
  }
}

- (void)_textEffects_sourceCanGenerateTargetedPreviewForChunk:()UITextEffectViewSourceDefaultImpl completion:
{
  v7 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    [a1 canGenerateTargetedPreviewForChunk:v7 completionHandler:v6];
  }

  else
  {
    v6[2](v6, 1);
  }
}

@end