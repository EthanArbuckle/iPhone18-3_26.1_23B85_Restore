@interface ICMediaUserState
- (BOOL)isEqual:(id)a3;
- (ICMediaUserState)initWithBlock:(id)a3;
- (ICMediaUserState)initWithCoder:(id)a3;
- (NSString)description;
- (NSString)digest;
- (NSString)shortDebugName;
- (id)copyWithBlock:(id)a3;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)a3;
- (void)setAlternateDSID:(id)a3;
- (void)setCountryCode:(id)a3;
- (void)setDefaultMediaUser:(BOOL)a3;
- (void)setDsid:(id)a3;
- (void)setFirstName:(id)a3;
- (void)setHomeUserIDs:(id)a3;
- (void)setICloudPersonID:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setIsActive:(BOOL)a3;
- (void)setLastName:(id)a3;
- (void)setMusic:(id)a3;
- (void)setStorefrontIdentifier:(id)a3;
- (void)setUsername:(id)a3;
@end

@implementation ICMediaUserState

- (NSString)description
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(ICMediaUserState *)self dsid];
  v5 = ICCreateLoggableValueForDSID(v4);
  [v3 setObject:v5 forKeyedSubscript:@"dsid"];

  v6 = [(ICMediaUserState *)self homeUserIDs];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"nil";
  }

  [v3 setObject:v8 forKeyedSubscript:@"homeUserIds"];

  v9 = [(ICMediaUserState *)self firstName];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"nil";
  }

  [v3 setObject:v11 forKeyedSubscript:@"firstName"];

  v12 = [(ICMediaUserState *)self lastName];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"nil";
  }

  [v3 setObject:v14 forKeyedSubscript:@"lastName"];

  v15 = [(ICMediaUserState *)self isActive];
  v16 = MEMORY[0x1E695E110];
  v17 = MEMORY[0x1E695E118];
  if (v15)
  {
    v18 = MEMORY[0x1E695E118];
  }

  else
  {
    v18 = MEMORY[0x1E695E110];
  }

  [v3 setObject:v18 forKeyedSubscript:@"isActive"];
  if ([(ICMediaUserState *)self isDefaultMediaUser])
  {
    v19 = v17;
  }

  else
  {
    v19 = v16;
  }

  [v3 setObject:v19 forKeyedSubscript:@"defaultMediaUser"];
  v20 = [(ICMediaUserState *)self music];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = @"nil";
  }

  [v3 setObject:v22 forKeyedSubscript:@"music"];

  v23 = [(ICMediaUserState *)self tv];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = @"nil";
  }

  [v3 setObject:v25 forKeyedSubscript:@"tv"];

  v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p [%@]>", objc_opt_class(), self, v3];

  return v26;
}

- (void)setCountryCode:(id)a3
{
  v5 = a3;
  if (self->_frozen)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"ICMediaUserState.m" lineNumber:284 description:@"Attempt to mutate after being initialized."];
  }

  countryCode = self->_countryCode;
  self->_countryCode = v5;
}

- (void)setMusic:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (self->_frozen)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ICMediaUserState.m" lineNumber:279 description:@"Attempt to mutate after being initialized."];

    v5 = v9;
  }

  v6 = [v5 copy];
  music = self->_music;
  self->_music = v6;
}

- (void)setUsername:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (self->_frozen)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ICMediaUserState.m" lineNumber:274 description:@"Attempt to mutate after being initialized."];

    v5 = v9;
  }

  v6 = [v5 copy];
  username = self->_username;
  self->_username = v6;
}

- (void)setLastName:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (self->_frozen)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ICMediaUserState.m" lineNumber:269 description:@"Attempt to mutate after being initialized."];

    v5 = v9;
  }

  v6 = [v5 copy];
  lastName = self->_lastName;
  self->_lastName = v6;
}

- (void)setFirstName:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (self->_frozen)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ICMediaUserState.m" lineNumber:264 description:@"Attempt to mutate after being initialized."];

    v5 = v9;
  }

  v6 = [v5 copy];
  firstName = self->_firstName;
  self->_firstName = v6;
}

- (void)setStorefrontIdentifier:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (self->_frozen)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ICMediaUserState.m" lineNumber:259 description:@"Attempt to mutate after being initialized."];

    v5 = v9;
  }

  v6 = [v5 copy];
  storefrontIdentifier = self->_storefrontIdentifier;
  self->_storefrontIdentifier = v6;
}

- (void)setHomeUserIDs:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (self->_frozen)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ICMediaUserState.m" lineNumber:254 description:@"Attempt to mutate after being initialized."];

    v5 = v9;
  }

  v6 = [v5 copy];
  homeUserIDs = self->_homeUserIDs;
  self->_homeUserIDs = v6;
}

- (void)setICloudPersonID:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (self->_frozen)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ICMediaUserState.m" lineNumber:249 description:@"Attempt to mutate after being initialized."];

    v5 = v9;
  }

  v6 = [v5 copy];
  iCloudPersonID = self->_iCloudPersonID;
  self->_iCloudPersonID = v6;
}

- (void)setAlternateDSID:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (self->_frozen)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ICMediaUserState.m" lineNumber:244 description:@"Attempt to mutate after being initialized."];

    v5 = v9;
  }

  v6 = [v5 copy];
  alternateDSID = self->_alternateDSID;
  self->_alternateDSID = v6;
}

- (void)setDsid:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (self->_frozen)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ICMediaUserState.m" lineNumber:239 description:@"Attempt to mutate after being initialized."];

    v5 = v9;
  }

  v6 = [v5 copy];
  dsid = self->_dsid;
  self->_dsid = v6;
}

- (void)setDefaultMediaUser:(BOOL)a3
{
  if (self->_frozen)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"ICMediaUserState.m" lineNumber:234 description:@"Attempt to mutate after being initialized."];
  }

  self->_defaultMediaUser = a3;
}

- (void)setIsActive:(BOOL)a3
{
  if (self->_frozen)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"ICMediaUserState.m" lineNumber:229 description:@"Attempt to mutate after being initialized."];
  }

  self->_isActive = a3;
}

- (void)setIdentifier:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (self->_frozen)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ICMediaUserState.m" lineNumber:224 description:@"Attempt to mutate after being initialized."];

    v5 = v9;
  }

  v6 = [v5 copy];
  identifier = self->_identifier;
  self->_identifier = v6;
}

- (ICMediaUserState)initWithCoder:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = ICMediaUserState;
  v5 = [(ICMediaUserState *)&v36 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortDebugName"];
    shortDebugName = v5->_shortDebugName;
    v5->_shortDebugName = v8;

    v5->_isActive = [v4 decodeBoolForKey:@"isActive"];
    v5->_defaultMediaUser = [v4 decodeBoolForKey:@"defaultMediaUser"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dsid"];
    dsid = v5->_dsid;
    v5->_dsid = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alternateDSID"];
    alternateDSID = v5->_alternateDSID;
    v5->_alternateDSID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iCloudPersonID"];
    iCloudPersonID = v5->_iCloudPersonID;
    v5->_iCloudPersonID = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"homeUserIDs"];
    homeUserIDs = v5->_homeUserIDs;
    v5->_homeUserIDs = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storefrontIdentifier"];
    storefrontIdentifier = v5->_storefrontIdentifier;
    v5->_storefrontIdentifier = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstName"];
    firstName = v5->_firstName;
    v5->_firstName = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastName"];
    lastName = v5->_lastName;
    v5->_lastName = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"username"];
    username = v5->_username;
    v5->_username = v29;

    v5->_ageVerificationRequired = [v4 decodeBoolForKey:@"ageVerificationRequired"];
    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"music"];
    music = v5->_music;
    v5->_music = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tv"];
    tv = v5->_tv;
    v5->_tv = v33;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_shortDebugName forKey:@"shortDebugName"];
  [v5 encodeBool:self->_isActive forKey:@"isActive"];
  [v5 encodeBool:self->_defaultMediaUser forKey:@"defaultMediaUser"];
  [v5 encodeObject:self->_dsid forKey:@"dsid"];
  [v5 encodeObject:self->_alternateDSID forKey:@"alternateDSID"];
  [v5 encodeObject:self->_iCloudPersonID forKey:@"iCloudPersonID"];
  [v5 encodeObject:self->_homeUserIDs forKey:@"homeUserIDs"];
  [v5 encodeObject:self->_storefrontIdentifier forKey:@"storefrontIdentifier"];
  [v5 encodeObject:self->_countryCode forKey:@"countryCode"];
  [v5 encodeObject:self->_firstName forKey:@"firstName"];
  [v5 encodeObject:self->_lastName forKey:@"lastName"];
  [v5 encodeObject:self->_username forKey:@"username"];
  [v5 encodeBool:self->_ageVerificationRequired forKey:@"ageVerificationRequired"];
  [v5 encodeObject:self->_music forKey:@"music"];
  [v5 encodeObject:self->_tv forKey:@"tv"];
}

- (NSString)shortDebugName
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ICMediaUserState *)self username];
  v5 = [(ICMediaUserState *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ (%@)", v4, v5];

  return v6;
}

- (NSString)digest
{
  v619 = *MEMORY[0x1E69E9840];
  v3 = MSVHasherSharedSeed();
  memset(&v615.hash[2], 0, 176);
  v4 = v3 ^ 0x736F6D6570736575;
  v615.count[0] = v3 ^ 0x736F6D6570736575;
  v6 = v5 ^ 0x646F72616E646F6DLL;
  v7 = v3 ^ 0x6C7967656E657261;
  v615.count[1] = v5 ^ 0x646F72616E646F6DLL;
  v615.hash[0] = v3 ^ 0x6C7967656E657261;
  v8 = v5 ^ 0x7465646279746573;
  v615.hash[1] = v5 ^ 0x7465646279746573;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v10 UTF8String];
  v12 = [v10 length];
  if (v12 >= 8)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v14 = *v11++;
      v15 = (v4 + v6) ^ __ROR8__(v6, 51);
      v16 = v7 + (v8 ^ v14);
      v17 = __ROR8__(v8 ^ v14, 48);
      v18 = (v16 ^ v17) + __ROR8__(v4 + v6, 32);
      v8 = v18 ^ __ROR8__(v16 ^ v17, 43);
      v6 = (v16 + v15) ^ __ROR8__(v15, 47);
      v7 = __ROR8__(v16 + v15, 32);
      v615.hash[0] = v7;
      v615.hash[1] = v8;
      v4 = v18 ^ v14;
      v615.count[0] = v18 ^ v14;
      v615.count[1] = v6;
      v12 -= 8;
    }

    while (v12 > 7);
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_9:
    v23 = v13 << 56;
    goto LABEL_10;
  }

  v13 = 0;
  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_5:
  v19 = 0;
  v20 = 0;
  v21 = v12;
  do
  {
    v22 = *v11;
    v11 = (v11 + 1);
    v20 |= v22 << v19;
    v19 += 8;
    --v21;
  }

  while (v21);
  v23 = v20 | ((v12 | v13) << 56);
LABEL_10:
  v615.hash[2] = v23;

  v24 = self->_identifier;
  v25 = [(NSString *)v24 UTF8String];
  v26 = [(NSString *)v24 length];
  v27 = HIBYTE(v23);
  v28 = HIBYTE(v23) & 7;
  if (v28)
  {
    v29 = 8 - v28;
    v30 = v26 - (8 - v28);
    if (v26 < 8 - v28)
    {
      goto LABEL_18;
    }

    v31 = 8 * v28;
    v32 = v25;
    v33 = v23 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v34 = *v32++;
      v33 |= v34 << v31;
      v31 += 8;
    }

    while (v31 != 64);
    v35 = (v4 + v6) ^ __ROR8__(v6, 51);
    v36 = v7 + (v8 ^ v33);
    v37 = __ROR8__(v8 ^ v33, 48);
    v38 = (v36 ^ v37) + __ROR8__(v4 + v6, 32);
    v8 = v38 ^ __ROR8__(v36 ^ v37, 43);
    v6 = (v36 + v35) ^ __ROR8__(v35, 47);
    v7 = __ROR8__(v36 + v35, 32);
    v615.hash[0] = v7;
    v615.hash[1] = v8;
    v4 = v38 ^ v33;
    v615.count[0] = v38 ^ v33;
    v615.count[1] = v6;
    v25 += v29;
    v615.hash[2] = (v29 + v27) << 56;
    v26 = v30;
  }

  if (v26 >= 8)
  {
    do
    {
      v39 = *v25;
      v25 += 8;
      v40 = (v4 + v6) ^ __ROR8__(v6, 51);
      v41 = v7 + (v8 ^ v39);
      v42 = __ROR8__(v8 ^ v39, 48);
      v43 = (v41 ^ v42) + __ROR8__(v4 + v6, 32);
      v8 = v43 ^ __ROR8__(v41 ^ v42, 43);
      v6 = (v41 + v40) ^ __ROR8__(v40, 47);
      v7 = __ROR8__(v41 + v40, 32);
      v615.hash[0] = v7;
      v615.hash[1] = v8;
      v4 = v43 ^ v39;
      v615.count[0] = v43 ^ v39;
      v615.count[1] = v6;
      v26 -= 8;
      v27 += 8;
    }

    while (v26 > 7);
  }

  v28 = 0;
