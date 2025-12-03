@interface PGPet
- (PGPet)initWithLocalIdentifier:(id)identifier petSpecies:(unint64_t)species name:(id)name isFavorite:(BOOL)favorite momentNodes:(id)nodes ownerNodes:(id)ownerNodes;
- (void)addOwnerNodes:(id)nodes;
@end

@implementation PGPet

- (void)addOwnerNodes:(id)nodes
{
  v4 = [(MAElementCollection *)self->_ownerNodes collectionByFormingUnionWith:nodes];
  ownerNodes = self->_ownerNodes;
  self->_ownerNodes = v4;
}

- (PGPet)initWithLocalIdentifier:(id)identifier petSpecies:(unint64_t)species name:(id)name isFavorite:(BOOL)favorite momentNodes:(id)nodes ownerNodes:(id)ownerNodes
{
  identifierCopy = identifier;
  nameCopy = name;
  nodesCopy = nodes;
  ownerNodesCopy = ownerNodes;
  v28.receiver = self;
  v28.super_class = PGPet;
  v19 = [(PGPet *)&v28 init];
  v20 = v19;
  if (v19)
  {
    if (nameCopy)
    {
      v21 = nameCopy;
    }

    else
    {
      v21 = &stru_2843F5C58;
    }

    objc_storeStrong(&v19->_name, v21);
    objc_storeStrong(&v20->_localIdentifier, identifier);
    v20->_species = species;
    v20->_isFavorite = favorite;
    objc_storeStrong(&v20->_momentNodes, nodes);
    if (ownerNodesCopy)
    {
      v22 = ownerNodesCopy;
      ownerNodes = v20->_ownerNodes;
      v20->_ownerNodes = v22;
    }

    else
    {
      v24 = [PGGraphPersonNodeCollection alloc];
      ownerNodes = [nodesCopy graph];
      v25 = [(MAElementCollection *)v24 initWithGraph:ownerNodes];
      v26 = v20->_ownerNodes;
      v20->_ownerNodes = v25;
    }
  }

  return v20;
}

@end