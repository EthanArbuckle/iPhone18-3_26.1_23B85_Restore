@interface PGDejunkerDeduperFeature
- (BOOL)isEqual:(id)a3;
- (PGDejunkerDeduperFeature)initWithPersonLocalIdentifiers:(id)a3 peopleScenes:(id)a4 isVideo:(BOOL)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation PGDejunkerDeduperFeature

- (id)description
{
  p_personLocalIdentifiers = &self->_personLocalIdentifiers;
  if ([(NSSet *)self->_personLocalIdentifiers count])
  {
    goto LABEL_4;
  }

  peopleScenes = self->_peopleScenes;
  p_peopleScenes = &self->_peopleScenes;
  if ([(NSSet *)peopleScenes count])
  {
    p_personLocalIdentifiers = p_peopleScenes;
LABEL_4:
    v6 = [(NSSet *)*p_personLocalIdentifiers allObjects];
    v7 = [v6 sortedArrayUsingSelector:sel_compare_];
    v8 = [v7 componentsJoinedByString:{@", "}];

    goto LABEL_5;
  }

  v8 = @"nobody";
LABEL_5:

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = v4;
      personLocalIdentifiers = self->_personLocalIdentifiers;
      v6 = (personLocalIdentifiers == v7->_personLocalIdentifiers || [(NSSet *)personLocalIdentifiers isEqualToSet:?]) && ((peopleScenes = self->_peopleScenes, peopleScenes == v7->_peopleScenes) || [(NSSet *)peopleScenes isEqualToSet:?]) && self->_isVideo == v7->_isVideo;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSSet *)self->_personLocalIdentifiers hash];
  v4 = [(NSSet *)self->_peopleScenes hash]^ v3;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isVideo];
  v6 = [v5 hash];

  return v4 ^ v6;
}

- (PGDejunkerDeduperFeature)initWithPersonLocalIdentifiers:(id)a3 peopleScenes:(id)a4 isVideo:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PGDejunkerDeduperFeature;
  v11 = [(PGDejunkerDeduperFeature *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_personLocalIdentifiers, a3);
    objc_storeStrong(&v12->_peopleScenes, a4);
    v12->_isVideo = a5;
  }

  return v12;
}

@end