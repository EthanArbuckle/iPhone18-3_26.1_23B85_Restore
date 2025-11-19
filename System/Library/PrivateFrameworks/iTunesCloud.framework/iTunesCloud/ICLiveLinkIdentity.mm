@interface ICLiveLinkIdentity
+ (ICLiveLinkIdentity)identityWithIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (ICLiveLinkIdentity)initWithCoder:(id)a3;
- (id)_initWithBlock:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICLiveLinkIdentity

- (void)encodeWithCoder:(id)a3
{
  serverID = self->_serverID;
  v5 = a3;
  [v5 encodeInteger:serverID forKey:@"sid"];
  [v5 encodeObject:self->_identifier forKey:@"iid"];
  [v5 encodeObject:self->_externalIdentifier forKey:@"eid"];
  [v5 encodeObject:self->_nameComponents forKey:@"nc"];
  [v5 encodeObject:self->_imageURL forKey:@"iurl"];
}

- (ICLiveLinkIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ICLiveLinkIdentity *)self init];
  if (v5)
  {
    v5->_serverID = [v4 decodeIntegerForKey:@"sid"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iid"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eid"];
    externalIdentifier = v5->_externalIdentifier;
    v5->_externalIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nc"];
    nameComponents = v5->_nameComponents;
    v5->_nameComponents = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iurl"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v12;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = MSVHasherSharedSeed();
  v5 = ((v3 ^ 0x736F6D6570736575) + (v4 ^ 0x646F72616E646F6DLL)) ^ __ROR8__(v4 ^ 0x646F72616E646F6DLL, 51);
  serverID = self->_serverID;
  v7 = v4 ^ 0x7465646279746573 ^ serverID;
  v8 = (v3 ^ 0x6C7967656E657261) + v7;
  v9 = __ROR8__(v7, 48);
  v10 = (v8 ^ v9) + __ROR8__((v3 ^ 0x736F6D6570736575) + (v4 ^ 0x646F72616E646F6DLL), 32);
  v11 = v10 ^ __ROR8__(v8 ^ v9, 43);
  v12 = v8 + v5;
  v13 = v12 ^ __ROR8__(v5, 47);
  v14 = __ROR8__(v12, 32);
  v15 = v10 ^ serverID;
  v16 = [(NSUUID *)self->_identifier hash];
  v17 = (v15 + v13) ^ __ROR8__(v13, 51);
  v18 = v14 + (v11 ^ v16);
  v19 = __ROR8__(v11 ^ v16, 48);
  v20 = (v18 ^ v19) + __ROR8__(v15 + v13, 32);
  v82 = __ROR8__(v18 + v17, 32);
  v86 = v20 ^ __ROR8__(v18 ^ v19, 43);
  v21 = v20 ^ v16;
  v78 = (v18 + v17) ^ __ROR8__(v17, 47);
  v22 = self->_externalIdentifier;
  v23 = [(NSString *)v22 hash];
  v24 = (v21 + v78) ^ __ROR8__(v78, 51);
  v25 = v82 + (v86 ^ v23);
  v26 = __ROR8__(v86 ^ v23, 48);
  v27 = (v25 ^ v26) + __ROR8__(v21 + v78, 32);
  v28 = v27 ^ __ROR8__(v25 ^ v26, 43);
  v29 = v25 + v24;
  v83 = __ROR8__(v29, 32);
  v87 = v28;
  v75 = v27 ^ v23;
  v79 = v29 ^ __ROR8__(v24, 47);

  v30 = self->_nameComponents;
  v31 = [(NSPersonNameComponents *)v30 hash];
  v32 = (v75 + v79) ^ __ROR8__(v79, 51);
  v33 = v83 + (v87 ^ v31);
  v34 = __ROR8__(v87 ^ v31, 48);
  v35 = (v33 ^ v34) + __ROR8__(v75 + v79, 32);
  v36 = v35 ^ __ROR8__(v33 ^ v34, 43);
  v37 = v33 + v32;
  v84 = __ROR8__(v37, 32);
  v88 = v36;
  v76 = v35 ^ v31;
  v80 = v37 ^ __ROR8__(v32, 47);

  v38 = self->_imageURL;
  v39 = [(NSURL *)v38 hash];
  v40 = (v76 + v80) ^ __ROR8__(v80, 51);
  v41 = v84 + (v88 ^ v39);
  v42 = __ROR8__(v88 ^ v39, 48);
  v43 = (v41 ^ v42) + __ROR8__(v76 + v80, 32);
  v44 = v43 ^ __ROR8__(v41 ^ v42, 43);
  v45 = v41 + v40;
  v85 = __ROR8__(v45, 32);
  v89 = v44;
  v77 = v43 ^ v39;
  v81 = v45 ^ __ROR8__(v40, 47);

  v46 = (v77 + v81) ^ __ROR8__(v81, 51);
  v47 = v85 + (v89 ^ 0x2800000000000000);
  v48 = __ROR8__(v89 ^ 0x2800000000000000, 48);
  v49 = (v47 ^ v48) + __ROR8__(v77 + v81, 32);
  v50 = v49 ^ __ROR8__(v47 ^ v48, 43);
  v51 = v47 + v46;
  v52 = v51 ^ __ROR8__(v46, 47);
  v53 = (v49 ^ 0x2800000000000000) + v52;
  v54 = v53 ^ __ROR8__(v52, 51);
  v55 = (__ROR8__(v51, 32) ^ 0xFFLL) + v50;
  v56 = __ROR8__(v50, 48);
  v57 = __ROR8__(v53, 32) + (v55 ^ v56);
  v58 = v57 ^ __ROR8__(v55 ^ v56, 43);
  v59 = v54 + v55;
  v60 = v59 ^ __ROR8__(v54, 47);
  v61 = v60 + v57;
  v62 = v61 ^ __ROR8__(v60, 51);
  v63 = __ROR8__(v59, 32) + v58;
  v64 = __ROR8__(v58, 48);
  v65 = __ROR8__(v61, 32) + (v63 ^ v64);
  v66 = v65 ^ __ROR8__(v63 ^ v64, 43);
  v67 = v62 + v63;
  v68 = v67 ^ __ROR8__(v62, 47);
  v69 = v68 + v65;
  v70 = v69 ^ __ROR8__(v68, 51);
  v71 = __ROR8__(v67, 32) + v66;
  v72 = __ROR8__(v66, 48);
  v73 = __ROR8__(v69, 32) + (v71 ^ v72);
  return (v70 + v71) ^ __ROR8__(v70, 47) ^ v73 ^ __ROR8__(v70 + v71, 32) ^ v73 ^ __ROR8__(v71 ^ v72, 43);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5;
      if (self->_serverID == v5->_serverID)
      {
        identifier = v5->_identifier;
        v8 = self->_identifier;
        v9 = v8;
        if (v8 == identifier)
        {
        }

        else
        {
          v10 = [(NSUUID *)v8 isEqual:identifier];

          if (!v10)
          {
            goto LABEL_16;
          }
        }

        externalIdentifier = v6->_externalIdentifier;
        v13 = self->_externalIdentifier;
        v14 = v13;
        if (v13 == externalIdentifier)
        {
        }

        else
        {
          v15 = [(NSString *)v13 isEqual:externalIdentifier];

          if (!v15)
          {
            goto LABEL_16;
          }
        }

        nameComponents = v6->_nameComponents;
        v17 = self->_nameComponents;
        v18 = v17;
        if (v17 == nameComponents)
        {
        }

        else
        {
          v19 = [(NSPersonNameComponents *)v17 isEqual:nameComponents];

          if (!v19)
          {
            goto LABEL_16;
          }
        }

        imageURL = self->_imageURL;
        v22 = v6->_imageURL;
        v23 = imageURL;
        v24 = v23;
        if (v23 == v22)
        {
          v11 = 1;
        }

        else
        {
          v11 = [(NSURL *)v23 isEqual:v22];
        }

        goto LABEL_17;
      }

LABEL_16:
      v11 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v11 = 0;
  }

LABEL_18:

  return v11;
}

- (id)_initWithBlock:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ICLiveLinkIdentity;
  v5 = [(ICLiveLinkIdentity *)&v7 init];
  if (v5)
  {
    v4[2](v4, v5);
  }

  return v5;
}

+ (ICLiveLinkIdentity)identityWithIdentifier:(id)a3
{
  v3 = objc_alloc_init(ICLiveLinkIdentity);

  return v3;
}

@end