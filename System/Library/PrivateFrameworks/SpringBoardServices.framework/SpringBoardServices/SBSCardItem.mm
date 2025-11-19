@interface SBSCardItem
- (BOOL)isEqual:(id)a3;
- (SBSCardItem)initWithCoder:(id)a3;
- (SBSCardItem)initWithIdentifier:(id)a3 categoryIdentifier:(id)a4 iconData:(id)a5 title:(id)a6 subtitle:(id)a7 body:(id)a8 requiresPasscode:(BOOL)a9 bundleName:(id)a10 userInfo:(id)a11;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)sortDate;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBSCardItem

- (SBSCardItem)initWithIdentifier:(id)a3 categoryIdentifier:(id)a4 iconData:(id)a5 title:(id)a6 subtitle:(id)a7 body:(id)a8 requiresPasscode:(BOOL)a9 bundleName:(id)a10 userInfo:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a10;
  v24 = a11;
  v27.receiver = self;
  v27.super_class = SBSCardItem;
  v25 = [(SBSCardItem *)&v27 init];
  if (v24 && ([MEMORY[0x1E696AE40] propertyList:v24 isValidForFormat:200] & 1) == 0)
  {

    v25 = 0;
  }

  else if (v25)
  {
    [(SBSCardItem *)v25 setIdentifier:v17];
    [(SBSCardItem *)v25 setCategoryIdentifier:v18];
    [(SBSCardItem *)v25 setIconData:v19];
    [(SBSCardItem *)v25 setTitle:v20];
    [(SBSCardItem *)v25 setSubtitle:v21];
    [(SBSCardItem *)v25 setBody:v22];
    [(SBSCardItem *)v25 setRequiresPasscode:a9];
    [(SBSCardItem *)v25 setBundleName:v23];
    [(SBSCardItem *)v25 setUserInfo:v24];
  }

  return v25;
}

- (SBSCardItem)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"categoryIdentifier"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"iconData"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"description"];
  v10 = [v3 decodeBoolForKey:@"requiresPasscode"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"bundleName"];
  v12 = [v3 decodePropertyListForKey:@"userInfo"];

  LOBYTE(v15) = v10;
  v13 = [(SBSCardItem *)self initWithIdentifier:v4 categoryIdentifier:v5 iconData:v6 title:v7 subtitle:v8 body:v9 requiresPasscode:v15 bundleName:v11 userInfo:v12];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SBSCardItem *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(SBSCardItem *)self categoryIdentifier];
  [v4 encodeObject:v6 forKey:@"categoryIdentifier"];

  v7 = [(SBSCardItem *)self iconData];
  [v4 encodeObject:v7 forKey:@"iconData"];

  v8 = [(SBSCardItem *)self title];
  [v4 encodeObject:v8 forKey:@"title"];

  v9 = [(SBSCardItem *)self subtitle];
  [v4 encodeObject:v9 forKey:@"subtitle"];

  v10 = [(SBSCardItem *)self body];
  [v4 encodeObject:v10 forKey:@"description"];

  [v4 encodeBool:-[SBSCardItem requiresPasscode](self forKey:{"requiresPasscode"), @"requiresPasscode"}];
  v11 = [(SBSCardItem *)self bundleName];
  [v4 encodeObject:v11 forKey:@"bundleName"];

  v12 = [(SBSCardItem *)self userInfo];
  [v4 encodeObject:v12 forKey:@"userInfo"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SBSCardItem *)self identifier];
  [v4 setIdentifier:v5];

  v6 = [(SBSCardItem *)self categoryIdentifier];
  [v4 setCategoryIdentifier:v6];

  v7 = [(SBSCardItem *)self iconData];
  [v4 setIconData:v7];

  v8 = [(SBSCardItem *)self title];
  [v4 setTitle:v8];

  v9 = [(SBSCardItem *)self subtitle];
  [v4 setSubtitle:v9];

  v10 = [(SBSCardItem *)self body];
  [v4 setBody:v10];

  [v4 setRequiresPasscode:{-[SBSCardItem requiresPasscode](self, "requiresPasscode")}];
  v11 = [(SBSCardItem *)self bundleName];
  [v4 setBundleName:v11];

  v12 = [(SBSCardItem *)self userInfo];
  [v4 setUserInfo:v12];

  return v4;
}

