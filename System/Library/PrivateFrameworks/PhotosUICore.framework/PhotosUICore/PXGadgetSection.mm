@interface PXGadgetSection
- (PXGadgetSection)init;
- (PXGadgetSection)initWithIdentifier:(id)identifier gadgets:(id)gadgets;
- (void)setGadgetSpec:(id)spec;
@end

@implementation PXGadgetSection

- (void)setGadgetSpec:(id)spec
{
  specCopy = spec;
  v4 = self->_gadgetSpec;
  gadgetSpec = v4;
  if (v4 != specCopy)
  {
    v6 = [(PXGadgetSpec *)v4 isEqual:specCopy];

    v7 = specCopy;
    if (v6)
    {
      goto LABEL_5;
    }

    v8 = specCopy;
    gadgetSpec = self->_gadgetSpec;
    self->_gadgetSpec = v8;
  }

  v7 = specCopy;
LABEL_5:
}

- (PXGadgetSection)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGadgetSection.m" lineNumber:30 description:{@"%s is not available as initializer", "-[PXGadgetSection init]"}];

  abort();
}

- (PXGadgetSection)initWithIdentifier:(id)identifier gadgets:(id)gadgets
{
  identifierCopy = identifier;
  gadgetsCopy = gadgets;
  v10 = gadgetsCopy;
  if (identifierCopy)
  {
    if (gadgetsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGadgetSection.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXGadgetSection.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"gadgets"}];

LABEL_3:
  if (![v10 count])
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXGadgetSection.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"gadgets.count > 0"}];
  }

  v17.receiver = self;
  v17.super_class = PXGadgetSection;
  v11 = [(PXGadgetSection *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, identifier);
    objc_storeStrong(&v12->_gadgets, gadgets);
  }

  return v12;
}

@end