LABEL_18:
  if (v26)
  {
    v44 = 0;
    v45 = 0;
    v46 = v26;
    do
    {
      v47 = *v25++;
      v45 |= v47 << v44;
      v44 += 8;
      --v46;
    }

    while (v46);
    if (v28)
    {
      v48 = (v45 << (8 * v28)) | ((v26 + v27) << 56) | v23 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v48 = v45 | ((v26 + v27) << 56);
    }
  }

  else
  {
    if (v28)
    {
      goto LABEL_27;
    }

    v48 = v27 << 56;
  }

  v615.hash[2] = v48;
LABEL_27:

  isActive = self->_isActive;
  LODWORD(data[0]) = self->_isActive;
  if ((v615.hash[2] & 0x400000000000000) != 0)
  {
    v51 = v615.hash[2] & 0xFFFFFFFFFFFFFFLL | (isActive << 32);
    v52 = (v615.count[0] + v615.count[1]) ^ __ROR8__(v615.count[1], 51);
    v53 = v615.hash[0] + (v615.hash[1] ^ v51);
    v54 = __ROR8__(v615.hash[1] ^ v51, 48);
    v55 = (v53 ^ v54) + __ROR8__(v615.count[0] + v615.count[1], 32);
    v56 = v55 ^ __ROR8__(v53 ^ v54, 43);
    v57 = v53 + v52;
    v615.hash[0] = __ROR8__(v57, 32);
    v615.hash[1] = v56;
    v615.count[0] = v55 ^ v51;
    v615.count[1] = v57 ^ __ROR8__(v52, 47);
    v50 = (v615.hash[2] & 0xFF00000000000000) + 0x400000000000000;
  }

  else
  {
    v50 = v615.hash[2] | isActive | 0x400000000000000;
  }

  v615.hash[2] = v50;
  defaultMediaUser = self->_defaultMediaUser;
  LODWORD(data[0]) = self->_defaultMediaUser;
  if ((v50 & 0x400000000000000) != 0)
  {
    v60 = v615.hash[2] & 0xFFFFFFFFFFFFFFLL | (defaultMediaUser << 32);
    v61 = (v615.count[0] + v615.count[1]) ^ __ROR8__(v615.count[1], 51);
    v62 = v615.hash[0] + (v615.hash[1] ^ v60);
    v63 = __ROR8__(v615.hash[1] ^ v60, 48);
    v64 = (v62 ^ v63) + __ROR8__(v615.count[0] + v615.count[1], 32);
    v65 = v64 ^ __ROR8__(v62 ^ v63, 43);
    v66 = v62 + v61;
    v615.hash[0] = __ROR8__(v66, 32);
    v615.hash[1] = v65;
    v615.count[0] = v64 ^ v60;
    v615.count[1] = v66 ^ __ROR8__(v61, 47);
    v59 = (v615.hash[2] & 0xFF00000000000000) + 0x400000000000000;
  }

  else
  {
    v59 = v615.hash[2] | defaultMediaUser | 0x400000000000000;
  }

  v615.hash[2] = v59;
  v67 = [(NSNumber *)self->_dsid integerValue];
  *&data[0] = v67;
  if (v614 <= 3000)
  {
    if (v614 > 1999)
    {
      if (v614 == 2000)
      {
        LOBYTE(v89) = 0;
        if (BYTE3(v615.count[1]) > 1u)
        {
          if (BYTE3(v615.count[1]) == 2)
          {
            v92 = v67 >> 8;
            v90 = v615.count[1];
            LODWORD(v89) = HIBYTE(LOWORD(v615.count[1]));
            LOBYTE(v91) = v67;
          }

          else
          {
            v90 = 0;
            LOBYTE(v91) = 0;
            LODWORD(v92) = 0;
            if (BYTE3(v615.count[1]) == 3)
            {
              v90 = v615.count[1];
              LODWORD(v89) = HIBYTE(LOWORD(v615.count[1]));
              LOBYTE(v91) = BYTE2(v615.count[1]);
              LODWORD(v92) = v67;
            }
          }
        }

        else if (BYTE3(v615.count[1]))
        {
          v90 = 0;
          LOBYTE(v91) = 0;
          LODWORD(v92) = 0;
          if (BYTE3(v615.count[1]) == 1)
          {
            v91 = v67 >> 8;
            v90 = v615.count[1];
            v92 = v67 >> 16;
            LOBYTE(v89) = v67;
          }
        }

        else
        {
          v89 = v67 >> 8;
          v91 = v67 >> 16;
          v90 = v67;
          v92 = v67 >> 24;
        }

        v100 = (v91 << 16) | (v92 << 24) | v90 | (v89 << 8);
        HIDWORD(v101) = (461845907 * ((380141568 * v100) | ((-862048943 * v100) >> 17))) ^ LODWORD(v615.count[0]);
        LODWORD(v101) = HIDWORD(v101);
        v102 = 5 * (v101 >> 19) - 430675100;
        LODWORD(v615.count[0]) = v102;
        v103 = data - BYTE3(v615.count[1]) + 4;
        v104 = data + ((BYTE3(v615.count[1]) + 8) & 0x1FC) - BYTE3(v615.count[1]);
        if (v103 < v104)
        {
          do
          {
            v105 = *v103;
            v103 += 4;
            HIDWORD(v106) = (461845907 * ((380141568 * v105) | ((-862048943 * v105) >> 17))) ^ v102;
            LODWORD(v106) = HIDWORD(v106);
            v102 = 5 * (v106 >> 19) - 430675100;
          }

          while (v103 < v104);
          LODWORD(v615.count[0]) = v102;
        }

        if ((BYTE3(v615.count[1]) & 3u) > 1uLL)
        {
          LOWORD(v615.count[1]) = *v104;
          if ((BYTE3(v615.count[1]) & 3) != 2)
          {
            BYTE2(v615.count[1]) = v104[2];
          }
        }

        else if ((v615.count[1] & 0x3000000) != 0)
        {
          LOBYTE(v615.count[1]) = *v104;
        }

        BYTE3(v615.count[1]) &= 3u;
        HIDWORD(v615.count[0]) += 8;
      }

      else if (v614 == 3000)
      {
        _MSV_XXH_XXH32_update_17739(&v615, data, 8uLL);
      }
    }

    else if (v614)
    {
      if (v614 == 1000)
      {
        v68 = v615.hash[2];
        if ((v615.hash[2] & 0x400000000000000) != 0)
        {
          v93 = v615.hash[2] & 0xFFFFFFFFFFFFFFLL | (v67 << 32);
          v94 = (v615.count[0] + v615.count[1]) ^ __ROR8__(v615.count[1], 51);
          v95 = v615.hash[0] + (v615.hash[1] ^ v93);
          v96 = __ROR8__(v615.hash[1] ^ v93, 48);
          v97 = (v95 ^ v96) + __ROR8__(v615.count[0] + v615.count[1], 32);
          v98 = v97 ^ __ROR8__(v95 ^ v96, 43);
          v99 = v95 + v94;
          v615.hash[0] = __ROR8__(v99, 32);
          v615.hash[1] = v98;
          v615.count[0] = v97 ^ v93;
          v615.count[1] = v99 ^ __ROR8__(v94, 47);
          v86 = (v615.hash[2] & 0xFF00000000000000) + HIDWORD(v67) + 0x800000000000000;
        }

        else
        {
          v69 = v615.count[0];
          v71 = v615.hash[0];
          v70 = v615.count[1];
          v72 = v615.hash[1];
          if ((v615.hash[2] & 0x3FFFFFFFFFFFFFFLL) != 0)
          {
            v73 = (v615.count[0] + v615.count[1]) ^ __ROR8__(v615.count[1], 51);
            v74 = v615.hash[0] + (v615.hash[1] ^ v615.hash[2] & 0xFFFFFFFFFFFFFFLL);
            v75 = __ROR8__(v615.hash[1] ^ v615.hash[2] & 0xFFFFFFFFFFFFFFLL, 48);
            v76 = (v74 ^ v75) + __ROR8__(v615.count[0] + v615.count[1], 32);
            v72 = v76 ^ __ROR8__(v74 ^ v75, 43);
            v77 = v74 + v73;
            v70 = v77 ^ __ROR8__(v73, 47);
            v71 = __ROR8__(v77, 32);
            v69 = v76 ^ v615.hash[2] & 0xFFFFFFFFFFFFFFLL;
            v68 = v615.hash[2] & 0xFF00000000000000;
          }

          v78 = v72 ^ v67;
          v79 = v69 + v70;
          v80 = (v69 + v70) ^ __ROR8__(v70, 51);
          v81 = v71 + v78;
          v82 = __ROR8__(v78, 48);
          v83 = (v81 ^ v82) + __ROR8__(v79, 32);
          v84 = v83 ^ __ROR8__(v81 ^ v82, 43);
          v85 = v81 + v80;
          v615.hash[0] = __ROR8__(v85, 32);
          v615.hash[1] = v84;
          v615.count[0] = v83 ^ v67;
          v615.count[1] = v85 ^ __ROR8__(v80, 47);
          v86 = v68 + 0x800000000000000;
        }

        v615.hash[2] = v86;
      }
    }

    else
    {
      v87 = [MEMORY[0x1E696AAA8] currentHandler];
      v88 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppend64(MSVHasher * _Nonnull, uint64_t)"}];
      [v87 handleFailureInFunction:v88 file:@"MSVHasher+Algorithms.h" lineNumber:227 description:@"Cannot append to unknown hasher algorithm"];
    }
  }

  else if (v614 <= 4000)
  {
    if (v614 == 3001)
    {
      _MSV_XXH_XXH64_update(&v615, data, 8uLL);
    }

    else if (v614 == 4000)
    {
      CC_MD5_Update(&v615, data, 4u);
    }
  }

  else
  {
    switch(v614)
    {
      case 4001:
        CC_SHA1_Update(&v615, data, 4u);
        break;
      case 4256:
        CC_SHA256_Update(&v615, data, 4u);
        break;
      case 4512:
        CC_SHA512_Update(&v615, data, 4u);
        break;
    }
  }

  v107 = self->_alternateDSID;
  v108 = [(NSString *)v107 UTF8String];
  v109 = [(NSString *)v107 length];
  v110 = v109;
  if (v614 > 3000)
  {
    if (v614 <= 4000)
    {
      if (v614 == 3001)
      {
        _MSV_XXH_XXH64_update(&v615, v108, v109);
      }

      else if (v614 == 4000)
      {
        CC_MD5_Update(&v615, v108, v109);
      }
    }

    else
    {
      switch(v614)
      {
        case 4001:
          CC_SHA1_Update(&v615, v108, v109);
          break;
        case 4256:
          CC_SHA256_Update(&v615, v108, v109);
          break;
        case 4512:
          CC_SHA512_Update(&v615, v108, v109);
          break;
      }
    }

    goto LABEL_144;
  }

  if (v614 > 1999)
  {
    if (v614 != 2000)
    {
      if (v614 == 3000)
      {
        _MSV_XXH_XXH32_update_17739(&v615, v108, v109);
      }

      goto LABEL_144;
    }

    v145 = v109 + BYTE3(v615.count[1]);
    if (v145 < 4)
    {
      v146 = &v615.hash[-1] + BYTE3(v615.count[1]);
      v147 = (v145 - BYTE3(v615.count[1]));
      if (v147 <= 1)
      {
        if (v145 == BYTE3(v615.count[1]))
        {
LABEL_143:
          HIDWORD(v615.count[0]) += v110;
          goto LABEL_144;
        }

        if (v147 == 1)
        {
          *v146 = *v108;
          goto LABEL_143;
        }

LABEL_127:
        memcpy(v146, v108, (v145 - BYTE3(v615.count[1])));
        goto LABEL_143;
      }

      if (v147 == 2)
      {
        v152 = *v108;
      }

      else
      {
        if (v147 != 3)
        {
          goto LABEL_127;
        }

        v152 = *v108;
        v146[2] = v108[2];
      }

      *v146 = v152;
      goto LABEL_143;
    }

    LOBYTE(v148) = 0;
    v149 = v145 & 0xFFFFFFFFFFFFFFFCLL;
    if (BYTE3(v615.count[1]) > 1u)
    {
      if (BYTE3(v615.count[1]) != 2)
      {
        LOBYTE(v150) = 0;
        LOBYTE(v151) = 0;
        v153 = 0;
        if (BYTE3(v615.count[1]) == 3)
        {
          LOBYTE(v150) = v615.count[1];
          v148 = HIBYTE(LOWORD(v615.count[1]));
          LOBYTE(v151) = BYTE2(v615.count[1]);
          v153 = *v108;
        }

        goto LABEL_133;
      }

      LOBYTE(v150) = v615.count[1];
      v148 = HIBYTE(LOWORD(v615.count[1]));
      v151 = *v108;
    }

    else
    {
      if (!BYTE3(v615.count[1]))
      {
        v150 = *v108;
        v148 = *v108 >> 8;
        v151 = HIWORD(*v108);
        v153 = HIBYTE(*v108);
        goto LABEL_133;
      }

      LOBYTE(v150) = v615.count[1];
      LOBYTE(v148) = *v108;
      v151 = *(v108 + 1);
    }

    v153 = v151 >> 8;
LABEL_133:
    v154 = v145 & 3;
    v155 = (v151 << 16) | (v153 << 24) | v150 | (v148 << 8);
    HIDWORD(v156) = (461845907 * ((380141568 * v155) | ((-862048943 * v155) >> 17))) ^ LODWORD(v615.count[0]);
    LODWORD(v156) = HIDWORD(v156);
    v157 = 5 * (v156 >> 19) - 430675100;
    LODWORD(v615.count[0]) = v157;
    v158 = &v108[-BYTE3(v615.count[1]) + 4];
    v159 = &v108[v149 - BYTE3(v615.count[1])];
    while (v158 < v159)
    {
      v160 = *v158;
      v158 += 4;
      HIDWORD(v161) = (461845907 * ((380141568 * v160) | ((-862048943 * v160) >> 17))) ^ v157;
      LODWORD(v161) = HIDWORD(v161);
      v157 = 5 * (v161 >> 19) - 430675100;
      LODWORD(v615.count[0]) = v157;
    }

    if (v154 > 1)
    {
      if (v154 == 2)
      {
        LOWORD(v615.count[1]) = *v159;
      }

      else
      {
        v162 = *v159;
        BYTE2(v615.count[1]) = v159[2];
        LOWORD(v615.count[1]) = v162;
      }
    }

    else if (v154)
    {
      LOBYTE(v615.count[1]) = *v159;
    }

    BYTE3(v615.count[1]) = v154;
    goto LABEL_143;
  }

  if (!v614)
  {
    v143 = [MEMORY[0x1E696AAA8] currentHandler];
    v144 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"}];
    [v143 handleFailureInFunction:v144 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

    goto LABEL_144;
  }

  if (v614 != 1000)
  {
    goto LABEL_144;
  }

  v111 = HIBYTE(v615.hash[2]);
  v112 = v615.hash[2] & 0xFFFFFFFFFFFFFFLL;
  v113 = HIBYTE(v615.hash[2]) & 7;
  if (!v113)
  {
    goto LABEL_90;
  }

  v114 = 8 - v113;
  v115 = v109 - (8 - v113);
  if (v109 >= 8 - v113)
  {
    v116 = 8 * v113;
    v117 = v108;
    v118 = v615.hash[2] & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v119 = *v117++;
      v118 |= v119 << v116;
      v116 += 8;
    }

    while (v116 != 64);
    v120 = (v615.count[0] + v615.count[1]) ^ __ROR8__(v615.count[1], 51);
    v121 = v615.hash[0] + (v615.hash[1] ^ v118);
    v122 = __ROR8__(v615.hash[1] ^ v118, 48);
    v123 = (v121 ^ v122) + __ROR8__(v615.count[0] + v615.count[1], 32);
    v124 = v123 ^ __ROR8__(v121 ^ v122, 43);
    v125 = v121 + v120;
    v615.hash[0] = __ROR8__(v125, 32);
    v615.hash[1] = v124;
    v615.count[0] = v123 ^ v118;
    v615.count[1] = v125 ^ __ROR8__(v120, 47);
    v108 += v114;
    v615.hash[2] = (v114 + v111) << 56;
    v110 = v115;
LABEL_90:
    if (v110 >= 8)
    {
      v126 = v615.count[0];
      v129 = v615.hash[0];
      v127 = v615.count[1];
      v128 = v615.hash[1];
      do
      {
        v130 = *v108;
        v108 += 8;
        v131 = v128 ^ v130;
        v132 = v126 + v127;
        v133 = v132 ^ __ROR8__(v127, 51);
        v134 = v129 + v131;
        v135 = __ROR8__(v131, 48);
        v136 = (v134 ^ v135) + __ROR8__(v132, 32);
        v128 = v136 ^ __ROR8__(v134 ^ v135, 43);
        v137 = v134 + v133;
        v127 = v137 ^ __ROR8__(v133, 47);
        v129 = __ROR8__(v137, 32);
        v615.hash[0] = v129;
        v615.hash[1] = v128;
        v126 = v136 ^ v130;
        v615.count[0] = v126;
        v615.count[1] = v127;
        v110 -= 8;
        v111 += 8;
      }

      while (v110 > 7);
    }

    v113 = 0;
  }

  if (v110)
  {
    v138 = 0;
    v139 = 0;
    v140 = v110;
    do
    {
      v141 = *v108++;
      v139 |= v141 << v138;
      v138 += 8;
      --v140;
    }

    while (v140);
    if (v113)
    {
      v142 = (v139 << (8 * v113)) | ((v110 + v111) << 56) | v112;
    }

    else
    {
      v142 = v139 | ((v110 + v111) << 56);
    }
  }

  else
  {
    if (v113)
    {
      goto LABEL_144;
    }

    v142 = v111 << 56;
  }

  v615.hash[2] = v142;