- (id)sortDate
{
  v2 = [MEMORY[0x1E695DF00] distantFuture];
  v3 = [v2 dateByAddingTimeInterval:1.0];

  return v3;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(SBSCardItem *)self identifier];
  v5 = [v3 appendObject:v4];

  v6 = [(SBSCardItem *)self categoryIdentifier];
  v7 = [v3 appendObject:v6];

  v8 = [(SBSCardItem *)self iconData];
  v9 = [v3 appendObject:v8];

  v10 = [(SBSCardItem *)self title];
  v11 = [v3 appendObject:v10];

  v12 = [(SBSCardItem *)self subtitle];
  v13 = [v3 appendObject:v12];

  v14 = [(SBSCardItem *)self body];
  v15 = [v3 appendObject:v14];

  v16 = [v3 appendBool:{-[SBSCardItem requiresPasscode](self, "requiresPasscode")}];
  v17 = [(SBSCardItem *)self bundleName];
  v18 = [v3 appendObject:v17];

  v19 = [(SBSCardItem *)self userInfo];
  v20 = [v3 appendObject:v19];

  v21 = [v3 hash];
  return v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v34 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
    v6 = v4;
    v7 = [(SBSCardItem *)self identifier];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __23__SBSCardItem_isEqual___block_invoke;
    v52[3] = &unk_1E7360810;
    v8 = v6;
    v53 = v8;
    v9 = [v5 appendString:v7 counterpart:v52];

    v10 = [(SBSCardItem *)self categoryIdentifier];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __23__SBSCardItem_isEqual___block_invoke_2;
    v50[3] = &unk_1E7360810;
    v11 = v8;
    v51 = v11;
    v12 = [v5 appendString:v10 counterpart:v50];

    v13 = [(SBSCardItem *)self iconData];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __23__SBSCardItem_isEqual___block_invoke_3;
    v48[3] = &unk_1E7360C58;
    v14 = v11;
    v49 = v14;
    v15 = [v5 appendObject:v13 counterpart:v48];

    v16 = [(SBSCardItem *)self title];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __23__SBSCardItem_isEqual___block_invoke_4;
    v46[3] = &unk_1E7360810;
    v17 = v14;
    v47 = v17;
    v18 = [v5 appendString:v16 counterpart:v46];

    v19 = [(SBSCardItem *)self subtitle];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __23__SBSCardItem_isEqual___block_invoke_5;
    v44[3] = &unk_1E7360810;
    v20 = v17;
    v45 = v20;
    v21 = [v5 appendString:v19 counterpart:v44];

    v22 = [(SBSCardItem *)self body];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __23__SBSCardItem_isEqual___block_invoke_6;
    v42[3] = &unk_1E7360810;
    v23 = v20;
    v43 = v23;
    v24 = [v5 appendString:v22 counterpart:v42];

    v25 = [(SBSCardItem *)self requiresPasscode];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __23__SBSCardItem_isEqual___block_invoke_7;
    v40[3] = &unk_1E7360CA8;
    v26 = v23;
    v41 = v26;
    v27 = [v5 appendBool:v25 counterpart:v40];
    v28 = [(SBSCardItem *)self bundleName];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __23__SBSCardItem_isEqual___block_invoke_8;
    v38[3] = &unk_1E7360810;
    v29 = v26;
    v39 = v29;
    v30 = [v5 appendString:v28 counterpart:v38];

    v31 = [(SBSCardItem *)self userInfo];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __23__SBSCardItem_isEqual___block_invoke_9;
    v36[3] = &unk_1E7360888;
    v37 = v29;
    v32 = v29;
    v33 = [v5 appendObject:v31 counterpart:v36];

    v34 = [v5 isEqual];
  }

  return v34;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(SBSCardItem *)self identifier];
  v6 = [(SBSCardItem *)self categoryIdentifier];
  v7 = [(SBSCardItem *)self title];
  v8 = [(SBSCardItem *)self body];
  v9 = [(SBSCardItem *)self requiresPasscode];
  v10 = [(SBSCardItem *)self bundleName];
  v11 = [(SBSCardItem *)self userInfo];
  v12 = [v3 stringWithFormat:@"<%@:%p {identifier=%@ categoryIdentifier:=%@ title=%@ body=%@ requiresPasscode=%d bundleName=%@ userInfo=%@}>", v4, self, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

@end