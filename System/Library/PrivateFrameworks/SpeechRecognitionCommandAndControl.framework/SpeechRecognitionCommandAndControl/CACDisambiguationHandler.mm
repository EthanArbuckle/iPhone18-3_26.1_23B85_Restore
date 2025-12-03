@interface CACDisambiguationHandler
- (CACDisambiguationHandler)initWithLabeledElements:(id)elements;
- (void)handleChosenLabeledElement:(id)element;
@end

@implementation CACDisambiguationHandler

- (CACDisambiguationHandler)initWithLabeledElements:(id)elements
{
  elementsCopy = elements;
  v9.receiver = self;
  v9.super_class = CACDisambiguationHandler;
  v6 = [(CACDisambiguationHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_labeledElements, elements);
  }

  return v7;
}

- (void)handleChosenLabeledElement:(id)element
{
  elementCopy = element;
  chosenLabeledElementHandler = [(CACDisambiguationHandler *)self chosenLabeledElementHandler];

  if (chosenLabeledElementHandler)
  {
    chosenLabeledElementHandler2 = [(CACDisambiguationHandler *)self chosenLabeledElementHandler];
    (chosenLabeledElementHandler2)[2](chosenLabeledElementHandler2, elementCopy);
  }

  else
  {
    element = [elementCopy element];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__CACDisambiguationHandler_handleChosenLabeledElement___block_invoke;
      block[3] = &unk_279CEB2D0;
      v10 = elementCopy;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

void __55__CACDisambiguationHandler_handleChosenLabeledElement___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) element];
  [v1 cacActivate];
}

@end