@interface MOOutlierMetadata
- (MOOutlierMetadata)initWithCoder:(id)a3;
- (MOOutlierMetadata)initWithIdentifier:(id)a3 updateDate:(id)a4 isSignificant:(BOOL)a5 outlierScore:(double)a6 outlierScoreThreshold:(double)a7 bundleGoodnessScore:(double)a8 bundleGoodnessScoreThreshold:(double)a9;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOOutlierMetadata

- (MOOutlierMetadata)initWithIdentifier:(id)a3 updateDate:(id)a4 isSignificant:(BOOL)a5 outlierScore:(double)a6 outlierScoreThreshold:(double)a7 bundleGoodnessScore:(double)a8 bundleGoodnessScoreThreshold:(double)a9
{
  v17 = a3;
  v18 = a4;
  v22.receiver = self;
  v22.super_class = MOOutlierMetadata;
  v19 = [(MOOutlierMetadata *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, a3);
    objc_storeStrong(&v20->_updatedDate, a4);
    v20->_isSignificant = a5;
    v20->_outlierScore = a6;
    v20->_bundleGoodnessScore = a8;
    v20->_outlierScoreThreshold = a7;
    v20->_bundleGoodnessScoreThreshold = a9;
  }

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_updatedDate forKey:@"updatedDate"];
  [v5 encodeBool:self->_isSignificant forKey:@"isSignificant"];
  [v5 encodeDouble:@"outlierScore" forKey:self->_outlierScore];
  [v5 encodeDouble:@"outlierScoreThreshold" forKey:self->_outlierScoreThreshold];
  [v5 encodeDouble:@"bundleGoodnessScore" forKey:self->_bundleGoodnessScore];
  [v5 encodeDouble:@"bundleGoodnessScoreThreshold" forKey:self->_bundleGoodnessScoreThreshold];
}

- (MOOutlierMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"updatedDate"];
  v7 = [v4 decodeBoolForKey:@"isSignificant"];
  [v4 decodeDoubleForKey:@"outlierScore"];
  v9 = v8;
  [v4 decodeDoubleForKey:@"outlierScoreThreshold"];
  v11 = v10;
  [v4 decodeDoubleForKey:@"bundleGoodnessScore"];
  v13 = v12;
  [v4 decodeDoubleForKey:@"bundleGoodnessScoreThreshold"];
  v15 = v14;

  v16 = [(MOOutlierMetadata *)self initWithIdentifier:v5 updateDate:v6 isSignificant:v7 outlierScore:v9 outlierScoreThreshold:v11 bundleGoodnessScore:v13 bundleGoodnessScoreThreshold:v15];
  return v16;
}

@end