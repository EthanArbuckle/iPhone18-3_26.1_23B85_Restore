@interface PFStoryClusteringProperties
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPFStoryClusteringProperties:(id)properties;
- (PFStoryClusteringProperties)initWithAlgorithmName:(id)name algorithmProperties:(id)properties distanceWeights:(id)weights;
- (id)description;
@end

@implementation PFStoryClusteringProperties

- (BOOL)isEqualToPFStoryClusteringProperties:(id)properties
{
  propertiesCopy = properties;
  algorithm = [(PFStoryClusteringProperties *)self algorithm];
  algorithm2 = [propertiesCopy algorithm];
  if ([algorithm isEqualToString:algorithm2])
  {
    algorithmProperties = [(PFStoryClusteringProperties *)self algorithmProperties];
    algorithmProperties2 = [propertiesCopy algorithmProperties];
    if ([algorithmProperties isEqualToDictionary:algorithmProperties2])
    {
      distanceWeights = [(PFStoryClusteringProperties *)self distanceWeights];
      distanceWeights2 = [propertiesCopy distanceWeights];
      v11 = [distanceWeights isEqualToDictionary:distanceWeights2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PFStoryClusteringProperties *)self isEqualToPFStoryClusteringProperties:equalCopy];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  algorithm = [(PFStoryClusteringProperties *)self algorithm];
  algorithmProperties = [(PFStoryClusteringProperties *)self algorithmProperties];
  distanceWeights = [(PFStoryClusteringProperties *)self distanceWeights];
  v8 = [v3 stringWithFormat:@"<%@: %p algorithm = %@, algorithm properties = %@, distance weights = %@>", v4, self, algorithm, algorithmProperties, distanceWeights];;

  return v8;
}

- (PFStoryClusteringProperties)initWithAlgorithmName:(id)name algorithmProperties:(id)properties distanceWeights:(id)weights
{
  v17.receiver = self;
  v17.super_class = PFStoryClusteringProperties;
  weightsCopy = weights;
  propertiesCopy = properties;
  nameCopy = name;
  v10 = [(PFStoryClusteringProperties *)&v17 init];
  v11 = v10;
  if (nameCopy)
  {
    v12 = nameCopy;
  }

  else
  {
    v12 = @"PLDBSCANClustering";
  }

  objc_storeStrong(&v10->_algorithm, v12);
  v13 = MEMORY[0x1E695E0F8];
  if (propertiesCopy)
  {
    v14 = propertiesCopy;
  }

  else
  {
    v14 = MEMORY[0x1E695E0F8];
  }

  objc_storeStrong(&v11->_algorithmProperties, v14);
  if (weightsCopy)
  {
    v15 = weightsCopy;
  }

  else
  {
    v15 = v13;
  }

  objc_storeStrong(&v11->_distanceWeights, v15);

  return v11;
}

@end