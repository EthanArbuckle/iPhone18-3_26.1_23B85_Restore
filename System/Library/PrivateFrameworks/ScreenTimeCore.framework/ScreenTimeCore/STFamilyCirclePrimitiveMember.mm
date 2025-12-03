@interface STFamilyCirclePrimitiveMember
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMember:(id)member;
- (STFamilyCirclePrimitiveMember)initWithDSID:(id)d altDSID:(id)iD appleID:(id)appleID firstName:(id)name lastName:(id)lastName memberType:(int64_t)type isMe:(BOOL)me isParent:(BOOL)self0 isOrganizer:(BOOL)self1 opaqueMember:(id)self2;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation STFamilyCirclePrimitiveMember

- (STFamilyCirclePrimitiveMember)initWithDSID:(id)d altDSID:(id)iD appleID:(id)appleID firstName:(id)name lastName:(id)lastName memberType:(int64_t)type isMe:(BOOL)me isParent:(BOOL)self0 isOrganizer:(BOOL)self1 opaqueMember:(id)self2
{
  memberCopy = member;
  v38.receiver = self;
  v38.super_class = STFamilyCirclePrimitiveMember;
  lastNameCopy = lastName;
  nameCopy = name;
  appleIDCopy = appleID;
  iDCopy = iD;
  dCopy = d;
  v24 = [(STFamilyCirclePrimitiveMember *)&v38 init];
  v25 = [dCopy copy];

  dsid = v24->_dsid;
  v24->_dsid = v25;

  v27 = [iDCopy copy];
  altDSID = v24->_altDSID;
  v24->_altDSID = v27;

  v29 = [appleIDCopy copy];
  appleID = v24->_appleID;
  v24->_appleID = v29;

  v31 = [nameCopy copy];
  firstName = v24->_firstName;
  v24->_firstName = v31;

  v33 = [lastNameCopy copy];
  lastName = v24->_lastName;
  v24->_lastName = v33;

  v24->_isMe = me;
  v24->_isParent = parent;
  v24->_isOrganizer = organizer;
  opaqueMember = v24->_opaqueMember;
  v24->_memberType = type;
  v24->_opaqueMember = memberCopy;

  return v24;
}

