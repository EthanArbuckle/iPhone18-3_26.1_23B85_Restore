@interface REMSharee
+ (id)newObjectID;
+ (id)nullifiedAssignmentOriginatorID;
+ (id)objectIDWithUUID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSharee:(id)a3;
- (NSPersonNameComponents)personNameComponents;
- (NSString)debugDescription;
- (NSString)description;
- (REMSharee)initWithCoder:(id)a3;
- (id)formattedName;
- (id)formattedNameWithStyle:(int64_t)a3;
- (id)initShareeWithObjectID:(id)a3 accountID:(id)a4 listID:(id)a5 displayName:(id)a6 firstName:(id)a7 middleName:(id)a8 lastName:(id)a9 namePrefix:(id)a10 nameSuffix:(id)a11 nickname:(id)a12 address:(id)a13 status:(int64_t)a14 accessLevel:(int64_t)a15;
- (id)initShareeWithObjectID:(id)a3 accountID:(id)a4 listID:(id)a5 personNameComponents:(id)a6 address:(id)a7 status:(int64_t)a8 accessLevel:(int64_t)a9;
- (id)shortName;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (id)initShareeWithObjectID:(id)a3 accountID:(id)a4 listID:(id)a5 displayName:(id)a6 firstName:(id)a7 middleName:(id)a8 lastName:(id)a9 namePrefix:(id)a10 nameSuffix:(id)a11 nickname:(id)a12 address:(id)a13 status:(int64_t)a14 accessLevel:(int64_t)a15
{
  v53 = a3;
  obj = a4;
  v52 = a4;
  v51 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v54 = a9;
  v24 = v21;
  v25 = a10;
  v26 = a11;
  v27 = v23;
  v28 = a12;
  v29 = a13;
  v55.receiver = self;
  v55.super_class = REMSharee;
  v30 = [(REMSharee *)&v55 init];
  v31 = v30;
  if (v30)
  {
    objc_storeStrong(&v30->_objectID, a3);
    objc_storeStrong(&v31->_accountID, obj);
    objc_storeStrong(&v31->_listID, a5);
    v32 = [v24 copy];
    displayName = v31->_displayName;
    v31->_displayName = v32;

    v34 = [v22 copy];
    firstName = v31->_firstName;
    v31->_firstName = v34;

    v36 = [v27 copy];
    middleName = v31->_middleName;
    v31->_middleName = v36;

    v38 = [v54 copy];
    lastName = v31->_lastName;
    v31->_lastName = v38;

    v40 = [v25 copy];
    namePrefix = v31->_namePrefix;
    v31->_namePrefix = v40;

    v42 = [v26 copy];
    nameSuffix = v31->_nameSuffix;
    v31->_nameSuffix = v42;

    v44 = [v28 copy];
    nickname = v31->_nickname;
    v31->_nickname = v44;

    v46 = [v29 copy];
    address = v31->_address;
    v31->_address = v46;

    v31->_status = a14;
    v31->_accessLevel = a15;
  }

  return v31;
}

- (id)initShareeWithObjectID:(id)a3 accountID:(id)a4 listID:(id)a5 personNameComponents:(id)a6 address:(id)a7 status:(int64_t)a8 accessLevel:(int64_t)a9
{
  v24 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v13 givenName];
  v18 = [v13 middleName];
  v19 = [v13 familyName];
  v20 = [v13 namePrefix];
  v21 = [v13 nameSuffix];
  v22 = [v13 nickname];

  v27 = [(REMSharee *)self initShareeWithObjectID:v16 accountID:v15 listID:v14 displayName:0 firstName:v17 middleName:v18 lastName:v19 namePrefix:v20 nameSuffix:v21 nickname:v22 address:v24 status:a8 accessLevel:a9];
  return v27;
}

- (REMSharee)initWithCoder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = REMSharee;
  v5 = [(REMSharee *)&v33 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
    objectID = v5->_objectID;
    v5->_objectID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"listID"];
    listID = v5->_listID;
    v5->_listID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstName"];
    firstName = v5->_firstName;
    v5->_firstName = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"middleName"];
    middleName = v5->_middleName;
    v5->_middleName = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastName"];
    lastName = v5->_lastName;
    v5->_lastName = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"namePrefix"];
    namePrefix = v5->_namePrefix;
    v5->_namePrefix = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nameSuffix"];
    nameSuffix = v5->_nameSuffix;
    v5->_nameSuffix = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nickname"];
    nickname = v5->_nickname;
    v5->_nickname = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"address"];
    address = v5->_address;
    v5->_address = v26;

    v28 = [v4 decodeIntegerForKey:@"status"];
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
    v30 = [v4 decodeIntegerForKey:@"accessLevel"];
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

