@interface MobileSMS
@end

@implementation MobileSMS

void __76__searchToolL2_MobileSMS_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[searchToolL2_MobileSMS alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __67__searchToolL2_MobileSMS_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [searchToolL2_MobileSMSOutput alloc];
    v7 = [v14 featureValueForName:@"label"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"prob"];
    v10 = [v9 dictionaryValue];
    v11 = [(searchToolL2_MobileSMSOutput *)v6 initWithLabel:v8 prob:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __75__searchToolL2_MobileSMS_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [searchToolL2_MobileSMSOutput alloc];
    v7 = [v14 featureValueForName:@"label"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"prob"];
    v10 = [v9 dictionaryValue];
    v11 = [(searchToolL2_MobileSMSOutput *)v6 initWithLabel:v8 prob:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

@end