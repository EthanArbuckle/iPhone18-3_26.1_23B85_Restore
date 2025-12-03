@interface LWCRFact
+ (id)BOOLFact:(BOOL)fact;
+ (id)dataFact:(id)fact;
+ (id)entitlementsFact:(id)fact;
+ (id)integerFact:(id)fact;
+ (id)stringFact:(id)fact;
- (id).cxx_construct;
- (void)bindName:(id)name;
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

- (void)bindName:(id)name
{
  nameCopy = name;
  self->fact.name.data = [nameCopy UTF8String];
  self->fact.name.length = strlen([nameCopy UTF8String]);
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

+ (id)dataFact:(id)fact
{
  factCopy = fact;
  v4 = objc_alloc_init(LWCRFact);
  v4->fact.type = 6;
  v5 = [factCopy copy];
  dataFactStorage = v4->dataFactStorage;
  v4->dataFactStorage = v5;

  v4->fact.value.integer = [(NSData *)v4->dataFactStorage bytes];
  v4->fact.value.string.length = [(NSData *)v4->dataFactStorage length];

  return v4;
}

+ (id)entitlementsFact:(id)fact
{
  factCopy = fact;
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

+ (id)stringFact:(id)fact
{
  factCopy = fact;
  v4 = objc_alloc_init(LWCRFact);
  v4->fact.type = 4;
  v5 = [factCopy copy];
  stringFactStorage = v4->stringFactStorage;
  v4->stringFactStorage = v5;

  v4->fact.value.integer = [(NSString *)v4->stringFactStorage UTF8String];
  v4->fact.value.string.length = strlen([(NSString *)v4->stringFactStorage UTF8String]);

  return v4;
}

+ (id)integerFact:(id)fact
{
  factCopy = fact;
  v4 = objc_alloc_init(LWCRFact);
  v4->fact.type = 3;
  v4->fact.value.integer = [factCopy longLongValue];

  return v4;
}

+ (id)BOOLFact:(BOOL)fact
{
  factCopy = fact;
  v4 = objc_alloc_init(LWCRFact);
  v4->fact.type = 5;
  v4->fact.value.integer = factCopy;

  return v4;
}

@end