@interface PPContactNameRecord
+ (id)describeChangeType:(unsigned __int8)type;
+ (id)describeSource:(unsigned __int8)source;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContactNameRecord:(id)record;
- (PPContactNameRecord)initWithCoder:(id)coder;
- (PPContactNameRecord)initWithIdentifier:(id)identifier score:(double)score source:(unsigned __int8)source sourceIdentifier:(id)sourceIdentifier changeType:(unsigned __int8)type firstName:(id)name phoneticFirstName:(id)firstName middleName:(id)self0 phoneticMiddleName:(id)self1 lastName:(id)self2 phoneticLastName:(id)self3 organizationName:(id)self4 jobTitle:(id)self5 nickname:(id)self6 relatedNames:(id)self7 streetNames:(id)self8 cityNames:(id)self9;
- (id)description;
- (id)init_;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPContactNameRecord

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  lastName = [(PPContactNameRecord *)self lastName];
  v6 = lastName;
  if (lastName)
  {
    v7 = lastName;
  }

  else
  {
    v7 = &stru_1F1B327D8;
  }

  lastName2 = [compareCopy lastName];
  v9 = lastName2;
  if (lastName2)
  {
    v10 = lastName2;
  }

  else
  {
    v10 = &stru_1F1B327D8;
  }

  v11 = [(__CFString *)v7 compare:v10];

  if (!v11)
  {
    firstName = [(PPContactNameRecord *)self firstName];
    v13 = firstName;
    v14 = firstName ? firstName : &stru_1F1B327D8;
    firstName2 = [compareCopy firstName];
    v16 = firstName2;
    v17 = firstName2 ? firstName2 : &stru_1F1B327D8;
    v11 = [(__CFString *)v14 compare:v17];

    if (!v11)
    {
      middleName = [(PPContactNameRecord *)self middleName];
      v19 = middleName;
      v20 = middleName ? middleName : &stru_1F1B327D8;
      middleName2 = [compareCopy middleName];
      v22 = middleName2;
      v23 = middleName2 ? middleName2 : &stru_1F1B327D8;
      v11 = [(__CFString *)v20 compare:v23];

      if (!v11)
      {
        sourceIdentifier = [(PPContactNameRecord *)self sourceIdentifier];
        v25 = sourceIdentifier;
        if (sourceIdentifier)
        {
          v26 = sourceIdentifier;
        }

        else
        {
          v26 = &stru_1F1B327D8;
        }

        sourceIdentifier2 = [compareCopy sourceIdentifier];
        v28 = sourceIdentifier2;
        if (sourceIdentifier2)
        {
          v29 = sourceIdentifier2;
        }

        else
        {
          v29 = &stru_1F1B327D8;
        }

        v11 = [(__CFString *)v26 compare:v29];
      }
    }
  }

  return v11;
}