- (id)description
{
  v3 = objc_opt_class();
  dsid = [(STFamilyCirclePrimitiveMember *)self dsid];
  altDSID = [(STFamilyCirclePrimitiveMember *)self altDSID];
  appleID = [(STFamilyCirclePrimitiveMember *)self appleID];
  v7 = [NSString stringWithFormat:@"<%@: { DSID: %@, AltDSID: %@, AppleID: %@ isMe: %d>", v3, dsid, altDSID, appleID, [(STFamilyCirclePrimitiveMember *)self isMe]];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  BYTE2(v6) = self->_isOrganizer;
  LOWORD(v6) = *&self->_isMe;
  return [v4 initWithDSID:self->_dsid altDSID:self->_altDSID appleID:self->_appleID firstName:self->_firstName lastName:self->_lastName memberType:self->_memberType isMe:v6 isParent:self->_opaqueMember isOrganizer:? opaqueMember:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STFamilyCirclePrimitiveMember *)self isEqualToMember:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToMember:(id)member
{
  memberCopy = member;
  if (memberCopy == self)
  {
    LOBYTE(v12) = 1;
    goto LABEL_55;
  }

  dsid = [(STFamilyCirclePrimitiveMember *)self dsid];
  if (dsid || ([(STFamilyCirclePrimitiveMember *)memberCopy dsid], (v38 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    dsid2 = [(STFamilyCirclePrimitiveMember *)self dsid];
    dsid3 = [(STFamilyCirclePrimitiveMember *)memberCopy dsid];
    if (![dsid2 isEqualToNumber:dsid3])
    {
      LOBYTE(v12) = 0;
LABEL_51:

      goto LABEL_52;
    }

    v11 = 1;
  }

  else
  {
    v38 = 0;
    v11 = 0;
  }

  altDSID = [(STFamilyCirclePrimitiveMember *)self altDSID];
  if (altDSID || ([(STFamilyCirclePrimitiveMember *)memberCopy altDSID], (v32 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    altDSID2 = [(STFamilyCirclePrimitiveMember *)self altDSID];
    altDSID3 = [(STFamilyCirclePrimitiveMember *)memberCopy altDSID];
    if (![altDSID2 isEqualToString:altDSID3])
    {
      LOBYTE(v12) = 0;
      goto LABEL_49;
    }

    v36 = 1;
    v37 = v11;
  }

  else
  {
    v37 = v11;
    v32 = 0;
    v36 = 0;
  }

  appleID = [(STFamilyCirclePrimitiveMember *)self appleID];
  if (appleID || ([(STFamilyCirclePrimitiveMember *)memberCopy appleID], (v29 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    appleID2 = [(STFamilyCirclePrimitiveMember *)self appleID];
    appleID3 = [(STFamilyCirclePrimitiveMember *)memberCopy appleID];
    v34 = appleID2;
    if (![appleID2 isEqualToString:?])
    {
      LOBYTE(v12) = 0;
      goto LABEL_45;
    }

    v31 = 1;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  firstName = [(STFamilyCirclePrimitiveMember *)self firstName];
  if (firstName || ([(STFamilyCirclePrimitiveMember *)memberCopy firstName], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    appleID2 = [(STFamilyCirclePrimitiveMember *)self firstName];
    firstName2 = [(STFamilyCirclePrimitiveMember *)memberCopy firstName];
    if (![appleID2 isEqualToString:?])
    {
      LOBYTE(v12) = 0;
      goto LABEL_42;
    }

    v27 = 1;
  }

  else
  {
    v23 = 0;
    v27 = 0;
  }

  lastName = [(STFamilyCirclePrimitiveMember *)self lastName];
  v28 = appleID2;
  if (lastName || ([(STFamilyCirclePrimitiveMember *)memberCopy lastName], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    lastName2 = [(STFamilyCirclePrimitiveMember *)self lastName];
    lastName3 = [(STFamilyCirclePrimitiveMember *)memberCopy lastName];
    v25 = lastName2;
    if (![lastName2 isEqualToString:?])
    {
      LOBYTE(v12) = 0;
LABEL_37:
      appleID2 = v28;

      goto LABEL_40;
    }

    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  memberType = [(STFamilyCirclePrimitiveMember *)self memberType];
  if (memberType == [(STFamilyCirclePrimitiveMember *)memberCopy memberType]&& (v17 = [(STFamilyCirclePrimitiveMember *)self isMe], v17 == [(STFamilyCirclePrimitiveMember *)memberCopy isMe]) && (v18 = [(STFamilyCirclePrimitiveMember *)self isParent], v18 == [(STFamilyCirclePrimitiveMember *)memberCopy isParent]))
  {
    isOrganizer = [(STFamilyCirclePrimitiveMember *)self isOrganizer];
    v12 = isOrganizer ^ [(STFamilyCirclePrimitiveMember *)memberCopy isOrganizer]^ 1;
    if (v22)
    {
      goto LABEL_37;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
    if (v22)
    {
      goto LABEL_37;
    }
  }

  appleID2 = v28;
LABEL_40:
  if (lastName)
  {

    if (!v27)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v27)
  {
LABEL_42:
  }

LABEL_43:
  if (firstName)
  {

    if (!v31)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (v31)
  {
LABEL_45:
  }

LABEL_46:
  if (appleID)
  {

    if (v36)
    {
LABEL_48:
      v11 = v37;
LABEL_49:

      if (altDSID)
      {
        goto LABEL_50;
      }

LABEL_58:

      if ((v11 & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }
  }

  else
  {

    if (v36)
    {
      goto LABEL_48;
    }
  }

  v11 = v37;
  if (!altDSID)
  {
    goto LABEL_58;
  }

LABEL_50:

  if (v11)
  {
    goto LABEL_51;
  }

LABEL_52:
  if (!dsid)
  {
  }

LABEL_55:
  return v12;
}

- (unint64_t)hash
{
  dsid = [(STFamilyCirclePrimitiveMember *)self dsid];
  v4 = [dsid hash];
  altDSID = [(STFamilyCirclePrimitiveMember *)self altDSID];
  v6 = [altDSID hash];

  return v6 ^ v4;
}

@end