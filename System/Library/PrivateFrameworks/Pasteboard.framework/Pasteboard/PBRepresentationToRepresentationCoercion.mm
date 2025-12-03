@interface PBRepresentationToRepresentationCoercion
- (BOOL)canCoerceToRepresentationOfType:(id)type;
- (PBRepresentationToRepresentationCoercion)initWithSourceType:(id)type destinationType:(id)destinationType conversionBlock:(id)block;
- (void)coerceRepresentationData:(id)data representationURL:(id)l toRepresentationOfType:(id)type completionBlock:(id)block;
@end

@implementation PBRepresentationToRepresentationCoercion

- (PBRepresentationToRepresentationCoercion)initWithSourceType:(id)type destinationType:(id)destinationType conversionBlock:(id)block
{
  typeCopy = type;
  destinationTypeCopy = destinationType;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = PBRepresentationToRepresentationCoercion;
  v12 = [(PBRepresentationToRepresentationCoercion *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sourceType, type);
    objc_storeStrong(&v13->_destinationType, destinationType);
    v14 = MEMORY[0x25F8AC430](blockCopy);
    coercionBlock = v13->_coercionBlock;
    v13->_coercionBlock = v14;
  }

  return v13;
}

- (BOOL)canCoerceToRepresentationOfType:(id)type
{
  typeCopy = type;
  destinationType = [(PBRepresentationToRepresentationCoercion *)self destinationType];
  v6 = UTTypeConformsTo(destinationType, typeCopy);

  return v6 != 0;
}

- (void)coerceRepresentationData:(id)data representationURL:(id)l toRepresentationOfType:(id)type completionBlock:(id)block
{
  dataCopy = data;
  lCopy = l;
  typeCopy = type;
  blockCopy = block;
  v14 = [(NSString *)self->_sourceType copy];
  destinationType = [(PBRepresentationToRepresentationCoercion *)self destinationType];
  v16 = UTTypeConformsTo(destinationType, typeCopy);

  if (v16)
  {
    coercionBlock = [(PBRepresentationToRepresentationCoercion *)self coercionBlock];
    destinationType2 = [(PBRepresentationToRepresentationCoercion *)self destinationType];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __126__PBRepresentationToRepresentationCoercion_coerceRepresentationData_representationURL_toRepresentationOfType_completionBlock___block_invoke;
    v21[3] = &unk_279A07598;
    v22 = v14;
    v23 = typeCopy;
    v24 = blockCopy;
    (coercionBlock)[2](coercionBlock, destinationType2, dataCopy, lCopy, v21);
  }

  else
  {
    sourceType = [(PBRepresentationToRepresentationCoercion *)self sourceType];
    v20 = PBCannotCoerceRepresentationOfTypeToRepresentationOfTypeError(sourceType, typeCopy, 0);
    (*(blockCopy + 2))(blockCopy, 0, v20);
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