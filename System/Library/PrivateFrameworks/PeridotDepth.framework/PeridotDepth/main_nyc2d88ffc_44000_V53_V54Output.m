@interface main_nyc2d88ffc_44000_V53_V54Output
- (id)featureValueForName:(id)a3;
- (main_nyc2d88ffc_44000_V53_V54Output)initWithOut_argmax_x8:(id)a3 out_prob_class_0:(id)a4 out_prob_class_1:(id)a5 out_prob_class_2:(id)a6 out_spatial_only:(id)a7;
@end

@implementation main_nyc2d88ffc_44000_V53_V54Output

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"out_argmax_x8"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(main_nyc2d88ffc_44000_V53_V54Output *)self out_argmax_x8];
LABEL_10:
    v7 = v6;
    v8 = [v5 featureValueWithMultiArray:v6];

    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"out_prob_class_0"] || objc_msgSend(v4, "isEqualToString:", @"out_prob_class_1") || objc_msgSend(v4, "isEqualToString:", @"out_prob_class_2"))
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(main_nyc2d88ffc_44000_V53_V54Output *)self out_prob_class];
    goto LABEL_10;
  }

  if ([v4 isEqualToString:@"out_spatial_only"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(main_nyc2d88ffc_44000_V53_V54Output *)self out_spatial_only];
    goto LABEL_10;
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (main_nyc2d88ffc_44000_V53_V54Output)initWithOut_argmax_x8:(id)a3 out_prob_class_0:(id)a4 out_prob_class_1:(id)a5 out_prob_class_2:(id)a6 out_spatial_only:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = main_nyc2d88ffc_44000_V53_V54Output;
  v17 = [(main_nyc2d88ffc_44000_V53_V54Output *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_out_argmax_x8, a3);
    objc_storeStrong(&v18->_out_prob_class_0, a4);
    objc_storeStrong(&v18->_out_prob_class_1, a5);
    objc_storeStrong(&v18->_out_prob_class_2, a6);
    objc_storeStrong(&v18->_out_spatial_only, a7);
  }

  return v18;
}

@end