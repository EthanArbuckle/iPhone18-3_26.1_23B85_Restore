@interface SBSAAbstractDictionaryBackedContext
+ (Class)mutatorClass;
+ (id)instanceWithBlock:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SBSAAbstractDictionaryBackedContext)init;
- (SBSAAbstractDictionaryBackedContext)initWithInstance:(id)a3;
- (id)copyWithBlock:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation SBSAAbstractDictionaryBackedContext

- (SBSAAbstractDictionaryBackedContext)initWithInstance:(id)a3
{
  v4 = a3;
  v5 = [(SBSAAbstractDictionaryBackedContext *)self init];
  if (v5)
  {
    v6 = [v4[1] mutableCopy];
    backingDictionary = v5->_backingDictionary;
    v5->_backingDictionary = v6;
  }

  return v5;
}

- (SBSAAbstractDictionaryBackedContext)init
{
  v6.receiver = self;
  v6.super_class = SBSAAbstractDictionaryBackedContext;
  v2 = [(SBSAAbstractDictionaryBackedContext *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    backingDictionary = v2->_backingDictionary;
    v2->_backingDictionary = v3;
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  backingDictionary = self->_backingDictionary;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__SBSAAbstractDictionaryBackedContext_isEqual___block_invoke;
  v11[3] = &unk_2783ACDB8;
  v12 = v4;
  v7 = v4;
  v8 = [v5 appendObject:backingDictionary counterpart:v11];
  v9 = [v8 isEqual];

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_backingDictionary];
  v5 = [v4 hash];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithInstance:self];
}

+ (id)instanceWithBlock:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [v4 copyWithBlock:v3];

  return v5;
}

+ (Class)mutatorClass
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"SBSAAbstractDictionaryBackedContext.m" lineNumber:63 description:@"Subclass Responsibility"];

  return objc_opt_self();
}

- (id)copyWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(SBSAAbstractDictionaryBackedContext *)self copy];
  if (v4)
  {
    v6 = [objc_alloc(objc_msgSend(objc_opt_class() "mutatorClass"))];
    v4[2](v4, v6);
  }

  return v5;
}

@end