- (void)encodeWithCoder:(id)a3
{
  v15 = a3;
  v4 = [(REMSharee *)self objectID];
  [v15 encodeObject:v4 forKey:@"objectID"];

  v5 = [(REMSharee *)self accountID];
  [v15 encodeObject:v5 forKey:@"accountID"];

  v6 = [(REMSharee *)self listID];
  [v15 encodeObject:v6 forKey:@"listID"];

  v7 = [(REMSharee *)self displayName];
  [v15 encodeObject:v7 forKey:@"displayName"];

  v8 = [(REMSharee *)self firstName];
  [v15 encodeObject:v8 forKey:@"firstName"];

  v9 = [(REMSharee *)self middleName];
  [v15 encodeObject:v9 forKey:@"middleName"];

  v10 = [(REMSharee *)self lastName];
  [v15 encodeObject:v10 forKey:@"lastName"];

  v11 = [(REMSharee *)self namePrefix];
  [v15 encodeObject:v11 forKey:@"namePrefix"];

  v12 = [(REMSharee *)self nameSuffix];
  [v15 encodeObject:v12 forKey:@"nameSuffix"];

  v13 = [(REMSharee *)self nickname];
  [v15 encodeObject:v13 forKey:@"nickname"];

  v14 = [(REMSharee *)self address];
  [v15 encodeObject:v14 forKey:@"address"];

  [v15 encodeInteger:-[REMSharee status](self forKey:{"status"), @"status"}];
  [v15 encodeInteger:-[REMSharee accessLevel](self forKey:{"accessLevel"), @"accessLevel"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = REMDynamicCast(v5, v4);

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

- (BOOL)isEqualToSharee:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_44;
    }

    v7 = [(REMSharee *)self status];
    if (v7 != [(REMSharee *)v6 status])
    {
      goto LABEL_44;
    }

    v8 = [(REMSharee *)self accessLevel];
    if (v8 != [(REMSharee *)v6 accessLevel])
    {
      goto LABEL_44;
    }

    v9 = [(REMSharee *)self objectID];
    v10 = [(REMSharee *)v6 objectID];
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      v12 = [(REMSharee *)self objectID];
      v13 = [(REMSharee *)v6 objectID];
      v14 = [v12 isEqual:v13];

      if (!v14)
      {
        goto LABEL_44;
      }
    }

    v16 = [(REMSharee *)self accountID];
    v17 = [(REMSharee *)v6 accountID];
    v18 = v17;
    if (v16 == v17)
    {
    }

    else
    {
      v19 = [(REMSharee *)self accountID];
      v20 = [(REMSharee *)v6 accountID];
      v21 = [v19 isEqual:v20];

      if (!v21)
      {
        goto LABEL_44;
      }
    }

    v22 = [(REMSharee *)self listID];
    v23 = [(REMSharee *)v6 listID];
    v24 = v23;
    if (v22 == v23)
    {
    }

    else
    {
      v25 = [(REMSharee *)self listID];
      v26 = [(REMSharee *)v6 listID];
      v27 = [v25 isEqual:v26];

      if (!v27)
      {
        goto LABEL_44;
      }
    }

    v28 = [(REMSharee *)self displayName];
    v29 = [(REMSharee *)v6 displayName];
    v30 = v29;
    if (v28 == v29)
    {
    }

    else
    {
      v31 = [(REMSharee *)self displayName];
      v32 = [(REMSharee *)v6 displayName];
      v33 = [v31 isEqual:v32];

      if (!v33)
      {
        goto LABEL_44;
      }
    }

    v34 = [(REMSharee *)self firstName];
    v35 = [(REMSharee *)v6 firstName];
    v36 = v35;
    if (v34 == v35)
    {
    }

    else
    {
      v37 = [(REMSharee *)self firstName];
      v38 = [(REMSharee *)v6 firstName];
      v39 = [v37 isEqual:v38];

      if (!v39)
      {
        goto LABEL_44;
      }
    }

    v40 = [(REMSharee *)self middleName];
    v41 = [(REMSharee *)v6 middleName];
    v42 = v41;
    if (v40 == v41)
    {
    }

    else
    {
      v43 = [(REMSharee *)self middleName];
      v44 = [(REMSharee *)v6 middleName];
      v45 = [v43 isEqual:v44];

      if (!v45)
      {
        goto LABEL_44;
      }
    }

    v46 = [(REMSharee *)self lastName];
    v47 = [(REMSharee *)v6 lastName];
    v48 = v47;
    if (v46 == v47)
    {
    }

    else
    {
      v49 = [(REMSharee *)self lastName];
      v50 = [(REMSharee *)v6 lastName];
      v51 = [v49 isEqual:v50];

      if (!v51)
      {
        goto LABEL_44;
      }
    }

    v52 = [(REMSharee *)self namePrefix];
    v53 = [(REMSharee *)v6 namePrefix];
    v54 = v53;
    if (v52 == v53)
    {
    }

    else
    {
      v55 = [(REMSharee *)self namePrefix];
      v56 = [(REMSharee *)v6 namePrefix];
      v57 = [v55 isEqual:v56];

      if (!v57)
      {
        goto LABEL_44;
      }
    }

    v58 = [(REMSharee *)self nameSuffix];
    v59 = [(REMSharee *)v6 nameSuffix];
    v60 = v59;
    if (v58 == v59)
    {
    }

    else
    {
      v61 = [(REMSharee *)self nameSuffix];
      v62 = [(REMSharee *)v6 nameSuffix];
      v63 = [v61 isEqual:v62];

      if (!v63)
      {
        goto LABEL_44;
      }
    }

    v64 = [(REMSharee *)self nickname];
    v65 = [(REMSharee *)v6 nickname];
    v66 = v65;
    if (v64 == v65)
    {
    }

    else
    {
      v67 = [(REMSharee *)self nickname];
      v68 = [(REMSharee *)v6 nickname];
      v69 = [v67 isEqual:v68];

      if (!v69)
      {
LABEL_44:
        v15 = 0;
LABEL_45:

        goto LABEL_46;
      }
    }

    v71 = [(REMSharee *)self address];
    v72 = [(REMSharee *)v6 address];
    if (v71 == v72)
    {
      v15 = 1;
    }

    else
    {
      v73 = [(REMSharee *)self address];
      v74 = [(REMSharee *)v6 address];
      v15 = [v73 isEqual:v74];
    }

    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

- (unint64_t)hash
{
  v2 = [(REMSharee *)self objectID];
  v3 = [v2 hash];

  return v3;
}

- (NSPersonNameComponents)personNameComponents
{
  v3 = [(REMSharee *)self firstName];
  if (v3 || ([(REMSharee *)self middleName], (v3 = objc_claimAutoreleasedReturnValue()) != 0) || ([(REMSharee *)self lastName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_5:
    v4 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    v5 = [(REMSharee *)self firstName];
    [v4 setGivenName:v5];

    v6 = [(REMSharee *)self middleName];
    [v4 setMiddleName:v6];

    v7 = [(REMSharee *)self lastName];
    [v4 setFamilyName:v7];

    v8 = [(REMSharee *)self namePrefix];
    [v4 setNamePrefix:v8];

    v9 = [(REMSharee *)self nameSuffix];
    [v4 setNameSuffix:v9];

    v10 = [(REMSharee *)self nickname];
    [v4 setNickname:v10];

    goto LABEL_6;
  }

  v4 = [(REMSharee *)self nickname];

  if (v4)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMSharee *)self objectID];
  v6 = [(REMSharee *)self listID];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[REMSharee status](self, "status")}];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[REMSharee accessLevel](self, "accessLevel")}];
  v9 = [v3 stringWithFormat:@"<%@: %p objectID: %@, listID: %@, status: %@, access: %@>", v4, self, v5, v6, v7, v8];

  return v9;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMSharee *)self objectID];
  v6 = [(REMSharee *)self listID];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[REMSharee status](self, "status")}];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[REMSharee accessLevel](self, "accessLevel")}];
  v9 = [(REMSharee *)self address];
  v10 = [v3 stringWithFormat:@"<%@: %p objectID: %@, listID: %@, status: %@, access: %@, address: %@>", v4, self, v5, v6, v7, v8, v9];

  return v10;
}

