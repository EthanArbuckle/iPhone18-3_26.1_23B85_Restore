@interface V53
@end

@implementation V53

void __82__main_nyc2d88ffc_44000_V53_V54_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  if (v21)
  {
    v20 = a3;
    v5 = [main_nyc2d88ffc_44000_V53_V54Output alloc];
    v19 = [v21 featureValueForName:@"out_argmax_x8"];
    v6 = [v19 multiArrayValue];
    v7 = [v21 featureValueForName:@"out_prob_class_0"];
    v8 = [v7 multiArrayValue];
    v9 = [v21 featureValueForName:@"out_prob_class_1"];
    v10 = [v9 multiArrayValue];
    v11 = [v21 featureValueForName:@"out_prob_class_2"];
    v12 = [v11 multiArrayValue];
    [v21 featureValueForName:@"out_spatial_only"];
    v13 = v18 = a1;
    v14 = [v13 multiArrayValue];
    v15 = [(main_nyc2d88ffc_44000_V53_V54Output *)v5 initWithOut_argmax_x8:v6 out_prob_class_0:v8 out_prob_class_1:v10 out_prob_class_2:v12 out_spatial_only:v14];

    (*(*(v18 + 32) + 16))();
  }

  else
  {
    v16 = *(a1 + 32);
    v17 = *(v16 + 16);
    v15 = a3;
    v17(v16, 0, v15);
  }
}

void __74__main_nyc2d88ffc_44000_V53_V54_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  if (v21)
  {
    v20 = a3;
    v5 = [main_nyc2d88ffc_44000_V53_V54Output alloc];
    v19 = [v21 featureValueForName:@"out_argmax_x8"];
    v6 = [v19 multiArrayValue];
    v7 = [v21 featureValueForName:@"out_prob_class_0"];
    v8 = [v7 multiArrayValue];
    v9 = [v21 featureValueForName:@"out_prob_class_1"];
    v10 = [v9 multiArrayValue];
    v11 = [v21 featureValueForName:@"out_prob_class_2"];
    v12 = [v11 multiArrayValue];
    [v21 featureValueForName:@"out_spatial_only"];
    v13 = v18 = a1;
    v14 = [v13 multiArrayValue];
    v15 = [(main_nyc2d88ffc_44000_V53_V54Output *)v5 initWithOut_argmax_x8:v6 out_prob_class_0:v8 out_prob_class_1:v10 out_prob_class_2:v12 out_spatial_only:v14];

    (*(*(v18 + 32) + 16))();
  }

  else
  {
    v16 = *(a1 + 32);
    v17 = *(v16 + 16);
    v15 = a3;
    v17(v16, 0, v15);
  }
}

void __83__main_nyc2d88ffc_44000_V53_V54_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[main_nyc2d88ffc_44000_V53_V54 alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end