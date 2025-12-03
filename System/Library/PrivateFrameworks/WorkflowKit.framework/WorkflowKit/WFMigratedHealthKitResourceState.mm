@interface WFMigratedHealthKitResourceState
- (WFMigratedHealthKitResourceState)initWithCoder:(id)coder;
@end

@implementation WFMigratedHealthKitResourceState

- (WFMigratedHealthKitResourceState)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = WFMigratedHealthKitResourceState;
  v5 = [(WFMigratedHealthKitResourceState *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"entries"];
    entries = v5->entries;
    v5->entries = v9;

    v11 = v5;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

@end