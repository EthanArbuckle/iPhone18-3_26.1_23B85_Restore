@interface spotlight_l3_1Input
- (id)featureValueForName:(id)name;
- (spotlight_l3_1Input)initWithId_features:(id)id_features dense_features:(id)dense_features;
@end

@implementation spotlight_l3_1Input

- (spotlight_l3_1Input)initWithId_features:(id)id_features dense_features:(id)dense_features
{
  id_featuresCopy = id_features;
  dense_featuresCopy = dense_features;
  v12.receiver = self;
  v12.super_class = spotlight_l3_1Input;
  v9 = [(spotlight_l3_1Input *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_id_features, id_features);
    objc_storeStrong(&v10->_dense_features, dense_features);
  }

  return v10;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"id_features"])
  {
    v5 = MEMORY[0x1E695FE60];
    id_features = [(spotlight_l3_1Input *)self id_features];
LABEL_5:
    v7 = id_features;
    v8 = [v5 featureValueWithMultiArray:id_features];

    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"dense_features"])
  {
    v5 = MEMORY[0x1E695FE60];
    id_features = [(spotlight_l3_1Input *)self dense_features];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

@end