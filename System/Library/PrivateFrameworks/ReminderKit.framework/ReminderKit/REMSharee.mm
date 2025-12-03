@interface REMSharee
+ (id)newObjectID;
+ (id)nullifiedAssignmentOriginatorID;
+ (id)objectIDWithUUID:(id)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSharee:(id)sharee;
- (NSPersonNameComponents)personNameComponents;
- (NSString)debugDescription;
- (NSString)description;
- (REMSharee)initWithCoder:(id)coder;
- (id)formattedName;
- (id)formattedNameWithStyle:(int64_t)style;
- (id)initShareeWithObjectID:(id)d accountID:(id)iD listID:(id)listID displayName:(id)name firstName:(id)firstName middleName:(id)middleName lastName:(id)lastName namePrefix:(id)self0 nameSuffix:(id)self1 nickname:(id)self2 address:(id)self3 status:(int64_t)self4 accessLevel:(int64_t)self5;
- (id)initShareeWithObjectID:(id)d accountID:(id)iD listID:(id)listID personNameComponents:(id)components address:(id)address status:(int64_t)status accessLevel:(int64_t)level;
- (id)shortName;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMSharee

REMDAShareeTombstone *__92__REMSharee_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_deletedKeyFromTombstoneBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(REMDAShareeTombstone);
  v4 = [v2 objectIdentifier];
  [(REMDAShareeTombstone *)v3 setObjectIdentifier:v4];

  v5 = [v2 shareeOwningListIdentifier];
  [(REMDAShareeTombstone *)v3 setOwningListIdentifier:v5];

  v6 = [v2 shareeDisplayName];
  [(REMDAShareeTombstone *)v3 setDisplayName:v6];

  v7 = [v2 shareeAddress];

  [(REMDAShareeTombstone *)v3 setAddress:v7];

  return v3;
}

- (id)initShareeWithObjectID:(id)d accountID:(id)iD listID:(id)listID displayName:(id)name firstName:(id)firstName middleName:(id)middleName lastName:(id)lastName namePrefix:(id)self0 nameSuffix:(id)self1 nickname:(id)self2 address:(id)self3 status:(int64_t)self4 accessLevel:(int64_t)self5
{
  dCopy = d;
  obj = iD;
  iDCopy = iD;
  listIDCopy = listID;
  nameCopy = name;
  firstNameCopy = firstName;
  middleNameCopy = middleName;
  lastNameCopy = lastName;
  v24 = nameCopy;
  prefixCopy = prefix;
  suffixCopy = suffix;
  v27 = middleNameCopy;
  nicknameCopy = nickname;
  addressCopy = address;
  v55.receiver = self;
  v55.super_class = REMSharee;
  v30 = [(REMSharee *)&v55 init];
  v31 = v30;
  if (v30)
  {
    objc_storeStrong(&v30->_objectID, d);
    objc_storeStrong(&v31->_accountID, obj);
    objc_storeStrong(&v31->_listID, listID);
    v32 = [v24 copy];
    displayName = v31->_displayName;
    v31->_displayName = v32;

    v34 = [firstNameCopy copy];
    firstName = v31->_firstName;
    v31->_firstName = v34;

    v36 = [v27 copy];
    middleName = v31->_middleName;
    v31->_middleName = v36;

    v38 = [lastNameCopy copy];
    lastName = v31->_lastName;
    v31->_lastName = v38;

    v40 = [prefixCopy copy];
    namePrefix = v31->_namePrefix;
    v31->_namePrefix = v40;

    v42 = [suffixCopy copy];
    nameSuffix = v31->_nameSuffix;
    v31->_nameSuffix = v42;

    v44 = [nicknameCopy copy];
    nickname = v31->_nickname;
    v31->_nickname = v44;

    v46 = [addressCopy copy];
    address = v31->_address;
    v31->_address = v46;

    v31->_status = status;
    v31->_accessLevel = level;
  }

  return v31;
}

- (id)initShareeWithObjectID:(id)d accountID:(id)iD listID:(id)listID personNameComponents:(id)components address:(id)address status:(int64_t)status accessLevel:(int64_t)level
{
  addressCopy = address;
  componentsCopy = components;
  listIDCopy = listID;
  iDCopy = iD;
  dCopy = d;
  givenName = [componentsCopy givenName];
  middleName = [componentsCopy middleName];
  familyName = [componentsCopy familyName];
  namePrefix = [componentsCopy namePrefix];
  nameSuffix = [componentsCopy nameSuffix];
  nickname = [componentsCopy nickname];

  v27 = [(REMSharee *)self initShareeWithObjectID:dCopy accountID:iDCopy listID:listIDCopy displayName:0 firstName:givenName middleName:middleName lastName:familyName namePrefix:namePrefix nameSuffix:nameSuffix nickname:nickname address:addressCopy status:status accessLevel:level];
  return v27;
}

