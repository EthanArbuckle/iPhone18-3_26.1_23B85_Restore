@interface nccp_wra_qmaxp_seq_modelOutput
- (id)featureValueForName:(id)a3;
- (nccp_wra_qmaxp_seq_modelOutput)initWithNccp_wra_qmaxp_q10_forecast:(id)a3 nccp_wra_qmaxp_q25_forecast:(id)a4 nccp_wra_qmaxp_q50_forecast:(id)a5 nccp_wra_qmaxp_q75_forecast:(id)a6 nccp_wra_qmaxp_q90_forecast:(id)a7;
@end

@implementation nccp_wra_qmaxp_seq_modelOutput

- (nccp_wra_qmaxp_seq_modelOutput)initWithNccp_wra_qmaxp_q10_forecast:(id)a3 nccp_wra_qmaxp_q25_forecast:(id)a4 nccp_wra_qmaxp_q50_forecast:(id)a5 nccp_wra_qmaxp_q75_forecast:(id)a6 nccp_wra_qmaxp_q90_forecast:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = nccp_wra_qmaxp_seq_modelOutput;
  v17 = [(nccp_wra_qmaxp_seq_modelOutput *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_nccp_wra_qmaxp_q10_forecast, a3);
    objc_storeStrong(&v18->_nccp_wra_qmaxp_q25_forecast, a4);
    objc_storeStrong(&v18->_nccp_wra_qmaxp_q50_forecast, a5);
    objc_storeStrong(&v18->_nccp_wra_qmaxp_q75_forecast, a6);
    objc_storeStrong(&v18->_nccp_wra_qmaxp_q90_forecast, a7);
  }

  return v18;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"nccp_wra_qmaxp_q10_forecast"])
  {
    v5 = [(nccp_wra_qmaxp_seq_modelOutput *)self nccp_wra_qmaxp_q10_forecast];
LABEL_11:
    v6 = v5;
    v7 = [MLFeatureValue featureValueWithMultiArray:v5];

    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"nccp_wra_qmaxp_q25_forecast"])
  {
    v5 = [(nccp_wra_qmaxp_seq_modelOutput *)self nccp_wra_qmaxp_q25_forecast];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"nccp_wra_qmaxp_q50_forecast"])
  {
    v5 = [(nccp_wra_qmaxp_seq_modelOutput *)self nccp_wra_qmaxp_q50_forecast];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"nccp_wra_qmaxp_q75_forecast"])
  {
    v5 = [(nccp_wra_qmaxp_seq_modelOutput *)self nccp_wra_qmaxp_q75_forecast];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"nccp_wra_qmaxp_q90_forecast"])
  {
    v5 = [(nccp_wra_qmaxp_seq_modelOutput *)self nccp_wra_qmaxp_q90_forecast];
    goto LABEL_11;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

@end