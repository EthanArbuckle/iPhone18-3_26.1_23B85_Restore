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
  delegate = [self delegate];
  if (([delegate conformsToProtocol:&unk_287E7C5F0] & 1) == 0)
  {

    goto LABEL_5;
  }

  delegate2 = [self delegate];

  if (!delegate2)
  {
LABEL_5:
    delegate2 = [*MEMORY[0x277D76620] keyWindow];
    [delegate2 size];
    goto LABEL_6;
  }

  [delegate2 tv_adjustedWindowSizeForDocument:self];
LABEL_6:
  v5 = v4;

  return v5;
}

- (uint64_t)tv_handleEvent:()TVMLKit targetResponder:viewElement:extraInfo:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  delegate = [self delegate];
  if ([delegate conformsToProtocol:&unk_287E7C5F0])
  {
    delegate2 = [self delegate];
  }

  else
  {
    delegate2 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [delegate2 tv_handleEventForDocument:self eventName:v10 targetResponder:v11 viewElement:v12 extraInfo:a6];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)tv_featuresManager
{
  delegate = [self delegate];
  if ([delegate conformsToProtocol:&unk_287E7C5F0])
  {
    delegate2 = [self delegate];
  }

  else
  {
    delegate2 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate2 tv_featuresManagerForDocument:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)tv_isPresentedModal
{
  delegate = [self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [self delegate];
    v4 = [delegate2 tv_isPresentedModalForDocument:self];
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
  delegate = [self delegate];
  if ([delegate conformsToProtocol:&unk_287E7C5F0])
  {
    delegate2 = [self delegate];
  }

  else
  {
    delegate2 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = [delegate2 tv_interactionPreviewControllerForViewController:v8 presentingView:v9 presentingElement:v10];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end