- (REMSharee)initWithCoder:(id)coder
{
  coderCopy = coder;
  v33.receiver = self;
  v33.super_class = REMSharee;
  v5 = [(REMSharee *)&v33 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
    objectID = v5->_objectID;
    v5->_objectID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"listID"];
    listID = v5->_listID;
    v5->_listID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstName"];
    firstName = v5->_firstName;
    v5->_firstName = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"middleName"];
    middleName = v5->_middleName;
    v5->_middleName = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastName"];
    lastName = v5->_lastName;
    v5->_lastName = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"namePrefix"];
    namePrefix = v5->_namePrefix;
    v5->_namePrefix = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nameSuffix"];
    nameSuffix = v5->_nameSuffix;
    v5->_nameSuffix = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nickname"];
    nickname = v5->_nickname;
    v5->_nickname = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"address"];
    address = v5->_address;
    v5->_address = v26;

    v28 = [coderCopy decodeIntegerForKey:@"status"];
    if (v28 >= 6)
    {
      v29 = os_log_create("com.apple.reminderkit", "default");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        [(REMSharee *)v28 initWithCoder:v29];
      }

      v28 = 0;
    }

    v5->_status = v28;
    v30 = [coderCopy decodeIntegerForKey:@"accessLevel"];
    if (v30 >= 4)
    {
      v31 = os_log_create("com.apple.reminderkit", "default");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        [(REMSharee *)v30 initWithCoder:v31];
      }

      v30 = 0;
    }

    v5->_accessLevel = v30;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objectID = [(REMSharee *)self objectID];
  [coderCopy encodeObject:objectID forKey:@"objectID"];

  accountID = [(REMSharee *)self accountID];
  [coderCopy encodeObject:accountID forKey:@"accountID"];

  listID = [(REMSharee *)self listID];
  [coderCopy encodeObject:listID forKey:@"listID"];

  displayName = [(REMSharee *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  firstName = [(REMSharee *)self firstName];
  [coderCopy encodeObject:firstName forKey:@"firstName"];

  middleName = [(REMSharee *)self middleName];
  [coderCopy encodeObject:middleName forKey:@"middleName"];

  lastName = [(REMSharee *)self lastName];
  [coderCopy encodeObject:lastName forKey:@"lastName"];

  namePrefix = [(REMSharee *)self namePrefix];
  [coderCopy encodeObject:namePrefix forKey:@"namePrefix"];

  nameSuffix = [(REMSharee *)self nameSuffix];
  [coderCopy encodeObject:nameSuffix forKey:@"nameSuffix"];

  nickname = [(REMSharee *)self nickname];
  [coderCopy encodeObject:nickname forKey:@"nickname"];

  address = [(REMSharee *)self address];
  [coderCopy encodeObject:address forKey:@"address"];

  [coderCopy encodeInteger:-[REMSharee status](self forKey:{"status"), @"status"}];
  [coderCopy encodeInteger:-[REMSharee accessLevel](self forKey:{"accessLevel"), @"accessLevel"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = REMDynamicCast(v5, equalCopy);

  if (v6)
  {
    v7 = [(REMSharee *)self isEqualToSharee:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqualToSharee:(id)sharee
{
  shareeCopy = sharee;
  v5 = shareeCopy;
  if (shareeCopy != self)
  {
    v6 = shareeCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_44;
    }

    status = [(REMSharee *)self status];
    if (status != [(REMSharee *)v6 status])
    {
      goto LABEL_44;
    }

    accessLevel = [(REMSharee *)self accessLevel];
    if (accessLevel != [(REMSharee *)v6 accessLevel])
    {
      goto LABEL_44;
    }

    objectID = [(REMSharee *)self objectID];
    objectID2 = [(REMSharee *)v6 objectID];
    v11 = objectID2;
    if (objectID == objectID2)
    {
    }

    else
    {
      objectID3 = [(REMSharee *)self objectID];
      objectID4 = [(REMSharee *)v6 objectID];
      v14 = [objectID3 isEqual:objectID4];

      if (!v14)
      {
        goto LABEL_44;
      }
    }

    accountID = [(REMSharee *)self accountID];
    accountID2 = [(REMSharee *)v6 accountID];
    v18 = accountID2;
    if (accountID == accountID2)
    {
    }

    else
    {
      accountID3 = [(REMSharee *)self accountID];
      accountID4 = [(REMSharee *)v6 accountID];
      v21 = [accountID3 isEqual:accountID4];

      if (!v21)
      {
        goto LABEL_44;
      }
    }

    listID = [(REMSharee *)self listID];
    listID2 = [(REMSharee *)v6 listID];
    v24 = listID2;
    if (listID == listID2)
    {
    }

    else
    {
      listID3 = [(REMSharee *)self listID];
      listID4 = [(REMSharee *)v6 listID];
      v27 = [listID3 isEqual:listID4];

      if (!v27)
      {
        goto LABEL_44;
      }
    }

    displayName = [(REMSharee *)self displayName];
    displayName2 = [(REMSharee *)v6 displayName];
    v30 = displayName2;
    if (displayName == displayName2)
    {
    }

    else
    {
      displayName3 = [(REMSharee *)self displayName];
      displayName4 = [(REMSharee *)v6 displayName];
      v33 = [displayName3 isEqual:displayName4];

      if (!v33)
      {
        goto LABEL_44;
      }
    }

    firstName = [(REMSharee *)self firstName];
    firstName2 = [(REMSharee *)v6 firstName];
    v36 = firstName2;
    if (firstName == firstName2)
    {
    }

    else
    {
      firstName3 = [(REMSharee *)self firstName];
      firstName4 = [(REMSharee *)v6 firstName];
      v39 = [firstName3 isEqual:firstName4];

      if (!v39)
      {
        goto LABEL_44;
      }
    }

    middleName = [(REMSharee *)self middleName];
    middleName2 = [(REMSharee *)v6 middleName];
    v42 = middleName2;
    if (middleName == middleName2)
    {
    }

    else
    {
      middleName3 = [(REMSharee *)self middleName];
      middleName4 = [(REMSharee *)v6 middleName];
      v45 = [middleName3 isEqual:middleName4];

      if (!v45)
      {
        goto LABEL_44;
      }
    }

    lastName = [(REMSharee *)self lastName];
    lastName2 = [(REMSharee *)v6 lastName];
    v48 = lastName2;
    if (lastName == lastName2)
    {
    }

    else
    {
      lastName3 = [(REMSharee *)self lastName];
      lastName4 = [(REMSharee *)v6 lastName];
      v51 = [lastName3 isEqual:lastName4];

      if (!v51)
      {
        goto LABEL_44;
      }
    }

    namePrefix = [(REMSharee *)self namePrefix];
    namePrefix2 = [(REMSharee *)v6 namePrefix];
    v54 = namePrefix2;
    if (namePrefix == namePrefix2)
    {
    }

    else
    {
      namePrefix3 = [(REMSharee *)self namePrefix];
      namePrefix4 = [(REMSharee *)v6 namePrefix];
      v57 = [namePrefix3 isEqual:namePrefix4];

      if (!v57)
      {
        goto LABEL_44;
      }
    }

    nameSuffix = [(REMSharee *)self nameSuffix];
    nameSuffix2 = [(REMSharee *)v6 nameSuffix];
    v60 = nameSuffix2;
    if (nameSuffix == nameSuffix2)
    {
    }

    else
    {
      nameSuffix3 = [(REMSharee *)self nameSuffix];
      nameSuffix4 = [(REMSharee *)v6 nameSuffix];
      v63 = [nameSuffix3 isEqual:nameSuffix4];

      if (!v63)
      {
        goto LABEL_44;
      }
    }

    nickname = [(REMSharee *)self nickname];
    nickname2 = [(REMSharee *)v6 nickname];
    v66 = nickname2;
    if (nickname == nickname2)
    {
    }

    else
    {
      nickname3 = [(REMSharee *)self nickname];
      nickname4 = [(REMSharee *)v6 nickname];
      v69 = [nickname3 isEqual:nickname4];

      if (!v69)
      {
LABEL_44:
        v15 = 0;
LABEL_45:

        goto LABEL_46;
      }
    }

    address = [(REMSharee *)self address];
    address2 = [(REMSharee *)v6 address];
    if (address == address2)
    {
      v15 = 1;
    }

    else
    {
      address3 = [(REMSharee *)self address];
      address4 = [(REMSharee *)v6 address];
      v15 = [address3 isEqual:address4];
    }

    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

- (unint64_t)hash
{
  objectID = [(REMSharee *)self objectID];
  v3 = [objectID hash];

  return v3;
}

- (NSPersonNameComponents)personNameComponents
{
  firstName = [(REMSharee *)self firstName];
  if (firstName || ([(REMSharee *)self middleName], (firstName = objc_claimAutoreleasedReturnValue()) != 0) || ([(REMSharee *)self lastName], (firstName = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_5:
    nickname2 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    firstName2 = [(REMSharee *)self firstName];
    [nickname2 setGivenName:firstName2];

    middleName = [(REMSharee *)self middleName];
    [nickname2 setMiddleName:middleName];

    lastName = [(REMSharee *)self lastName];
    [nickname2 setFamilyName:lastName];

    namePrefix = [(REMSharee *)self namePrefix];
    [nickname2 setNamePrefix:namePrefix];

    nameSuffix = [(REMSharee *)self nameSuffix];
    [nickname2 setNameSuffix:nameSuffix];

    nickname = [(REMSharee *)self nickname];
    [nickname2 setNickname:nickname];

    goto LABEL_6;
  }

  nickname2 = [(REMSharee *)self nickname];

  if (nickname2)
  {
    goto LABEL_5;
  }

LABEL_6:

  return nickname2;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objectID = [(REMSharee *)self objectID];
  listID = [(REMSharee *)self listID];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[REMSharee status](self, "status")}];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[REMSharee accessLevel](self, "accessLevel")}];
  v9 = [v3 stringWithFormat:@"<%@: %p objectID: %@, listID: %@, status: %@, access: %@>", v4, self, objectID, listID, v7, v8];

  return v9;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objectID = [(REMSharee *)self objectID];
  listID = [(REMSharee *)self listID];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[REMSharee status](self, "status")}];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[REMSharee accessLevel](self, "accessLevel")}];
  address = [(REMSharee *)self address];
  v10 = [v3 stringWithFormat:@"<%@: %p objectID: %@, listID: %@, status: %@, access: %@, address: %@>", v4, self, objectID, listID, v7, v8, address];

  return v10;
}

+ (id)newObjectID
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [self objectIDWithUUID:uUID];

  return v4;
}

