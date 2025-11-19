@interface PHACoreDuetDatasetSample
- (PHACoreDuetDatasetSample)initWithIdentifier:(id)a3 andDate:(id)a4 forSubset:(id)a5;
@end

@implementation PHACoreDuetDatasetSample

- (PHACoreDuetDatasetSample)initWithIdentifier:(id)a3 andDate:(id)a4 forSubset:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = PHACoreDuetDatasetSample;
  v11 = [(PHACoreDuetDatasetSample *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(PHACoreDuetDatasetSample *)v11 setIdentifier:v8];
    [(PHACoreDuetDatasetSample *)v12 setDate:v9];
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = &stru_2844B1BF0;
    }

    [(PHACoreDuetDatasetSample *)v12 setSubset:v13];
  }

  return v12;
}

@end