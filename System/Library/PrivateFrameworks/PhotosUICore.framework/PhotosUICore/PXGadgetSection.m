@interface PXGadgetSection
- (PXGadgetSection)init;
- (PXGadgetSection)initWithIdentifier:(id)a3 gadgets:(id)a4;
- (void)setGadgetSpec:(id)a3;
@end

@implementation PXGadgetSection

- (void)setGadgetSpec:(id)a3
{
  v9 = a3;
  v4 = self->_gadgetSpec;
  gadgetSpec = v4;
  if (v4 != v9)
  {
    v6 = [(PXGadgetSpec *)v4 isEqual:v9];

    v7 = v9;
    if (v6)
    {
      goto LABEL_5;
    }

    v8 = v9;
    gadgetSpec = self->_gadgetSpec;
    self->_gadgetSpec = v8;
  }

  v7 = v9;
LABEL_5:
}

- (PXGadgetSection)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGadgetSection.m" lineNumber:30 description:{@"%s is not available as initializer", "-[PXGadgetSection init]"}];

  abort();
}

- (PXGadgetSection)initWithIdentifier:(id)a3 gadgets:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXGadgetSection.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"PXGadgetSection.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"gadgets"}];

LABEL_3:
  if (![v10 count])
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXGadgetSection.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"gadgets.count > 0"}];
  }

  v17.receiver = self;
  v17.super_class = PXGadgetSection;
  v11 = [(PXGadgetSection *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, a3);
    objc_storeStrong(&v12->_gadgets, a4);
  }

  return v12;
}

@end