LABEL_144:

  v163 = self->_iCloudPersonID;
  v164 = [(NSString *)v163 UTF8String];
  v165 = [(NSString *)v163 length];
  v166 = v165;
  if (v614 > 3000)
  {
    if (v614 <= 4000)
    {
      if (v614 == 3001)
      {
        _MSV_XXH_XXH64_update(&v615, v164, v165);
      }

      else if (v614 == 4000)
      {
        CC_MD5_Update(&v615, v164, v165);
      }
    }

    else
    {
      switch(v614)
      {
        case 4001:
          CC_SHA1_Update(&v615, v164, v165);
          break;
        case 4256:
          CC_SHA256_Update(&v615, v164, v165);
          break;
        case 4512:
          CC_SHA512_Update(&v615, v164, v165);
          break;
      }
    }

    goto LABEL_212;
  }

  if (v614 > 1999)
  {
    if (v614 != 2000)
    {
      if (v614 == 3000)
      {
        _MSV_XXH_XXH32_update_17739(&v615, v164, v165);
      }

      goto LABEL_212;
    }

    v201 = v165 + BYTE3(v615.count[1]);
    if (v201 < 4)
    {
      v202 = &v615.hash[-1] + BYTE3(v615.count[1]);
      v203 = (v201 - BYTE3(v615.count[1]));
      if (v203 <= 1)
      {
        if (v201 == BYTE3(v615.count[1]))
        {
LABEL_211:
          HIDWORD(v615.count[0]) += v166;
          goto LABEL_212;
        }

        if (v203 == 1)
        {
          *v202 = *v164;
          goto LABEL_211;
        }

LABEL_195:
        memcpy(v202, v164, (v201 - BYTE3(v615.count[1])));
        goto LABEL_211;
      }

      if (v203 == 2)
      {
        v208 = *v164;
      }

      else
      {
        if (v203 != 3)
        {
          goto LABEL_195;
        }

        v208 = *v164;
        v202[2] = v164[2];
      }

      *v202 = v208;
      goto LABEL_211;
    }

    LOBYTE(v204) = 0;
    v205 = v201 & 0xFFFFFFFFFFFFFFFCLL;
    if (BYTE3(v615.count[1]) > 1u)
    {
      if (BYTE3(v615.count[1]) != 2)
      {
        LOBYTE(v206) = 0;
        LOBYTE(v207) = 0;
        v209 = 0;
        if (BYTE3(v615.count[1]) == 3)
        {
          LOBYTE(v206) = v615.count[1];
          v204 = HIBYTE(LOWORD(v615.count[1]));
          LOBYTE(v207) = BYTE2(v615.count[1]);
          v209 = *v164;
        }

        goto LABEL_201;
      }

      LOBYTE(v206) = v615.count[1];
      v204 = HIBYTE(LOWORD(v615.count[1]));
      v207 = *v164;
    }

    else
    {
      if (!BYTE3(v615.count[1]))
      {
        v206 = *v164;
        v204 = *v164 >> 8;
        v207 = HIWORD(*v164);
        v209 = HIBYTE(*v164);
        goto LABEL_201;
      }

      LOBYTE(v206) = v615.count[1];
      LOBYTE(v204) = *v164;
      v207 = *(v164 + 1);
    }

    v209 = v207 >> 8;
LABEL_201:
    v210 = v201 & 3;
    v211 = (v207 << 16) | (v209 << 24) | v206 | (v204 << 8);
    HIDWORD(v212) = (461845907 * ((380141568 * v211) | ((-862048943 * v211) >> 17))) ^ LODWORD(v615.count[0]);
    LODWORD(v212) = HIDWORD(v212);
    v213 = 5 * (v212 >> 19) - 430675100;
    LODWORD(v615.count[0]) = v213;
    v214 = &v164[-BYTE3(v615.count[1]) + 4];
    v215 = &v164[v205 - BYTE3(v615.count[1])];
    while (v214 < v215)
    {
      v216 = *v214;
      v214 += 4;
      HIDWORD(v217) = (461845907 * ((380141568 * v216) | ((-862048943 * v216) >> 17))) ^ v213;
      LODWORD(v217) = HIDWORD(v217);
      v213 = 5 * (v217 >> 19) - 430675100;
      LODWORD(v615.count[0]) = v213;
    }

    if (v210 > 1)
    {
      if (v210 == 2)
      {
        LOWORD(v615.count[1]) = *v215;
      }

      else
      {
        v218 = *v215;
        BYTE2(v615.count[1]) = v215[2];
        LOWORD(v615.count[1]) = v218;
      }
    }

    else if (v210)
    {
      LOBYTE(v615.count[1]) = *v215;
    }

    BYTE3(v615.count[1]) = v210;
    goto LABEL_211;
  }

  if (!v614)
  {
    v199 = [MEMORY[0x1E696AAA8] currentHandler];
    v200 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"}];
    [v199 handleFailureInFunction:v200 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

    goto LABEL_212;
  }

  if (v614 != 1000)
  {
    goto LABEL_212;
  }

  v167 = HIBYTE(v615.hash[2]);
  v168 = v615.hash[2] & 0xFFFFFFFFFFFFFFLL;
  v169 = HIBYTE(v615.hash[2]) & 7;
  if (!v169)
  {
    goto LABEL_158;
  }

  v170 = 8 - v169;
  v171 = v165 - (8 - v169);
  if (v165 >= 8 - v169)
  {
    v172 = 8 * v169;
    v173 = v164;
    v174 = v615.hash[2] & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v175 = *v173++;
      v174 |= v175 << v172;
      v172 += 8;
    }

    while (v172 != 64);
    v176 = (v615.count[0] + v615.count[1]) ^ __ROR8__(v615.count[1], 51);
    v177 = v615.hash[0] + (v615.hash[1] ^ v174);
    v178 = __ROR8__(v615.hash[1] ^ v174, 48);
    v179 = (v177 ^ v178) + __ROR8__(v615.count[0] + v615.count[1], 32);
    v180 = v179 ^ __ROR8__(v177 ^ v178, 43);
    v181 = v177 + v176;
    v615.hash[0] = __ROR8__(v181, 32);
    v615.hash[1] = v180;
    v615.count[0] = v179 ^ v174;
    v615.count[1] = v181 ^ __ROR8__(v176, 47);
    v164 += v170;
    v615.hash[2] = (v170 + v167) << 56;
    v166 = v171;
LABEL_158:
    if (v166 >= 8)
    {
      v182 = v615.count[0];
      v185 = v615.hash[0];
      v183 = v615.count[1];
      v184 = v615.hash[1];
      do
      {
        v186 = *v164;
        v164 += 8;
        v187 = v184 ^ v186;
        v188 = v182 + v183;
        v189 = v188 ^ __ROR8__(v183, 51);
        v190 = v185 + v187;
        v191 = __ROR8__(v187, 48);
        v192 = (v190 ^ v191) + __ROR8__(v188, 32);
        v184 = v192 ^ __ROR8__(v190 ^ v191, 43);
        v193 = v190 + v189;
        v183 = v193 ^ __ROR8__(v189, 47);
        v185 = __ROR8__(v193, 32);
        v615.hash[0] = v185;
        v615.hash[1] = v184;
        v182 = v192 ^ v186;
        v615.count[0] = v182;
        v615.count[1] = v183;
        v166 -= 8;
        v167 += 8;
      }

      while (v166 > 7);
    }

    v169 = 0;
  }

  if (v166)
  {
    v194 = 0;
    v195 = 0;
    v196 = v166;
    do
    {
      v197 = *v164++;
      v195 |= v197 << v194;
      v194 += 8;
      --v196;
    }

    while (v196);
    if (v169)
    {
      v198 = (v195 << (8 * v169)) | ((v166 + v167) << 56) | v168;
    }

    else
    {
      v198 = v195 | ((v166 + v167) << 56);
    }
  }

  else
  {
    if (v169)
    {
      goto LABEL_212;
    }

    v198 = v167 << 56;
  }

  v615.hash[2] = v198;