+ (id)newObjectID
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [a1 objectIDWithUUID:v3];

  return v4;
}

+ (id)objectIDWithUUID:(id)a3
{
  v4 = a3;
  v5 = [a1 cdEntityName];
  v6 = [REMObjectID objectIDWithUUID:v4 entityName:v5];

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
  v3 = [(REMSharee *)self displayName];
  v4 = [v3 rem_tidyFormattedNameString];

  if (!v4)
  {
    v4 = [(REMSharee *)self formattedNameWithStyle:2];
  }

  return v4;
}

- (id)shortName
{
  v3 = [(REMSharee *)self formattedNameWithStyle:1];
  if (!v3)
  {
    v3 = [(REMSharee *)self displayName];
  }

  return v3;
}

- (id)formattedNameWithStyle:(int64_t)a3
{
  v5 = [(REMSharee *)self personNameComponents];

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = [(REMSharee *)self personNameComponents];
  v7 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v6 style:a3 options:0];
  v8 = [v7 rem_tidyFormattedNameString];

  if (!v8)
  {
LABEL_13:
    v9 = [(REMSharee *)self address];
    v10 = [v9 rem_hasMailto];

    if (!v10)
    {
      goto LABEL_5;
    }

    v11 = [(REMSharee *)self address];
    v12 = [v11 rem_removingMailto];
    v8 = [v12 rem_tidyFormattedNameString];

    if (!v8)
    {
LABEL_5:
      v13 = [(REMSharee *)self address];
      v14 = [v13 rem_hasTel];

      if (v14)
      {
        v15 = [(REMSharee *)self address];
        v16 = objc_alloc(MEMORY[0x1E695CF50]);
        v17 = [v15 rem_removingTel];
        v18 = [v16 initWithStringValue:v17];
        v19 = [v18 formattedStringValue];

        v8 = [v19 rem_tidyFormattedNameString];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  return v8;
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