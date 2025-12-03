@interface ICDelegateAccountStoreOptions
+ (id)defaultOptionsWithServiceEndpoint:(id)endpoint;
+ (id)defaultOptionsWithServiceName:(id)name;
+ (id)singleWriterOptionsWithDatabasePath:(id)path;
- (BOOL)isEqual:(id)equal;
- (ICDelegateAccountStoreOptions)initWithCoder:(id)coder;
- (NSString)XPCServiceName;
- (NSString)databasePath;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICDelegateAccountStoreOptions

- (unint64_t)hash
{
  v3 = MSVHasherSharedSeed();
  v5 = v4;
  v6 = v3 ^ 0x736F6D6570736575;
  v7 = v3 ^ 0x6C7967656E657261;
  v8 = v4 ^ 0x646F72616E646F6DLL;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v10 hash];
  v12 = v5 ^ 0x7465646279746573 ^ v11;
  v13 = (v6 + v8) ^ __ROR8__(v8, 51);
  v14 = v7 + v12;
  v15 = (v7 + v12) ^ __ROR8__(v12, 48);
  v16 = v15 + __ROR8__(v6 + v8, 32);
  v78 = __ROR8__(v14 + v13, 32);
  v82 = v16 ^ __ROR8__(v15, 43);
  v17 = v16 ^ v11;
  v74 = (v14 + v13) ^ __ROR8__(v13, 47);

  v18 = self->_databasePath;
  v19 = [(NSString *)v18 hash];
  v20 = (v17 + v74) ^ __ROR8__(v74, 51);
  v21 = v78 + (v82 ^ v19);
  v22 = __ROR8__(v82 ^ v19, 48);
  v23 = (v21 ^ v22) + __ROR8__(v17 + v74, 32);
  v24 = v23 ^ __ROR8__(v21 ^ v22, 43);
  v25 = v21 + v20;
  v79 = __ROR8__(v25, 32);
  v83 = v24;
  v71 = v23 ^ v19;
  v75 = v25 ^ __ROR8__(v20, 47);

  v26 = self->_listenerEndpoint;
  data = [(NSXPCListenerEndpoint *)v26 hash];
  v27 = (v71 + v75) ^ __ROR8__(v75, 51);
  v28 = v79 + (v83 ^ data);
  v29 = __ROR8__(v83 ^ data, 48);
  v30 = (v28 ^ v29) + __ROR8__(v71 + v75, 32);
  v31 = v30 ^ __ROR8__(v28 ^ v29, 43);
  v32 = v28 + v27;
  v80 = __ROR8__(v32, 32);
  v84 = v31;
  v72 = v30 ^ data;
  v76 = v32 ^ __ROR8__(v27, 47);

  v33 = self->_serviceName;
  v34 = [(NSString *)v33 hash];
  v35 = (v72 + v76) ^ __ROR8__(v76, 51);
  v36 = v80 + (v84 ^ v34);
  v37 = __ROR8__(v84 ^ v34, 48);
  v38 = (v36 ^ v37) + __ROR8__(v72 + v76, 32);
  v39 = v38 ^ __ROR8__(v36 ^ v37, 43);
  v40 = v36 + v35;
  v81 = __ROR8__(v40, 32);
  v85 = v39;
  v73 = v38 ^ v34;
  v77 = v40 ^ __ROR8__(v35, 47);

  v41 = self->_singleWriter | 0x2400000000000000;
  v42 = (v73 + v77) ^ __ROR8__(v77, 51);
  v43 = v81 + (v85 ^ v41);
  v44 = __ROR8__(v85 ^ v41, 48);
  v45 = (v43 ^ v44) + __ROR8__(v73 + v77, 32);
  v46 = v45 ^ __ROR8__(v43 ^ v44, 43);
  v47 = v43 + v42;
  v48 = v47 ^ __ROR8__(v42, 47);
  v49 = (v45 ^ v41) + v48;
  v50 = v49 ^ __ROR8__(v48, 51);
  v51 = (__ROR8__(v47, 32) ^ 0xFFLL) + v46;
  v52 = __ROR8__(v46, 48);
  v53 = __ROR8__(v49, 32) + (v51 ^ v52);
  v54 = v53 ^ __ROR8__(v51 ^ v52, 43);
  v55 = v50 + v51;
  v56 = v55 ^ __ROR8__(v50, 47);
  v57 = v56 + v53;
  v58 = v57 ^ __ROR8__(v56, 51);
  v59 = __ROR8__(v55, 32) + v54;
  v60 = __ROR8__(v54, 48);
  v61 = __ROR8__(v57, 32) + (v59 ^ v60);
  v62 = v61 ^ __ROR8__(v59 ^ v60, 43);
  v63 = v58 + v59;
  v64 = v63 ^ __ROR8__(v58, 47);
  v65 = v64 + v61;
  v66 = v65 ^ __ROR8__(v64, 51);
  v67 = __ROR8__(v63, 32) + v62;
  v68 = __ROR8__(v62, 48);
  v69 = __ROR8__(v65, 32) + (v67 ^ v68);
  return (v66 + v67) ^ __ROR8__(v66, 47) ^ v69 ^ __ROR8__(v66 + v67, 32) ^ v69 ^ __ROR8__(v67 ^ v68, 43);
}

