@interface STProcessFamilySettingsResult
- (STProcessFamilySettingsResult)initWithScreenTimeManagementStateTransitionsByDSID:(id)a3 appAndWebsiteActivityStateTransitionsByDSID:(id)a4 contactManagementStateTransitionsByDSID:(id)a5 givenChildNamesByDSID:(id)a6 updatedSettingsByUserDSID:(id)a7;
@end

@implementation STProcessFamilySettingsResult

- (STProcessFamilySettingsResult)initWithScreenTimeManagementStateTransitionsByDSID:(id)a3 appAndWebsiteActivityStateTransitionsByDSID:(id)a4 contactManagementStateTransitionsByDSID:(id)a5 givenChildNamesByDSID:(id)a6 updatedSettingsByUserDSID:(id)a7
{
  v28.receiver = self;
  v28.super_class = STProcessFamilySettingsResult;
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(STProcessFamilySettingsResult *)&v28 init];
  v17 = [v15 copy];

  screenTimeManagementStateTransitionsByDSID = v16->_screenTimeManagementStateTransitionsByDSID;
  v16->_screenTimeManagementStateTransitionsByDSID = v17;

  v19 = [v14 copy];
  appAndWebsiteActivityStateTransitionsByDSID = v16->_appAndWebsiteActivityStateTransitionsByDSID;
  v16->_appAndWebsiteActivityStateTransitionsByDSID = v19;

  v21 = [v13 copy];
  contactManagementStateTransitionsByDSID = v16->_contactManagementStateTransitionsByDSID;
  v16->_contactManagementStateTransitionsByDSID = v21;

  v23 = [v12 copy];
  givenChildNamesByDSID = v16->_givenChildNamesByDSID;
  v16->_givenChildNamesByDSID = v23;

  v25 = [v11 copy];
  updatedSettingsByUserDSID = v16->_updatedSettingsByUserDSID;
  v16->_updatedSettingsByUserDSID = v25;

  return v16;
}

@end