@interface WBSChangePasswordURLManager
- (WBSChangePasswordURLManager)initWithChangePasswordURLStrings:(id)a3;
- (id)changePasswordURLForHighLevelDomain:(id)a3;
@end

@implementation WBSChangePasswordURLManager

- (WBSChangePasswordURLManager)initWithChangePasswordURLStrings:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WBSChangePasswordURLManager;
  v5 = [(WBSChangePasswordURLManager *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    changePasswordURLStrings = v5->_changePasswordURLStrings;
    v5->_changePasswordURLStrings = v6;

    v8 = v5;
  }

  return v5;
}

- (id)changePasswordURLForHighLevelDomain:(id)a3
{
  v3 = [(NSDictionary *)self->_changePasswordURLStrings objectForKeyedSubscript:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end