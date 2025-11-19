@interface OngoingCredentialSharingAlertConfiguration
+ (NSString)alertSubtitleForFailingToMoveAccountsBackToPersonalKeychainWhileDeletingGroup;
+ (NSString)alertSubtitleForFailingToMoveAccountsBackToPersonalKeychainWhileLeavingGroup;
+ (NSString)alertSubtitleForUnavailableGroup;
+ (NSString)alertTitleForFailingToMoveToGroup;
+ (NSString)alertTitleForUnavailableGroup;
+ (NSString)groupDeletionConfirmationAlertTitle;
+ (NSString)leaveGroupConfirmationAlertTitle;
+ (id)alertSubtitleForFailingToMoveSavedAccounts:(id)a3 toGroupWithName:(id)a4;
+ (id)alertTitleAndSubtitleForMovingSavedAccounts:(id)a3 toGroupWithName:(id)a4 isDragAndDropOperation:(BOOL)a5;
+ (id)alertTitleForFailingToAcceptInvitationWithError:(id)a3;
+ (id)alertTitleForFailingToAddGroupMemberWithError:(id)a3;
+ (id)alertTitleForFailingToCreateGroupWithError:(id)a3;
+ (id)alertTitleForFailingToDeclineInvitationWithError:(id)a3;
+ (id)alertTitleForFailingToDeleteGroupWithError:(id)a3;
+ (id)alertTitleForFailingToLeaveGroupWithError:(id)a3;
+ (id)alertTitleForFailingToRemoveGroupMemberWithError:(id)a3;
+ (id)alertTitleForFailingToUpdateGroupWithError:(id)a3;
+ (id)alertTitleForMovingSavedAccount:(id)a3 toGroupWithName:(id)a4;
+ (id)confirmationAlertSubtitleForMovingSavedAccount:(id)a3 fromGroupWithName:(id)a4;
+ (id)confirmationAlertSubtitleForMovingSavedAccount:(id)a3 fromMyPasswordstoGroupWithName:(id)a4;
+ (id)confirmationAlertSubtitleForMovingSavedAccount:(id)a3 toMyPasswordsFromGroup:(id)a4;
+ (id)confirmationAlertSubtitleForRemovingGroupMemberWithName:(id)a3;
+ (id)confirmationAlertTitleForRemovingGroupMemberWithName:(id)a3;
+ (id)declineGroupInvitationAlertTitleForGroupWithName:(id)a3 fromKnownSender:(BOOL)a4;
+ (id)groupExitWarningAlertTitleWithGroupMemberNames:(id)a3;
+ (id)warningAlertMessageForMovingNumberOfReusedPasswords:(int64_t)a3 withTotalNumberOfAccountsSelected:(int64_t)a4;
+ (id)warningAlertSubtitleTellingUserThatRemovedGroupMemberMightStillHaveAccessToAccountsAfterRemovalWithName:(id)a3;
+ (id)warningAlertTitleForMovingNumberOfReusedPasswords:(int64_t)a3 withTotalNumberOfAccountsSelected:(int64_t)a4;
+ (id)warningAlertTitleTellingUserThatRemovedGroupMemberMightStillHaveAccessToAccountsAfterRemovalWithName:(id)a3;
- (_TtC17PasswordManagerUI42OngoingCredentialSharingAlertConfiguration)init;
@end

@implementation OngoingCredentialSharingAlertConfiguration

