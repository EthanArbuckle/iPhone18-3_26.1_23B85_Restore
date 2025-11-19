@interface STFamilyMember
- (STFamilyMember)initWithDSID:(id)a3 altDSID:(id)a4 appleID:(id)a5 memberType:(id)a6 firstName:(id)a7 lastName:(id)a8 isMe:(BOOL)a9 isParent:(BOOL)a10 isOrganizer:(BOOL)a11;
- (id)description;
@end

@implementation STFamilyMember

- (STFamilyMember)initWithDSID:(id)a3 altDSID:(id)a4 appleID:(id)a5 memberType:(id)a6 firstName:(id)a7 lastName:(id)a8 isMe:(BOOL)a9 isParent:(BOOL)a10 isOrganizer:(BOOL)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v37.receiver = self;
  v37.super_class = STFamilyMember;
  v23 = [(STFamilyMember *)&v37 init];
  if (v23)
  {
    v24 = [v17 copy];
    DSID = v23->_DSID;
    v23->_DSID = v24;

    v26 = [v18 copy];
    altDSID = v23->_altDSID;
    v23->_altDSID = v26;

    v28 = [v19 copy];
    appleID = v23->_appleID;
    v23->_appleID = v28;

    v30 = [v20 copy];
    memberType = v23->_memberType;
    v23->_memberType = v30;

    v32 = [v21 copy];
    firstName = v23->_firstName;
    v23->_firstName = v32;

    v34 = [v22 copy];
    lastName = v23->_lastName;
    v23->_lastName = v34;

    v23->_isMe = a9;
    v23->_isParent = a10;
    v23->_isOrganizer = a11;
  }

  return v23;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(STFamilyMember *)self firstName];
  v5 = [(STFamilyMember *)self lastName];
  v6 = [(STFamilyMember *)self DSID];
  v7 = [(STFamilyMember *)self altDSID];
  v8 = [(STFamilyMember *)self appleID];
  v9 = [(STFamilyMember *)self memberType];
  v10 = [v3 stringWithFormat:@"Name: %@ %@ DSID: %@, altDSID: %@, AppleID: %@ MemberType: %@ Me: %d Parent: %d, Organizer: %d", v4, v5, v6, v7, v8, v9, -[STFamilyMember isMe](self, "isMe"), -[STFamilyMember isParent](self, "isParent"), -[STFamilyMember isOrganizer](self, "isOrganizer")];

  return v10;
}

@end