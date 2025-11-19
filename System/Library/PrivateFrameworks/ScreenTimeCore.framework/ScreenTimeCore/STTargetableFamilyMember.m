@interface STTargetableFamilyMember
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTargetableFamilyMember:(id)a3;
- (STTargetableFamilyMember)initWithDSID:(id)a3 altDSID:(id)a4 firstName:(id)a5 memberType:(int64_t)a6 isSignedInMember:(BOOL)a7 isParent:(BOOL)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation STTargetableFamilyMember

- (STTargetableFamilyMember)initWithDSID:(id)a3 altDSID:(id)a4 firstName:(id)a5 memberType:(int64_t)a6 isSignedInMember:(BOOL)a7 isParent:(BOOL)a8
{
  v24.receiver = self;
  v24.super_class = STTargetableFamilyMember;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(STTargetableFamilyMember *)&v24 init];
  v17 = [v15 copy];

  dsid = v16->_dsid;
  v16->_dsid = v17;

  v19 = [v14 copy];
  altDSID = v16->_altDSID;
  v16->_altDSID = v19;

  v21 = [v13 copy];
  firstName = v16->_firstName;
  v16->_firstName = v21;

  v16->_memberType = a6;
  v16->_isSignedInMember = a7;
  v16->_isParent = a8;
  return v16;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(STTargetableFamilyMember *)self dsid];
  v5 = [(STTargetableFamilyMember *)self altDSID];
  v6 = [(STTargetableFamilyMember *)self firstName];
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

  v12 = [NSString stringWithFormat:@"<%@: {DSID: %@, AltDSID: %@, FirstName: %@, MemberType: %@, SignedIn: %@, Parent: %@ }>", v3, v4, v5, v6, v8, v10, v11];

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  dsid = self->_dsid;
  altDSID = self->_altDSID;
  firstName = self->_firstName;
  memberType = self->_memberType;
  isSignedInMember = self->_isSignedInMember;
  isParent = self->_isParent;

  return [v4 initWithDSID:dsid altDSID:altDSID firstName:firstName memberType:memberType isSignedInMember:isSignedInMember isParent:isParent];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STTargetableFamilyMember *)self isEqualToTargetableFamilyMember:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToTargetableFamilyMember:(id)a3
{
  v6 = a3;
  if (v6 != self)
  {
    v7 = [(STTargetableFamilyMember *)self dsid];
    v8 = [(STTargetableFamilyMember *)v6 dsid];
    if (![v7 isEqualToNumber:v8])
    {
      LOBYTE(v12) = 0;
LABEL_21:

      goto LABEL_22;
    }

    v9 = [(STTargetableFamilyMember *)self altDSID];
    v10 = [(STTargetableFamilyMember *)v6 altDSID];
    if (![v9 isEqualToString:v10])
    {
      LOBYTE(v12) = 0;
LABEL_20:

      goto LABEL_21;
    }

    v11 = [(STTargetableFamilyMember *)self firstName];
    if (v11 || ([(STTargetableFamilyMember *)v6 firstName], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v3 = [(STTargetableFamilyMember *)self firstName];
      v4 = [(STTargetableFamilyMember *)v6 firstName];
      if (![v3 isEqualToString:v4])
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

    v13 = [(STTargetableFamilyMember *)self memberType];
    if (v13 == [(STTargetableFamilyMember *)v6 memberType]&& (v14 = [(STTargetableFamilyMember *)self isSignedInMember], v14 == [(STTargetableFamilyMember *)v6 isSignedInMember]))
    {
      v16 = [(STTargetableFamilyMember *)self isParent];
      v12 = v16 ^ [(STTargetableFamilyMember *)v6 isParent]^ 1;
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
        if (!v11)
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
  v3 = [(STTargetableFamilyMember *)self dsid];
  v4 = [v3 hash];
  v5 = [(STTargetableFamilyMember *)self altDSID];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end