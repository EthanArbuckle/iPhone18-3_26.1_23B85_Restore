@interface PXGHitTestResult
- (PXGHitTestResult)init;
- (PXGHitTestResult)initWithSpriteReference:(id)a3 layout:(id)a4 identifier:(id)a5 userData:(id)a6;
- (PXGHitTestResult)initWithSpriteReference:(id)a3 layout:(id)a4 identifier:(id)a5 userDataProvider:(id)a6;
- (id)description;
- (id)userData;
@end

@implementation PXGHitTestResult

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXGHitTestResult *)self identifier];
  v7 = [(PXGHitTestResult *)self userData];
  if ([(PXGHitTestResult *)self isDecorated])
  {
    v8 = @"decorated ";
  }

  else
  {
    v8 = &stru_282C556B8;
  }

  v9 = [(PXGHitTestResult *)self spriteReference];
  v10 = [v3 stringWithFormat:@"<%@: %p, identifier=%@ userData=%@ %@spriteReference=%@>", v5, self, v6, v7, v8, v9];

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
      v5 = [(PXGHitTestResult *)self layout];
      v6 = [(PXGHitTestResult *)self spriteReference];
      v7 = userDataProvider[2](userDataProvider, v5, v6);
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

- (PXGHitTestResult)initWithSpriteReference:(id)a3 layout:(id)a4 identifier:(id)a5 userData:(id)a6
{
  v11 = a6;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__PXGHitTestResult_initWithSpriteReference_layout_identifier_userData___block_invoke;
  v16[3] = &unk_2782AC498;
  v12 = v11;
  v17 = v12;
  v13 = [(PXGHitTestResult *)self initWithSpriteReference:a3 layout:a4 identifier:a5 userDataProvider:v16];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_userData, a6);
  }

  return v14;
}

- (PXGHitTestResult)initWithSpriteReference:(id)a3 layout:(id)a4 identifier:(id)a5 userDataProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = PXGHitTestResult;
  v15 = [(PXGHitTestResult *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_spriteReference, a3);
    objc_storeStrong(&v16->_layout, a4);
    objc_storeStrong(&v16->_identifier, a5);
    v17 = MEMORY[0x21CEE40A0](v14);
    userDataProvider = v16->_userDataProvider;
    v16->_userDataProvider = v17;
  }

  return v16;
}

- (PXGHitTestResult)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGHitTestResult.m" lineNumber:25 description:{@"%s is not available as initializer", "-[PXGHitTestResult init]"}];

  abort();
}

@end