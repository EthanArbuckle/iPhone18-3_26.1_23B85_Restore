@interface WBProfileDifference
- (WBProfileDifference)init;
- (WBProfileDifference)initWithResult:(unint64_t)a3 settingsKeys:(id)a4;
@end

@implementation WBProfileDifference

- (WBProfileDifference)init
{
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [(WBProfileDifference *)self initWithResult:0 settingsKeys:v3];

  return v4;
}

- (WBProfileDifference)initWithResult:(unint64_t)a3 settingsKeys:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = WBProfileDifference;
  v7 = [(WBProfileDifference *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_result = a3;
    v9 = [v6 copy];
    settingsKeys = v8->_settingsKeys;
    v8->_settingsKeys = v9;

    v11 = v8;
  }

  return v8;
}

@end