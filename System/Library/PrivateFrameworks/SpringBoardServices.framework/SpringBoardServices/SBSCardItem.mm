@interface SBSCardItem
- (BOOL)isEqual:(id)equal;
- (SBSCardItem)initWithCoder:(id)coder;
- (SBSCardItem)initWithIdentifier:(id)identifier categoryIdentifier:(id)categoryIdentifier iconData:(id)data title:(id)title subtitle:(id)subtitle body:(id)body requiresPasscode:(BOOL)passcode bundleName:(id)self0 userInfo:(id)self1;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)sortDate;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBSCardItem

- (SBSCardItem)initWithIdentifier:(id)identifier categoryIdentifier:(id)categoryIdentifier iconData:(id)data title:(id)title subtitle:(id)subtitle body:(id)body requiresPasscode:(BOOL)passcode bundleName:(id)self0 userInfo:(id)self1
{
  identifierCopy = identifier;
  categoryIdentifierCopy = categoryIdentifier;
  dataCopy = data;
  titleCopy = title;
  subtitleCopy = subtitle;
  bodyCopy = body;
  nameCopy = name;
  infoCopy = info;
  v27.receiver = self;
  v27.super_class = SBSCardItem;
  v25 = [(SBSCardItem *)&v27 init];
  if (infoCopy && ([MEMORY[0x1E696AE40] propertyList:infoCopy isValidForFormat:200] & 1) == 0)
  {

    v25 = 0;
  }

  else if (v25)
  {
    [(SBSCardItem *)v25 setIdentifier:identifierCopy];
    [(SBSCardItem *)v25 setCategoryIdentifier:categoryIdentifierCopy];
    [(SBSCardItem *)v25 setIconData:dataCopy];
    [(SBSCardItem *)v25 setTitle:titleCopy];
    [(SBSCardItem *)v25 setSubtitle:subtitleCopy];
    [(SBSCardItem *)v25 setBody:bodyCopy];
    [(SBSCardItem *)v25 setRequiresPasscode:passcode];
    [(SBSCardItem *)v25 setBundleName:nameCopy];
    [(SBSCardItem *)v25 setUserInfo:infoCopy];
  }

  return v25;
}

