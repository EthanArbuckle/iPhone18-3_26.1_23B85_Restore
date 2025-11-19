@interface PPContact
+ (BOOL)identifier:(id)a3 startsWithPrefix:(id)a4;
+ (PPContact)contactWithIdentifier:(id)a3 source:(unsigned __int8)a4 namePrefix:(id)a5 givenName:(id)a6 middleName:(id)a7 familyName:(id)a8 nameSuffix:(id)a9 nickname:(id)a10 localizedFullName:(id)a11 organizationName:(id)a12 jobTitle:(id)a13 birthday:(id)a14 nonGregorianBirthday:(id)a15 phoneNumbers:(id)a16 emailAddresses:(id)a17 socialProfiles:(id)a18 postalAddresses:(id)a19;
+ (id)contactsContactIdentifierWithIdentifier:(id)a3 error:(id *)a4;
+ (id)sourceIdentifierWithSource:(unsigned __int8)a3 identifier:(id)a4;
+ (int64_t)foundInAppsRecordIdentifierNumberWithIdentifier:(id)a3 error:(id *)a4;
+ (unsigned)sourceFromSourceIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToContact:(id)a3;
- (PPContact)initWithCoder:(id)a3;
- (PPContact)initWithContactsContact:(id)a3;
- (PPContact)initWithFoundInAppsContact:(id)a3;
- (PPContact)initWithIdentifier:(id)a3 source:(unsigned __int8)a4 namePrefix:(id)a5 givenName:(id)a6 middleName:(id)a7 familyName:(id)a8 nameSuffix:(id)a9 nickname:(id)a10 localizedFullName:(id)a11 organizationName:(id)a12 jobTitle:(id)a13 birthday:(id)a14 nonGregorianBirthday:(id)a15 phoneNumbers:(id)a16 emailAddresses:(id)a17 socialProfiles:(id)a18 postalAddresses:(id)a19;
- (id)contactsContactIdentifierWithError:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)foundInAppsRecordIdentifierNumberWithError:(id *)a3;
- (unint64_t)hash;
- (void)_generateLocalizedFullName;
- (void)encodeWithCoder:(id)a3;
- (void)setEmailAddressForTesting:(id)a3;
@end

@implementation PPContact

