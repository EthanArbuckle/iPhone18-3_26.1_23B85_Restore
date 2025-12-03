@interface UIDeferredMenuElement
+ (UIDeferredMenuElement)elementWithProvider:(void *)elementProvider;
+ (UIDeferredMenuElement)elementWithUncachedProvider:(void *)elementProvider;
+ (id)_elementWithIdentifier:(id)identifier cacheItems:(BOOL)items elementProvider:(id)provider;
- (NSString)description;
- (UIDeferredMenuElement)initWithCoder:(id)coder;
- (UIDeferredMenuElementDelegate)delegate;
- (void)_acceptMenuVisit:(id)visit commandVisit:(id)commandVisit actionVisit:(id)actionVisit deferredElementVisit:(id)elementVisit;
- (void)_acceptMenuVisit:(id)visit leafVisit:(id)leafVisit;
- (void)_fulfillIfNecessaryWithInitialResponder:(id)responder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIDeferredMenuElement

+ (UIDeferredMenuElement)elementWithProvider:(void *)elementProvider
{
  v4 = [UIDeferredMenuElementProvider providerWithElementProvider:elementProvider];
  v5 = [self _elementWithIdentifier:0 cacheItems:1 elementProvider:v4];

  return v5;
}

+ (UIDeferredMenuElement)elementWithUncachedProvider:(void *)elementProvider
{
  v4 = [UIDeferredMenuElementProvider providerWithElementProvider:elementProvider];
  v5 = [self _elementWithIdentifier:0 cacheItems:0 elementProvider:v4];

  return v5;
}

+ (id)_elementWithIdentifier:(id)identifier cacheItems:(BOOL)items elementProvider:(id)provider
{
  identifierCopy = identifier;
  providerCopy = provider;
  v9 = [UIDeferredMenuElement alloc];
  v10 = _UINSLocalizedStringWithDefaultValue(@"CONTEXT_MENU_LOADING", @"Loading…");
  v11 = [(UIMenuElement *)v9 initWithTitle:v10 image:0 imageName:0];

  if (identifierCopy)
  {
    v12 = [identifierCopy copy];
  }

  else
  {
    v13 = MEMORY[0x1E696AEC0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v12 = [v13 stringWithFormat:@"com.apple.deferred-element.dynamic.%@", uUID];
  }

  objc_storeStrong((v11 + 136), v12);

  *(v11 + 88) = items;
  v15 = *(v11 + 80);
  *(v11 + 80) = providerCopy;

  [v11 setAttributes:1];

  return v11;
}

- (void)_fulfillIfNecessaryWithInitialResponder:(id)responder
{
  responderCopy = responder;
  delegate = [(UIDeferredMenuElement *)self delegate];
  if (delegate)
  {
    isSignalingFulfillment = self->_isSignalingFulfillment;

    if (!isSignalingFulfillment)
    {
      if (!self->_cachesItems)
      {
        self->_fulfilled = 0;
        fulfilledElements = self->_fulfilledElements;
        self->_fulfilledElements = 0;
      }

      if (![(UIDeferredMenuElement *)self fulfilled])
      {
        self->_fulfilled = 1;
        v8 = responderCopy;
        v9 = v8;
        elementProvider = self->_elementProvider;
        if (elementProvider)
        {
          v11 = elementProvider;
        }

        else
        {
          v12 = v8;
          if (v12)
          {
            v13 = v12;
            while (1)
            {
              v14 = [v13 providerForDeferredMenuElement:self];
              if (v14)
              {
                break;
              }

              v15 = [v13 _nextResponderUsingTraversalStrategy:2];

              v13 = v15;
              if (!v15)
              {
                goto LABEL_12;
              }
            }

            v16 = v14;

            goto LABEL_14;
          }

LABEL_12:
          v11 = [UIDeferredMenuElementProvider providerWithElementProvider:&__block_literal_global_154];
        }

        v16 = v11;
LABEL_14:

        if (self->_cachesItems)
        {
          v17 = self->_elementProvider;
          self->_elementProvider = 0;
        }

        _providerBlock = [v16 _providerBlock];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __65__UIDeferredMenuElement__fulfillIfNecessaryWithInitialResponder___block_invoke;
        v19[3] = &unk_1E70F2FC8;
        v19[4] = self;
        (_providerBlock)[2](_providerBlock, v19);
      }
    }
  }
}

void __65__UIDeferredMenuElement__fulfillIfNecessaryWithInitialResponder___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 160);
  *(v4 + 160) = v3;

  *(*(a1 + 32) + 72) = 1;
  v6 = [*(a1 + 32) delegate];
  [v6 deferredMenuElementWasFulfilled:*(a1 + 32)];

  *(*(a1 + 32) + 72) = 0;
}

- (void)_acceptMenuVisit:(id)visit commandVisit:(id)commandVisit actionVisit:(id)actionVisit deferredElementVisit:(id)elementVisit
{
  if (elementVisit)
  {
    (*(elementVisit + 2))(elementVisit, self);
  }
}

- (void)_acceptMenuVisit:(id)visit leafVisit:(id)leafVisit
{
  if (leafVisit)
  {
    (*(leafVisit + 2))(leafVisit, self);
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = UIDeferredMenuElement;
  [(UIMenuElement *)&v8 encodeWithCoder:coderCopy];
  identifier = [(UIDeferredMenuElement *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  [coderCopy encodeBool:-[UIDeferredMenuElement cachesItems](self forKey:{"cachesItems"), @"cachesItems"}];
  [coderCopy encodeBool:-[UIDeferredMenuElement fulfilled](self forKey:{"fulfilled"), @"fulfilled"}];
  fulfilledElements = [(UIDeferredMenuElement *)self fulfilledElements];

  if (fulfilledElements)
  {
    fulfilledElements2 = [(UIDeferredMenuElement *)self fulfilledElements];
    [coderCopy encodeObject:fulfilledElements2 forKey:@"fulfilledElements"];
  }
}

- (UIDeferredMenuElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = UIDeferredMenuElement;
  v5 = [(UIMenuElement *)&v17 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(UIDeferredMenuElement *)v5 setAttributes:1];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v8 = v7;
    if (!v7)
    {
      v9 = MEMORY[0x1E696AEC0];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      v8 = [v9 stringWithFormat:@"com.apple.deferred-element.dynamic.%@", uUID];
    }

    objc_storeStrong(&v6->_identifier, v8);
    if (!v7)
    {
    }

    v6->_cachesItems = [coderCopy decodeBoolForKey:@"cachesItems"];
    v6->_fulfilled = [coderCopy decodeBoolForKey:@"fulfilled"];
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"fulfilledElements"];
    fulfilledElements = v6->_fulfilledElements;
    v6->_fulfilledElements = v14;
  }

  return v6;
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = UIDeferredMenuElement;
  v2 = [(UIDeferredMenuElement *)&v4 description];

  return v2;
}

- (UIDeferredMenuElementDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end