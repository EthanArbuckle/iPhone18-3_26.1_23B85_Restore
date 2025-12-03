@interface STTargetableFamilyMember
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTargetableFamilyMember:(id)member;
- (STTargetableFamilyMember)initWithDSID:(id)d altDSID:(id)iD firstName:(id)name memberType:(int64_t)type isSignedInMember:(BOOL)member isParent:(BOOL)parent;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation STTargetableFamilyMember

- (STTargetableFamilyMember)initWithDSID:(id)d altDSID:(id)iD firstName:(id)name memberType:(int64_t)type isSignedInMember:(BOOL)member isParent:(BOOL)parent
{
  v24.receiver = self;
  v24.super_class = STTargetableFamilyMember;
  nameCopy = name;
  iDCopy = iD;
  dCopy = d;
  v16 = [(STTargetableFamilyMember *)&v24 init];
  v17 = [dCopy copy];

  dsid = v16->_dsid;
  v16->_dsid = v17;

  v19 = [iDCopy copy];
  altDSID = v16->_altDSID;
  v16->_altDSID = v19;

  v21 = [nameCopy copy];
  firstName = v16->_firstName;
  v16->_firstName = v21;

  v16->_memberType = type;
  v16->_isSignedInMember = member;
  v16->_isParent = parent;
  return v16;
}

- (id)description
{
  v3 = objc_opt_class();
  dsid = [(STTargetableFamilyMember *)self dsid];
  altDSID = [(STTargetableFamilyMember *)self altDSID];
  firstName = [(STTargetableFamilyMember *)self firstName];
  v7 = [(STTargetableFamilyMember *)self memberType]- 1;
  if (v7 > 2)
  {
    v8 = @"Unknown";
  }

  else
  {
    v8 = off_1001A5F80[v7];
  }

  if ([(STTargetableFamilyMember *)self isSignedInMember])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = v9;
  if ([(STTargetableFamilyMember *)self isParent])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = [NSString stringWithFormat:@"<%@: {DSID: %@, AltDSID: %@, FirstName: %@, MemberType: %@, SignedIn: %@, Parent: %@ }>", v3, dsid, altDSID, firstName, v8, v10, v11];

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  dsid = self->_dsid;
  altDSID = self->_altDSID;
  firstName = self->_firstName;
  memberType = self->_memberType;
  isSignedInMember = self->_isSignedInMember;
  isParent = self->_isParent;

  return [v4 initWithDSID:dsid altDSID:altDSID firstName:firstName memberType:memberType isSignedInMember:isSignedInMember isParent:isParent];
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
      v5 = [(STTargetableFamilyMember *)self isEqualToTargetableFamilyMember:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToTargetableFamilyMember:(id)member
{
  memberCopy = member;
  if (memberCopy != self)
  {
    dsid = [(STTargetableFamilyMember *)self dsid];
    dsid2 = [(STTargetableFamilyMember *)memberCopy dsid];
    if (![dsid isEqualToNumber:dsid2])
    {
      LOBYTE(v12) = 0;
LABEL_21:

      goto LABEL_22;
    }

    altDSID = [(STTargetableFamilyMember *)self altDSID];
    altDSID2 = [(STTargetableFamilyMember *)memberCopy altDSID];
    if (![altDSID isEqualToString:altDSID2])
    {
      LOBYTE(v12) = 0;
LABEL_20:

      goto LABEL_21;
    }

    firstName = [(STTargetableFamilyMember *)self firstName];
    if (firstName || ([(STTargetableFamilyMember *)memberCopy firstName], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      firstName2 = [(STTargetableFamilyMember *)self firstName];
      firstName3 = [(STTargetableFamilyMember *)memberCopy firstName];
      if (![firstName2 isEqualToString:firstName3])
      {
        LOBYTE(v12) = 0;
        goto LABEL_16;
      }

      v19 = 1;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    memberType = [(STTargetableFamilyMember *)self memberType];
    if (memberType == [(STTargetableFamilyMember *)memberCopy memberType]&& (v14 = [(STTargetableFamilyMember *)self isSignedInMember], v14 == [(STTargetableFamilyMember *)memberCopy isSignedInMember]))
    {
      isParent = [(STTargetableFamilyMember *)self isParent];
      v12 = isParent ^ [(STTargetableFamilyMember *)memberCopy isParent]^ 1;
      if ((v19 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
      if (!v19)
      {
LABEL_17:
        if (!firstName)
        {
        }

        goto LABEL_20;
      }
    }

LABEL_16:

    goto LABEL_17;
  }

  LOBYTE(v12) = 1;
LABEL_22:

  return v12;
}

- (unint64_t)hash
{
  dsid = [(STTargetableFamilyMember *)self dsid];
  v4 = [dsid hash];
  altDSID = [(STTargetableFamilyMember *)self altDSID];
  v6 = [altDSID hash];

  return v6 ^ v4;
}

@end