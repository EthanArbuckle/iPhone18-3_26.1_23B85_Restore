@interface PFStoryClusteringProperties
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPFStoryClusteringProperties:(id)a3;
- (PFStoryClusteringProperties)initWithAlgorithmName:(id)a3 algorithmProperties:(id)a4 distanceWeights:(id)a5;
- (id)description;
@end

@implementation PFStoryClusteringProperties

- (BOOL)isEqualToPFStoryClusteringProperties:(id)a3
{
  v4 = a3;
  v5 = [(PFStoryClusteringProperties *)self algorithm];
  v6 = [v4 algorithm];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(PFStoryClusteringProperties *)self algorithmProperties];
    v8 = [v4 algorithmProperties];
    if ([v7 isEqualToDictionary:v8])
    {
      v9 = [(PFStoryClusteringProperties *)self distanceWeights];
      v10 = [v4 distanceWeights];
      v11 = [v9 isEqualToDictionary:v10];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PFStoryClusteringProperties *)self isEqualToPFStoryClusteringProperties:v4];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PFStoryClusteringProperties *)self algorithm];
  v6 = [(PFStoryClusteringProperties *)self algorithmProperties];
  v7 = [(PFStoryClusteringProperties *)self distanceWeights];
  v8 = [v3 stringWithFormat:@"<%@: %p algorithm = %@, algorithm properties = %@, distance weights = %@>", v4, self, v5, v6, v7];;

  return v8;
}

- (PFStoryClusteringProperties)initWithAlgorithmName:(id)a3 algorithmProperties:(id)a4 distanceWeights:(id)a5
{
  v17.receiver = self;
  v17.super_class = PFStoryClusteringProperties;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(PFStoryClusteringProperties *)&v17 init];
  v11 = v10;
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = @"PLDBSCANClustering";
  }

  objc_storeStrong(&v10->_algorithm, v12);
  v13 = MEMORY[0x1E695E0F8];
  if (v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = MEMORY[0x1E695E0F8];
  }

  objc_storeStrong(&v11->_algorithmProperties, v14);
  if (v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = v13;
  }

  objc_storeStrong(&v11->_distanceWeights, v15);

  return v11;
}

@end