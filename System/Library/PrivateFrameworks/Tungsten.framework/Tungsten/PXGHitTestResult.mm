@interface PXGHitTestResult
- (PXGHitTestResult)init;
- (PXGHitTestResult)initWithSpriteReference:(id)reference layout:(id)layout identifier:(id)identifier userData:(id)data;
- (PXGHitTestResult)initWithSpriteReference:(id)reference layout:(id)layout identifier:(id)identifier userDataProvider:(id)provider;
- (id)description;
- (id)userData;
@end

@implementation PXGHitTestResult

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(PXGHitTestResult *)self identifier];
  userData = [(PXGHitTestResult *)self userData];
  if ([(PXGHitTestResult *)self isDecorated])
  {
    v8 = @"decorated ";
  }

  else
  {
    v8 = &stru_282C556B8;
  }

  spriteReference = [(PXGHitTestResult *)self spriteReference];
  v10 = [v3 stringWithFormat:@"<%@: %p, identifier=%@ userData=%@ %@spriteReference=%@>", v5, self, identifier, userData, v8, spriteReference];

  return v10;
}

- (id)userData
{
  userData = self->_userData;
  if (!userData)
  {
    userDataProvider = self->_userDataProvider;
    if (userDataProvider)
    {
      layout = [(PXGHitTestResult *)self layout];
      spriteReference = [(PXGHitTestResult *)self spriteReference];
      v7 = userDataProvider[2](userDataProvider, layout, spriteReference);
      v8 = self->_userData;
      self->_userData = v7;

      v9 = self->_userDataProvider;
      self->_userDataProvider = 0;

      userData = self->_userData;
    }

    else
    {
      userData = 0;
    }
  }

  return userData;
}

- (PXGHitTestResult)initWithSpriteReference:(id)reference layout:(id)layout identifier:(id)identifier userData:(id)data
{
  dataCopy = data;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__PXGHitTestResult_initWithSpriteReference_layout_identifier_userData___block_invoke;
  v16[3] = &unk_2782AC498;
  v12 = dataCopy;
  v17 = v12;
  v13 = [(PXGHitTestResult *)self initWithSpriteReference:reference layout:layout identifier:identifier userDataProvider:v16];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_userData, data);
  }

  return v14;
}

- (PXGHitTestResult)initWithSpriteReference:(id)reference layout:(id)layout identifier:(id)identifier userDataProvider:(id)provider
{
  referenceCopy = reference;
  layoutCopy = layout;
  identifierCopy = identifier;
  providerCopy = provider;
  v20.receiver = self;
  v20.super_class = PXGHitTestResult;
  v15 = [(PXGHitTestResult *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_spriteReference, reference);
    objc_storeStrong(&v16->_layout, layout);
    objc_storeStrong(&v16->_identifier, identifier);
    v17 = MEMORY[0x21CEE40A0](providerCopy);
    userDataProvider = v16->_userDataProvider;
    v16->_userDataProvider = v17;
  }

  return v16;
}

- (PXGHitTestResult)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGHitTestResult.m" lineNumber:25 description:{@"%s is not available as initializer", "-[PXGHitTestResult init]"}];

  abort();
}

@end