@interface PHACoreDuetDatasetSample
- (PHACoreDuetDatasetSample)initWithIdentifier:(id)identifier andDate:(id)date forSubset:(id)subset;
@end

@implementation PHACoreDuetDatasetSample

- (PHACoreDuetDatasetSample)initWithIdentifier:(id)identifier andDate:(id)date forSubset:(id)subset
{
  identifierCopy = identifier;
  dateCopy = date;
  subsetCopy = subset;
  v15.receiver = self;
  v15.super_class = PHACoreDuetDatasetSample;
  v11 = [(PHACoreDuetDatasetSample *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(PHACoreDuetDatasetSample *)v11 setIdentifier:identifierCopy];
    [(PHACoreDuetDatasetSample *)v12 setDate:dateCopy];
    if (subsetCopy)
    {
      v13 = subsetCopy;
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