LABEL_212:

  v219 = self->_homeUserIDs;
  v220 = [(NSArray *)v219 hash];
  *&data[0] = v220;
  if (v614 <= 3000)
  {
    if (v614 > 1999)
    {
      if (v614 == 2000)
      {
        LOBYTE(v242) = 0;
        if (BYTE3(v615.count[1]) > 1u)
        {
          if (BYTE3(v615.count[1]) == 2)
          {
            v245 = v220 >> 8;
            v243 = v615.count[1];
            LODWORD(v242) = HIBYTE(LOWORD(v615.count[1]));
            LOBYTE(v244) = v220;
          }

          else
          {
            v243 = 0;
            LOBYTE(v244) = 0;
            LODWORD(v245) = 0;
            if (BYTE3(v615.count[1]) == 3)
            {
              v243 = v615.count[1];
              LODWORD(v242) = HIBYTE(LOWORD(v615.count[1]));
              LOBYTE(v244) = BYTE2(v615.count[1]);
              LODWORD(v245) = v220;
            }
          }
        }

        else if (BYTE3(v615.count[1]))
        {
          v243 = 0;
          LOBYTE(v244) = 0;
          LODWORD(v245) = 0;
          if (BYTE3(v615.count[1]) == 1)
          {
            v244 = v220 >> 8;
            v243 = v615.count[1];
            v245 = v220 >> 16;
            LOBYTE(v242) = v220;
          }
        }

        else
        {
          v242 = v220 >> 8;
          v244 = v220 >> 16;
          v243 = v220;
          v245 = v220 >> 24;
        }

        v253 = (v244 << 16) | (v245 << 24) | v243 | (v242 << 8);
        HIDWORD(v254) = (461845907 * ((380141568 * v253) | ((-862048943 * v253) >> 17))) ^ LODWORD(v615.count[0]);
        LODWORD(v254) = HIDWORD(v254);
        v255 = 5 * (v254 >> 19) - 430675100;
        LODWORD(v615.count[0]) = v255;
        v256 = data - BYTE3(v615.count[1]) + 4;
        v257 = data + ((BYTE3(v615.count[1]) + 8) & 0x1FC) - BYTE3(v615.count[1]);
        if (v256 < v257)
        {
          do
          {
            v258 = *v256;
            v256 += 4;
            HIDWORD(v259) = (461845907 * ((380141568 * v258) | ((-862048943 * v258) >> 17))) ^ v255;
            LODWORD(v259) = HIDWORD(v259);
            v255 = 5 * (v259 >> 19) - 430675100;
          }

          while (v256 < v257);
          LODWORD(v615.count[0]) = v255;
        }

        if ((BYTE3(v615.count[1]) & 3u) > 1uLL)
        {
          LOWORD(v615.count[1]) = *v257;
          if ((BYTE3(v615.count[1]) & 3) != 2)
          {
            BYTE2(v615.count[1]) = v257[2];
          }
        }

        else if ((v615.count[1] & 0x3000000) != 0)
        {
          LOBYTE(v615.count[1]) = *v257;
        }

        BYTE3(v615.count[1]) &= 3u;
        HIDWORD(v615.count[0]) += 8;
      }

      else if (v614 == 3000)
      {
        _MSV_XXH_XXH32_update_17739(&v615, data, 8uLL);
      }
    }

    else if (v614)
    {
      if (v614 == 1000)
      {
        v221 = v615.hash[2];
        if ((v615.hash[2] & 0x400000000000000) != 0)
        {
          v246 = v615.hash[2] & 0xFFFFFFFFFFFFFFLL | (v220 << 32);
          v247 = (v615.count[0] + v615.count[1]) ^ __ROR8__(v615.count[1], 51);
          v248 = v615.hash[0] + (v615.hash[1] ^ v246);
          v249 = __ROR8__(v615.hash[1] ^ v246, 48);
          v250 = (v248 ^ v249) + __ROR8__(v615.count[0] + v615.count[1], 32);
          v251 = v250 ^ __ROR8__(v248 ^ v249, 43);
          v252 = v248 + v247;
          v615.hash[0] = __ROR8__(v252, 32);
          v615.hash[1] = v251;
          v615.count[0] = v250 ^ v246;
          v615.count[1] = v252 ^ __ROR8__(v247, 47);
          v239 = (v615.hash[2] & 0xFF00000000000000) + HIDWORD(v220) + 0x800000000000000;
        }

        else
        {
          v222 = v615.count[0];
          v224 = v615.hash[0];
          v223 = v615.count[1];
          v225 = v615.hash[1];
          if ((v615.hash[2] & 0x3FFFFFFFFFFFFFFLL) != 0)
          {
            v226 = (v615.count[0] + v615.count[1]) ^ __ROR8__(v615.count[1], 51);
            v227 = v615.hash[0] + (v615.hash[1] ^ v615.hash[2] & 0xFFFFFFFFFFFFFFLL);
            v228 = __ROR8__(v615.hash[1] ^ v615.hash[2] & 0xFFFFFFFFFFFFFFLL, 48);
            v229 = (v227 ^ v228) + __ROR8__(v615.count[0] + v615.count[1], 32);
            v225 = v229 ^ __ROR8__(v227 ^ v228, 43);
            v230 = v227 + v226;
            v223 = v230 ^ __ROR8__(v226, 47);
            v224 = __ROR8__(v230, 32);
            v222 = v229 ^ v615.hash[2] & 0xFFFFFFFFFFFFFFLL;
            v221 = v615.hash[2] & 0xFF00000000000000;
          }

          v231 = v225 ^ v220;
          v232 = v222 + v223;
          v233 = (v222 + v223) ^ __ROR8__(v223, 51);
          v234 = v224 + v231;
          v235 = __ROR8__(v231, 48);
          v236 = (v234 ^ v235) + __ROR8__(v232, 32);
          v237 = v236 ^ __ROR8__(v234 ^ v235, 43);
          v238 = v234 + v233;
          v615.hash[0] = __ROR8__(v238, 32);
          v615.hash[1] = v237;
          v615.count[0] = v236 ^ v220;
          v615.count[1] = v238 ^ __ROR8__(v233, 47);
          v239 = v221 + 0x800000000000000;
        }

        v615.hash[2] = v239;
      }
    }

    else
    {
      v240 = [MEMORY[0x1E696AAA8] currentHandler];
      v241 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppend64(MSVHasher * _Nonnull, uint64_t)"}];
      [v240 handleFailureInFunction:v241 file:@"MSVHasher+Algorithms.h" lineNumber:227 description:@"Cannot append to unknown hasher algorithm"];
    }
  }

  else if (v614 <= 4000)
  {
    if (v614 == 3001)
    {
      _MSV_XXH_XXH64_update(&v615, data, 8uLL);
    }

    else if (v614 == 4000)
    {
      CC_MD5_Update(&v615, data, 4u);
    }
  }

  else
  {
    switch(v614)
    {
      case 4001:
        CC_SHA1_Update(&v615, data, 4u);
        break;
      case 4256:
        CC_SHA256_Update(&v615, data, 4u);
        break;
      case 4512:
        CC_SHA512_Update(&v615, data, 4u);
        break;
    }
  }

  v260 = self->_storefrontIdentifier;
  v261 = [(NSString *)v260 UTF8String];
  v262 = [(NSString *)v260 length];
  v263 = v262;
  if (v614 > 3000)
  {
    if (v614 <= 4000)
    {
      if (v614 == 3001)
      {
        _MSV_XXH_XXH64_update(&v615, v261, v262);
      }

      else if (v614 == 4000)
      {
        CC_MD5_Update(&v615, v261, v262);
      }
    }

    else
    {
      switch(v614)
      {
        case 4001:
          CC_SHA1_Update(&v615, v261, v262);
          break;
        case 4256:
          CC_SHA256_Update(&v615, v261, v262);
          break;
        case 4512:
          CC_SHA512_Update(&v615, v261, v262);
          break;
      }
    }

    goto LABEL_323;
  }

  if (v614 > 1999)
  {
    if (v614 != 2000)
    {
      if (v614 == 3000)
      {
        _MSV_XXH_XXH32_update_17739(&v615, v261, v262);
      }

      goto LABEL_323;
    }

    v298 = v262 + BYTE3(v615.count[1]);
    if (v298 < 4)
    {
      v299 = &v615.hash[-1] + BYTE3(v615.count[1]);
      v300 = (v298 - BYTE3(v615.count[1]));
      if (v300 <= 1)
      {
        if (v298 == BYTE3(v615.count[1]))
        {
LABEL_322:
          HIDWORD(v615.count[0]) += v263;
          goto LABEL_323;
        }

        if (v300 == 1)
        {
          *v299 = *v261;
          goto LABEL_322;
        }

LABEL_306:
        memcpy(v299, v261, (v298 - BYTE3(v615.count[1])));
        goto LABEL_322;
      }

      if (v300 == 2)
      {
        v305 = *v261;
      }

      else
      {
        if (v300 != 3)
        {
          goto LABEL_306;
        }

        v305 = *v261;
        v299[2] = v261[2];
      }

      *v299 = v305;
      goto LABEL_322;
    }

    LOBYTE(v301) = 0;
    v302 = v298 & 0xFFFFFFFFFFFFFFFCLL;
    if (BYTE3(v615.count[1]) > 1u)
    {
      if (BYTE3(v615.count[1]) != 2)
      {
        LOBYTE(v303) = 0;
        LOBYTE(v304) = 0;
        v306 = 0;
        if (BYTE3(v615.count[1]) == 3)
        {
          LOBYTE(v303) = v615.count[1];
          v301 = HIBYTE(LOWORD(v615.count[1]));
          LOBYTE(v304) = BYTE2(v615.count[1]);
          v306 = *v261;
        }

        goto LABEL_312;
      }

      LOBYTE(v303) = v615.count[1];
      v301 = HIBYTE(LOWORD(v615.count[1]));
      v304 = *v261;
    }

    else
    {
      if (!BYTE3(v615.count[1]))
      {
        v303 = *v261;
        v301 = *v261 >> 8;
        v304 = HIWORD(*v261);
        v306 = HIBYTE(*v261);
        goto LABEL_312;
      }

      LOBYTE(v303) = v615.count[1];
      LOBYTE(v301) = *v261;
      v304 = *(v261 + 1);
    }

    v306 = v304 >> 8;
LABEL_312:
    v307 = v298 & 3;
    v308 = (v304 << 16) | (v306 << 24) | v303 | (v301 << 8);
    HIDWORD(v309) = (461845907 * ((380141568 * v308) | ((-862048943 * v308) >> 17))) ^ LODWORD(v615.count[0]);
    LODWORD(v309) = HIDWORD(v309);
    v310 = 5 * (v309 >> 19) - 430675100;
    LODWORD(v615.count[0]) = v310;
    v311 = &v261[-BYTE3(v615.count[1]) + 4];
    v312 = &v261[v302 - BYTE3(v615.count[1])];
    while (v311 < v312)
    {
      v313 = *v311;
      v311 += 4;
      HIDWORD(v314) = (461845907 * ((380141568 * v313) | ((-862048943 * v313) >> 17))) ^ v310;
      LODWORD(v314) = HIDWORD(v314);
      v310 = 5 * (v314 >> 19) - 430675100;
      LODWORD(v615.count[0]) = v310;
    }

    if (v307 > 1)
    {
      if (v307 == 2)
      {
        LOWORD(v615.count[1]) = *v312;
      }

      else
      {
        v315 = *v312;
        BYTE2(v615.count[1]) = v312[2];
        LOWORD(v615.count[1]) = v315;
      }
    }

    else if (v307)
    {
      LOBYTE(v615.count[1]) = *v312;
    }

    BYTE3(v615.count[1]) = v307;
    goto LABEL_322;
  }

  if (!v614)
  {
    v296 = [MEMORY[0x1E696AAA8] currentHandler];
    v297 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"}];
    [v296 handleFailureInFunction:v297 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

    goto LABEL_323;
  }

  if (v614 != 1000)
  {
    goto LABEL_323;
  }

  v264 = HIBYTE(v615.hash[2]);
  v265 = v615.hash[2] & 0xFFFFFFFFFFFFFFLL;
  v266 = HIBYTE(v615.hash[2]) & 7;
  if (!v266)
  {
    goto LABEL_269;
  }

  v267 = 8 - v266;
  v268 = v262 - (8 - v266);
  if (v262 >= 8 - v266)
  {
    v269 = 8 * v266;
    v270 = v261;
    v271 = v615.hash[2] & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v272 = *v270++;
      v271 |= v272 << v269;
      v269 += 8;
    }

    while (v269 != 64);
    v273 = (v615.count[0] + v615.count[1]) ^ __ROR8__(v615.count[1], 51);
    v274 = v615.hash[0] + (v615.hash[1] ^ v271);
    v275 = __ROR8__(v615.hash[1] ^ v271, 48);
    v276 = (v274 ^ v275) + __ROR8__(v615.count[0] + v615.count[1], 32);
    v277 = v276 ^ __ROR8__(v274 ^ v275, 43);
    v278 = v274 + v273;
    v615.hash[0] = __ROR8__(v278, 32);
    v615.hash[1] = v277;
    v615.count[0] = v276 ^ v271;
    v615.count[1] = v278 ^ __ROR8__(v273, 47);
    v261 += v267;
    v615.hash[2] = (v267 + v264) << 56;
    v263 = v268;
LABEL_269:
    if (v263 >= 8)
    {
      v279 = v615.count[0];
      v282 = v615.hash[0];
      v280 = v615.count[1];
      v281 = v615.hash[1];
      do
      {
        v283 = *v261;
        v261 += 8;
        v284 = v281 ^ v283;
        v285 = v279 + v280;
        v286 = v285 ^ __ROR8__(v280, 51);
        v287 = v282 + v284;
        v288 = __ROR8__(v284, 48);
        v289 = (v287 ^ v288) + __ROR8__(v285, 32);
        v281 = v289 ^ __ROR8__(v287 ^ v288, 43);
        v290 = v287 + v286;
        v280 = v290 ^ __ROR8__(v286, 47);
        v282 = __ROR8__(v290, 32);
        v615.hash[0] = v282;
        v615.hash[1] = v281;
        v279 = v289 ^ v283;
        v615.count[0] = v279;
        v615.count[1] = v280;
        v263 -= 8;
        v264 += 8;
      }

      while (v263 > 7);
    }

    v266 = 0;
  }

  if (v263)
  {
    v291 = 0;
    v292 = 0;
    v293 = v263;
    do
    {
      v294 = *v261++;
      v292 |= v294 << v291;
      v291 += 8;
      --v293;
    }

    while (v293);
    if (v266)
    {
      v295 = (v292 << (8 * v266)) | ((v263 + v264) << 56) | v265;
    }

    else
    {
      v295 = v292 | ((v263 + v264) << 56);
    }
  }

  else
  {
    if (v266)
    {
      goto LABEL_323;
    }

    v295 = v264 << 56;
  }

  v615.hash[2] = v295;
