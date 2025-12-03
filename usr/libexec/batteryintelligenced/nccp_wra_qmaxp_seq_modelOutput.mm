@interface nccp_wra_qmaxp_seq_modelOutput
- (id)featureValueForName:(id)name;
- (nccp_wra_qmaxp_seq_modelOutput)initWithNccp_wra_qmaxp_q10_forecast:(id)nccp_wra_qmaxp_q10_forecast nccp_wra_qmaxp_q25_forecast:(id)nccp_wra_qmaxp_q25_forecast nccp_wra_qmaxp_q50_forecast:(id)nccp_wra_qmaxp_q50_forecast nccp_wra_qmaxp_q75_forecast:(id)nccp_wra_qmaxp_q75_forecast nccp_wra_qmaxp_q90_forecast:(id)nccp_wra_qmaxp_q90_forecast;
@end

@implementation nccp_wra_qmaxp_seq_modelOutput

- (nccp_wra_qmaxp_seq_modelOutput)initWithNccp_wra_qmaxp_q10_forecast:(id)nccp_wra_qmaxp_q10_forecast nccp_wra_qmaxp_q25_forecast:(id)nccp_wra_qmaxp_q25_forecast nccp_wra_qmaxp_q50_forecast:(id)nccp_wra_qmaxp_q50_forecast nccp_wra_qmaxp_q75_forecast:(id)nccp_wra_qmaxp_q75_forecast nccp_wra_qmaxp_q90_forecast:(id)nccp_wra_qmaxp_q90_forecast
{
  nccp_wra_qmaxp_q10_forecastCopy = nccp_wra_qmaxp_q10_forecast;
  nccp_wra_qmaxp_q25_forecastCopy = nccp_wra_qmaxp_q25_forecast;
  nccp_wra_qmaxp_q50_forecastCopy = nccp_wra_qmaxp_q50_forecast;
  nccp_wra_qmaxp_q75_forecastCopy = nccp_wra_qmaxp_q75_forecast;
  nccp_wra_qmaxp_q90_forecastCopy = nccp_wra_qmaxp_q90_forecast;
  v21.receiver = self;
  v21.super_class = nccp_wra_qmaxp_seq_modelOutput;
  v17 = [(nccp_wra_qmaxp_seq_modelOutput *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_nccp_wra_qmaxp_q10_forecast, nccp_wra_qmaxp_q10_forecast);
    objc_storeStrong(&v18->_nccp_wra_qmaxp_q25_forecast, nccp_wra_qmaxp_q25_forecast);
    objc_storeStrong(&v18->_nccp_wra_qmaxp_q50_forecast, nccp_wra_qmaxp_q50_forecast);
    objc_storeStrong(&v18->_nccp_wra_qmaxp_q75_forecast, nccp_wra_qmaxp_q75_forecast);
    objc_storeStrong(&v18->_nccp_wra_qmaxp_q90_forecast, nccp_wra_qmaxp_q90_forecast);
  }

  return v18;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"nccp_wra_qmaxp_q10_forecast"])
  {
    nccp_wra_qmaxp_q10_forecast = [(nccp_wra_qmaxp_seq_modelOutput *)self nccp_wra_qmaxp_q10_forecast];
LABEL_11:
    v6 = nccp_wra_qmaxp_q10_forecast;
    v7 = [MLFeatureValue featureValueWithMultiArray:nccp_wra_qmaxp_q10_forecast];

    goto LABEL_12;
  }

  if ([nameCopy isEqualToString:@"nccp_wra_qmaxp_q25_forecast"])
  {
    nccp_wra_qmaxp_q10_forecast = [(nccp_wra_qmaxp_seq_modelOutput *)self nccp_wra_qmaxp_q25_forecast];
    goto LABEL_11;
  }

  if ([nameCopy isEqualToString:@"nccp_wra_qmaxp_q50_forecast"])
  {
    nccp_wra_qmaxp_q10_forecast = [(nccp_wra_qmaxp_seq_modelOutput *)self nccp_wra_qmaxp_q50_forecast];
    goto LABEL_11;
  }

  if ([nameCopy isEqualToString:@"nccp_wra_qmaxp_q75_forecast"])
  {
    nccp_wra_qmaxp_q10_forecast = [(nccp_wra_qmaxp_seq_modelOutput *)self nccp_wra_qmaxp_q75_forecast];
    goto LABEL_11;
  }

  if ([nameCopy isEqualToString:@"nccp_wra_qmaxp_q90_forecast"])
  {
    nccp_wra_qmaxp_q10_forecast = [(nccp_wra_qmaxp_seq_modelOutput *)self nccp_wra_qmaxp_q90_forecast];
    goto LABEL_11;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

@end