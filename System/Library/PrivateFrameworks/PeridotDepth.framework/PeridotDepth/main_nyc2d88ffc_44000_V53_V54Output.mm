@interface main_nyc2d88ffc_44000_V53_V54Output
- (id)featureValueForName:(id)name;
- (main_nyc2d88ffc_44000_V53_V54Output)initWithOut_argmax_x8:(id)out_argmax_x8 out_prob_class_0:(id)out_prob_class_0 out_prob_class_1:(id)out_prob_class_1 out_prob_class_2:(id)out_prob_class_2 out_spatial_only:(id)out_spatial_only;
@end

@implementation main_nyc2d88ffc_44000_V53_V54Output

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"out_argmax_x8"])
  {
    v5 = MEMORY[0x277CBFEF8];
    out_argmax_x8 = [(main_nyc2d88ffc_44000_V53_V54Output *)self out_argmax_x8];
LABEL_10:
    v7 = out_argmax_x8;
    v8 = [v5 featureValueWithMultiArray:out_argmax_x8];

    goto LABEL_11;
  }

  if ([nameCopy isEqualToString:@"out_prob_class_0"] || objc_msgSend(nameCopy, "isEqualToString:", @"out_prob_class_1") || objc_msgSend(nameCopy, "isEqualToString:", @"out_prob_class_2"))
  {
    v5 = MEMORY[0x277CBFEF8];
    out_argmax_x8 = [(main_nyc2d88ffc_44000_V53_V54Output *)self out_prob_class];
    goto LABEL_10;
  }

  if ([nameCopy isEqualToString:@"out_spatial_only"])
  {
    v5 = MEMORY[0x277CBFEF8];
    out_argmax_x8 = [(main_nyc2d88ffc_44000_V53_V54Output *)self out_spatial_only];
    goto LABEL_10;
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (main_nyc2d88ffc_44000_V53_V54Output)initWithOut_argmax_x8:(id)out_argmax_x8 out_prob_class_0:(id)out_prob_class_0 out_prob_class_1:(id)out_prob_class_1 out_prob_class_2:(id)out_prob_class_2 out_spatial_only:(id)out_spatial_only
{
  out_argmax_x8Copy = out_argmax_x8;
  out_prob_class_0Copy = out_prob_class_0;
  out_prob_class_1Copy = out_prob_class_1;
  out_prob_class_2Copy = out_prob_class_2;
  out_spatial_onlyCopy = out_spatial_only;
  v21.receiver = self;
  v21.super_class = main_nyc2d88ffc_44000_V53_V54Output;
  v17 = [(main_nyc2d88ffc_44000_V53_V54Output *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_out_argmax_x8, out_argmax_x8);
    objc_storeStrong(&v18->_out_prob_class_0, out_prob_class_0);
    objc_storeStrong(&v18->_out_prob_class_1, out_prob_class_1);
    objc_storeStrong(&v18->_out_prob_class_2, out_prob_class_2);
    objc_storeStrong(&v18->_out_spatial_only, out_spatial_only);
  }

  return v18;
}

@end