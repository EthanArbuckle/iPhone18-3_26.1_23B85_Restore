@interface PGPet
- (PGPet)initWithLocalIdentifier:(id)a3 petSpecies:(unint64_t)a4 name:(id)a5 isFavorite:(BOOL)a6 momentNodes:(id)a7 ownerNodes:(id)a8;
- (void)addOwnerNodes:(id)a3;
@end

@implementation PGPet

- (void)addOwnerNodes:(id)a3
{
  v4 = [(MAElementCollection *)self->_ownerNodes collectionByFormingUnionWith:a3];
  ownerNodes = self->_ownerNodes;
  self->_ownerNodes = v4;
}

- (PGPet)initWithLocalIdentifier:(id)a3 petSpecies:(unint64_t)a4 name:(id)a5 isFavorite:(BOOL)a6 momentNodes:(id)a7 ownerNodes:(id)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v28.receiver = self;
  v28.super_class = PGPet;
  v19 = [(PGPet *)&v28 init];
  v20 = v19;
  if (v19)
  {
    if (v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = &stru_2843F5C58;
    }

    objc_storeStrong(&v19->_name, v21);
    objc_storeStrong(&v20->_localIdentifier, a3);
    v20->_species = a4;
    v20->_isFavorite = a6;
    objc_storeStrong(&v20->_momentNodes, a7);
    if (v18)
    {
      v22 = v18;
      ownerNodes = v20->_ownerNodes;
      v20->_ownerNodes = v22;
    }

    else
    {
      v24 = [PGGraphPersonNodeCollection alloc];
      ownerNodes = [v17 graph];
      v25 = [(MAElementCollection *)v24 initWithGraph:ownerNodes];
      v26 = v20->_ownerNodes;
      v20->_ownerNodes = v25;
    }
  }

  return v20;
}

@end