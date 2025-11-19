@interface PKCollectionSpecialization
- (PKCollectionSpecialization)initWithCollection:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)dealloc;
@end

@implementation PKCollectionSpecialization

- (PKCollectionSpecialization)initWithCollection:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = PKCollectionSpecialization;
  v6 = [(PKCollectionSpecialization *)&v8 init];
  if (v6)
  {
    objc_storeStrong(&v6->_collection, a3);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  params = self->_params;
  if (params)
  {

    MEMORY[0x25F8E3FA0](params, 0x80C40B8603338);
  }

  v4.receiver = self;
  v4.super_class = PKCollectionSpecialization;
  [(PKCollectionSpecialization *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  collection = self->_collection;

  return [v4 initWithCollection:collection];
}

- (id)debugDescription
{
  if (([(PKCollectionSpecialization *)self conformsToProtocol:&unk_2871AFB80]& 1) != 0)
  {
    v3 = [(PKCollectionSpecialization *)self userCodableDictionary];
    v4 = MEMORY[0x277CCACA8];
    v8.receiver = self;
    v8.super_class = PKCollectionSpecialization;
    v5 = [(PKCollectionSpecialization *)&v8 description];
    v6 = [v4 stringWithFormat:@"%@ %@", v5, v3];
  }

  else
  {
    v6 = [(PK_ipp_collection_t *)self->_collection debugDescription];
  }

  return v6;
}

@end