- (void)encodeWithCoder:(id)coder
{
  databasePath = self->_databasePath;
  coderCopy = coder;
  [coderCopy encodeObject:databasePath forKey:@"dp"];
  [coderCopy encodeObject:self->_listenerEndpoint forKey:@"le"];
  [coderCopy encodeObject:self->_serviceName forKey:@"sn"];
  [coderCopy encodeBool:self->_singleWriter forKey:@"sw"];
}

- (ICDelegateAccountStoreOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ICDelegateAccountStoreOptions;
  v5 = [(ICDelegateAccountStoreOptions *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dp"];
    databasePath = v5->_databasePath;
    v5->_databasePath = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"le"];
    listenerEndpoint = v5->_listenerEndpoint;
    v5->_listenerEndpoint = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sn"];
    serviceName = v5->_serviceName;
    v5->_serviceName = v10;

    v5->_singleWriter = [coderCopy decodeBoolForKey:@"sw"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    v6 = [(NSString *)self->_databasePath copyWithZone:zone];
    v7 = *(v5 + 8);
    *(v5 + 8) = v6;

    objc_storeStrong((v5 + 16), self->_listenerEndpoint);
    v8 = [(NSString *)self->_serviceName copyWithZone:zone];
    v9 = *(v5 + 24);
    *(v5 + 24) = v8;

    *(v5 + 32) = self->_singleWriter;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    if ([(ICDelegateAccountStoreOptions *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      databasePath = v5->_databasePath;
      v7 = self->_databasePath;
      v8 = v7;
      if (v7 == databasePath)
      {
      }

      else
      {
        v9 = [(NSString *)v7 isEqual:databasePath];

        if (!v9)
        {
          goto LABEL_15;
        }
      }

      listenerEndpoint = v5->_listenerEndpoint;
      v12 = self->_listenerEndpoint;
      v13 = v12;
      if (v12 == listenerEndpoint)
      {
      }

      else
      {
        v14 = [(NSXPCListenerEndpoint *)v12 isEqual:listenerEndpoint];

        if (!v14)
        {
          goto LABEL_15;
        }
      }

      serviceName = v5->_serviceName;
      v16 = self->_serviceName;
      v17 = v16;
      if (v16 == serviceName)
      {
      }

      else
      {
        v18 = [(NSString *)v16 isEqual:serviceName];

        if (!v18)
        {
LABEL_15:
          v10 = 0;
LABEL_18:

          goto LABEL_19;
        }
      }

      v10 = self->_singleWriter == v5->_singleWriter;
      goto LABEL_18;
    }

    v10 = 0;
  }

LABEL_19:

  return v10;
}

- (NSString)XPCServiceName
{
  if (self->_serviceName)
  {
    return self->_serviceName;
  }

  else
  {
    return &stru_1F2C4A680;
  }
}

- (NSString)databasePath
{
  if (self->_databasePath)
  {
    return self->_databasePath;
  }

  else
  {
    return &stru_1F2C4A680;
  }
}

+ (id)singleWriterOptionsWithDatabasePath:(id)path
{
  pathCopy = path;
  v5 = objc_alloc_init(self);
  if (v5)
  {
    v6 = [pathCopy copy];
    v7 = v5[1];
    v5[1] = v6;

    *(v5 + 32) = 1;
  }

  return v5;
}

+ (id)defaultOptionsWithServiceName:(id)name
{
  nameCopy = name;
  v5 = objc_alloc_init(self);
  if (v5)
  {
    v6 = [nameCopy copy];
    v7 = v5[3];
    v5[3] = v6;
  }

  return v5;
}

+ (id)defaultOptionsWithServiceEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v6 = objc_alloc_init(self);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 2, endpoint);
  }

  return v7;
}

@end