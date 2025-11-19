@interface PBRepresentationToRepresentationCoercion
- (BOOL)canCoerceToRepresentationOfType:(id)a3;
- (PBRepresentationToRepresentationCoercion)initWithSourceType:(id)a3 destinationType:(id)a4 conversionBlock:(id)a5;
- (void)coerceRepresentationData:(id)a3 representationURL:(id)a4 toRepresentationOfType:(id)a5 completionBlock:(id)a6;
@end

@implementation PBRepresentationToRepresentationCoercion

- (PBRepresentationToRepresentationCoercion)initWithSourceType:(id)a3 destinationType:(id)a4 conversionBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = PBRepresentationToRepresentationCoercion;
  v12 = [(PBRepresentationToRepresentationCoercion *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sourceType, a3);
    objc_storeStrong(&v13->_destinationType, a4);
    v14 = MEMORY[0x25F8AC430](v11);
    coercionBlock = v13->_coercionBlock;
    v13->_coercionBlock = v14;
  }

  return v13;
}

- (BOOL)canCoerceToRepresentationOfType:(id)a3
{
  v4 = a3;
  v5 = [(PBRepresentationToRepresentationCoercion *)self destinationType];
  v6 = UTTypeConformsTo(v5, v4);

  return v6 != 0;
}

- (void)coerceRepresentationData:(id)a3 representationURL:(id)a4 toRepresentationOfType:(id)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(NSString *)self->_sourceType copy];
  v15 = [(PBRepresentationToRepresentationCoercion *)self destinationType];
  v16 = UTTypeConformsTo(v15, v12);

  if (v16)
  {
    v17 = [(PBRepresentationToRepresentationCoercion *)self coercionBlock];
    v18 = [(PBRepresentationToRepresentationCoercion *)self destinationType];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __126__PBRepresentationToRepresentationCoercion_coerceRepresentationData_representationURL_toRepresentationOfType_completionBlock___block_invoke;
    v21[3] = &unk_279A07598;
    v22 = v14;
    v23 = v12;
    v24 = v13;
    (v17)[2](v17, v18, v10, v11, v21);
  }

  else
  {
    v19 = [(PBRepresentationToRepresentationCoercion *)self sourceType];
    v20 = PBCannotCoerceRepresentationOfTypeToRepresentationOfTypeError(v19, v12, 0);
    (*(v13 + 2))(v13, 0, v20);
  }
}

void __126__PBRepresentationToRepresentationCoercion_coerceRepresentationData_representationURL_toRepresentationOfType_completionBlock___block_invoke(uint64_t *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 domain];
    v8 = [v7 isEqualToString:@"PBErrorDomain"];

    v9 = v6;
    if ((v8 & 1) == 0)
    {
      v9 = PBCannotCoerceRepresentationOfTypeToRepresentationOfTypeError(a1[4], a1[5], v6);
    }
  }

  else
  {
    v9 = 0;
  }

  (*(a1[6] + 16))();
}

@end