@interface spotlight_l3_1Output
- (id)featureValueForName:(id)name;
- (spotlight_l3_1Output)initWithY:(id)y id_features:(id)id_features;
@end

@implementation spotlight_l3_1Output

- (spotlight_l3_1Output)initWithY:(id)y id_features:(id)id_features
{
  yCopy = y;
  id_featuresCopy = id_features;
  v12.receiver = self;
  v12.super_class = spotlight_l3_1Output;
  v9 = [(spotlight_l3_1Output *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_y, y);
    objc_storeStrong(&v10->_id_features, id_features);
  }

  return v10;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"y"])
  {
    v5 = MEMORY[0x1E695FE60];
    id_features = [(spotlight_l3_1Output *)self y];
LABEL_5:
    v7 = id_features;
    v8 = [v5 featureValueWithMultiArray:id_features];

    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"id_features"])
  {
    v5 = MEMORY[0x1E695FE60];
    id_features = [(spotlight_l3_1Output *)self id_features];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

@end