- (SBSCardItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"categoryIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconData"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"description"];
  v10 = [coderCopy decodeBoolForKey:@"requiresPasscode"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleName"];
  v12 = [coderCopy decodePropertyListForKey:@"userInfo"];

  LOBYTE(v15) = v10;
  v13 = [(SBSCardItem *)self initWithIdentifier:v4 categoryIdentifier:v5 iconData:v6 title:v7 subtitle:v8 body:v9 requiresPasscode:v15 bundleName:v11 userInfo:v12];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(SBSCardItem *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  categoryIdentifier = [(SBSCardItem *)self categoryIdentifier];
  [coderCopy encodeObject:categoryIdentifier forKey:@"categoryIdentifier"];

  iconData = [(SBSCardItem *)self iconData];
  [coderCopy encodeObject:iconData forKey:@"iconData"];

  title = [(SBSCardItem *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  subtitle = [(SBSCardItem *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"subtitle"];

  body = [(SBSCardItem *)self body];
  [coderCopy encodeObject:body forKey:@"description"];

  [coderCopy encodeBool:-[SBSCardItem requiresPasscode](self forKey:{"requiresPasscode"), @"requiresPasscode"}];
  bundleName = [(SBSCardItem *)self bundleName];
  [coderCopy encodeObject:bundleName forKey:@"bundleName"];

  userInfo = [(SBSCardItem *)self userInfo];
  [coderCopy encodeObject:userInfo forKey:@"userInfo"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  identifier = [(SBSCardItem *)self identifier];
  [v4 setIdentifier:identifier];

  categoryIdentifier = [(SBSCardItem *)self categoryIdentifier];
  [v4 setCategoryIdentifier:categoryIdentifier];

  iconData = [(SBSCardItem *)self iconData];
  [v4 setIconData:iconData];

  title = [(SBSCardItem *)self title];
  [v4 setTitle:title];

  subtitle = [(SBSCardItem *)self subtitle];
  [v4 setSubtitle:subtitle];

  body = [(SBSCardItem *)self body];
  [v4 setBody:body];

  [v4 setRequiresPasscode:{-[SBSCardItem requiresPasscode](self, "requiresPasscode")}];
  bundleName = [(SBSCardItem *)self bundleName];
  [v4 setBundleName:bundleName];

  userInfo = [(SBSCardItem *)self userInfo];
  [v4 setUserInfo:userInfo];

  return v4;
}

- (id)sortDate
{
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v3 = [distantFuture dateByAddingTimeInterval:1.0];

  return v3;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  identifier = [(SBSCardItem *)self identifier];
  v5 = [builder appendObject:identifier];

  categoryIdentifier = [(SBSCardItem *)self categoryIdentifier];
  v7 = [builder appendObject:categoryIdentifier];

  iconData = [(SBSCardItem *)self iconData];
  v9 = [builder appendObject:iconData];

  title = [(SBSCardItem *)self title];
  v11 = [builder appendObject:title];

  subtitle = [(SBSCardItem *)self subtitle];
  v13 = [builder appendObject:subtitle];

  body = [(SBSCardItem *)self body];
  v15 = [builder appendObject:body];

  v16 = [builder appendBool:{-[SBSCardItem requiresPasscode](self, "requiresPasscode")}];
  bundleName = [(SBSCardItem *)self bundleName];
  v18 = [builder appendObject:bundleName];

  userInfo = [(SBSCardItem *)self userInfo];
  v20 = [builder appendObject:userInfo];

  v21 = [builder hash];
  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v34 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
    v6 = equalCopy;
    identifier = [(SBSCardItem *)self identifier];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __23__SBSCardItem_isEqual___block_invoke;
    v52[3] = &unk_1E7360810;
    v8 = v6;
    v53 = v8;
    v9 = [v5 appendString:identifier counterpart:v52];

    categoryIdentifier = [(SBSCardItem *)self categoryIdentifier];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __23__SBSCardItem_isEqual___block_invoke_2;
    v50[3] = &unk_1E7360810;
    v11 = v8;
    v51 = v11;
    v12 = [v5 appendString:categoryIdentifier counterpart:v50];

    iconData = [(SBSCardItem *)self iconData];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __23__SBSCardItem_isEqual___block_invoke_3;
    v48[3] = &unk_1E7360C58;
    v14 = v11;
    v49 = v14;
    v15 = [v5 appendObject:iconData counterpart:v48];

    title = [(SBSCardItem *)self title];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __23__SBSCardItem_isEqual___block_invoke_4;
    v46[3] = &unk_1E7360810;
    v17 = v14;
    v47 = v17;
    v18 = [v5 appendString:title counterpart:v46];

    subtitle = [(SBSCardItem *)self subtitle];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __23__SBSCardItem_isEqual___block_invoke_5;
    v44[3] = &unk_1E7360810;
    v20 = v17;
    v45 = v20;
    v21 = [v5 appendString:subtitle counterpart:v44];

    body = [(SBSCardItem *)self body];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __23__SBSCardItem_isEqual___block_invoke_6;
    v42[3] = &unk_1E7360810;
    v23 = v20;
    v43 = v23;
    v24 = [v5 appendString:body counterpart:v42];

    requiresPasscode = [(SBSCardItem *)self requiresPasscode];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __23__SBSCardItem_isEqual___block_invoke_7;
    v40[3] = &unk_1E7360CA8;
    v26 = v23;
    v41 = v26;
    v27 = [v5 appendBool:requiresPasscode counterpart:v40];
    bundleName = [(SBSCardItem *)self bundleName];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __23__SBSCardItem_isEqual___block_invoke_8;
    v38[3] = &unk_1E7360810;
    v29 = v26;
    v39 = v29;
    v30 = [v5 appendString:bundleName counterpart:v38];

    userInfo = [(SBSCardItem *)self userInfo];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __23__SBSCardItem_isEqual___block_invoke_9;
    v36[3] = &unk_1E7360888;
    v37 = v29;
    v32 = v29;
    v33 = [v5 appendObject:userInfo counterpart:v36];

    v34 = [v5 isEqual];
  }

  return v34;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(SBSCardItem *)self identifier];
  categoryIdentifier = [(SBSCardItem *)self categoryIdentifier];
  title = [(SBSCardItem *)self title];
  body = [(SBSCardItem *)self body];
  requiresPasscode = [(SBSCardItem *)self requiresPasscode];
  bundleName = [(SBSCardItem *)self bundleName];
  userInfo = [(SBSCardItem *)self userInfo];
  v12 = [v3 stringWithFormat:@"<%@:%p {identifier=%@ categoryIdentifier:=%@ title=%@ body=%@ requiresPasscode=%d bundleName=%@ userInfo=%@}>", v4, self, identifier, categoryIdentifier, title, body, requiresPasscode, bundleName, userInfo];

  return v12;
}

@end