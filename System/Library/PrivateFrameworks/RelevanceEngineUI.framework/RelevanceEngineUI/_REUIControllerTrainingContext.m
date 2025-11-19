@interface _REUIControllerTrainingContext
- (BOOL)elementIsAvailable:(id)a3;
- (_REUIControllerTrainingContextDelegate)delegate;
- (id)elementsOrdered:(unint64_t)a3 relativeToElement:(id)a4;
- (id)interactionTypeForElement:(id)a3;
@end

@implementation _REUIControllerTrainingContext

- (id)elementsOrdered:(unint64_t)a3 relativeToElement:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained elementsOrdered:a3 relativeToElement:v6];

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

- (BOOL)elementIsAvailable:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained elementIsAvailable:v4];

  return v6;
}

- (id)interactionTypeForElement:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained interactionTypeForElement:v4];

  return v6;
}

- (_REUIControllerTrainingContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end