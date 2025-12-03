@interface STStatusBarDataBackgroundActivityEntry
+ (id)entryWithBackgroundActivityIdentifier:(id)identifier displayStartDate:(double)date detailString:(id)string;
- (STStatusBarDataBackgroundActivityEntry)initWithBSXPCCoder:(id)coder;
- (STStatusBarDataBackgroundActivityEntry)initWithCoder:(id)coder;
- (id)_equalsBuilderWithObject:(id)object;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusBarDataBackgroundActivityEntry

+ (id)entryWithBackgroundActivityIdentifier:(id)identifier displayStartDate:(double)date detailString:(id)string
{
  stringCopy = string;
  identifierCopy = identifier;
  v10 = objc_alloc_init(self);
  v11 = [identifierCopy copy];

  v12 = *(v10 + 2);
  *(v10 + 2) = v11;

  v10[3] = date;
  v13 = [stringCopy copy];

  v14 = *(v10 + 4);
  *(v10 + 4) = v13;

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataBackgroundActivityEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_backgroundActivityIdentifier forKey:{@"backgroundActivityIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"displayStartDate" forKey:self->_displayStartDate];
  [coderCopy encodeObject:self->_detailString forKey:@"detailString"];
}

- (STStatusBarDataBackgroundActivityEntry)initWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = STStatusBarDataBackgroundActivityEntry;
  coderCopy = coder;
  v4 = [(STStatusBarDataEntry *)&v11 initWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"backgroundActivityIdentifier", v11.receiver, v11.super_class}];
  backgroundActivityIdentifier = v4->_backgroundActivityIdentifier;
  v4->_backgroundActivityIdentifier = v5;

  [coderCopy decodeDoubleForKey:@"displayStartDate"];
  v4->_displayStartDate = v7;
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"detailString"];

  detailString = v4->_detailString;
  v4->_detailString = v8;

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataBackgroundActivityEntry;
  succinctDescriptionBuilder = [(STStatusBarDataEntry *)&v8 succinctDescriptionBuilder];
  backgroundActivityIdentifier = [(STStatusBarDataBackgroundActivityEntry *)self backgroundActivityIdentifier];
  v5 = STBackgroundActivityIdentifierDescription(backgroundActivityIdentifier);
  [succinctDescriptionBuilder appendString:v5 withName:@"backgroundActivityIdentifier"];

  detailString = [(STStatusBarDataBackgroundActivityEntry *)self detailString];
  [succinctDescriptionBuilder appendString:detailString withName:@"detailString"];

  return succinctDescriptionBuilder;
}

- (id)_equalsBuilderWithObject:(id)object
{
  objectCopy = object;
  v24.receiver = self;
  v24.super_class = STStatusBarDataBackgroundActivityEntry;
  v5 = [(STStatusBarDataEntry *)&v24 _equalsBuilderWithObject:objectCopy];
  v6 = objectCopy;
  backgroundActivityIdentifier = [(STStatusBarDataBackgroundActivityEntry *)self backgroundActivityIdentifier];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __67__STStatusBarDataBackgroundActivityEntry__equalsBuilderWithObject___block_invoke;
  v22[3] = &unk_1E85DDD28;
  v8 = v6;
  v23 = v8;
  v9 = [v5 appendString:backgroundActivityIdentifier counterpart:v22];

  [(STStatusBarDataBackgroundActivityEntry *)self displayStartDate];
  v11 = v10;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __67__STStatusBarDataBackgroundActivityEntry__equalsBuilderWithObject___block_invoke_2;
  v20[3] = &unk_1E85DEAF8;
  v12 = v8;
  v21 = v12;
  v13 = [v5 appendDouble:v20 counterpart:v11];
  detailString = [(STStatusBarDataBackgroundActivityEntry *)self detailString];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__STStatusBarDataBackgroundActivityEntry__equalsBuilderWithObject___block_invoke_3;
  v18[3] = &unk_1E85DDD28;
  v19 = v12;
  v15 = v12;
  v16 = [v5 appendString:detailString counterpart:v18];

  return v5;
}

- (id)_hashBuilder
{
  v10.receiver = self;
  v10.super_class = STStatusBarDataBackgroundActivityEntry;
  _hashBuilder = [(STStatusBarDataEntry *)&v10 _hashBuilder];
  backgroundActivityIdentifier = [(STStatusBarDataBackgroundActivityEntry *)self backgroundActivityIdentifier];
  v5 = [_hashBuilder appendString:backgroundActivityIdentifier];

  [(STStatusBarDataBackgroundActivityEntry *)self displayStartDate];
  v6 = [_hashBuilder appendDouble:?];
  detailString = [(STStatusBarDataBackgroundActivityEntry *)self detailString];
  v8 = [_hashBuilder appendString:detailString];

  return _hashBuilder;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataBackgroundActivityEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeObject:self->_backgroundActivityIdentifier forKey:{@"backgroundActivityIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"displayStartDate" forKey:self->_displayStartDate];
  [coderCopy encodeObject:self->_detailString forKey:@"detailString"];
}

- (STStatusBarDataBackgroundActivityEntry)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = STStatusBarDataBackgroundActivityEntry;
  v5 = [(STStatusBarDataEntry *)&v12 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeStringForKey:@"backgroundActivityIdentifier"];
    backgroundActivityIdentifier = v5->_backgroundActivityIdentifier;
    v5->_backgroundActivityIdentifier = v6;

    [coderCopy decodeDoubleForKey:@"displayStartDate"];
    v5->_displayStartDate = v8;
    v9 = [coderCopy decodeStringForKey:@"detailString"];
    detailString = v5->_detailString;
    v5->_detailString = v9;
  }

  return v5;
}

@end