LABEL_323:

  v316 = self->_firstName;
  v317 = [(NSString *)v316 UTF8String];
  v318 = [(NSString *)v316 length];
  v319 = v318;
  if (v614 > 3000)
  {
    if (v614 <= 4000)
    {
      if (v614 == 3001)
      {
        _MSV_XXH_XXH64_update(&v615, v317, v318);
      }

      else if (v614 == 4000)
      {
        CC_MD5_Update(&v615, v317, v318);
      }
    }

    else
    {
      switch(v614)
      {
        case 4001:
          CC_SHA1_Update(&v615, v317, v318);
          break;
        case 4256:
          CC_SHA256_Update(&v615, v317, v318);
          break;
        case 4512:
          CC_SHA512_Update(&v615, v317, v318);
          break;
      }
    }

    goto LABEL_391;
  }

  if (v614 > 1999)
  {
    if (v614 != 2000)
    {
      if (v614 == 3000)
      {
        _MSV_XXH_XXH32_update_17739(&v615, v317, v318);
      }

      goto LABEL_391;
    }

    v354 = v318 + BYTE3(v615.count[1]);
    if (v354 < 4)
    {
      v355 = &v615.hash[-1] + BYTE3(v615.count[1]);
      v356 = (v354 - BYTE3(v615.count[1]));
      if (v356 <= 1)
      {
        if (v354 == BYTE3(v615.count[1]))
        {
LABEL_390:
          HIDWORD(v615.count[0]) += v319;
          goto LABEL_391;
        }

        if (v356 == 1)
        {
          *v355 = *v317;
          goto LABEL_390;
        }

LABEL_374:
        memcpy(v355, v317, (v354 - BYTE3(v615.count[1])));
        goto LABEL_390;
      }

      if (v356 == 2)
      {
        v361 = *v317;
      }

      else
      {
        if (v356 != 3)
        {
          goto LABEL_374;
        }

        v361 = *v317;
        v355[2] = v317[2];
      }

      *v355 = v361;
      goto LABEL_390;
    }

    LOBYTE(v357) = 0;
    v358 = v354 & 0xFFFFFFFFFFFFFFFCLL;
    if (BYTE3(v615.count[1]) > 1u)
    {
      if (BYTE3(v615.count[1]) != 2)
      {
        LOBYTE(v359) = 0;
        LOBYTE(v360) = 0;
        v362 = 0;
        if (BYTE3(v615.count[1]) == 3)
        {
          LOBYTE(v359) = v615.count[1];
          v357 = HIBYTE(LOWORD(v615.count[1]));
          LOBYTE(v360) = BYTE2(v615.count[1]);
          v362 = *v317;
        }

        goto LABEL_380;
      }

      LOBYTE(v359) = v615.count[1];
      v357 = HIBYTE(LOWORD(v615.count[1]));
      v360 = *v317;
    }

    else
    {
      if (!BYTE3(v615.count[1]))
      {
        v359 = *v317;
        v357 = *v317 >> 8;
        v360 = HIWORD(*v317);
        v362 = HIBYTE(*v317);
        goto LABEL_380;
      }

      LOBYTE(v359) = v615.count[1];
      LOBYTE(v357) = *v317;
      v360 = *(v317 + 1);
    }

    v362 = v360 >> 8;
LABEL_380:
    v363 = v354 & 3;
    v364 = (v360 << 16) | (v362 << 24) | v359 | (v357 << 8);
    HIDWORD(v365) = (461845907 * ((380141568 * v364) | ((-862048943 * v364) >> 17))) ^ LODWORD(v615.count[0]);
    LODWORD(v365) = HIDWORD(v365);
    v366 = 5 * (v365 >> 19) - 430675100;
    LODWORD(v615.count[0]) = v366;
    v367 = &v317[-BYTE3(v615.count[1]) + 4];
    v368 = &v317[v358 - BYTE3(v615.count[1])];
    while (v367 < v368)
    {
      v369 = *v367;
      v367 += 4;
      HIDWORD(v370) = (461845907 * ((380141568 * v369) | ((-862048943 * v369) >> 17))) ^ v366;
      LODWORD(v370) = HIDWORD(v370);
      v366 = 5 * (v370 >> 19) - 430675100;
      LODWORD(v615.count[0]) = v366;
    }

    if (v363 > 1)
    {
      if (v363 == 2)
      {
        LOWORD(v615.count[1]) = *v368;
      }

      else
      {
        v371 = *v368;
        BYTE2(v615.count[1]) = v368[2];
        LOWORD(v615.count[1]) = v371;
      }
    }

    else if (v363)
    {
      LOBYTE(v615.count[1]) = *v368;
    }

    BYTE3(v615.count[1]) = v363;
    goto LABEL_390;
  }

  if (!v614)
  {
    v352 = [MEMORY[0x1E696AAA8] currentHandler];
    v353 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"}];
    [v352 handleFailureInFunction:v353 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

    goto LABEL_391;
  }

  if (v614 != 1000)
  {
    goto LABEL_391;
  }

  v320 = HIBYTE(v615.hash[2]);
  v321 = v615.hash[2] & 0xFFFFFFFFFFFFFFLL;
  v322 = HIBYTE(v615.hash[2]) & 7;
  if (!v322)
  {
    goto LABEL_337;
  }

  v323 = 8 - v322;
  v324 = v318 - (8 - v322);
  if (v318 >= 8 - v322)
  {
    v325 = 8 * v322;
    v326 = v317;
    v327 = v615.hash[2] & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v328 = *v326++;
      v327 |= v328 << v325;
      v325 += 8;
    }

    while (v325 != 64);
    v329 = (v615.count[0] + v615.count[1]) ^ __ROR8__(v615.count[1], 51);
    v330 = v615.hash[0] + (v615.hash[1] ^ v327);
    v331 = __ROR8__(v615.hash[1] ^ v327, 48);
    v332 = (v330 ^ v331) + __ROR8__(v615.count[0] + v615.count[1], 32);
    v333 = v332 ^ __ROR8__(v330 ^ v331, 43);
    v334 = v330 + v329;
    v615.hash[0] = __ROR8__(v334, 32);
    v615.hash[1] = v333;
    v615.count[0] = v332 ^ v327;
    v615.count[1] = v334 ^ __ROR8__(v329, 47);
    v317 += v323;
    v615.hash[2] = (v323 + v320) << 56;
    v319 = v324;
LABEL_337:
    if (v319 >= 8)
    {
      v335 = v615.count[0];
      v338 = v615.hash[0];
      v336 = v615.count[1];
      v337 = v615.hash[1];
      do
      {
        v339 = *v317;
        v317 += 8;
        v340 = v337 ^ v339;
        v341 = v335 + v336;
        v342 = v341 ^ __ROR8__(v336, 51);
        v343 = v338 + v340;
        v344 = __ROR8__(v340, 48);
        v345 = (v343 ^ v344) + __ROR8__(v341, 32);
        v337 = v345 ^ __ROR8__(v343 ^ v344, 43);
        v346 = v343 + v342;
        v336 = v346 ^ __ROR8__(v342, 47);
        v338 = __ROR8__(v346, 32);
        v615.hash[0] = v338;
        v615.hash[1] = v337;
        v335 = v345 ^ v339;
        v615.count[0] = v335;
        v615.count[1] = v336;
        v319 -= 8;
        v320 += 8;
      }

      while (v319 > 7);
    }

    v322 = 0;
  }

  if (v319)
  {
    v347 = 0;
    v348 = 0;
    v349 = v319;
    do
    {
      v350 = *v317++;
      v348 |= v350 << v347;
      v347 += 8;
      --v349;
    }

    while (v349);
    if (v322)
    {
      v351 = (v348 << (8 * v322)) | ((v319 + v320) << 56) | v321;
    }

    else
    {
      v351 = v348 | ((v319 + v320) << 56);
    }
  }

  else
  {
    if (v322)
    {
      goto LABEL_391;
    }

    v351 = v320 << 56;
  }

  v615.hash[2] = v351;
