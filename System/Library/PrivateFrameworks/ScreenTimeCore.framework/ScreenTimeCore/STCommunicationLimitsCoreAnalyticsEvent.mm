@interface STCommunicationLimitsCoreAnalyticsEvent
- (NSDictionary)payload;
- (STCommunicationLimitsCoreAnalyticsEvent)initWithCommunicationLimited:(BOOL)limited contactManagementEnabled:(BOOL)enabled contactEditingAllowed:(BOOL)allowed userAgeGroup:(int64_t)group userIsRemote:(BOOL)remote;
@end

@implementation STCommunicationLimitsCoreAnalyticsEvent

- (STCommunicationLimitsCoreAnalyticsEvent)initWithCommunicationLimited:(BOOL)limited contactManagementEnabled:(BOOL)enabled contactEditingAllowed:(BOOL)allowed userAgeGroup:(int64_t)group userIsRemote:(BOOL)remote
{
  v13.receiver = self;
  v13.super_class = STCommunicationLimitsCoreAnalyticsEvent;
  result = [(STCommunicationLimitsCoreAnalyticsEvent *)&v13 init];
  result->_communicationLimited = limited;
  result->_contactManagementEnabled = enabled;
  result->_contactEditingAllowed = allowed;
  result->_userAgeGroup = group;
  result->_userIsRemote = remote;
  return result;
}

- (NSDictionary)payload
{
  v12[5] = *MEMORY[0x1E69E9840];
  v11[0] = @"communicationLimited";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[STCommunicationLimitsCoreAnalyticsEvent communicationLimited](self, "communicationLimited")}];
  v12[0] = v3;
  v11[1] = @"contactManagementEnabled";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[STCommunicationLimitsCoreAnalyticsEvent contactManagementEnabled](self, "contactManagementEnabled")}];
  v12[1] = v4;
  v11[2] = @"contactEditingAllowed";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[STCommunicationLimitsCoreAnalyticsEvent contactEditingAllowed](self, "contactEditingAllowed")}];
  v12[2] = v5;
  v11[3] = @"userAgeGroup";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[STCommunicationLimitsCoreAnalyticsEvent userAgeGroup](self, "userAgeGroup")}];
  v12[3] = v6;
  v11[4] = @"userIsRemote";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[STCommunicationLimitsCoreAnalyticsEvent userIsRemote](self, "userIsRemote")}];
  v12[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end