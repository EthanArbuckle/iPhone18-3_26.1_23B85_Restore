@interface ICUserIdentityContext
- (BOOL)isEqual:(id)a3;
- (ICUserIdentityContext)initWithCoder:(id)a3;
- (ICUserIdentityContext)initWithIdentity:(id)a3 identityStore:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICUserIdentityContext

- (unint64_t)hash
{
  v3 = MSVHasherSharedSeed();
  v5 = v4;
  v6 = v3 ^ 0x736F6D6570736575;
  v7 = v4 ^ 0x646F72616E646F6DLL;
  v8 = v3 ^ 0x6C7967656E657261;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v10 hash];
  v12 = v5 ^ 0x7465646279746573 ^ v11;
  v13 = (v6 + v7) ^ __ROR8__(v7, 51);
  v14 = v8 + v12;
  v15 = (v8 + v12) ^ __ROR8__(v12, 48);
  v16 = v15 + __ROR8__(v6 + v7, 32);
  v67 = __ROR8__(v14 + v13, 32);
  v70 = v16 ^ __ROR8__(v15, 43);
  v17 = v16 ^ v11;
  v64 = (v14 + v13) ^ __ROR8__(v13, 47);

  v18 = [(ICUserIdentity *)self->_identity hashInStore:self->_identityStore];
  v19 = (v17 + v64) ^ __ROR8__(v64, 51);
  v20 = v67 + (v70 ^ v18);
  v21 = __ROR8__(v70 ^ v18, 48);
  v22 = (v20 ^ v21) + __ROR8__(v17 + v64, 32);
  v23 = v22 ^ __ROR8__(v20 ^ v21, 43);
  v24 = v20 + v19;
  v68 = __ROR8__(v24, 32);
  v71 = v23;
  v62 = v22 ^ v18;
  v65 = v24 ^ __ROR8__(v19, 47);
  v25 = self->_identityStore;
  v26 = [(ICUserIdentityStore *)v25 hash];
  v27 = (v62 + v65) ^ __ROR8__(v65, 51);
  v28 = v68 + (v71 ^ v26);
  v29 = __ROR8__(v71 ^ v26, 48);
  v30 = (v28 ^ v29) + __ROR8__(v62 + v65, 32);
  v31 = v30 ^ __ROR8__(v28 ^ v29, 43);
  v32 = v28 + v27;
  v69 = __ROR8__(v32, 32);
  v72 = v31;
  v63 = v30 ^ v26;
  v66 = v32 ^ __ROR8__(v27, 47);

  v33 = (v63 + v66) ^ __ROR8__(v66, 51);
  v34 = v69 + (v72 ^ 0x1800000000000000);
  v35 = __ROR8__(v72 ^ 0x1800000000000000, 48);
  v36 = (v34 ^ v35) + __ROR8__(v63 + v66, 32);
  v37 = v36 ^ __ROR8__(v34 ^ v35, 43);
  v38 = v34 + v33;
  v39 = v38 ^ __ROR8__(v33, 47);
  v40 = (v36 ^ 0x1800000000000000) + v39;
  v41 = v40 ^ __ROR8__(v39, 51);
  v42 = (__ROR8__(v38, 32) ^ 0xFFLL) + v37;
  v43 = __ROR8__(v37, 48);
  v44 = __ROR8__(v40, 32) + (v42 ^ v43);
  v45 = v44 ^ __ROR8__(v42 ^ v43, 43);
  v46 = v41 + v42;
  v47 = v46 ^ __ROR8__(v41, 47);
  v48 = v47 + v44;
  v49 = v48 ^ __ROR8__(v47, 51);
  v50 = __ROR8__(v46, 32) + v45;
  v51 = __ROR8__(v45, 48);
  v52 = __ROR8__(v48, 32) + (v50 ^ v51);
  v53 = v52 ^ __ROR8__(v50 ^ v51, 43);
  v54 = v49 + v50;
  v55 = v54 ^ __ROR8__(v49, 47);
  v56 = v55 + v52;
  v57 = v56 ^ __ROR8__(v55, 51);
  v58 = __ROR8__(v54, 32) + v53;
  v59 = __ROR8__(v53, 48);
  v60 = __ROR8__(v56, 32) + (v58 ^ v59);
  return (v57 + v58) ^ __ROR8__(v57, 47) ^ v60 ^ __ROR8__(v57 + v58, 32) ^ v60 ^ __ROR8__(v58 ^ v59, 43);
}

- (void)encodeWithCoder:(id)a3
{
  identity = self->_identity;
  v5 = a3;
  [v5 encodeObject:identity forKey:@"i"];
  [v5 encodeObject:self->_identityStore forKey:@"s"];
}

- (ICUserIdentityContext)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ICUserIdentityContext;
  v5 = [(ICUserIdentityContext *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"i"];
    identity = v5->_identity;
    v5->_identity = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"s"];
    identityStore = v5->_identityStore;
    v5->_identityStore = v8;
  }

  return v5;
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
    if ([(ICUserIdentityContext *)v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = v4;
      identityStore = v5->_identityStore;
      v7 = self->_identityStore;
      v8 = v7;
      if (v7 == identityStore)
      {
      }

      else
      {
        v9 = [(ICUserIdentityStore *)v7 isEqual:identityStore];

        if (!v9)
        {
          v10 = 0;
LABEL_15:

          goto LABEL_16;
        }
      }

      identity = v5->_identity;
      v12 = self->_identityStore;
      v13 = self->_identity;
      v14 = identity;
      v15 = v12;
      if (v13 == v14)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0;
        if (v13 && v14)
        {
          v10 = [(ICUserIdentity *)v13 isEqualToIdentity:v14 inStore:v15];
        }
      }

      goto LABEL_15;
    }

    v10 = 0;
  }

LABEL_16:

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p identity = %@; identityStore = %@>", v5, self, self->_identity, self->_identityStore];;

  return v6;
}

- (ICUserIdentityContext)initWithIdentity:(id)a3 identityStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICUserIdentityContext;
  v9 = [(ICUserIdentityContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identity, a3);
    objc_storeStrong(&v10->_identityStore, a4);
  }

  return v10;
}

@end