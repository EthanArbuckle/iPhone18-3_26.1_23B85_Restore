@interface STStatusBarDataBackgroundActivityEntry
+ (id)entryWithBackgroundActivityIdentifier:(id)a3 displayStartDate:(double)a4 detailString:(id)a5;
- (STStatusBarDataBackgroundActivityEntry)initWithBSXPCCoder:(id)a3;
- (STStatusBarDataBackgroundActivityEntry)initWithCoder:(id)a3;
- (id)_equalsBuilderWithObject:(id)a3;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusBarDataBackgroundActivityEntry

+ (id)entryWithBackgroundActivityIdentifier:(id)a3 displayStartDate:(double)a4 detailString:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(a1);
  v11 = [v9 copy];

  v12 = *(v10 + 2);
  *(v10 + 2) = v11;

  v10[3] = a4;
  v13 = [v8 copy];

  v14 = *(v10 + 4);
  *(v10 + 4) = v13;

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataBackgroundActivityEntry;
  v4 = a3;
  [(STStatusBarDataEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_backgroundActivityIdentifier forKey:{@"backgroundActivityIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeDouble:@"displayStartDate" forKey:self->_displayStartDate];
  [v4 encodeObject:self->_detailString forKey:@"detailString"];
}

- (STStatusBarDataBackgroundActivityEntry)initWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = STStatusBarDataBackgroundActivityEntry;
  v3 = a3;
  v4 = [(STStatusBarDataEntry *)&v11 initWithCoder:v3];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"backgroundActivityIdentifier", v11.receiver, v11.super_class}];
  backgroundActivityIdentifier = v4->_backgroundActivityIdentifier;
  v4->_backgroundActivityIdentifier = v5;

  [v3 decodeDoubleForKey:@"displayStartDate"];
  v4->_displayStartDate = v7;
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"detailString"];

  detailString = v4->_detailString;
  v4->_detailString = v8;

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataBackgroundActivityEntry;
  v3 = [(STStatusBarDataEntry *)&v8 succinctDescriptionBuilder];
  v4 = [(STStatusBarDataBackgroundActivityEntry *)self backgroundActivityIdentifier];
  v5 = STBackgroundActivityIdentifierDescription(v4);
  [v3 appendString:v5 withName:@"backgroundActivityIdentifier"];

  v6 = [(STStatusBarDataBackgroundActivityEntry *)self detailString];
  [v3 appendString:v6 withName:@"detailString"];

  return v3;
}

- (id)_equalsBuilderWithObject:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = STStatusBarDataBackgroundActivityEntry;
  v5 = [(STStatusBarDataEntry *)&v24 _equalsBuilderWithObject:v4];
  v6 = v4;
  v7 = [(STStatusBarDataBackgroundActivityEntry *)self backgroundActivityIdentifier];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __67__STStatusBarDataBackgroundActivityEntry__equalsBuilderWithObject___block_invoke;
  v22[3] = &unk_1E85DDD28;
  v8 = v6;
  v23 = v8;
  v9 = [v5 appendString:v7 counterpart:v22];

  [(STStatusBarDataBackgroundActivityEntry *)self displayStartDate];
  v11 = v10;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __67__STStatusBarDataBackgroundActivityEntry__equalsBuilderWithObject___block_invoke_2;
  v20[3] = &unk_1E85DEAF8;
  v12 = v8;
  v21 = v12;
  v13 = [v5 appendDouble:v20 counterpart:v11];
  v14 = [(STStatusBarDataBackgroundActivityEntry *)self detailString];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__STStatusBarDataBackgroundActivityEntry__equalsBuilderWithObject___block_invoke_3;
  v18[3] = &unk_1E85DDD28;
  v19 = v12;
  v15 = v12;
  v16 = [v5 appendString:v14 counterpart:v18];

  return v5;
}

- (id)_hashBuilder
{
  v10.receiver = self;
  v10.super_class = STStatusBarDataBackgroundActivityEntry;
  v3 = [(STStatusBarDataEntry *)&v10 _hashBuilder];
  v4 = [(STStatusBarDataBackgroundActivityEntry *)self backgroundActivityIdentifier];
  v5 = [v3 appendString:v4];

  [(STStatusBarDataBackgroundActivityEntry *)self displayStartDate];
  v6 = [v3 appendDouble:?];
  v7 = [(STStatusBarDataBackgroundActivityEntry *)self detailString];
  v8 = [v3 appendString:v7];

  return v3;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataBackgroundActivityEntry;
  v4 = a3;
  [(STStatusBarDataEntry *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeObject:self->_backgroundActivityIdentifier forKey:{@"backgroundActivityIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeDouble:@"displayStartDate" forKey:self->_displayStartDate];
  [v4 encodeObject:self->_detailString forKey:@"detailString"];
}

- (STStatusBarDataBackgroundActivityEntry)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = STStatusBarDataBackgroundActivityEntry;
  v5 = [(STStatusBarDataEntry *)&v12 initWithBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeStringForKey:@"backgroundActivityIdentifier"];
    backgroundActivityIdentifier = v5->_backgroundActivityIdentifier;
    v5->_backgroundActivityIdentifier = v6;

    [v4 decodeDoubleForKey:@"displayStartDate"];
    v5->_displayStartDate = v8;
    v9 = [v4 decodeStringForKey:@"detailString"];
    detailString = v5->_detailString;
    v5->_detailString = v9;
  }

  return v5;
}

@end