+ (id)objectIDWithUUID:(id)d
{
  dCopy = d;
  cdEntityName = [self cdEntityName];
  v6 = [REMObjectID objectIDWithUUID:dCopy entityName:cdEntityName];

  return v6;
}

+ (id)nullifiedAssignmentOriginatorID
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"0D5A5BA9-302D-4518-AE2D-58DDA388E850"];
  v3 = [REMSharee objectIDWithUUID:v2];

  return v3;
}

- (id)formattedName
{
  displayName = [(REMSharee *)self displayName];
  rem_tidyFormattedNameString = [displayName rem_tidyFormattedNameString];

  if (!rem_tidyFormattedNameString)
  {
    rem_tidyFormattedNameString = [(REMSharee *)self formattedNameWithStyle:2];
  }

  return rem_tidyFormattedNameString;
}

- (id)shortName
{
  displayName = [(REMSharee *)self formattedNameWithStyle:1];
  if (!displayName)
  {
    displayName = [(REMSharee *)self displayName];
  }

  return displayName;
}

- (id)formattedNameWithStyle:(int64_t)style
{
  personNameComponents = [(REMSharee *)self personNameComponents];

  if (!personNameComponents)
  {
    goto LABEL_13;
  }

  personNameComponents2 = [(REMSharee *)self personNameComponents];
  v7 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:personNameComponents2 style:style options:0];
  rem_tidyFormattedNameString = [v7 rem_tidyFormattedNameString];

  if (!rem_tidyFormattedNameString)
  {
LABEL_13:
    address = [(REMSharee *)self address];
    rem_hasMailto = [address rem_hasMailto];

    if (!rem_hasMailto)
    {
      goto LABEL_5;
    }

    address2 = [(REMSharee *)self address];
    rem_removingMailto = [address2 rem_removingMailto];
    rem_tidyFormattedNameString = [rem_removingMailto rem_tidyFormattedNameString];

    if (!rem_tidyFormattedNameString)
    {
LABEL_5:
      address3 = [(REMSharee *)self address];
      rem_hasTel = [address3 rem_hasTel];

      if (rem_hasTel)
      {
        address4 = [(REMSharee *)self address];
        v16 = objc_alloc(MEMORY[0x1E695CF50]);
        rem_removingTel = [address4 rem_removingTel];
        v18 = [v16 initWithStringValue:rem_removingTel];
        formattedStringValue = [v18 formattedStringValue];

        rem_tidyFormattedNameString = [formattedStringValue rem_tidyFormattedNameString];
      }

      else
      {
        rem_tidyFormattedNameString = 0;
      }
    }
  }

  return rem_tidyFormattedNameString;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Unknown REMShareeStatus %ld", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Unknown REMShareeAccessLevel %ld", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end