- (BOOL)isEqualToContact:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_61;
  }

  v5 = self->_identifier;
  v6 = v5;
  if (v5 == v4[2])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  if (self->_source != *(v4 + 8))
  {
LABEL_61:
    v50 = 0;
    goto LABEL_62;
  }

  v8 = self->_namePrefix;
  v9 = v8;
  if (v8 == v4[3])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v11 = self->_givenName;
  v12 = v11;
  if (v11 == v4[4])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v14 = self->_middleName;
  v15 = v14;
  if (v14 == v4[5])
  {
  }

  else
  {
    v16 = [(NSString *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v17 = self->_familyName;
  v18 = v17;
  if (v17 == v4[6])
  {
  }

  else
  {
    v19 = [(NSString *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v20 = self->_nameSuffix;
  v21 = v20;
  if (v20 == v4[7])
  {
  }

  else
  {
    v22 = [(NSString *)v20 isEqual:?];

    if ((v22 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v23 = self->_nickname;
  v24 = v23;
  if (v23 == v4[8])
  {
  }

  else
  {
    v25 = [(NSString *)v23 isEqual:?];

    if ((v25 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v26 = self->_localizedFullName;
  v27 = v26;
  if (v26 == v4[9])
  {
  }

  else
  {
    v28 = [(NSString *)v26 isEqual:?];

    if ((v28 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v29 = self->_organizationName;
  v30 = v29;
  if (v29 == v4[10])
  {
  }

  else
  {
    v31 = [(NSString *)v29 isEqual:?];

    if ((v31 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v32 = self->_jobTitle;
  v33 = v32;
  if (v32 == v4[11])
  {
  }

  else
  {
    v34 = [(NSString *)v32 isEqual:?];

    if ((v34 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v35 = self->_birthday;
  v36 = v35;
  if (v35 == v4[12])
  {
  }

  else
  {
    v37 = [(NSDateComponents *)v35 isEqual:?];

    if ((v37 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v38 = self->_nonGregorianBirthday;
  v39 = v38;
  if (v38 == v4[13])
  {
  }

  else
  {
    v40 = [(NSDateComponents *)v38 isEqual:?];

    if ((v40 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v41 = self->_phoneNumbers;
  v42 = v41;
  if (v41 == v4[14])
  {
  }

  else
  {
    v43 = [(NSArray *)v41 isEqual:?];

    if ((v43 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v44 = self->_emailAddresses;
  v45 = v44;
  if (v44 == v4[15])
  {
  }

  else
  {
    v46 = [(NSArray *)v44 isEqual:?];

    if ((v46 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v47 = self->_socialProfiles;
  v48 = v47;
  if (v47 == v4[16])
  {
  }

  else
  {
    v49 = [(NSArray *)v47 isEqual:?];

    if ((v49 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v52 = self->_postalAddresses;
  v53 = v52;
  if (v52 == v4[17])
  {
    v50 = 1;
  }

  else
  {
    v50 = [(NSArray *)v52 isEqual:?];
  }

LABEL_62:
  return v50;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPContact *)self isEqualToContact:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19 = objc_opt_class();
  v24 = [(NSString *)self->_identifier copyWithZone:a3];
  source = self->_source;
  v20 = [(NSString *)self->_namePrefix copyWithZone:a3];
  v18 = [(NSString *)self->_givenName copyWithZone:a3];
  v17 = [(NSString *)self->_middleName copyWithZone:a3];
  v16 = [(NSString *)self->_familyName copyWithZone:a3];
  v23 = [(NSString *)self->_nameSuffix copyWithZone:a3];
  v14 = [(NSString *)self->_nickname copyWithZone:a3];
  v13 = [(NSString *)self->_localizedFullName copyWithZone:a3];
  v12 = [(NSString *)self->_organizationName copyWithZone:a3];
  v15 = [(NSString *)self->_jobTitle copyWithZone:a3];
  v11 = [(NSDateComponents *)self->_birthday copyWithZone:a3];
  v5 = [(NSDateComponents *)self->_nonGregorianBirthday copyWithZone:a3];
  v6 = [(NSArray *)self->_phoneNumbers copyWithZone:a3];
  v7 = [(NSArray *)self->_emailAddresses copyWithZone:a3];
  v8 = [(NSArray *)self->_socialProfiles copyWithZone:a3];
  v9 = [(NSArray *)self->_postalAddresses copyWithZone:a3];
  v22 = [v19 contactWithIdentifier:v24 source:source namePrefix:v20 givenName:v18 middleName:v17 familyName:v16 nameSuffix:v23 nickname:v14 localizedFullName:v13 organizationName:v12 jobTitle:v15 birthday:v11 nonGregorianBirthday:v5 phoneNumbers:v6 emailAddresses:v7 socialProfiles:v8 postalAddresses:v9];

  return v22;
}

- (unint64_t)hash
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)self->_identifier hash];
  v4 = self->_source - v3 + 32 * v3;
  v5 = [(NSString *)self->_namePrefix hash]- v4 + 32 * v4;
  v6 = [(NSString *)self->_givenName hash]- v5 + 32 * v5;
  v7 = [(NSString *)self->_middleName hash]- v6 + 32 * v6;
  v8 = [(NSString *)self->_familyName hash]- v7 + 32 * v7;
  v9 = [(NSString *)self->_nameSuffix hash]- v8 + 32 * v8;
  v10 = [(NSString *)self->_nickname hash]- v9 + 32 * v9;
  v11 = [(NSString *)self->_localizedFullName hash]- v10 + 32 * v10;
  v12 = [(NSString *)self->_organizationName hash]- v11 + 32 * v11;
  v13 = [(NSString *)self->_jobTitle hash]- v12 + 32 * v12;
  v14 = [(NSDateComponents *)self->_birthday hash]- v13 + 32 * v13;
  v15 = [(NSDateComponents *)self->_nonGregorianBirthday hash]- v14 + 32 * v14;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v16 = self->_phoneNumbers;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v51;
    do
    {
      v20 = 0;
      do
      {
        if (*v51 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v15 = [*(*(&v50 + 1) + 8 * v20++) hash] - v15 + 32 * v15;
      }

      while (v18 != v20);
      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v18);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v21 = self->_emailAddresses;
  v22 = [(NSArray *)v21 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v47;
    do
    {
      v25 = 0;
      do
      {
        if (*v47 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v15 = [*(*(&v46 + 1) + 8 * v25++) hash] - v15 + 32 * v15;
      }

      while (v23 != v25);
      v23 = [(NSArray *)v21 countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v23);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v26 = self->_socialProfiles;
  v27 = [(NSArray *)v26 countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v43;
    do
    {
      v30 = 0;
      do
      {
        if (*v43 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v15 = [*(*(&v42 + 1) + 8 * v30++) hash] - v15 + 32 * v15;
      }

      while (v28 != v30);
      v28 = [(NSArray *)v26 countByEnumeratingWithState:&v42 objects:v55 count:16];
    }

    while (v28);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v31 = self->_postalAddresses;
  v32 = [(NSArray *)v31 countByEnumeratingWithState:&v38 objects:v54 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v39;
    do
    {
      v35 = 0;
      do
      {
        if (*v39 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v15 = [*(*(&v38 + 1) + 8 * v35++) hash] - v15 + 32 * v15;
      }

      while (v33 != v35);
      v33 = [(NSArray *)v31 countByEnumeratingWithState:&v38 objects:v54 count:16];
    }

    while (v33);
  }

  v36 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"idt"];
  [v5 encodeInt32:self->_source forKey:@"src"];
  [v5 encodeObject:self->_namePrefix forKey:@"npr"];
  [v5 encodeObject:self->_givenName forKey:@"gnm"];
  [v5 encodeObject:self->_middleName forKey:@"mnm"];
  [v5 encodeObject:self->_familyName forKey:@"fnm"];
  [v5 encodeObject:self->_nameSuffix forKey:@"nsf"];
  [v5 encodeObject:self->_nickname forKey:@"nck"];
  [v5 encodeObject:self->_localizedFullName forKey:@"lfn"];
  [v5 encodeObject:self->_organizationName forKey:@"org"];
  [v5 encodeObject:self->_jobTitle forKey:@"job"];
  [v5 encodeObject:self->_birthday forKey:@"bdy"];
  [v5 encodeObject:self->_nonGregorianBirthday forKey:@"ngb"];
  [v5 encodeObject:self->_phoneNumbers forKey:@"phn"];
  [v5 encodeObject:self->_emailAddresses forKey:@"eml"];
  [v5 encodeObject:self->_socialProfiles forKey:@"soc"];
  [v5 encodeObject:self->_postalAddresses forKey:@"pos"];
}

- (PPContact)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v10 = [v4 decodeObjectOfClass:v5 forKey:@"idt"];
  if (v10)
  {
    v25 = [v4 decodeInt32ForKey:@"src"];
    v24 = [v4 decodeObjectOfClass:v5 forKey:@"npr"];
    v23 = [v4 decodeObjectOfClass:v5 forKey:@"gnm"];
    v22 = [v4 decodeObjectOfClass:v5 forKey:@"mnm"];
    v21 = [v4 decodeObjectOfClass:v5 forKey:@"fnm"];
    v28 = [v4 decodeObjectOfClass:v5 forKey:@"nsf"];
    v27 = [v4 decodeObjectOfClass:v5 forKey:@"nck"];
    v20 = [v4 decodeObjectOfClass:v5 forKey:@"lfn"];
    v26 = [v4 decodeObjectOfClass:v5 forKey:@"org"];
    v19 = [v4 decodeObjectOfClass:v5 forKey:@"job"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bdy"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ngb"];
    v16 = [v4 decodeObjectOfClasses:v9 forKey:@"phn"];
    v11 = [v4 decodeObjectOfClasses:v9 forKey:@"eml"];
    v12 = [v4 decodeObjectOfClasses:v9 forKey:@"soc"];
    v13 = [v4 decodeObjectOfClasses:v9 forKey:@"pos"];
    self = [(PPContact *)self initWithIdentifier:v10 source:v25 namePrefix:v24 givenName:v23 middleName:v22 familyName:v21 nameSuffix:v28 nickname:v27 localizedFullName:v20 organizationName:v26 jobTitle:v19 birthday:v18 nonGregorianBirthday:v17 phoneNumbers:v16 emailAddresses:v11 socialProfiles:v12 postalAddresses:v13];

    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)setEmailAddressForTesting:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[PPLabeledValue alloc] initWithLabel:@"email" value:v4];

  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  emailAddresses = self->_emailAddresses;
  self->_emailAddresses = v6;

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_generateLocalizedFullName
{
  v3 = objc_opt_new();
  v6 = v3;
  if (self->_namePrefix)
  {
    [v3 setNamePrefix:?];
    v3 = v6;
  }

  if (self->_givenName)
  {
    [v6 setGivenName:?];
    v3 = v6;
  }

  if (self->_middleName)
  {
    [v6 setMiddleName:?];
    v3 = v6;
  }

  if (self->_familyName)
  {
    [v6 setFamilyName:?];
    v3 = v6;
  }

  if (self->_nameSuffix)
  {
    [v6 setNameSuffix:?];
    v3 = v6;
  }

  if (self->_nickname)
  {
    [v6 setNickname:?];
    v3 = v6;
  }

  [v3 setContactType:0];
  v4 = [MEMORY[0x1E695CD80] stringFromContact:v6 style:0];
  localizedFullName = self->_localizedFullName;
  self->_localizedFullName = v4;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<PPContact %@: '%@' src:%d>", self->_identifier, self->_localizedFullName, self->_source];

  return v2;
}

- (id)contactsContactIdentifierWithError:(id *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_source == 1)
  {
    v5 = [PPContact contactsContactIdentifierWithIdentifier:self->_identifier error:a3];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"attempt to get CN identifier for non-CN contact: src:%d id:%@", self->_source, self->_identifier];
    v7 = pp_contacts_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      source = self->_source;
      identifier = self->_identifier;
      *buf = 67109378;
      v19 = source;
      v20 = 2112;
      v21 = identifier;
      _os_log_error_impl(&dword_1A7FD3000, v7, OS_LOG_TYPE_ERROR, "attempt to get CN identifier for non-CN contact: src:%d id:%@", buf, 0x12u);
    }

    if (a3)
    {
      v8 = MEMORY[0x1E696ABC0];
      v16[0] = @"PPErrorInfoKey";
      v16[1] = @"identifier";
      v9 = self->_identifier;
      v17[0] = v6;
      v17[1] = v9;
      v16[2] = @"source";
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_source];
      v17[2] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
      *a3 = [v8 errorWithDomain:@"PPErrorDomain" code:2 userInfo:v11];
    }

    v5 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (int64_t)foundInAppsRecordIdentifierNumberWithError:(id *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_source == 2)
  {
    identifier = self->_identifier;
    v6 = *MEMORY[0x1E69E9840];

    return [PPContact foundInAppsRecordIdentifierNumberWithIdentifier:identifier error:a3];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"attempt to get FIA identifier for non-FIA contact: src:%d id:%@", self->_source, self->_identifier];
    v9 = pp_contacts_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      source = self->_source;
      v16 = self->_identifier;
      *buf = 67109378;
      v20 = source;
      v21 = 2112;
      v22 = v16;
      _os_log_error_impl(&dword_1A7FD3000, v9, OS_LOG_TYPE_ERROR, "attempt to get FIA identifier for non-FIA contact: src:%d id:%@", buf, 0x12u);
    }

    if (a3)
    {
      v10 = MEMORY[0x1E696ABC0];
      v17[0] = @"PPErrorInfoKey";
      v17[1] = @"identifier";
      v11 = self->_identifier;
      v18[0] = v8;
      v18[1] = v11;
      v17[2] = @"source";
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_source];
      v18[2] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
      *a3 = [v10 errorWithDomain:@"PPErrorDomain" code:2 userInfo:v13];
    }

    v14 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

- (PPContact)initWithFoundInAppsContact:(id)a3
{
  v84 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v54 = [MEMORY[0x1E696AAA8] currentHandler];
    [v54 handleFailureInMethod:a2 object:self file:@"PPContact.m" lineNumber:142 description:{@"Invalid parameter not satisfying: %@", @"contact"}];
  }

  v63 = self;
  v6 = objc_opt_new();
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v7 = [v5 phones];
  v8 = [v7 countByEnumeratingWithState:&v77 objects:v83 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v78;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v78 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v77 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [v12 phoneNumber];
        v15 = [v14 length];

        if (v15)
        {
          v16 = [v12 label];
          v17 = [v12 phoneNumber];
          v18 = [PPLabeledValue labeledValueWithLabel:v16 value:v17];
          [v6 addObject:v18];
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v77 objects:v83 count:16];
    }

    while (v9);
  }

  v68 = v6;

  v19 = objc_opt_new();
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v20 = [v5 emailAddresses];
  v21 = [v20 countByEnumeratingWithState:&v73 objects:v82 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v74;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v74 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v73 + 1) + 8 * j);
        v26 = objc_autoreleasePoolPush();
        v27 = [v25 emailAddress];
        v28 = [v27 length];

        if (v28)
        {
          v29 = [v25 label];
          v30 = [v25 emailAddress];
          v31 = [PPLabeledValue labeledValueWithLabel:v29 value:v30];
          [v19 addObject:v31];
        }

        objc_autoreleasePoolPop(v26);
      }

      v22 = [v20 countByEnumeratingWithState:&v73 objects:v82 count:16];
    }

    while (v22);
  }

  v32 = objc_opt_new();
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v65 = v5;
  v33 = [v5 postalAddresses];
  v34 = [v33 countByEnumeratingWithState:&v69 objects:v81 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v70;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v70 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v69 + 1) + 8 * k);
        v39 = objc_autoreleasePoolPush();
        v40 = [[PPPostalAddress alloc] initWithFoundInAppsPostalAddress:v38];
        v41 = [v38 label];
        v42 = [PPLabeledValue labeledValueWithLabel:v41 value:v40];
        [v32 addObject:v42];

        objc_autoreleasePoolPop(v39);
      }

      v35 = [v33 countByEnumeratingWithState:&v69 objects:v81 count:16];
    }

    while (v35);
  }

  v43 = objc_opt_class();
  v44 = objc_alloc(MEMORY[0x1E696AEC0]);
  v62 = [v65 recordId];
  v61 = [v44 initWithFormat:@"%llu", objc_msgSend(v62, "numericValue")];
  v67 = [v43 sourceIdentifierWithSource:2 identifier:v61];
  v60 = [v65 name];
  v66 = [v60 prefix];
  v59 = [v65 name];
  v45 = [v59 firstName];
  v58 = [v65 name];
  v55 = [v58 middleName];
  v57 = [v65 name];
  v46 = [v57 lastName];
  v56 = [v65 name];
  v47 = [v56 suffix];
  v48 = [v65 name];
  v49 = [v48 fullName];
  v50 = [v65 birthday];
  v51 = [v50 dateComponents];
  v64 = [(PPContact *)v63 initWithIdentifier:v67 source:2 namePrefix:v66 givenName:v45 middleName:v55 familyName:v46 nameSuffix:v47 nickname:0 localizedFullName:v49 organizationName:0 jobTitle:0 birthday:v51 nonGregorianBirthday:0 phoneNumbers:v68 emailAddresses:v19 socialProfiles:0 postalAddresses:v32];

  v52 = *MEMORY[0x1E69E9840];
  return v64;
}

- (PPContact)initWithContactsContact:(id)a3
{
  v115 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v74 = [MEMORY[0x1E696AAA8] currentHandler];
    [v74 handleFailureInMethod:a2 object:self file:@"PPContact.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"contact"}];
  }

  v94 = objc_opt_new();
  v88 = self;
  v89 = v5;
  if ([v5 isKeyAvailable:*MEMORY[0x1E695C330]])
  {
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v6 = [v5 phoneNumbers];
    v7 = [v6 countByEnumeratingWithState:&v107 objects:v114 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v108;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v108 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v107 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v13 = [v11 value];
          v14 = [v13 stringValue];
          v15 = [v14 length];

          if (v15)
          {
            v16 = [v11 label];
            v17 = [v11 value];
            v18 = [v17 stringValue];
            v19 = [PPLabeledValue labeledValueWithLabel:v16 value:v18];
            [v94 addObject:v19];
          }

          objc_autoreleasePoolPop(v12);
        }

        v8 = [v6 countByEnumeratingWithState:&v107 objects:v114 count:16];
      }

      while (v8);
    }

    self = v88;
    v5 = v89;
  }

  v93 = objc_opt_new();
  if ([v5 isKeyAvailable:*MEMORY[0x1E695C208]])
  {
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v20 = [v5 emailAddresses];
    v21 = [v20 countByEnumeratingWithState:&v103 objects:v113 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v104;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v104 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v103 + 1) + 8 * j);
          v26 = objc_autoreleasePoolPush();
          v27 = [v25 value];
          v28 = [v27 length];

          if (v28)
          {
            v29 = [v25 label];
            v30 = [v25 value];
            v31 = [PPLabeledValue labeledValueWithLabel:v29 value:v30];
            [v93 addObject:v31];
          }

          objc_autoreleasePoolPop(v26);
        }

        v22 = [v20 countByEnumeratingWithState:&v103 objects:v113 count:16];
      }

      while (v22);
    }

    v5 = v89;
  }

  v92 = objc_opt_new();
  if ([v5 isKeyAvailable:*MEMORY[0x1E695C3D0]])
  {
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v32 = [v5 socialProfiles];
    v33 = [v32 countByEnumeratingWithState:&v99 objects:v112 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v100;
      do
      {
        for (k = 0; k != v34; ++k)
        {
          if (*v100 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v99 + 1) + 8 * k);
          v38 = objc_autoreleasePoolPush();
          v39 = [v37 value];
          v40 = [v39 username];
          v41 = [v40 length];

          if (v41)
          {
            v42 = [v37 value];
            v43 = [v42 service];
            v44 = [v37 value];
            v45 = [v44 username];
            v46 = [PPLabeledValue labeledValueWithLabel:v43 value:v45];
            [v92 addObject:v46];
          }

          objc_autoreleasePoolPop(v38);
        }

        v34 = [v32 countByEnumeratingWithState:&v99 objects:v112 count:16];
      }

      while (v34);
    }

    self = v88;
    v5 = v89;
  }

  v91 = objc_opt_new();
  if ([v5 isKeyAvailable:*MEMORY[0x1E695C360]])
  {
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v47 = [v5 postalAddresses];
    v48 = [v47 countByEnumeratingWithState:&v95 objects:v111 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v96;
      do
      {
        for (m = 0; m != v49; ++m)
        {
          if (*v96 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = *(*(&v95 + 1) + 8 * m);
          v53 = objc_autoreleasePoolPush();
          v54 = [v52 value];

          if (v54)
          {
            v55 = [PPPostalAddress alloc];
            v56 = [v52 value];
            v57 = [(PPPostalAddress *)v55 initWithContactsPostalAddress:v56];

            v58 = [v52 label];
            v59 = [PPLabeledValue labeledValueWithLabel:v58 value:v57];
            [v91 addObject:v59];
          }

          objc_autoreleasePoolPop(v53);
        }

        v49 = [v47 countByEnumeratingWithState:&v95 objects:v111 count:16];
      }

      while (v49);
    }

    self = v88;
    v5 = v89;
  }

  v60 = objc_opt_class();
  v61 = [v5 identifier];
  v62 = [v60 sourceIdentifierWithSource:1 identifier:v61];
  v63 = [v5 isKeyAvailable:*MEMORY[0x1E695C300]];
  if (v63)
  {
    v64 = [v5 namePrefix];
  }

  else
  {
    v64 = 0;
  }

  v65 = [v5 isKeyAvailable:*MEMORY[0x1E695C240]];
  if (v65)
  {
    v87 = [v5 givenName];
  }

  else
  {
    v87 = 0;
  }

  v80 = [v5 isKeyAvailable:*MEMORY[0x1E695C2F0]];
  if (v80)
  {
    v86 = [v5 middleName];
  }

  else
  {
    v86 = 0;
  }

  v79 = [v5 isKeyAvailable:*MEMORY[0x1E695C230]];
  if (v79)
  {
    v85 = [v5 familyName];
  }

  else
  {
    v85 = 0;
  }

  v78 = [v5 isKeyAvailable:*MEMORY[0x1E695C308]];
  if (v78)
  {
    v84 = [v5 nameSuffix];
  }

  else
  {
    v84 = 0;
  }

  v77 = [v5 isKeyAvailable:*MEMORY[0x1E695C310]];
  if (v77)
  {
    v83 = [v5 nickname];
  }

  else
  {
    v83 = 0;
  }

  v90 = [MEMORY[0x1E695CD80] stringFromContact:v5 style:0];
  v76 = [v5 isKeyAvailable:*MEMORY[0x1E695C328]];
  if (v76)
  {
    v82 = [v5 organizationName];
  }

  else
  {
    v82 = 0;
  }

  v66 = [v5 isKeyAvailable:*MEMORY[0x1E695C2C8]];
  if (v66)
  {
    v81 = [v5 jobTitle];
  }

  else
  {
    v81 = 0;
  }

  v67 = [v5 isKeyAvailable:*MEMORY[0x1E695C1D0]];
  if (v67)
  {
    v68 = [v5 birthday];
  }

  else
  {
    v68 = 0;
  }

  if (([v5 isKeyAvailable:*MEMORY[0x1E695C318]] & 1) == 0)
  {
    v71 = [(PPContact *)self initWithIdentifier:v62 source:1 namePrefix:v64 givenName:v87 middleName:v86 familyName:v85 nameSuffix:v84 nickname:v83 localizedFullName:v90 organizationName:v82 jobTitle:v81 birthday:v68 nonGregorianBirthday:0 phoneNumbers:v94 emailAddresses:v93 socialProfiles:v92 postalAddresses:v91];
    if (!v67)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  [v5 nonGregorianBirthday];
  v75 = v61;
  v70 = v69 = v64;
  v71 = [(PPContact *)self initWithIdentifier:v62 source:1 namePrefix:v69 givenName:v87 middleName:v86 familyName:v85 nameSuffix:v84 nickname:v83 localizedFullName:v90 organizationName:v82 jobTitle:v81 birthday:v68 nonGregorianBirthday:v70 phoneNumbers:v94 emailAddresses:v93 socialProfiles:v92 postalAddresses:v91];

  v64 = v69;
  v61 = v75;
  if (v67)
  {
LABEL_78:
  }

LABEL_79:
  if (v66)
  {
  }

  if (v76)
  {
  }

  if (v77)
  {
  }

  if (v78)
  {
  }

  if (v79)
  {
  }

  if (!v80)
  {
    if (!v65)
    {
      goto LABEL_91;
    }

LABEL_95:

    if (!v63)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

  if (v65)
  {
    goto LABEL_95;
  }

LABEL_91:
  if (v63)
  {
LABEL_92:
  }

LABEL_93:

  v72 = *MEMORY[0x1E69E9840];
  return v71;
}

- (PPContact)initWithIdentifier:(id)a3 source:(unsigned __int8)a4 namePrefix:(id)a5 givenName:(id)a6 middleName:(id)a7 familyName:(id)a8 nameSuffix:(id)a9 nickname:(id)a10 localizedFullName:(id)a11 organizationName:(id)a12 jobTitle:(id)a13 birthday:(id)a14 nonGregorianBirthday:(id)a15 phoneNumbers:(id)a16 emailAddresses:(id)a17 socialProfiles:(id)a18 postalAddresses:(id)a19
{
  v50 = a3;
  v38 = a5;
  v49 = a5;
  v48 = a6;
  v39 = a7;
  v24 = a7;
  v25 = self;
  v47 = v24;
  v46 = a8;
  v45 = a9;
  v44 = a10;
  v43 = a11;
  v41 = a12;
  v42 = a13;
  v40 = a14;
  v26 = a15;
  v27 = a16;
  v28 = a17;
  v29 = a18;
  v30 = a19;
  if (!v50)
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:v25 file:@"PPContact.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v51.receiver = v25;
  v51.super_class = PPContact;
  v31 = [(PPContact *)&v51 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_identifier, a3);
    v32->_source = a4;
    objc_storeStrong(&v32->_namePrefix, v38);
    objc_storeStrong(&v32->_givenName, a6);
    objc_storeStrong(&v32->_middleName, v39);
    objc_storeStrong(&v32->_familyName, a8);
    objc_storeStrong(&v32->_nameSuffix, a9);
    objc_storeStrong(&v32->_nickname, a10);
    objc_storeStrong(&v32->_organizationName, a12);
    objc_storeStrong(&v32->_jobTitle, a13);
    objc_storeStrong(&v32->_birthday, a14);
    objc_storeStrong(&v32->_nonGregorianBirthday, a15);
    objc_storeStrong(&v32->_phoneNumbers, a16);
    objc_storeStrong(&v32->_emailAddresses, a17);
    objc_storeStrong(&v32->_socialProfiles, a18);
    objc_storeStrong(&v32->_postalAddresses, a19);
    objc_storeStrong(&v32->_localizedFullName, a11);
    if (!v32->_localizedFullName)
    {
      [(PPContact *)v32 _generateLocalizedFullName];
    }
  }

  return v32;
}

+ (PPContact)contactWithIdentifier:(id)a3 source:(unsigned __int8)a4 namePrefix:(id)a5 givenName:(id)a6 middleName:(id)a7 familyName:(id)a8 nameSuffix:(id)a9 nickname:(id)a10 localizedFullName:(id)a11 organizationName:(id)a12 jobTitle:(id)a13 birthday:(id)a14 nonGregorianBirthday:(id)a15 phoneNumbers:(id)a16 emailAddresses:(id)a17 socialProfiles:(id)a18 postalAddresses:(id)a19
{
  v37 = a4;
  v32 = a19;
  v30 = a18;
  v27 = a17;
  v26 = a16;
  v25 = a15;
  v43 = a14;
  v42 = a13;
  v41 = a12;
  v40 = a11;
  v39 = a10;
  v24 = a9;
  v29 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a3;
  v38 = [[a1 alloc] initWithIdentifier:v22 source:v37 namePrefix:v21 givenName:v20 middleName:v19 familyName:v29 nameSuffix:v24 nickname:v39 localizedFullName:v40 organizationName:v41 jobTitle:v42 birthday:v43 nonGregorianBirthday:v25 phoneNumbers:v26 emailAddresses:v27 socialProfiles:v30 postalAddresses:v32];

  return v38;
}

+ (BOOL)identifier:(id)a3 startsWithPrefix:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [v6 stringByAppendingString:@":"];
  objc_autoreleasePoolPop(v7);
  v9 = [v8 length];
  v10 = [v5 length];
  if (v10 <= [v8 length])
  {
    v13 = 0;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = [v5 substringWithRange:{0, v9}];
    objc_autoreleasePoolPop(v11);
    v13 = [v12 isEqualToString:v8];
  }

  return v13;
}

+ (unsigned)sourceFromSourceIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 containsString:@":"])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [v3 componentsSeparatedByString:@":"];
    v6 = [v5 firstObject];

    objc_autoreleasePoolPop(v4);
    if ([v6 isEqualToString:@"CN"])
    {
      v7 = 1;
    }

    else if ([v6 isEqualToString:@"FIA"])
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)sourceIdentifierWithSource:(unsigned __int8)a3 identifier:(id)a4
{
  v5 = a3;
  v7 = a4;
  switch(v5)
  {
    case 0:
      v8 = @"UNK";
      goto LABEL_7;
    case 2:
      v8 = @"FIA";
      goto LABEL_7;
    case 1:
      v8 = @"CN";
LABEL_7:
      if ([a1 identifier:v7 startsWithPrefix:v8])
      {
        v9 = v7;
      }

      else
      {
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@%@", v8, @":", v7];
      }

      v4 = v9;
      break;
  }

  return v4;
}

+ (id)contactsContactIdentifierWithIdentifier:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([a1 identifier:v5 startsWithPrefix:@"CN"])
  {
    v6 = [@"CN" length];
    v7 = [@":" length] + v6;
    v8 = [v5 length] - v7;
    v9 = objc_autoreleasePoolPush();
    v10 = [v5 substringWithRange:{v7, v8}];
    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

+ (int64_t)foundInAppsRecordIdentifierNumberWithIdentifier:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 identifier:v6 startsWithPrefix:@"FIA"];
  v8 = v6;
  if (v7)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [@"FIA" length];
    v11 = [@":" length] + v10;
    v8 = [v6 substringWithRange:{v11, objc_msgSend(v6, "length") - v11}];

    objc_autoreleasePoolPop(v9);
  }

  v12 = objc_opt_new();
  v13 = [v12 numberFromString:v8];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 longLongValue];
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Number formatter failed to get FIA identifier from id: %@", v6];
    v17 = pp_contacts_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v6;
      _os_log_impl(&dword_1A7FD3000, v17, OS_LOG_TYPE_INFO, "Number formatter failed to get FIA identifier from id: %@", buf, 0xCu);
    }

    if (a4)
    {
      v18 = MEMORY[0x1E696ABC0];
      v22[0] = @"PPErrorInfoKey";
      v22[1] = @"identifier";
      v23[0] = v16;
      v23[1] = v6;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
      *a4 = [v18 errorWithDomain:@"PPErrorDomain" code:2 userInfo:v19];
    }

    v15 = -1;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v15;
}

@end