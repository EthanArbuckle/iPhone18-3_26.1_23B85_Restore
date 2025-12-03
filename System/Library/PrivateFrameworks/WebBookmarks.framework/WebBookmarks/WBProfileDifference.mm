@interface WBProfileDifference
- (WBProfileDifference)init;
- (WBProfileDifference)initWithResult:(unint64_t)result settingsKeys:(id)keys;
@end

@implementation WBProfileDifference

- (WBProfileDifference)init
{
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [(WBProfileDifference *)self initWithResult:0 settingsKeys:v3];

  return v4;
}

- (WBProfileDifference)initWithResult:(unint64_t)result settingsKeys:(id)keys
{
  keysCopy = keys;
  v13.receiver = self;
  v13.super_class = WBProfileDifference;
  v7 = [(WBProfileDifference *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_result = result;
    v9 = [keysCopy copy];
    settingsKeys = v8->_settingsKeys;
    v8->_settingsKeys = v9;

    v11 = v8;
  }

  return v8;
}

@end