- (BOOL)isEqualToContactNameRecord:(id)record
{
  recordCopy = record;
  if (!recordCopy)
  {
    goto LABEL_51;
  }

  [(PPContactNameRecord *)self score];
  v6 = v5;
  [recordCopy score];
  if (v6 != v7)
  {
    goto LABEL_51;
  }

  source = [(PPContactNameRecord *)self source];
  if (source != [recordCopy source])
  {
    goto LABEL_51;
  }

  changeType = [(PPContactNameRecord *)self changeType];
  if (changeType != [recordCopy changeType])
  {
    goto LABEL_51;
  }

  sourceIdentifier = [(PPContactNameRecord *)self sourceIdentifier];
  sourceIdentifier2 = [recordCopy sourceIdentifier];
  v12 = sourceIdentifier2;
  if (sourceIdentifier == sourceIdentifier2)
  {
  }

  else
  {
    v13 = [sourceIdentifier isEqual:sourceIdentifier2];

    if ((v13 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  firstName = [(PPContactNameRecord *)self firstName];
  firstName2 = [recordCopy firstName];
  v16 = firstName2;
  if (firstName == firstName2)
  {
  }

  else
  {
    v17 = [firstName isEqual:firstName2];

    if ((v17 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  phoneticFirstName = [(PPContactNameRecord *)self phoneticFirstName];
  phoneticFirstName2 = [recordCopy phoneticFirstName];
  v20 = phoneticFirstName2;
  if (phoneticFirstName == phoneticFirstName2)
  {
  }

  else
  {
    v21 = [phoneticFirstName isEqual:phoneticFirstName2];

    if ((v21 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  middleName = [(PPContactNameRecord *)self middleName];
  middleName2 = [recordCopy middleName];
  v24 = middleName2;
  if (middleName == middleName2)
  {
  }

  else
  {
    v25 = [middleName isEqual:middleName2];

    if ((v25 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  phoneticMiddleName = [(PPContactNameRecord *)self phoneticMiddleName];
  phoneticMiddleName2 = [recordCopy phoneticMiddleName];
  v28 = phoneticMiddleName2;
  if (phoneticMiddleName == phoneticMiddleName2)
  {
  }

  else
  {
    v29 = [phoneticMiddleName isEqual:phoneticMiddleName2];

    if ((v29 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  lastName = [(PPContactNameRecord *)self lastName];
  lastName2 = [recordCopy lastName];
  v32 = lastName2;
  if (lastName == lastName2)
  {
  }

  else
  {
    v33 = [lastName isEqual:lastName2];

    if ((v33 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  phoneticLastName = [(PPContactNameRecord *)self phoneticLastName];
  phoneticLastName2 = [recordCopy phoneticLastName];
  v36 = phoneticLastName2;
  if (phoneticLastName == phoneticLastName2)
  {
  }

  else
  {
    v37 = [phoneticLastName isEqual:phoneticLastName2];

    if ((v37 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  organizationName = [(PPContactNameRecord *)self organizationName];
  organizationName2 = [recordCopy organizationName];
  v40 = organizationName2;
  if (organizationName == organizationName2)
  {
  }

  else
  {
    v41 = [organizationName isEqual:organizationName2];

    if ((v41 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  jobTitle = [(PPContactNameRecord *)self jobTitle];
  jobTitle2 = [recordCopy jobTitle];
  v44 = jobTitle2;
  if (jobTitle == jobTitle2)
  {
  }

  else
  {
    v45 = [jobTitle isEqual:jobTitle2];

    if ((v45 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  nickname = [(PPContactNameRecord *)self nickname];
  nickname2 = [recordCopy nickname];
  v48 = nickname2;
  if (nickname == nickname2)
  {
  }

  else
  {
    v49 = [nickname isEqual:nickname2];

    if ((v49 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  relatedNames = [(PPContactNameRecord *)self relatedNames];
  relatedNames2 = [recordCopy relatedNames];
  v52 = relatedNames2;
  if (relatedNames == relatedNames2)
  {
  }

  else
  {
    v53 = [relatedNames isEqual:relatedNames2];

    if ((v53 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  streetNames = [(PPContactNameRecord *)self streetNames];
  streetNames2 = [recordCopy streetNames];
  v56 = streetNames2;
  if (streetNames == streetNames2)
  {
  }

  else
  {
    v57 = [streetNames isEqual:streetNames2];

    if ((v57 & 1) == 0)
    {
LABEL_51:
      v58 = 0;
      goto LABEL_52;
    }
  }

  cityNames = [(PPContactNameRecord *)self cityNames];
  cityNames2 = [recordCopy cityNames];
  if (cityNames == cityNames2)
  {
    v58 = 1;
  }

  else
  {
    v58 = [cityNames isEqual:cityNames2];
  }

LABEL_52:
  return v58;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPContactNameRecord *)self isEqualToContactNameRecord:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(PPContactNameRecord *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"ide"];

  [(PPContactNameRecord *)self score];
  [coderCopy encodeDouble:@"scr" forKey:?];
  [coderCopy encodeInt32:-[PPContactNameRecord source](self forKey:{"source"), @"src"}];
  sourceIdentifier = [(PPContactNameRecord *)self sourceIdentifier];
  [coderCopy encodeObject:sourceIdentifier forKey:@"sid"];

  [coderCopy encodeInt32:-[PPContactNameRecord changeType](self forKey:{"changeType"), @"cht"}];
  firstName = [(PPContactNameRecord *)self firstName];
  [coderCopy encodeObject:firstName forKey:@"fnm"];

  phoneticFirstName = [(PPContactNameRecord *)self phoneticFirstName];
  [coderCopy encodeObject:phoneticFirstName forKey:@"pfn"];

  middleName = [(PPContactNameRecord *)self middleName];
  [coderCopy encodeObject:middleName forKey:@"mnm"];

  phoneticMiddleName = [(PPContactNameRecord *)self phoneticMiddleName];
  [coderCopy encodeObject:phoneticMiddleName forKey:@"pmn"];

  lastName = [(PPContactNameRecord *)self lastName];
  [coderCopy encodeObject:lastName forKey:@"lnm"];

  phoneticLastName = [(PPContactNameRecord *)self phoneticLastName];
  [coderCopy encodeObject:phoneticLastName forKey:@"pln"];

  organizationName = [(PPContactNameRecord *)self organizationName];
  [coderCopy encodeObject:organizationName forKey:@"org"];

  jobTitle = [(PPContactNameRecord *)self jobTitle];
  [coderCopy encodeObject:jobTitle forKey:@"job"];

  nickname = [(PPContactNameRecord *)self nickname];
  [coderCopy encodeObject:nickname forKey:@"nic"];

  relatedNames = [(PPContactNameRecord *)self relatedNames];
  [coderCopy encodeObject:relatedNames forKey:@"rel"];

  streetNames = [(PPContactNameRecord *)self streetNames];
  [coderCopy encodeObject:streetNames forKey:@"str"];

  cityNames = [(PPContactNameRecord *)self cityNames];
  [coderCopy encodeObject:cityNames forKey:@"cty"];
}

- (PPContactNameRecord)initWithCoder:(id)coder
{
  v39 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [coderCopy decodeObjectOfClass:v5 forKey:@"ide"];
  if (v8)
  {
    [coderCopy decodeDoubleForKey:@"scr"];
    v10 = v9;
    v32 = [coderCopy decodeInt32ForKey:@"src"];
    v33 = [coderCopy decodeObjectOfClass:v5 forKey:@"sid"];
    v30 = [coderCopy decodeInt32ForKey:@"cht"];
    v31 = [coderCopy decodeObjectOfClass:v5 forKey:@"fnm"];
    v29 = [coderCopy decodeObjectOfClass:v5 forKey:@"pfn"];
    v28 = [coderCopy decodeObjectOfClass:v5 forKey:@"mnm"];
    v27 = [coderCopy decodeObjectOfClass:v5 forKey:@"pmn"];
    v36 = [coderCopy decodeObjectOfClass:v5 forKey:@"lnm"];
    v26 = [coderCopy decodeObjectOfClass:v5 forKey:@"pln"];
    v35 = [coderCopy decodeObjectOfClass:v5 forKey:@"org"];
    v34 = [coderCopy decodeObjectOfClass:v5 forKey:@"job"];
    v22 = [coderCopy decodeObjectOfClass:v5 forKey:@"nic"];
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v7, v5, 0}];
    objc_autoreleasePoolPop(v11);
    v21 = [coderCopy decodeObjectOfClasses:v25 forKey:@"rel"];
    v12 = objc_autoreleasePoolPush();
    v23 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v6, v5, 0}];
    objc_autoreleasePoolPop(v12);
    v20 = [coderCopy decodeObjectOfClasses:v23 forKey:@"str"];
    v13 = objc_autoreleasePoolPush();
    v14 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v6, v5, 0}];
    objc_autoreleasePoolPop(v13);
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"cty"];
    v16 = [(PPContactNameRecord *)selfCopy initWithIdentifier:v8 score:v32 source:v33 sourceIdentifier:v30 changeType:v31 firstName:v29 phoneticFirstName:v10 middleName:v28 phoneticMiddleName:v27 lastName:v36 phoneticLastName:v26 organizationName:v35 jobTitle:v34 nickname:v22 relatedNames:v21 streetNames:v20 cityNames:v15];

    self = v16;
  }

  else
  {
    v17 = pp_contacts_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = coderCopy;
      _os_log_error_impl(&dword_1A7FD3000, v17, OS_LOG_TYPE_ERROR, "failed to decode identifier from %@", buf, 0xCu);
    }

    v16 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

- (unint64_t)hash
{
  v71 = *MEMORY[0x1E69E9840];
  identifier = [(PPContactNameRecord *)self identifier];
  v4 = [identifier hash];

  [(PPContactNameRecord *)self score];
  v6 = 31 * (31 * (v5 - v4 + 32 * v4) + [(PPContactNameRecord *)self source]);
  v7 = v6 + [(PPContactNameRecord *)self changeType];
  sourceIdentifier = [(PPContactNameRecord *)self sourceIdentifier];
  v9 = [sourceIdentifier hash] - v7 + 32 * v7;

  firstName = [(PPContactNameRecord *)self firstName];
  v11 = [firstName hash] - v9 + 32 * v9;

  phoneticFirstName = [(PPContactNameRecord *)self phoneticFirstName];
  v13 = [phoneticFirstName hash] - v11 + 32 * v11;

  middleName = [(PPContactNameRecord *)self middleName];
  v15 = [middleName hash] - v13 + 32 * v13;

  phoneticMiddleName = [(PPContactNameRecord *)self phoneticMiddleName];
  v17 = [phoneticMiddleName hash] - v15 + 32 * v15;

  lastName = [(PPContactNameRecord *)self lastName];
  v19 = [lastName hash] - v17 + 32 * v17;

  phoneticLastName = [(PPContactNameRecord *)self phoneticLastName];
  v21 = [phoneticLastName hash] - v19 + 32 * v19;

  organizationName = [(PPContactNameRecord *)self organizationName];
  v23 = [organizationName hash] - v21 + 32 * v21;

  jobTitle = [(PPContactNameRecord *)self jobTitle];
  v25 = [jobTitle hash] - v23 + 32 * v23;

  nickname = [(PPContactNameRecord *)self nickname];
  v27 = [nickname hash] - v25 + 32 * v25;

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  relatedNames = [(PPContactNameRecord *)self relatedNames];
  allKeys = [relatedNames allKeys];
  v30 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v31 = [v30 countByEnumeratingWithState:&v64 objects:v70 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v65;
    do
    {
      v34 = 0;
      do
      {
        if (*v65 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v64 + 1) + 8 * v34);
        v36 = objc_autoreleasePoolPush();
        v37 = [v35 hash] - v27 + 32 * v27;
        relatedNames2 = [(PPContactNameRecord *)self relatedNames];
        v39 = [relatedNames2 objectForKeyedSubscript:v35];
        v27 = [v39 hash] - v37 + 32 * v37;

        objc_autoreleasePoolPop(v36);
        ++v34;
      }

      while (v32 != v34);
      v32 = [v30 countByEnumeratingWithState:&v64 objects:v70 count:16];
    }

    while (v32);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  streetNames = [(PPContactNameRecord *)self streetNames];
  v41 = [streetNames countByEnumeratingWithState:&v60 objects:v69 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v61;
    do
    {
      v44 = 0;
      do
      {
        if (*v61 != v43)
        {
          objc_enumerationMutation(streetNames);
        }

        v45 = *(*(&v60 + 1) + 8 * v44);
        v46 = objc_autoreleasePoolPush();
        v27 = [v45 hash] - v27 + 32 * v27;
        objc_autoreleasePoolPop(v46);
        ++v44;
      }

      while (v42 != v44);
      v42 = [streetNames countByEnumeratingWithState:&v60 objects:v69 count:16];
    }

    while (v42);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  cityNames = [(PPContactNameRecord *)self cityNames];
  v48 = [cityNames countByEnumeratingWithState:&v56 objects:v68 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v57;
    do
    {
      v51 = 0;
      do
      {
        if (*v57 != v50)
        {
          objc_enumerationMutation(cityNames);
        }

        v52 = *(*(&v56 + 1) + 8 * v51);
        v53 = objc_autoreleasePoolPush();
        v27 = [v52 hash] - v27 + 32 * v27;
        objc_autoreleasePoolPop(v53);
        ++v51;
      }

      while (v49 != v51);
      v49 = [cityNames countByEnumeratingWithState:&v56 objects:v68 count:16];
    }

    while (v49);
  }

  v54 = *MEMORY[0x1E69E9840];
  return v27;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  firstName = [(PPContactNameRecord *)self firstName];
  middleName = [(PPContactNameRecord *)self middleName];
  lastName = [(PPContactNameRecord *)self lastName];
  cityNames = [(PPContactNameRecord *)self cityNames];
  v8 = [cityNames _pas_componentsJoinedByString:{@", "}];
  [(PPContactNameRecord *)self score];
  v10 = v9;
  v11 = [PPContactNameRecord describeSource:[(PPContactNameRecord *)self source]];
  v12 = [PPContactNameRecord describeChangeType:[(PPContactNameRecord *)self changeType]];
  v13 = [v3 initWithFormat:@"<PPContactNameRecord '%@' '%@' '%@' [%@] s:%f src:%@ ct:%@>", firstName, middleName, lastName, v8, v10, v11, v12];

  return v13;
}

- (PPContactNameRecord)initWithIdentifier:(id)identifier score:(double)score source:(unsigned __int8)source sourceIdentifier:(id)sourceIdentifier changeType:(unsigned __int8)type firstName:(id)name phoneticFirstName:(id)firstName middleName:(id)self0 phoneticMiddleName:(id)self1 lastName:(id)self2 phoneticLastName:(id)self3 organizationName:(id)self4 jobTitle:(id)self5 nickname:(id)self6 relatedNames:(id)self7 streetNames:(id)self8 cityNames:(id)self9
{
  typeCopy = type;
  sourceCopy = source;
  cityNamesCopy = cityNames;
  streetNamesCopy = streetNames;
  namesCopy = names;
  nicknameCopy = nickname;
  titleCopy = title;
  organizationNameCopy = organizationName;
  phoneticLastNameCopy = phoneticLastName;
  lastNameCopy = lastName;
  phoneticMiddleNameCopy = phoneticMiddleName;
  middleNameCopy = middleName;
  firstNameCopy = firstName;
  nameCopy = name;
  sourceIdentifierCopy = sourceIdentifier;
  identifierCopy = identifier;
  v39 = [[PPClientContactNameRecord alloc] initWithIdentifier:identifierCopy score:sourceCopy source:sourceIdentifierCopy sourceIdentifier:typeCopy changeType:nameCopy firstName:firstNameCopy phoneticFirstName:score middleName:middleNameCopy phoneticMiddleName:phoneticMiddleNameCopy lastName:lastNameCopy phoneticLastName:phoneticLastNameCopy organizationName:organizationNameCopy jobTitle:titleCopy nickname:nicknameCopy relatedNames:namesCopy streetNames:streetNamesCopy cityNames:cityNamesCopy];

  return &v39->super;
}

- (id)init_
{
  v3.receiver = self;
  v3.super_class = PPContactNameRecord;
  return [(PPContactNameRecord *)&v3 init];
}

+ (id)describeChangeType:(unsigned __int8)type
{
  if (type >= 4u)
  {
    type = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid (%lu)", type];
  }

  else
  {
    type = off_1E77F7DD0[type];
  }

  return type;
}

+ (id)describeSource:(unsigned __int8)source
{
  if (source >= 3u)
  {
    source = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid (%lu)", source];
  }

  else
  {
    source = off_1E77F7DB8[source];
  }

  return source;
}

@end