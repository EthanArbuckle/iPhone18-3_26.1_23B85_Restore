@interface OngoingCredentialSharingStrings
+ (NSString)cannotChangePermissionForGroupMemberTitle;
+ (NSString)choosePasswordsButtonTitle;
+ (NSString)groupManagementViewSubtitleStringForNonOwner;
+ (NSString)newGroupButtonTitle;
+ (NSString)newGroupViewTitle;
+ (NSString)preventReadOnlyPermissionForGroupMemberThatHasContributedPasswordsExplanationFooter;
+ (NSString)removeDuplicatePasswordsTitle;
+ (NSString)reviewDuplicateButtonTitle;
+ (NSString)sharedPasswordsGroupsUnavailableAlertTitle;
+ (NSString)unableToInviteAllParticipantsBecauseOfUnsupportedDevicesAlertMessage;
+ (NSString)unableToInviteMultipleContactsBecauseOfUnsupportedDevicesAlertMessage;
+ (id)unableToInviteContactBecauseOfUnsupportedDevicesAlertMessageWithContactName:(id)a3;
- (_TtC17PasswordManagerUI31OngoingCredentialSharingStrings)init;
@end

@implementation OngoingCredentialSharingStrings

+ (NSString)cannotChangePermissionForGroupMemberTitle
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

+ (NSString)preventReadOnlyPermissionForGroupMemberThatHasContributedPasswordsExplanationFooter
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

+ (NSString)groupManagementViewSubtitleStringForNonOwner
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

+ (NSString)newGroupViewTitle
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FF4();
  v10 = *(v3 + 8);
  v10(v7, v2);
  v10(v9, v2);
  v11 = sub_21CB85584();

  return v11;
}

+ (NSString)newGroupButtonTitle
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FF4();
  v10 = *(v3 + 8);
  v10(v7, v2);
  v10(v9, v2);
  v11 = sub_21CB85584();

  return v11;
}

+ (NSString)choosePasswordsButtonTitle
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

+ (NSString)reviewDuplicateButtonTitle
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

+ (NSString)removeDuplicatePasswordsTitle
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

+ (NSString)unableToInviteAllParticipantsBecauseOfUnsupportedDevicesAlertMessage
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

+ (id)unableToInviteContactBecauseOfUnsupportedDevicesAlertMessageWithContactName:(id)a3
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

+ (NSString)unableToInviteMultipleContactsBecauseOfUnsupportedDevicesAlertMessage
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

+ (NSString)sharedPasswordsGroupsUnavailableAlertTitle
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

- (_TtC17PasswordManagerUI31OngoingCredentialSharingStrings)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for OngoingCredentialSharingStrings();
  return [(OngoingCredentialSharingStrings *)&v3 init];
}

@end