LABEL_391:

  v372 = self->_lastName;
  v373 = [(NSString *)v372 UTF8String];
  v374 = [(NSString *)v372 length];
  v375 = v374;
  if (v614 > 3000)
  {
    if (v614 <= 4000)
    {
      if (v614 == 3001)
      {
        _MSV_XXH_XXH64_update(&v615, v373, v374);
      }

      else if (v614 == 4000)
      {
        CC_MD5_Update(&v615, v373, v374);
      }
    }

    else
    {
      switch(v614)
      {
        case 4001:
          CC_SHA1_Update(&v615, v373, v374);
          break;
        case 4256:
          CC_SHA256_Update(&v615, v373, v374);
          break;
        case 4512:
          CC_SHA512_Update(&v615, v373, v374);
          break;
      }
    }

    goto LABEL_459;
  }

  if (v614 > 1999)
  {
    if (v614 != 2000)
    {
      if (v614 == 3000)
      {
        _MSV_XXH_XXH32_update_17739(&v615, v373, v374);
      }

      goto LABEL_459;
    }

    v410 = v374 + BYTE3(v615.count[1]);
    if (v410 < 4)
    {
      v411 = &v615.hash[-1] + BYTE3(v615.count[1]);
      v412 = (v410 - BYTE3(v615.count[1]));
      if (v412 <= 1)
      {
        if (v410 == BYTE3(v615.count[1]))
        {
LABEL_458:
          HIDWORD(v615.count[0]) += v375;
          goto LABEL_459;
        }

        if (v412 == 1)
        {
          *v411 = *v373;
          goto LABEL_458;
        }

LABEL_442:
        memcpy(v411, v373, (v410 - BYTE3(v615.count[1])));
        goto LABEL_458;
      }

      if (v412 == 2)
      {
        v417 = *v373;
      }

      else
      {
        if (v412 != 3)
        {
          goto LABEL_442;
        }

        v417 = *v373;
        v411[2] = v373[2];
      }

      *v411 = v417;
      goto LABEL_458;
    }

    LOBYTE(v413) = 0;
    v414 = v410 & 0xFFFFFFFFFFFFFFFCLL;
    if (BYTE3(v615.count[1]) > 1u)
    {
      if (BYTE3(v615.count[1]) != 2)
      {
        LOBYTE(v415) = 0;
        LOBYTE(v416) = 0;
        v418 = 0;
        if (BYTE3(v615.count[1]) == 3)
        {
          LOBYTE(v415) = v615.count[1];
          v413 = HIBYTE(LOWORD(v615.count[1]));
          LOBYTE(v416) = BYTE2(v615.count[1]);
          v418 = *v373;
        }

        goto LABEL_448;
      }

      LOBYTE(v415) = v615.count[1];
      v413 = HIBYTE(LOWORD(v615.count[1]));
      v416 = *v373;
    }

    else
    {
      if (!BYTE3(v615.count[1]))
      {
        v415 = *v373;
        v413 = *v373 >> 8;
        v416 = HIWORD(*v373);
        v418 = HIBYTE(*v373);
        goto LABEL_448;
      }

      LOBYTE(v415) = v615.count[1];
      LOBYTE(v413) = *v373;
      v416 = *(v373 + 1);
    }

    v418 = v416 >> 8;
LABEL_448:
    v419 = v410 & 3;
    v420 = (v416 << 16) | (v418 << 24) | v415 | (v413 << 8);
    HIDWORD(v421) = (461845907 * ((380141568 * v420) | ((-862048943 * v420) >> 17))) ^ LODWORD(v615.count[0]);
    LODWORD(v421) = HIDWORD(v421);
    v422 = 5 * (v421 >> 19) - 430675100;
    LODWORD(v615.count[0]) = v422;
    v423 = &v373[-BYTE3(v615.count[1]) + 4];
    v424 = &v373[v414 - BYTE3(v615.count[1])];
    while (v423 < v424)
    {
      v425 = *v423;
      v423 += 4;
      HIDWORD(v426) = (461845907 * ((380141568 * v425) | ((-862048943 * v425) >> 17))) ^ v422;
      LODWORD(v426) = HIDWORD(v426);
      v422 = 5 * (v426 >> 19) - 430675100;
      LODWORD(v615.count[0]) = v422;
    }

    if (v419 > 1)
    {
      if (v419 == 2)
      {
        LOWORD(v615.count[1]) = *v424;
      }

      else
      {
        v427 = *v424;
        BYTE2(v615.count[1]) = v424[2];
        LOWORD(v615.count[1]) = v427;
      }
    }

    else if (v419)
    {
      LOBYTE(v615.count[1]) = *v424;
    }

    BYTE3(v615.count[1]) = v419;
    goto LABEL_458;
  }

  if (!v614)
  {
    v408 = [MEMORY[0x1E696AAA8] currentHandler];
    v409 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"}];
    [v408 handleFailureInFunction:v409 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

    goto LABEL_459;
  }

  if (v614 != 1000)
  {
    goto LABEL_459;
  }

  v376 = HIBYTE(v615.hash[2]);
  v377 = v615.hash[2] & 0xFFFFFFFFFFFFFFLL;
  v378 = HIBYTE(v615.hash[2]) & 7;
  if (!v378)
  {
    goto LABEL_405;
  }

  v379 = 8 - v378;
  v380 = v374 - (8 - v378);
  if (v374 >= 8 - v378)
  {
    v381 = 8 * v378;
    v382 = v373;
    v383 = v615.hash[2] & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v384 = *v382++;
      v383 |= v384 << v381;
      v381 += 8;
    }

    while (v381 != 64);
    v385 = (v615.count[0] + v615.count[1]) ^ __ROR8__(v615.count[1], 51);
    v386 = v615.hash[0] + (v615.hash[1] ^ v383);
    v387 = __ROR8__(v615.hash[1] ^ v383, 48);
    v388 = (v386 ^ v387) + __ROR8__(v615.count[0] + v615.count[1], 32);
    v389 = v388 ^ __ROR8__(v386 ^ v387, 43);
    v390 = v386 + v385;
    v615.hash[0] = __ROR8__(v390, 32);
    v615.hash[1] = v389;
    v615.count[0] = v388 ^ v383;
    v615.count[1] = v390 ^ __ROR8__(v385, 47);
    v373 += v379;
    v615.hash[2] = (v379 + v376) << 56;
    v375 = v380;
LABEL_405:
    if (v375 >= 8)
    {
      v391 = v615.count[0];
      v394 = v615.hash[0];
      v392 = v615.count[1];
      v393 = v615.hash[1];
      do
      {
        v395 = *v373;
        v373 += 8;
        v396 = v393 ^ v395;
        v397 = v391 + v392;
        v398 = v397 ^ __ROR8__(v392, 51);
        v399 = v394 + v396;
        v400 = __ROR8__(v396, 48);
        v401 = (v399 ^ v400) + __ROR8__(v397, 32);
        v393 = v401 ^ __ROR8__(v399 ^ v400, 43);
        v402 = v399 + v398;
        v392 = v402 ^ __ROR8__(v398, 47);
        v394 = __ROR8__(v402, 32);
        v615.hash[0] = v394;
        v615.hash[1] = v393;
        v391 = v401 ^ v395;
        v615.count[0] = v391;
        v615.count[1] = v392;
        v375 -= 8;
        v376 += 8;
      }

      while (v375 > 7);
    }

    v378 = 0;
  }

  if (v375)
  {
    v403 = 0;
    v404 = 0;
    v405 = v375;
    do
    {
      v406 = *v373++;
      v404 |= v406 << v403;
      v403 += 8;
      --v405;
    }

    while (v405);
    if (v378)
    {
      v407 = (v404 << (8 * v378)) | ((v375 + v376) << 56) | v377;
    }

    else
    {
      v407 = v404 | ((v375 + v376) << 56);
    }
  }

  else
  {
    if (v378)
    {
      goto LABEL_459;
    }

    v407 = v376 << 56;
  }

  v615.hash[2] = v407;
LABEL_459:

  v428 = self->_username;
  v429 = [(NSString *)v428 UTF8String];
  v430 = [(NSString *)v428 length];
  v431 = v430;
  if (v614 > 3000)
  {
    if (v614 <= 4000)
    {
      if (v614 == 3001)
      {
        _MSV_XXH_XXH64_update(&v615, v429, v430);
      }

      else if (v614 == 4000)
      {
        CC_MD5_Update(&v615, v429, v430);
      }
    }

    else
    {
      switch(v614)
      {
        case 4001:
          CC_SHA1_Update(&v615, v429, v430);
          break;
        case 4256:
          CC_SHA256_Update(&v615, v429, v430);
          break;
        case 4512:
          CC_SHA512_Update(&v615, v429, v430);
          break;
      }
    }

    goto LABEL_527;
  }

  if (v614 > 1999)
  {
    if (v614 != 2000)
    {
      if (v614 == 3000)
      {
        _MSV_XXH_XXH32_update_17739(&v615, v429, v430);
      }

      goto LABEL_527;
    }

    v466 = v430 + BYTE3(v615.count[1]);
    if (v466 < 4)
    {
      v467 = &v615.hash[-1] + BYTE3(v615.count[1]);
      v468 = (v466 - BYTE3(v615.count[1]));
      if (v468 <= 1)
      {
        if (v466 == BYTE3(v615.count[1]))
        {
LABEL_526:
          HIDWORD(v615.count[0]) += v431;
          goto LABEL_527;
        }

        if (v468 == 1)
        {
          *v467 = *v429;
          goto LABEL_526;
        }

LABEL_510:
        memcpy(v467, v429, (v466 - BYTE3(v615.count[1])));
        goto LABEL_526;
      }

      if (v468 == 2)
      {
        v473 = *v429;
      }

      else
      {
        if (v468 != 3)
        {
          goto LABEL_510;
        }

        v473 = *v429;
        v467[2] = v429[2];
      }

      *v467 = v473;
      goto LABEL_526;
    }

    LOBYTE(v469) = 0;
    v470 = v466 & 0xFFFFFFFFFFFFFFFCLL;
    if (BYTE3(v615.count[1]) > 1u)
    {
      if (BYTE3(v615.count[1]) != 2)
      {
        LOBYTE(v471) = 0;
        LOBYTE(v472) = 0;
        v474 = 0;
        if (BYTE3(v615.count[1]) == 3)
        {
          LOBYTE(v471) = v615.count[1];
          v469 = HIBYTE(LOWORD(v615.count[1]));
          LOBYTE(v472) = BYTE2(v615.count[1]);
          v474 = *v429;
        }

        goto LABEL_516;
      }

      LOBYTE(v471) = v615.count[1];
      v469 = HIBYTE(LOWORD(v615.count[1]));
      v472 = *v429;
    }

    else
    {
      if (!BYTE3(v615.count[1]))
      {
        v471 = *v429;
        v469 = *v429 >> 8;
        v472 = HIWORD(*v429);
        v474 = HIBYTE(*v429);
        goto LABEL_516;
      }

      LOBYTE(v471) = v615.count[1];
      LOBYTE(v469) = *v429;
      v472 = *(v429 + 1);
    }

    v474 = v472 >> 8;
LABEL_516:
    v475 = v466 & 3;
    v476 = (v472 << 16) | (v474 << 24) | v471 | (v469 << 8);
    HIDWORD(v477) = (461845907 * ((380141568 * v476) | ((-862048943 * v476) >> 17))) ^ LODWORD(v615.count[0]);
    LODWORD(v477) = HIDWORD(v477);
    v478 = 5 * (v477 >> 19) - 430675100;
    LODWORD(v615.count[0]) = v478;
    v479 = &v429[-BYTE3(v615.count[1]) + 4];
    v480 = &v429[v470 - BYTE3(v615.count[1])];
    while (v479 < v480)
    {
      v481 = *v479;
      v479 += 4;
      HIDWORD(v482) = (461845907 * ((380141568 * v481) | ((-862048943 * v481) >> 17))) ^ v478;
      LODWORD(v482) = HIDWORD(v482);
      v478 = 5 * (v482 >> 19) - 430675100;
      LODWORD(v615.count[0]) = v478;
    }

    if (v475 > 1)
    {
      if (v475 == 2)
      {
        LOWORD(v615.count[1]) = *v480;
      }

      else
      {
        v483 = *v480;
        BYTE2(v615.count[1]) = v480[2];
        LOWORD(v615.count[1]) = v483;
      }
    }

    else if (v475)
    {
      LOBYTE(v615.count[1]) = *v480;
    }

    BYTE3(v615.count[1]) = v475;
    goto LABEL_526;
  }

  if (!v614)
  {
    v464 = [MEMORY[0x1E696AAA8] currentHandler];
    v465 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"}];
    [v464 handleFailureInFunction:v465 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

    goto LABEL_527;
  }

  if (v614 != 1000)
  {
    goto LABEL_527;
  }

  v432 = HIBYTE(v615.hash[2]);
  v433 = v615.hash[2] & 0xFFFFFFFFFFFFFFLL;
  v434 = HIBYTE(v615.hash[2]) & 7;
  if (!v434)
  {
    goto LABEL_473;
  }

  v435 = 8 - v434;
  v436 = v430 - (8 - v434);
  if (v430 >= 8 - v434)
  {
    v437 = 8 * v434;
    v438 = v429;
    v439 = v615.hash[2] & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v440 = *v438++;
      v439 |= v440 << v437;
      v437 += 8;
    }

    while (v437 != 64);
    v441 = (v615.count[0] + v615.count[1]) ^ __ROR8__(v615.count[1], 51);
    v442 = v615.hash[0] + (v615.hash[1] ^ v439);
    v443 = __ROR8__(v615.hash[1] ^ v439, 48);
    v444 = (v442 ^ v443) + __ROR8__(v615.count[0] + v615.count[1], 32);
    v445 = v444 ^ __ROR8__(v442 ^ v443, 43);
    v446 = v442 + v441;
    v615.hash[0] = __ROR8__(v446, 32);
    v615.hash[1] = v445;
    v615.count[0] = v444 ^ v439;
    v615.count[1] = v446 ^ __ROR8__(v441, 47);
    v429 += v435;
    v615.hash[2] = (v435 + v432) << 56;
    v431 = v436;
LABEL_473:
    if (v431 >= 8)
    {
      v447 = v615.count[0];
      v450 = v615.hash[0];
      v448 = v615.count[1];
      v449 = v615.hash[1];
      do
      {
        v451 = *v429;
        v429 += 8;
        v452 = v449 ^ v451;
        v453 = v447 + v448;
        v454 = v453 ^ __ROR8__(v448, 51);
        v455 = v450 + v452;
        v456 = __ROR8__(v452, 48);
        v457 = (v455 ^ v456) + __ROR8__(v453, 32);
        v449 = v457 ^ __ROR8__(v455 ^ v456, 43);
        v458 = v455 + v454;
        v448 = v458 ^ __ROR8__(v454, 47);
        v450 = __ROR8__(v458, 32);
        v615.hash[0] = v450;
        v615.hash[1] = v449;
        v447 = v457 ^ v451;
        v615.count[0] = v447;
        v615.count[1] = v448;
        v431 -= 8;
        v432 += 8;
      }

      while (v431 > 7);
    }

    v434 = 0;
  }

  if (v431)
  {
    v459 = 0;
    v460 = 0;
    v461 = v431;
    do
    {
      v462 = *v429++;
      v460 |= v462 << v459;
      v459 += 8;
      --v461;
    }

    while (v461);
    if (v434)
    {
      v463 = (v460 << (8 * v434)) | ((v431 + v432) << 56) | v433;
    }

    else
    {
      v463 = v460 | ((v431 + v432) << 56);
    }
  }

  else
  {
    if (v434)
    {
      goto LABEL_527;
    }

    v463 = v432 << 56;
  }

  v615.hash[2] = v463;
