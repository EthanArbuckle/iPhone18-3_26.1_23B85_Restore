@interface STFamilyCirclePrimitiveMember
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMember:(id)a3;
- (STFamilyCirclePrimitiveMember)initWithDSID:(id)a3 altDSID:(id)a4 appleID:(id)a5 firstName:(id)a6 lastName:(id)a7 memberType:(int64_t)a8 isMe:(BOOL)a9 isParent:(BOOL)a10 isOrganizer:(BOOL)a11 opaqueMember:(id)a12;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation STFamilyCirclePrimitiveMember

- (STFamilyCirclePrimitiveMember)initWithDSID:(id)a3 altDSID:(id)a4 appleID:(id)a5 firstName:(id)a6 lastName:(id)a7 memberType:(int64_t)a8 isMe:(BOOL)a9 isParent:(BOOL)a10 isOrganizer:(BOOL)a11 opaqueMember:(id)a12
{
  v18 = a12;
  v38.receiver = self;
  v38.super_class = STFamilyCirclePrimitiveMember;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = [(STFamilyCirclePrimitiveMember *)&v38 init];
  v25 = [v23 copy];

  dsid = v24->_dsid;
  v24->_dsid = v25;

  v27 = [v22 copy];
  altDSID = v24->_altDSID;
  v24->_altDSID = v27;

  v29 = [v21 copy];
  appleID = v24->_appleID;
  v24->_appleID = v29;

  v31 = [v20 copy];
  firstName = v24->_firstName;
  v24->_firstName = v31;

  v33 = [v19 copy];
  lastName = v24->_lastName;
  v24->_lastName = v33;

  v24->_isMe = a9;
  v24->_isParent = a10;
  v24->_isOrganizer = a11;
  opaqueMember = v24->_opaqueMember;
  v24->_memberType = a8;
  v24->_opaqueMember = v18;

  return v24;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(STFamilyCirclePrimitiveMember *)self dsid];
  v5 = [(STFamilyCirclePrimitiveMember *)self altDSID];
  v6 = [(STFamilyCirclePrimitiveMember *)self appleID];
  v7 = [NSString stringWithFormat:@"<%@: { DSID: %@, AltDSID: %@, AppleID: %@ isMe: %d>", v3, v4, v5, v6, [(STFamilyCirclePrimitiveMember *)self isMe]];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  BYTE2(v6) = self->_isOrganizer;
  LOWORD(v6) = *&self->_isMe;
  return [v4 initWithDSID:self->_dsid altDSID:self->_altDSID appleID:self->_appleID firstName:self->_firstName lastName:self->_lastName memberType:self->_memberType isMe:v6 isParent:self->_opaqueMember isOrganizer:? opaqueMember:?];
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
      v5 = [(STFamilyCirclePrimitiveMember *)self isEqualToMember:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToMember:(id)a3
{
  v9 = a3;
  if (v9 == self)
  {
    LOBYTE(v12) = 1;
    goto LABEL_55;
  }

  v10 = [(STFamilyCirclePrimitiveMember *)self dsid];
  if (v10 || ([(STFamilyCirclePrimitiveMember *)v9 dsid], (v38 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = [(STFamilyCirclePrimitiveMember *)self dsid];
    v5 = [(STFamilyCirclePrimitiveMember *)v9 dsid];
    if (![v4 isEqualToNumber:v5])
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

  v13 = [(STFamilyCirclePrimitiveMember *)self altDSID];
  if (v13 || ([(STFamilyCirclePrimitiveMember *)v9 altDSID], (v32 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = [(STFamilyCirclePrimitiveMember *)self altDSID];
    v7 = [(STFamilyCirclePrimitiveMember *)v9 altDSID];
    if (![v6 isEqualToString:v7])
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

  v14 = [(STFamilyCirclePrimitiveMember *)self appleID];
  if (v14 || ([(STFamilyCirclePrimitiveMember *)v9 appleID], (v29 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [(STFamilyCirclePrimitiveMember *)self appleID];
    v33 = [(STFamilyCirclePrimitiveMember *)v9 appleID];
    v34 = v3;
    if (![v3 isEqualToString:?])
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

  v35 = [(STFamilyCirclePrimitiveMember *)self firstName];
  if (v35 || ([(STFamilyCirclePrimitiveMember *)v9 firstName], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [(STFamilyCirclePrimitiveMember *)self firstName];
    v30 = [(STFamilyCirclePrimitiveMember *)v9 firstName];
    if (![v3 isEqualToString:?])
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

  v26 = [(STFamilyCirclePrimitiveMember *)self lastName];
  v28 = v3;
  if (v26 || ([(STFamilyCirclePrimitiveMember *)v9 lastName], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = [(STFamilyCirclePrimitiveMember *)self lastName];
    v24 = [(STFamilyCirclePrimitiveMember *)v9 lastName];
    v25 = v15;
    if (![v15 isEqualToString:?])
    {
      LOBYTE(v12) = 0;
LABEL_37:
      v3 = v28;

      goto LABEL_40;
    }

    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  v16 = [(STFamilyCirclePrimitiveMember *)self memberType];
  if (v16 == [(STFamilyCirclePrimitiveMember *)v9 memberType]&& (v17 = [(STFamilyCirclePrimitiveMember *)self isMe], v17 == [(STFamilyCirclePrimitiveMember *)v9 isMe]) && (v18 = [(STFamilyCirclePrimitiveMember *)self isParent], v18 == [(STFamilyCirclePrimitiveMember *)v9 isParent]))
  {
    v19 = [(STFamilyCirclePrimitiveMember *)self isOrganizer];
    v12 = v19 ^ [(STFamilyCirclePrimitiveMember *)v9 isOrganizer]^ 1;
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

  v3 = v28;
LABEL_40:
  if (v26)
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
  if (v35)
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
  if (v14)
  {

    if (v36)
    {
LABEL_48:
      v11 = v37;
LABEL_49:

      if (v13)
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
  if (!v13)
  {
    goto LABEL_58;
  }

LABEL_50:

  if (v11)
  {
    goto LABEL_51;
  }

LABEL_52:
  if (!v10)
  {
  }

LABEL_55:
  return v12;
}

- (unint64_t)hash
{
  v3 = [(STFamilyCirclePrimitiveMember *)self dsid];
  v4 = [v3 hash];
  v5 = [(STFamilyCirclePrimitiveMember *)self altDSID];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end