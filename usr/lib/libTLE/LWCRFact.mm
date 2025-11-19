@interface LWCRFact
+ (id)BOOLFact:(BOOL)a3;
+ (id)dataFact:(id)a3;
+ (id)entitlementsFact:(id)a3;
+ (id)integerFact:(id)a3;
+ (id)stringFact:(id)a3;
- (id).cxx_construct;
- (void)bindName:(id)a3;
- (void)dealloc;
@end

@implementation LWCRFact

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (void)bindName:(id)a3
{
  v4 = a3;
  self->fact.name.data = [v4 UTF8String];
  self->fact.name.length = strlen([v4 UTF8String]);
}

- (void)dealloc
{
  if (self->fact.type == 1)
  {
    CEReleaseManagedContext();
  }

  v3.receiver = self;
  v3.super_class = LWCRFact;
  [(LWCRFact *)&v3 dealloc];
}

+ (id)dataFact:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(LWCRFact);
  v4->fact.type = 6;
  v5 = [v3 copy];
  dataFactStorage = v4->dataFactStorage;
  v4->dataFactStorage = v5;

  v4->fact.value.integer = [(NSData *)v4->dataFactStorage bytes];
  v4->fact.value.string.length = [(NSData *)v4->dataFactStorage length];

  return v4;
}

+ (id)entitlementsFact:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(LWCRFact);
  v4->fact.type = 1;
  v5 = *MEMORY[0x29EDC9140];
  v6 = CESerializeCFDictionary();
  v7 = MEMORY[0x29EDC9178];
  if (v6 == *MEMORY[0x29EDC9178] && (dataFactStorage = v4->dataFactStorage, v4->dataFactStorage = 0, dataFactStorage, v9 = v4->dataFactStorage, CEManagedContextFromCFData() == *v7))
  {
    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)stringFact:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(LWCRFact);
  v4->fact.type = 4;
  v5 = [v3 copy];
  stringFactStorage = v4->stringFactStorage;
  v4->stringFactStorage = v5;

  v4->fact.value.integer = [(NSString *)v4->stringFactStorage UTF8String];
  v4->fact.value.string.length = strlen([(NSString *)v4->stringFactStorage UTF8String]);

  return v4;
}

+ (id)integerFact:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(LWCRFact);
  v4->fact.type = 3;
  v4->fact.value.integer = [v3 longLongValue];

  return v4;
}

+ (id)BOOLFact:(BOOL)a3
{
  v3 = a3;
  v4 = objc_alloc_init(LWCRFact);
  v4->fact.type = 5;
  v4->fact.value.integer = v3;

  return v4;
}

@end