LABEL_527:

  v484 = self->_music;
  v485 = [(ICMusicUserState *)v484 hash];
  *&data[0] = v485;
  if (v614 <= 3000)
  {
    if (v614 > 1999)
    {
      if (v614 == 2000)
      {
        LOBYTE(v507) = 0;
        if (BYTE3(v615.count[1]) > 1u)
        {
          if (BYTE3(v615.count[1]) == 2)
          {
            v510 = v485 >> 8;
            v508 = v615.count[1];
            LODWORD(v507) = HIBYTE(LOWORD(v615.count[1]));
            LOBYTE(v509) = v485;
          }

          else
          {
            v508 = 0;
            LOBYTE(v509) = 0;
            LODWORD(v510) = 0;
            if (BYTE3(v615.count[1]) == 3)
            {
              v508 = v615.count[1];
              LODWORD(v507) = HIBYTE(LOWORD(v615.count[1]));
              LOBYTE(v509) = BYTE2(v615.count[1]);
              LODWORD(v510) = v485;
            }
          }
        }

        else if (BYTE3(v615.count[1]))
        {
          v508 = 0;
          LOBYTE(v509) = 0;
          LODWORD(v510) = 0;
          if (BYTE3(v615.count[1]) == 1)
          {
            v509 = v485 >> 8;
            v508 = v615.count[1];
            v510 = v485 >> 16;
            LOBYTE(v507) = v485;
          }
        }

        else
        {
          v507 = v485 >> 8;
          v509 = v485 >> 16;
          v508 = v485;
          v510 = v485 >> 24;
        }

        v518 = (v509 << 16) | (v510 << 24) | v508 | (v507 << 8);
        HIDWORD(v519) = (461845907 * ((380141568 * v518) | ((-862048943 * v518) >> 17))) ^ LODWORD(v615.count[0]);
        LODWORD(v519) = HIDWORD(v519);
        v520 = 5 * (v519 >> 19) - 430675100;
        LODWORD(v615.count[0]) = v520;
        v521 = data - BYTE3(v615.count[1]) + 4;
        v522 = data + ((BYTE3(v615.count[1]) + 8) & 0x1FC) - BYTE3(v615.count[1]);
        if (v521 < v522)
        {
          do
          {
            v523 = *v521;
            v521 += 4;
            HIDWORD(v524) = (461845907 * ((380141568 * v523) | ((-862048943 * v523) >> 17))) ^ v520;
            LODWORD(v524) = HIDWORD(v524);
            v520 = 5 * (v524 >> 19) - 430675100;
          }

          while (v521 < v522);
          LODWORD(v615.count[0]) = v520;
        }

        if ((BYTE3(v615.count[1]) & 3u) > 1uLL)
        {
          LOWORD(v615.count[1]) = *v522;
          if ((BYTE3(v615.count[1]) & 3) != 2)
          {
            BYTE2(v615.count[1]) = v522[2];
          }
        }

        else if ((v615.count[1] & 0x3000000) != 0)
        {
          LOBYTE(v615.count[1]) = *v522;
        }

        BYTE3(v615.count[1]) &= 3u;
        HIDWORD(v615.count[0]) += 8;
      }

      else if (v614 == 3000)
      {
        _MSV_XXH_XXH32_update_17739(&v615, data, 8uLL);
      }
    }

    else if (v614)
    {
      if (v614 == 1000)
      {
        v486 = v615.hash[2];
        if ((v615.hash[2] & 0x400000000000000) != 0)
        {
          v511 = v615.hash[2] & 0xFFFFFFFFFFFFFFLL | (v485 << 32);
          v512 = (v615.count[0] + v615.count[1]) ^ __ROR8__(v615.count[1], 51);
          v513 = v615.hash[0] + (v615.hash[1] ^ v511);
          v514 = __ROR8__(v615.hash[1] ^ v511, 48);
          v515 = (v513 ^ v514) + __ROR8__(v615.count[0] + v615.count[1], 32);
          v516 = v515 ^ __ROR8__(v513 ^ v514, 43);
          v517 = v513 + v512;
          v615.hash[0] = __ROR8__(v517, 32);
          v615.hash[1] = v516;
          v615.count[0] = v515 ^ v511;
          v615.count[1] = v517 ^ __ROR8__(v512, 47);
          v504 = (v615.hash[2] & 0xFF00000000000000) + HIDWORD(v485) + 0x800000000000000;
        }

        else
        {
          v487 = v615.count[0];
          v489 = v615.hash[0];
          v488 = v615.count[1];
          v490 = v615.hash[1];
          if ((v615.hash[2] & 0x3FFFFFFFFFFFFFFLL) != 0)
          {
            v491 = (v615.count[0] + v615.count[1]) ^ __ROR8__(v615.count[1], 51);
            v492 = v615.hash[0] + (v615.hash[1] ^ v615.hash[2] & 0xFFFFFFFFFFFFFFLL);
            v493 = __ROR8__(v615.hash[1] ^ v615.hash[2] & 0xFFFFFFFFFFFFFFLL, 48);
            v494 = (v492 ^ v493) + __ROR8__(v615.count[0] + v615.count[1], 32);
            v490 = v494 ^ __ROR8__(v492 ^ v493, 43);
            v495 = v492 + v491;
            v488 = v495 ^ __ROR8__(v491, 47);
            v489 = __ROR8__(v495, 32);
            v487 = v494 ^ v615.hash[2] & 0xFFFFFFFFFFFFFFLL;
            v486 = v615.hash[2] & 0xFF00000000000000;
          }

          v496 = v490 ^ v485;
          v497 = v487 + v488;
          v498 = (v487 + v488) ^ __ROR8__(v488, 51);
          v499 = v489 + v496;
          v500 = __ROR8__(v496, 48);
          v501 = (v499 ^ v500) + __ROR8__(v497, 32);
          v502 = v501 ^ __ROR8__(v499 ^ v500, 43);
          v503 = v499 + v498;
          v615.hash[0] = __ROR8__(v503, 32);
          v615.hash[1] = v502;
          v615.count[0] = v501 ^ v485;
          v615.count[1] = v503 ^ __ROR8__(v498, 47);
          v504 = v486 + 0x800000000000000;
        }

        v615.hash[2] = v504;
      }
    }

    else
    {
      v505 = [MEMORY[0x1E696AAA8] currentHandler];
      v506 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppend64(MSVHasher * _Nonnull, uint64_t)"}];
      [v505 handleFailureInFunction:v506 file:@"MSVHasher+Algorithms.h" lineNumber:227 description:@"Cannot append to unknown hasher algorithm"];
    }
  }

  else if (v614 <= 4000)
  {
    if (v614 == 3001)
    {
      _MSV_XXH_XXH64_update(&v615, data, 8uLL);
    }

    else if (v614 == 4000)
    {
      CC_MD5_Update(&v615, data, 4u);
    }
  }

  else
  {
    switch(v614)
    {
      case 4001:
        CC_SHA1_Update(&v615, data, 4u);
        break;
      case 4256:
        CC_SHA256_Update(&v615, data, 4u);
        break;
      case 4512:
        CC_SHA512_Update(&v615, data, 4u);
        break;
    }
  }

  v525 = MEMORY[0x1E696AD98];
  memset(&v616[8], 0, 64);
  *v616 = v614;
  if (v614 <= 3000)
  {
    if (v614 <= 1999)
    {
      if (!v614)
      {
        v559 = [MEMORY[0x1E696AAA8] currentHandler];
        v560 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
        [v559 handleFailureInFunction:v560 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];

        goto LABEL_617;
      }

      if (v614 != 1000)
      {
        goto LABEL_617;
      }

      v526 = (v615.count[0] + v615.count[1]) ^ __ROR8__(v615.count[1], 51);
      v527 = v615.hash[0] + (v615.hash[1] ^ v615.hash[2]);
      v528 = __ROR8__(v615.hash[1] ^ v615.hash[2], 48);
      v529 = (v527 ^ v528) + __ROR8__(v615.count[0] + v615.count[1], 32);
      v530 = v529 ^ __ROR8__(v527 ^ v528, 43);
      v531 = v527 + v526;
      v532 = v531 ^ __ROR8__(v526, 47);
      v533 = (v529 ^ v615.hash[2]) + v532;
      v534 = v533 ^ __ROR8__(v532, 51);
      v535 = (__ROR8__(v531, 32) ^ 0xFFLL) + v530;
      v536 = __ROR8__(v530, 48);
      v537 = __ROR8__(v533, 32) + (v535 ^ v536);
      v538 = v537 ^ __ROR8__(v535 ^ v536, 43);
      v539 = v534 + v535;
      v540 = v539 ^ __ROR8__(v534, 47);
      v541 = v540 + v537;
      v542 = v541 ^ __ROR8__(v540, 51);
      v543 = __ROR8__(v539, 32) + v538;
      v544 = __ROR8__(v538, 48);
      v545 = __ROR8__(v541, 32) + (v543 ^ v544);
      v546 = v545 ^ __ROR8__(v543 ^ v544, 43);
      v547 = v542 + v543;
      v548 = v547 ^ __ROR8__(v542, 47);
      v549 = v548 + v545;
      v550 = v549 ^ __ROR8__(v548, 51);
      v551 = __ROR8__(v547, 32) + v546;
      v552 = __ROR8__(v546, 48);
      v553 = __ROR8__(v549, 32) + (v551 ^ v552);
      v554 = v553 ^ __ROR8__(v551 ^ v552, 43);
      v555 = v550 + v551;
      v615.count[0] = v553;
      v615.count[1] = v555 ^ __ROR8__(v550, 47);
      v615.hash[0] = __ROR8__(v555, 32);
      v615.hash[1] = v554;
      v556 = v615.count[1] ^ v553 ^ v615.hash[0] ^ v554;
      goto LABEL_604;
    }

    if (v614 != 2000)
    {
      if (v614 != 3000)
      {
        goto LABEL_617;
      }

      v557 = &v615.hash[1];
      if (HIDWORD(v615.count[0]))
      {
        v558 = vaddvq_s32(vorrq_s8(vshlq_u32(*&v615.count[1], xmmword_1B4755590), vshlq_u32(*&v615.count[1], xmmword_1B4755580)));
      }

      else
      {
        v558 = LODWORD(v615.hash[0]) + 374761393;
      }

      v570 = LODWORD(v615.count[0]) + v558;
      v571 = v615.hash[3] & 0xF;
      if (v571 >= 4)
      {
        do
        {
          v572 = *v557;
          v557 = (v557 + 4);
          HIDWORD(v573) = v570 - 1028477379 * v572;
          LODWORD(v573) = HIDWORD(v573);
          v570 = 668265263 * (v573 >> 15);
          v571 -= 4;
        }

        while (v571 > 3);
      }

      for (; v571; --v571)
      {
        v574 = *v557;
        v557 = (v557 + 1);
        HIDWORD(v575) = v570 + 374761393 * v574;
        LODWORD(v575) = HIDWORD(v575);
        v570 = -1640531535 * (v575 >> 21);
      }

      v576 = -1028477379 * ((-2048144777 * (v570 ^ (v570 >> 15))) ^ ((-2048144777 * (v570 ^ (v570 >> 15))) >> 13));
      v577 = v576 ^ HIWORD(v576);
      goto LABEL_616;
    }

    switch(BYTE3(v615.count[1]))
    {
      case 1u:
        v561 = LOBYTE(v615.count[1]);
        break;
      case 2u:
        v561 = LOWORD(v615.count[1]);
        break;
      case 3u:
        v561 = LOWORD(v615.count[1]) | (BYTE2(v615.count[1]) << 16);
        break;
      default:
        v578 = v615.count[0];
        goto LABEL_615;
    }

    v578 = (461845907 * ((380141568 * v561) | ((-862048943 * v561) >> 17))) ^ LODWORD(v615.count[0]);
LABEL_615:
    v579 = -2048144789 * (v578 ^ HIDWORD(v615.count[0]) ^ ((v578 ^ HIDWORD(v615.count[0])) >> 16));
    v577 = (-1028477387 * (v579 ^ (v579 >> 13))) ^ ((-1028477387 * (v579 ^ (v579 >> 13))) >> 16);
    LODWORD(v615.count[0]) = v577;
LABEL_616:
    *&v616[8] = v577;
    goto LABEL_617;
  }

  if (v614 > 4000)
  {
    switch(v614)
    {
      case 4001:
        CC_SHA1_Final(&v616[8], &v615);
        break;
      case 4256:
        CC_SHA256_Final(&v616[8], &v615);
        break;
      case 4512:
        CC_SHA512_Final(&v616[8], &v615);
        break;
    }

    goto LABEL_617;
  }

  if (v614 == 3001)
  {
    if (v615.count[0] < 0x20)
    {
      v562 = v615.hash[1] + 0x27D4EB2F165667C5;
    }

    else
    {
      v562 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((__ROR8__(v615.hash[0], 57) + __ROR8__(v615.count[1], 63) + __ROR8__(v615.hash[1], 52) + __ROR8__(v615.hash[2], 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v615.count[1], 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v615.hash[0], 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v615.hash[1], 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v615.hash[2], 33)));
    }

    v563 = v562 + v615.count[0];
    v564 = &v615.hash[3];
    v565 = v615.count[0] & 0x1F;
    if (v565 >= 8)
    {
      do
      {
        v566 = *v564++;
        v563 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v566, 33)) ^ v563, 37);
        v565 -= 8;
      }

      while (v565 > 7);
    }

    if (v565 >= 4)
    {
      v567 = *v564;
      v564 = (v564 + 4);
      v563 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * v567) ^ v563, 41);
      v565 -= 4;
    }

    for (; v565; --v565)
    {
      v568 = *v564;
      v564 = (v564 + 1);
      v563 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v568) ^ v563, 53);
    }

    v569 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v563 ^ (v563 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v563 ^ (v563 >> 33))) >> 29));
    v556 = v569 ^ HIDWORD(v569);