+ (id)confirmationAlertSubtitleForMovingSavedAccount:(id)a3 toMyPasswordsFromGroup:(id)a4
{
  v5 = a3;
  v6 = a4;
  sub_21C7BD554(v5, v6);
  v8 = v7;

  if (v8)
  {
    v9 = sub_21CB85584();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)confirmationAlertSubtitleForMovingSavedAccount:(id)a3 fromMyPasswordstoGroupWithName:(id)a4
{
  v4 = a3;
  sub_21C7BFCA4(v4);

  v5 = sub_21CB85584();

  return v5;
}

+ (id)confirmationAlertSubtitleForMovingSavedAccount:(id)a3 fromGroupWithName:(id)a4
{
  v5 = sub_21CB855C4();
  v7 = v6;
  v8 = a3;
  sub_21C7BFE38(v8, v5, v7);

  v9 = sub_21CB85584();

  return v9;
}

+ (id)confirmationAlertTitleForRemovingGroupMemberWithName:(id)a3
{
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB855C4();
  v10 = v9;
  sub_21CB81014();
  sub_21CB81004();
  (*(v4 + 8))(v7, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21CBA0690;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_21C7C0050();
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;
  sub_21CB85594();

  v12 = sub_21CB85584();

  return v12;
}

+ (id)confirmationAlertSubtitleForRemovingGroupMemberWithName:(id)a3
{
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB855C4();
  v10 = v9;
  sub_21CB81014();
  sub_21CB81004();
  (*(v4 + 8))(v7, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21CBA0690;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_21C7C0050();
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;
  sub_21CB85594();

  v12 = sub_21CB85584();

  return v12;
}

+ (id)warningAlertTitleTellingUserThatRemovedGroupMemberMightStillHaveAccessToAccountsAfterRemovalWithName:(id)a3
{
  v3 = sub_21CB855C4();
  sub_21C7C00A4(v3, v4);

  v5 = sub_21CB85584();

  return v5;
}

+ (id)warningAlertSubtitleTellingUserThatRemovedGroupMemberMightStillHaveAccessToAccountsAfterRemovalWithName:(id)a3
{
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB855C4();
  v10 = v9;
  sub_21CB81014();
  sub_21CB81004();
  (*(v4 + 8))(v7, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21CBA0690;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_21C7C0050();
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;
  sub_21CB85594();

  v12 = sub_21CB85584();

  return v12;
}

+ (id)alertTitleAndSubtitleForMovingSavedAccounts:(id)a3 toGroupWithName:(id)a4 isDragAndDropOperation:(BOOL)a5
{
  sub_21C6E8F4C(0, &qword_27CDF76E0, 0x277D49B20);
  v7 = sub_21CB85824();
  if (a4)
  {
    v8 = sub_21CB855C4();
    a4 = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = sub_21C7C15C0(v7, v8, a4, a5);

  return v10;
}

+ (NSString)alertTitleForFailingToMoveToGroup
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v3 + 8))(v6, v2);
  v7 = sub_21CB85584();

  return v7;
}

+ (id)alertSubtitleForFailingToMoveSavedAccounts:(id)a3 toGroupWithName:(id)a4
{
  sub_21C6E8F4C(0, &qword_27CDF76E0, 0x277D49B20);
  v5 = sub_21CB85824();
  if (a4)
  {
    v6 = sub_21CB855C4();
    a4 = v7;
  }

  else
  {
    v6 = 0;
  }

  sub_21C7C1BFC(v5, v6, a4);

  v8 = sub_21CB85584();

  return v8;
}

+ (id)warningAlertTitleForMovingNumberOfReusedPasswords:(int64_t)a3 withTotalNumberOfAccountsSelected:(int64_t)a4
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v5 + 8))(v8, v4);
  v9 = sub_21CB85584();

  return v9;
}

+ (id)warningAlertMessageForMovingNumberOfReusedPasswords:(int64_t)a3 withTotalNumberOfAccountsSelected:(int64_t)a4
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v5 + 8))(v8, v4);
  v9 = sub_21CB85584();

  return v9;
}

+ (id)alertTitleForMovingSavedAccount:(id)a3 toGroupWithName:(id)a4
{
  if (a4)
  {
    v5 = sub_21CB855C4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  sub_21C7C1D78(v8, v5, v7);

  v9 = sub_21CB85584();

  return v9;
}

+ (NSString)groupDeletionConfirmationAlertTitle
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v3 + 8))(v6, v2);
  v7 = sub_21CB85584();

  return v7;
}

+ (NSString)leaveGroupConfirmationAlertTitle
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v3 + 8))(v6, v2);
  v7 = sub_21CB85584();

  return v7;
}

+ (id)groupExitWarningAlertTitleWithGroupMemberNames:(id)a3
{
  v3 = sub_21CB85824();
  sub_21C7C2A6C(v3);

  v4 = sub_21CB85584();

  return v4;
}

+ (NSString)alertSubtitleForFailingToMoveAccountsBackToPersonalKeychainWhileLeavingGroup
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v3 + 8))(v6, v2);
  v7 = sub_21CB85584();

  return v7;
}

