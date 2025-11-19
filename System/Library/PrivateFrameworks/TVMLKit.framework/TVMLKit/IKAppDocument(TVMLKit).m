@interface IKAppDocument(TVMLKit)
- (double)tv_adjustedWindowSize;
- (id)tv_featuresManager;
- (id)tv_interactionPreviewControllerForViewController:()TVMLKit presentingView:presentingElement:;
- (uint64_t)tv_handleEvent:()TVMLKit targetResponder:viewElement:extraInfo:;
- (uint64_t)tv_isPresentedModal;
@end

@implementation IKAppDocument(TVMLKit)

- (double)tv_adjustedWindowSize
{
  v2 = [a1 delegate];
  if (([v2 conformsToProtocol:&unk_287E7C5F0] & 1) == 0)
  {

    goto LABEL_5;
  }

  v3 = [a1 delegate];

  if (!v3)
  {
LABEL_5:
    v3 = [*MEMORY[0x277D76620] keyWindow];
    [v3 size];
    goto LABEL_6;
  }

  [v3 tv_adjustedWindowSizeForDocument:a1];
LABEL_6:
  v5 = v4;

  return v5;
}

- (uint64_t)tv_handleEvent:()TVMLKit targetResponder:viewElement:extraInfo:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [a1 delegate];
  if ([v13 conformsToProtocol:&unk_287E7C5F0])
  {
    v14 = [a1 delegate];
  }

  else
  {
    v14 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [v14 tv_handleEventForDocument:a1 eventName:v10 targetResponder:v11 viewElement:v12 extraInfo:a6];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)tv_featuresManager
{
  v2 = [a1 delegate];
  if ([v2 conformsToProtocol:&unk_287E7C5F0])
  {
    v3 = [a1 delegate];
  }

  else
  {
    v3 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 tv_featuresManagerForDocument:a1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)tv_isPresentedModal
{
  v2 = [a1 delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [a1 delegate];
    v4 = [v3 tv_isPresentedModalForDocument:a1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)tv_interactionPreviewControllerForViewController:()TVMLKit presentingView:presentingElement:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 delegate];
  if ([v11 conformsToProtocol:&unk_287E7C5F0])
  {
    v12 = [a1 delegate];
  }

  else
  {
    v12 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = [v12 tv_interactionPreviewControllerForViewController:v8 presentingView:v9 presentingElement:v10];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end