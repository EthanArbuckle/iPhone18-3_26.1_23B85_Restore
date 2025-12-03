@interface STFamilyMember
- (STFamilyMember)initWithDSID:(id)d altDSID:(id)iD appleID:(id)appleID memberType:(id)type firstName:(id)name lastName:(id)lastName isMe:(BOOL)me isParent:(BOOL)self0 isOrganizer:(BOOL)self1;
- (id)description;
@end

@implementation STFamilyMember

- (STFamilyMember)initWithDSID:(id)d altDSID:(id)iD appleID:(id)appleID memberType:(id)type firstName:(id)name lastName:(id)lastName isMe:(BOOL)me isParent:(BOOL)self0 isOrganizer:(BOOL)self1
{
  dCopy = d;
  iDCopy = iD;
  appleIDCopy = appleID;
  typeCopy = type;
  nameCopy = name;
  lastNameCopy = lastName;
  v37.receiver = self;
  v37.super_class = STFamilyMember;
  v23 = [(STFamilyMember *)&v37 init];
  if (v23)
  {
    v24 = [dCopy copy];
    DSID = v23->_DSID;
    v23->_DSID = v24;

    v26 = [iDCopy copy];
    altDSID = v23->_altDSID;
    v23->_altDSID = v26;

    v28 = [appleIDCopy copy];
    appleID = v23->_appleID;
    v23->_appleID = v28;

    v30 = [typeCopy copy];
    memberType = v23->_memberType;
    v23->_memberType = v30;

    v32 = [nameCopy copy];
    firstName = v23->_firstName;
    v23->_firstName = v32;

    v34 = [lastNameCopy copy];
    lastName = v23->_lastName;
    v23->_lastName = v34;

    v23->_isMe = me;
    v23->_isParent = parent;
    v23->_isOrganizer = organizer;
  }

  return v23;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  firstName = [(STFamilyMember *)self firstName];
  lastName = [(STFamilyMember *)self lastName];
  dSID = [(STFamilyMember *)self DSID];
  altDSID = [(STFamilyMember *)self altDSID];
  appleID = [(STFamilyMember *)self appleID];
  memberType = [(STFamilyMember *)self memberType];
  v10 = [v3 stringWithFormat:@"Name: %@ %@ DSID: %@, altDSID: %@, AppleID: %@ MemberType: %@ Me: %d Parent: %d, Organizer: %d", firstName, lastName, dSID, altDSID, appleID, memberType, -[STFamilyMember isMe](self, "isMe"), -[STFamilyMember isParent](self, "isParent"), -[STFamilyMember isOrganizer](self, "isOrganizer")];

  return v10;
}

@end