+ (NSString)alertSubtitleForFailingToMoveAccountsBackToPersonalKeychainWhileDeletingGroup
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v3 + 8))(v6, v2);
  v7 = sub_21CB85584();

  return v7;
}

+ (NSString)alertTitleForUnavailableGroup
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v3 + 8))(v6, v2);
  v7 = sub_21CB85584();

  return v7;
}

+ (NSString)alertSubtitleForUnavailableGroup
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v3 + 8))(v6, v2);
  v7 = sub_21CB85584();

  return v7;
}

+ (id)alertTitleForFailingToCreateGroupWithError:(id)a3
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v9 = a3;
    if ([v9 safari_isOrContainsNetworkUnavailableError])
    {
      a3 = v9;
    }
  }

  sub_21CB81014();
  sub_21CB81004();

  (*(v5 + 8))(v8, v4);
  v10 = sub_21CB85584();

  return v10;
}

+ (id)alertTitleForFailingToDeleteGroupWithError:(id)a3
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v9 = a3;
    if ([v9 safari_isOrContainsNetworkUnavailableError])
    {
      a3 = v9;
    }
  }

  sub_21CB81014();
  sub_21CB81004();

  (*(v5 + 8))(v8, v4);
  v10 = sub_21CB85584();

  return v10;
}

+ (id)alertTitleForFailingToLeaveGroupWithError:(id)a3
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v9 = a3;
    if ([v9 safari_isOrContainsNetworkUnavailableError])
    {
      a3 = v9;
    }
  }

  sub_21CB81014();
  sub_21CB81004();

  (*(v5 + 8))(v8, v4);
  v10 = sub_21CB85584();

  return v10;
}

+ (id)alertTitleForFailingToAddGroupMemberWithError:(id)a3
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v9 = a3;
    if ([v9 safari_isOrContainsNetworkUnavailableError])
    {
      a3 = v9;
    }
  }

  sub_21CB81014();
  sub_21CB81004();

  (*(v5 + 8))(v8, v4);
  v10 = sub_21CB85584();

  return v10;
}

+ (id)alertTitleForFailingToRemoveGroupMemberWithError:(id)a3
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v9 = a3;
    if ([v9 safari_isOrContainsNetworkUnavailableError])
    {
      a3 = v9;
    }
  }

  sub_21CB81014();
  sub_21CB81004();

  (*(v5 + 8))(v8, v4);
  v10 = sub_21CB85584();

  return v10;
}

+ (id)alertTitleForFailingToUpdateGroupWithError:(id)a3
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v9 = a3;
    if ([v9 safari_isOrContainsNetworkUnavailableError])
    {
      a3 = v9;
    }
  }

  sub_21CB81014();
  sub_21CB81004();

  (*(v5 + 8))(v8, v4);
  v10 = sub_21CB85584();

  return v10;
}

+ (id)alertTitleForFailingToAcceptInvitationWithError:(id)a3
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v9 = a3;
    if ([v9 safari_isOrContainsNetworkUnavailableError])
    {
      a3 = v9;
    }
  }

  sub_21CB81014();
  sub_21CB81004();

  (*(v5 + 8))(v8, v4);
  v10 = sub_21CB85584();

  return v10;
}

+ (id)alertTitleForFailingToDeclineInvitationWithError:(id)a3
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v9 = a3;
    if ([v9 safari_isOrContainsNetworkUnavailableError])
    {
      a3 = v9;
    }
  }

  sub_21CB81014();
  sub_21CB81004();

  (*(v5 + 8))(v8, v4);
  v10 = sub_21CB85584();

  return v10;
}

+ (id)declineGroupInvitationAlertTitleForGroupWithName:(id)a3 fromKnownSender:(BOOL)a4
{
  v5 = sub_21CB855C4();
  sub_21C7C2FB4(v5, v6, a4);

  v7 = sub_21CB85584();

  return v7;
}

- (_TtC17PasswordManagerUI42OngoingCredentialSharingAlertConfiguration)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for OngoingCredentialSharingAlertConfiguration();
  return [(OngoingCredentialSharingAlertConfiguration *)&v3 init];
}

@end