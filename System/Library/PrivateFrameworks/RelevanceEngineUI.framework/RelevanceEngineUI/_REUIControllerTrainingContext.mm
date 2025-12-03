@interface _REUIControllerTrainingContext
- (BOOL)elementIsAvailable:(id)available;
- (_REUIControllerTrainingContextDelegate)delegate;
- (id)elementsOrdered:(unint64_t)ordered relativeToElement:(id)element;
- (id)interactionTypeForElement:(id)element;
@end

@implementation _REUIControllerTrainingContext

- (id)elementsOrdered:(unint64_t)ordered relativeToElement:(id)element
{
  elementCopy = element;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained elementsOrdered:ordered relativeToElement:elementCopy];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v10 = v9;

  return v9;
}

- (BOOL)elementIsAvailable:(id)available
{
  availableCopy = available;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained elementIsAvailable:availableCopy];

  return v6;
}

- (id)interactionTypeForElement:(id)element
{
  elementCopy = element;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained interactionTypeForElement:elementCopy];

  return v6;
}

- (_REUIControllerTrainingContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end