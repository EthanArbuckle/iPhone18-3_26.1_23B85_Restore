@interface spotlight_l3_1Output
- (id)featureValueForName:(id)a3;
- (spotlight_l3_1Output)initWithY:(id)a3 id_features:(id)a4;
@end

@implementation spotlight_l3_1Output

- (spotlight_l3_1Output)initWithY:(id)a3 id_features:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = spotlight_l3_1Output;
  v9 = [(spotlight_l3_1Output *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_y, a3);
    objc_storeStrong(&v10->_id_features, a4);
  }

  return v10;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"y"])
  {
    v5 = MEMORY[0x1E695FE60];
    v6 = [(spotlight_l3_1Output *)self y];
LABEL_5:
    v7 = v6;
    v8 = [v5 featureValueWithMultiArray:v6];

    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"id_features"])
  {
    v5 = MEMORY[0x1E695FE60];
    v6 = [(spotlight_l3_1Output *)self id_features];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

@end