LABEL_604:
    *&v616[8] = v556;
    goto LABEL_617;
  }

  if (v614 == 4000)
  {
    CC_MD5_Final(&v616[8], &v615);
  }

LABEL_617:
  data[0] = *v616;
  data[1] = *&v616[16];
  data[2] = *&v616[32];
  data[3] = *&v616[48];
  v618 = *&v616[64];
  if (*v616 > 3999)
  {
    if (*v616 > 4255)
    {
      if (*v616 == 4256)
      {
        v602 = data + 8;
        v603 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v604 = v603;
        for (i = 0; i != 64; i += 2)
        {
          v606 = *v602++;
          v607 = &v603[i];
          *v607 = MSVFastHexStringFromBytes_hexCharacters_41965[v606 >> 4];
          v607[1] = MSVFastHexStringFromBytes_hexCharacters_41965[v606 & 0xF];
        }

        v586 = objc_alloc(MEMORY[0x1E696AEC0]);
        v587 = v604;
        v588 = 64;
      }

      else
      {
        if (*v616 != 4512)
        {
          goto LABEL_647;
        }

        v590 = data + 8;
        v591 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v592 = v591;
        for (j = 0; j != 128; j += 2)
        {
          v594 = *v590++;
          v595 = &v591[j];
          *v595 = MSVFastHexStringFromBytes_hexCharacters_41965[v594 >> 4];
          v595[1] = MSVFastHexStringFromBytes_hexCharacters_41965[v594 & 0xF];
        }

        v586 = objc_alloc(MEMORY[0x1E696AEC0]);
        v587 = v592;
        v588 = 128;
      }
    }

    else if (*v616 == 4000)
    {
      v596 = data + 8;
      v597 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v598 = v597;
      for (k = 0; k != 32; k += 2)
      {
        v600 = *v596++;
        v601 = &v597[k];
        *v601 = MSVFastHexStringFromBytes_hexCharacters_41965[v600 >> 4];
        v601[1] = MSVFastHexStringFromBytes_hexCharacters_41965[v600 & 0xF];
      }

      v586 = objc_alloc(MEMORY[0x1E696AEC0]);
      v587 = v598;
      v588 = 32;
    }

    else
    {
      if (*v616 != 4001)
      {
        goto LABEL_647;
      }

      v580 = data + 8;
      v581 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v582 = v581;
      for (m = 0; m != 40; m += 2)
      {
        v584 = *v580++;
        v585 = &v581[m];
        *v585 = MSVFastHexStringFromBytes_hexCharacters_41965[v584 >> 4];
        v585[1] = MSVFastHexStringFromBytes_hexCharacters_41965[v584 & 0xF];
      }

      v586 = objc_alloc(MEMORY[0x1E696AEC0]);
      v587 = v582;
      v588 = 40;
    }

    v608 = [v586 initWithBytesNoCopy:v587 length:v588 encoding:4 freeWhenDone:1];
    v589 = [v608 hash];

    goto LABEL_644;
  }

  if (*v616 <= 2999)
  {
    if (*v616 != 1000)
    {
      if (*v616 != 2000)
      {
        goto LABEL_647;
      }

LABEL_636:
      v589 = DWORD2(data[0]);
      goto LABEL_644;
    }

    goto LABEL_630;
  }

  if (*v616 == 3000)
  {
    goto LABEL_636;
  }

  if (*v616 == 3001)
  {
LABEL_630:
    v589 = *(&data[0] + 1);
    goto LABEL_644;
  }

LABEL_647:
  v612 = [MEMORY[0x1E696AAA8] currentHandler];
  v613 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSUInteger _MSVHashGetHash(MSVHash)"];
  [v612 handleFailureInFunction:v613 file:@"MSVHasher+Algorithms.h" lineNumber:301 description:@"Cannot obtain hash from unknown hasher algorithm"];

  v589 = 0;
LABEL_644:
  v609 = [v525 numberWithUnsignedInteger:v589];
  v610 = [v609 stringValue];

  return v610;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ICMediaUserState *)self identifier];
      v7 = [(ICMediaUserState *)v5 identifier];
      if ((v6 == v7 || [v6 isEqual:v7]) && (v8 = -[ICMediaUserState isActive](self, "isActive"), v8 == -[ICMediaUserState isActive](v5, "isActive")) && (v9 = -[ICMediaUserState isDefaultMediaUser](self, "isDefaultMediaUser"), v9 == -[ICMediaUserState isDefaultMediaUser](v5, "isDefaultMediaUser")))
      {
        v12 = [(ICMediaUserState *)self dsid];
        v13 = [(ICMediaUserState *)v5 dsid];
        if (v12 == v13 || [v12 isEqual:v13])
        {
          v14 = [(ICMediaUserState *)self alternateDSID];
          v15 = [(ICMediaUserState *)v5 alternateDSID];
          if (v14 == v15 || [v14 isEqual:v15])
          {
            v49 = v14;
            v16 = [(ICMediaUserState *)self iCloudPersonID];
            v17 = [(ICMediaUserState *)v5 iCloudPersonID];
            if (v16 == v17 || [v16 isEqual:v17])
            {
              v47 = v15;
              v48 = v17;
              v18 = [(ICMediaUserState *)self homeUserIDs];
              v19 = [(ICMediaUserState *)v5 homeUserIDs];
              if (v18 == v19 || [v18 isEqual:v19])
              {
                v45 = v12;
                v46 = v19;
                v20 = [(ICMediaUserState *)self storefrontIdentifier];
                v21 = [(ICMediaUserState *)v5 storefrontIdentifier];
                if (v20 == v21 || [v20 isEqual:v21])
                {
                  v43 = v13;
                  v44 = v21;
                  v22 = [(ICMediaUserState *)self firstName];
                  v23 = [(ICMediaUserState *)v5 firstName];
                  v42 = v22;
                  if (v22 == v23 || [v22 isEqual:v23])
                  {
                    v41 = v23;
                    v24 = [(ICMediaUserState *)self lastName];
                    v25 = [(ICMediaUserState *)v5 lastName];
                    v40 = v24;
                    if (v24 == v25 || [v24 isEqual:v25])
                    {
                      v39 = v25;
                      v26 = [(ICMediaUserState *)self username];
                      v27 = [(ICMediaUserState *)v5 username];
                      v38 = v26;
                      if (v26 == v27 || [v26 isEqual:v27])
                      {
                        v37 = v27;
                        v28 = [(ICMediaUserState *)self ageVerificationRequired];
                        if (v28 == [(ICMediaUserState *)v5 ageVerificationRequired])
                        {
                          v29 = [(ICMediaUserState *)self music];
                          v30 = [(ICMediaUserState *)v5 music];
                          if (v29 == v30 || [v29 isEqual:v30])
                          {
                            v31 = [(ICMediaUserState *)self tv];
                            v32 = [(ICMediaUserState *)v5 tv];
                            if (v31 == v32)
                            {
                              v35 = v31;
                              v10 = 1;
                            }

                            else
                            {
                              v33 = v32;
                              v34 = [v31 isEqual:v32];
                              v32 = v33;
                              v35 = v31;
                              v10 = v34;
                            }

                            v30 = v36;
                          }

                          else
                          {
                            v10 = 0;
                          }
                        }

                        else
                        {
                          v10 = 0;
                        }

                        v27 = v37;
                      }

                      else
                      {
                        v10 = 0;
                      }

                      v25 = v39;
                    }

                    else
                    {
                      v10 = 0;
                    }

                    v23 = v41;
                  }

                  else
                  {
                    v10 = 0;
                  }

                  v13 = v43;
                  v21 = v44;
                }

                else
                {
                  v10 = 0;
                }

                v12 = v45;
                v19 = v46;
              }

              else
              {
                v10 = 0;
              }

              v15 = v47;
              v17 = v48;
            }

            else
            {
              v10 = 0;
            }

            v14 = v49;
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(ICMediaUserState *)self firstName];
  v6 = [v3 stringWithFormat:@"<%@: %p> firstName=%@ isActive=%dl", v4, self, v5, -[ICMediaUserState isActive](self, "isActive")];

  return v6;
}

- (id)copyWithBlock:(id)a3
{
  v4 = a3;
  v5 = [ICMediaUserState alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__ICMediaUserState_copyWithBlock___block_invoke;
  v9[3] = &unk_1E7BF5F08;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [(ICMediaUserState *)v5 initWithBlock:v9];

  return v7;
}

void __34__ICMediaUserState_copyWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v30 = a2;
  v4 = [v3 copy];
  v5 = v30[2];
  v30[2] = v4;

  v6 = [*(*(a1 + 32) + 24) copy];
  v7 = v30[3];
  v30[3] = v6;

  *(v30 + 8) = *(*(a1 + 32) + 8);
  *(v30 + 9) = *(*(a1 + 32) + 9);
  v8 = [*(*(a1 + 32) + 32) copy];
  v9 = v30[4];
  v30[4] = v8;

  v10 = [*(*(a1 + 32) + 40) copy];
  v11 = v30[5];
  v30[5] = v10;

  v12 = [*(*(a1 + 32) + 48) copy];
  v13 = v30[6];
  v30[6] = v12;

  v14 = [*(*(a1 + 32) + 56) copy];
  v15 = v30[7];
  v30[7] = v14;

  v16 = [*(*(a1 + 32) + 64) copy];
  v17 = v30[8];
  v30[8] = v16;

  v18 = [*(*(a1 + 32) + 72) copy];
  v19 = v30[9];
  v30[9] = v18;

  v20 = [*(*(a1 + 32) + 80) copy];
  v21 = v30[10];
  v30[10] = v20;

  v22 = [*(*(a1 + 32) + 88) copy];
  v23 = v30[11];
  v30[11] = v22;

  v24 = [*(*(a1 + 32) + 96) copy];
  v25 = v30[12];
  v30[12] = v24;

  *(v30 + 10) = *(*(a1 + 32) + 10);
  v26 = [*(*(a1 + 32) + 104) copy];
  v27 = v30[13];
  v30[13] = v26;

  v28 = [*(*(a1 + 32) + 112) copy];
  v29 = v30[14];
  v30[14] = v28;

  (*(*(a1 + 40) + 16))();
}

- (ICMediaUserState)initWithBlock:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ICMediaUserState;
  v5 = [(ICMediaUserState *)&v7 init];
  if (v5)
  {
    v4[2](v4, v5);
    v5->_frozen = 1;
  }

  return v5;
}

@end