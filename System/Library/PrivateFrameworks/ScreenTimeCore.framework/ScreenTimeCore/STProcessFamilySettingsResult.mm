@interface STProcessFamilySettingsResult
- (STProcessFamilySettingsResult)initWithScreenTimeManagementStateTransitionsByDSID:(id)d appAndWebsiteActivityStateTransitionsByDSID:(id)iD contactManagementStateTransitionsByDSID:(id)sID givenChildNamesByDSID:(id)dSID updatedSettingsByUserDSID:(id)userDSID;
@end

@implementation STProcessFamilySettingsResult

- (STProcessFamilySettingsResult)initWithScreenTimeManagementStateTransitionsByDSID:(id)d appAndWebsiteActivityStateTransitionsByDSID:(id)iD contactManagementStateTransitionsByDSID:(id)sID givenChildNamesByDSID:(id)dSID updatedSettingsByUserDSID:(id)userDSID
{
  v28.receiver = self;
  v28.super_class = STProcessFamilySettingsResult;
  userDSIDCopy = userDSID;
  dSIDCopy = dSID;
  sIDCopy = sID;
  iDCopy = iD;
  dCopy = d;
  v16 = [(STProcessFamilySettingsResult *)&v28 init];
  v17 = [dCopy copy];

  screenTimeManagementStateTransitionsByDSID = v16->_screenTimeManagementStateTransitionsByDSID;
  v16->_screenTimeManagementStateTransitionsByDSID = v17;

  v19 = [iDCopy copy];
  appAndWebsiteActivityStateTransitionsByDSID = v16->_appAndWebsiteActivityStateTransitionsByDSID;
  v16->_appAndWebsiteActivityStateTransitionsByDSID = v19;

  v21 = [sIDCopy copy];
  contactManagementStateTransitionsByDSID = v16->_contactManagementStateTransitionsByDSID;
  v16->_contactManagementStateTransitionsByDSID = v21;

  v23 = [dSIDCopy copy];
  givenChildNamesByDSID = v16->_givenChildNamesByDSID;
  v16->_givenChildNamesByDSID = v23;

  v25 = [userDSIDCopy copy];
  updatedSettingsByUserDSID = v16->_updatedSettingsByUserDSID;
  v16->_updatedSettingsByUserDSID = v25;

  return v16;
}

@end