@interface PPContactNameRecord
+ (id)describeChangeType:(unsigned __int8)a3;
+ (id)describeSource:(unsigned __int8)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToContactNameRecord:(id)a3;
- (PPContactNameRecord)initWithCoder:(id)a3;
- (PPContactNameRecord)initWithIdentifier:(id)a3 score:(double)a4 source:(unsigned __int8)a5 sourceIdentifier:(id)a6 changeType:(unsigned __int8)a7 firstName:(id)a8 phoneticFirstName:(id)a9 middleName:(id)a10 phoneticMiddleName:(id)a11 lastName:(id)a12 phoneticLastName:(id)a13 organizationName:(id)a14 jobTitle:(id)a15 nickname:(id)a16 relatedNames:(id)a17 streetNames:(id)a18 cityNames:(id)a19;
- (id)description;
- (id)init_;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPContactNameRecord

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(PPContactNameRecord *)self lastName];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1F1B327D8;
  }

  v8 = [v4 lastName];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1F1B327D8;
  }

  v11 = [(__CFString *)v7 compare:v10];

  if (!v11)
  {
    v12 = [(PPContactNameRecord *)self firstName];
    v13 = v12;
    v14 = v12 ? v12 : &stru_1F1B327D8;
    v15 = [v4 firstName];
    v16 = v15;
    v17 = v15 ? v15 : &stru_1F1B327D8;
    v11 = [(__CFString *)v14 compare:v17];

    if (!v11)
    {
      v18 = [(PPContactNameRecord *)self middleName];
      v19 = v18;
      v20 = v18 ? v18 : &stru_1F1B327D8;
      v21 = [v4 middleName];
      v22 = v21;
      v23 = v21 ? v21 : &stru_1F1B327D8;
      v11 = [(__CFString *)v20 compare:v23];

      if (!v11)
      {
        v24 = [(PPContactNameRecord *)self sourceIdentifier];
        v25 = v24;
        if (v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = &stru_1F1B327D8;
        }

        v27 = [v4 sourceIdentifier];
        v28 = v27;
        if (v27)
        {
          v29 = v27;
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

- (BOOL)isEqualToContactNameRecord:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_51;
  }

  [(PPContactNameRecord *)self score];
  v6 = v5;
  [v4 score];
  if (v6 != v7)
  {
    goto LABEL_51;
  }

  v8 = [(PPContactNameRecord *)self source];
  if (v8 != [v4 source])
  {
    goto LABEL_51;
  }

  v9 = [(PPContactNameRecord *)self changeType];
  if (v9 != [v4 changeType])
  {
    goto LABEL_51;
  }

  v10 = [(PPContactNameRecord *)self sourceIdentifier];
  v11 = [v4 sourceIdentifier];
  v12 = v11;
  if (v10 == v11)
  {
  }

  else
  {
    v13 = [v10 isEqual:v11];

    if ((v13 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v14 = [(PPContactNameRecord *)self firstName];
  v15 = [v4 firstName];
  v16 = v15;
  if (v14 == v15)
  {
  }

  else
  {
    v17 = [v14 isEqual:v15];

    if ((v17 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v18 = [(PPContactNameRecord *)self phoneticFirstName];
  v19 = [v4 phoneticFirstName];
  v20 = v19;
  if (v18 == v19)
  {
  }

  else
  {
    v21 = [v18 isEqual:v19];

    if ((v21 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v22 = [(PPContactNameRecord *)self middleName];
  v23 = [v4 middleName];
  v24 = v23;
  if (v22 == v23)
  {
  }

  else
  {
    v25 = [v22 isEqual:v23];

    if ((v25 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v26 = [(PPContactNameRecord *)self phoneticMiddleName];
  v27 = [v4 phoneticMiddleName];
  v28 = v27;
  if (v26 == v27)
  {
  }

  else
  {
    v29 = [v26 isEqual:v27];

    if ((v29 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v30 = [(PPContactNameRecord *)self lastName];
  v31 = [v4 lastName];
  v32 = v31;
  if (v30 == v31)
  {
  }

  else
  {
    v33 = [v30 isEqual:v31];

    if ((v33 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v34 = [(PPContactNameRecord *)self phoneticLastName];
  v35 = [v4 phoneticLastName];
  v36 = v35;
  if (v34 == v35)
  {
  }

  else
  {
    v37 = [v34 isEqual:v35];

    if ((v37 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v38 = [(PPContactNameRecord *)self organizationName];
  v39 = [v4 organizationName];
  v40 = v39;
  if (v38 == v39)
  {
  }

  else
  {
    v41 = [v38 isEqual:v39];

    if ((v41 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v42 = [(PPContactNameRecord *)self jobTitle];
  v43 = [v4 jobTitle];
  v44 = v43;
  if (v42 == v43)
  {
  }

  else
  {
    v45 = [v42 isEqual:v43];

    if ((v45 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v46 = [(PPContactNameRecord *)self nickname];
  v47 = [v4 nickname];
  v48 = v47;
  if (v46 == v47)
  {
  }

  else
  {
    v49 = [v46 isEqual:v47];

    if ((v49 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v50 = [(PPContactNameRecord *)self relatedNames];
  v51 = [v4 relatedNames];
  v52 = v51;
  if (v50 == v51)
  {
  }

  else
  {
    v53 = [v50 isEqual:v51];

    if ((v53 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v54 = [(PPContactNameRecord *)self streetNames];
  v55 = [v4 streetNames];
  v56 = v55;
  if (v54 == v55)
  {
  }

  else
  {
    v57 = [v54 isEqual:v55];

    if ((v57 & 1) == 0)
    {
LABEL_51:
      v58 = 0;
      goto LABEL_52;
    }
  }

  v60 = [(PPContactNameRecord *)self cityNames];
  v61 = [v4 cityNames];
  if (v60 == v61)
  {
    v58 = 1;
  }

  else
  {
    v58 = [v60 isEqual:v61];
  }

LABEL_52:
  return v58;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPContactNameRecord *)self isEqualToContactNameRecord:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PPContactNameRecord *)self identifier];
  [v4 encodeObject:v5 forKey:@"ide"];

  [(PPContactNameRecord *)self score];
  [v4 encodeDouble:@"scr" forKey:?];
  [v4 encodeInt32:-[PPContactNameRecord source](self forKey:{"source"), @"src"}];
  v6 = [(PPContactNameRecord *)self sourceIdentifier];
  [v4 encodeObject:v6 forKey:@"sid"];

  [v4 encodeInt32:-[PPContactNameRecord changeType](self forKey:{"changeType"), @"cht"}];
  v7 = [(PPContactNameRecord *)self firstName];
  [v4 encodeObject:v7 forKey:@"fnm"];

  v8 = [(PPContactNameRecord *)self phoneticFirstName];
  [v4 encodeObject:v8 forKey:@"pfn"];

  v9 = [(PPContactNameRecord *)self middleName];
  [v4 encodeObject:v9 forKey:@"mnm"];

  v10 = [(PPContactNameRecord *)self phoneticMiddleName];
  [v4 encodeObject:v10 forKey:@"pmn"];

  v11 = [(PPContactNameRecord *)self lastName];
  [v4 encodeObject:v11 forKey:@"lnm"];

  v12 = [(PPContactNameRecord *)self phoneticLastName];
  [v4 encodeObject:v12 forKey:@"pln"];

  v13 = [(PPContactNameRecord *)self organizationName];
  [v4 encodeObject:v13 forKey:@"org"];

  v14 = [(PPContactNameRecord *)self jobTitle];
  [v4 encodeObject:v14 forKey:@"job"];

  v15 = [(PPContactNameRecord *)self nickname];
  [v4 encodeObject:v15 forKey:@"nic"];

  v16 = [(PPContactNameRecord *)self relatedNames];
  [v4 encodeObject:v16 forKey:@"rel"];

  v17 = [(PPContactNameRecord *)self streetNames];
  [v4 encodeObject:v17 forKey:@"str"];

  v18 = [(PPContactNameRecord *)self cityNames];
  [v4 encodeObject:v18 forKey:@"cty"];
}

- (PPContactNameRecord)initWithCoder:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 decodeObjectOfClass:v5 forKey:@"ide"];
  if (v8)
  {
    [v4 decodeDoubleForKey:@"scr"];
    v10 = v9;
    v32 = [v4 decodeInt32ForKey:@"src"];
    v33 = [v4 decodeObjectOfClass:v5 forKey:@"sid"];
    v30 = [v4 decodeInt32ForKey:@"cht"];
    v31 = [v4 decodeObjectOfClass:v5 forKey:@"fnm"];
    v29 = [v4 decodeObjectOfClass:v5 forKey:@"pfn"];
    v28 = [v4 decodeObjectOfClass:v5 forKey:@"mnm"];
    v27 = [v4 decodeObjectOfClass:v5 forKey:@"pmn"];
    v36 = [v4 decodeObjectOfClass:v5 forKey:@"lnm"];
    v26 = [v4 decodeObjectOfClass:v5 forKey:@"pln"];
    v35 = [v4 decodeObjectOfClass:v5 forKey:@"org"];
    v34 = [v4 decodeObjectOfClass:v5 forKey:@"job"];
    v22 = [v4 decodeObjectOfClass:v5 forKey:@"nic"];
    v11 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v7, v5, 0}];
    objc_autoreleasePoolPop(v11);
    v21 = [v4 decodeObjectOfClasses:v25 forKey:@"rel"];
    v12 = objc_autoreleasePoolPush();
    v23 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v6, v5, 0}];
    objc_autoreleasePoolPop(v12);
    v20 = [v4 decodeObjectOfClasses:v23 forKey:@"str"];
    v13 = objc_autoreleasePoolPush();
    v14 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v6, v5, 0}];
    objc_autoreleasePoolPop(v13);
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"cty"];
    v16 = [(PPContactNameRecord *)v24 initWithIdentifier:v8 score:v32 source:v33 sourceIdentifier:v30 changeType:v31 firstName:v29 phoneticFirstName:v10 middleName:v28 phoneticMiddleName:v27 lastName:v36 phoneticLastName:v26 organizationName:v35 jobTitle:v34 nickname:v22 relatedNames:v21 streetNames:v20 cityNames:v15];

    self = v16;
  }

  else
  {
    v17 = pp_contacts_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = v4;
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
  v3 = [(PPContactNameRecord *)self identifier];
  v4 = [v3 hash];

  [(PPContactNameRecord *)self score];
  v6 = 31 * (31 * (v5 - v4 + 32 * v4) + [(PPContactNameRecord *)self source]);
  v7 = v6 + [(PPContactNameRecord *)self changeType];
  v8 = [(PPContactNameRecord *)self sourceIdentifier];
  v9 = [v8 hash] - v7 + 32 * v7;

  v10 = [(PPContactNameRecord *)self firstName];
  v11 = [v10 hash] - v9 + 32 * v9;

  v12 = [(PPContactNameRecord *)self phoneticFirstName];
  v13 = [v12 hash] - v11 + 32 * v11;

  v14 = [(PPContactNameRecord *)self middleName];
  v15 = [v14 hash] - v13 + 32 * v13;

  v16 = [(PPContactNameRecord *)self phoneticMiddleName];
  v17 = [v16 hash] - v15 + 32 * v15;

  v18 = [(PPContactNameRecord *)self lastName];
  v19 = [v18 hash] - v17 + 32 * v17;

  v20 = [(PPContactNameRecord *)self phoneticLastName];
  v21 = [v20 hash] - v19 + 32 * v19;

  v22 = [(PPContactNameRecord *)self organizationName];
  v23 = [v22 hash] - v21 + 32 * v21;

  v24 = [(PPContactNameRecord *)self jobTitle];
  v25 = [v24 hash] - v23 + 32 * v23;

  v26 = [(PPContactNameRecord *)self nickname];
  v27 = [v26 hash] - v25 + 32 * v25;

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v28 = [(PPContactNameRecord *)self relatedNames];
  v29 = [v28 allKeys];
  v30 = [v29 sortedArrayUsingSelector:sel_compare_];

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
        v38 = [(PPContactNameRecord *)self relatedNames];
        v39 = [v38 objectForKeyedSubscript:v35];
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
  v40 = [(PPContactNameRecord *)self streetNames];
  v41 = [v40 countByEnumeratingWithState:&v60 objects:v69 count:16];
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
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v60 + 1) + 8 * v44);
        v46 = objc_autoreleasePoolPush();
        v27 = [v45 hash] - v27 + 32 * v27;
        objc_autoreleasePoolPop(v46);
        ++v44;
      }

      while (v42 != v44);
      v42 = [v40 countByEnumeratingWithState:&v60 objects:v69 count:16];
    }

    while (v42);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v47 = [(PPContactNameRecord *)self cityNames];
  v48 = [v47 countByEnumeratingWithState:&v56 objects:v68 count:16];
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
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v56 + 1) + 8 * v51);
        v53 = objc_autoreleasePoolPush();
        v27 = [v52 hash] - v27 + 32 * v27;
        objc_autoreleasePoolPop(v53);
        ++v51;
      }

      while (v49 != v51);
      v49 = [v47 countByEnumeratingWithState:&v56 objects:v68 count:16];
    }

    while (v49);
  }

  v54 = *MEMORY[0x1E69E9840];
  return v27;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(PPContactNameRecord *)self firstName];
  v5 = [(PPContactNameRecord *)self middleName];
  v6 = [(PPContactNameRecord *)self lastName];
  v7 = [(PPContactNameRecord *)self cityNames];
  v8 = [v7 _pas_componentsJoinedByString:{@", "}];
  [(PPContactNameRecord *)self score];
  v10 = v9;
  v11 = [PPContactNameRecord describeSource:[(PPContactNameRecord *)self source]];
  v12 = [PPContactNameRecord describeChangeType:[(PPContactNameRecord *)self changeType]];
  v13 = [v3 initWithFormat:@"<PPContactNameRecord '%@' '%@' '%@' [%@] s:%f src:%@ ct:%@>", v4, v5, v6, v8, v10, v11, v12];

  return v13;
}

- (PPContactNameRecord)initWithIdentifier:(id)a3 score:(double)a4 source:(unsigned __int8)a5 sourceIdentifier:(id)a6 changeType:(unsigned __int8)a7 firstName:(id)a8 phoneticFirstName:(id)a9 middleName:(id)a10 phoneticMiddleName:(id)a11 lastName:(id)a12 phoneticLastName:(id)a13 organizationName:(id)a14 jobTitle:(id)a15 nickname:(id)a16 relatedNames:(id)a17 streetNames:(id)a18 cityNames:(id)a19
{
  v38 = a7;
  v37 = a5;
  v34 = a19;
  v31 = a18;
  v30 = a17;
  v27 = a16;
  v29 = a15;
  v42 = a14;
  v41 = a13;
  v21 = a12;
  v22 = a11;
  v28 = a10;
  v33 = a9;
  v23 = a8;
  v24 = a6;
  v25 = a3;
  v39 = [[PPClientContactNameRecord alloc] initWithIdentifier:v25 score:v37 source:v24 sourceIdentifier:v38 changeType:v23 firstName:v33 phoneticFirstName:a4 middleName:v28 phoneticMiddleName:v22 lastName:v21 phoneticLastName:v41 organizationName:v42 jobTitle:v29 nickname:v27 relatedNames:v30 streetNames:v31 cityNames:v34];

  return &v39->super;
}

- (id)init_
{
  v3.receiver = self;
  v3.super_class = PPContactNameRecord;
  return [(PPContactNameRecord *)&v3 init];
}

+ (id)describeChangeType:(unsigned __int8)a3
{
  if (a3 >= 4u)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid (%lu)", a3];
  }

  else
  {
    v3 = off_1E77F7DD0[a3];
  }

  return v3;
}

+ (id)describeSource:(unsigned __int8)a3
{
  if (a3 >= 3u)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid (%lu)", a3];
  }

  else
  {
    v3 = off_1E77F7DB8[a3];
  }

  return v3;
}

@end