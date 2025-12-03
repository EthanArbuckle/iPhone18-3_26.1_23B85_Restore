@interface ICLocalStoreAccountProperties
- (BOOL)isEqual:(id)equal;
- (ICLocalStoreAccountProperties)initWithCoder:(id)coder;
- (ICLocalStoreAccountProperties)initWithPropertyListRepresentation:(id)representation;
- (NSDictionary)propertyListRepresentation;
- (NSString)storefrontIdentifier;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_copyLocalStoreAccountPropertiesToOtherInstance:(id)instance withZone:(_NSZone *)zone;
@end

@implementation ICLocalStoreAccountProperties

- (NSString)storefrontIdentifier
{
  if (self->_storefrontIdentifier)
  {
    return self->_storefrontIdentifier;
  }

  else
  {
    return &stru_1F2C4A680;
  }
}

- (void)_copyLocalStoreAccountPropertiesToOtherInstance:(id)instance withZone:(_NSZone *)zone
{
  storefrontIdentifier = self->_storefrontIdentifier;
  instanceCopy = instance;
  v7 = [(NSString *)storefrontIdentifier copyWithZone:zone];
  v8 = instanceCopy[1];
  instanceCopy[1] = v7;
}

- (NSDictionary)propertyListRepresentation
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"storefrontIdentifier";
  storefrontIdentifier = [(ICLocalStoreAccountProperties *)self storefrontIdentifier];
  v6[0] = storefrontIdentifier;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (ICLocalStoreAccountProperties)initWithPropertyListRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [(ICLocalStoreAccountProperties *)self init];
  if (v5)
  {
    v6 = [representationCopy objectForKey:@"storefrontIdentifier"];
    if (_NSIsNSString())
    {
      v7 = [v6 copy];
      storefrontIdentifier = v5->_storefrontIdentifier;
      v5->_storefrontIdentifier = v7;
    }
  }

  return v5;
}

- (ICLocalStoreAccountProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = ICLocalStoreAccountProperties;
  v5 = [(ICLocalStoreAccountProperties *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storefrontID"];
    v7 = [v6 copy];
    storefrontIdentifier = v5->_storefrontIdentifier;
    v5->_storefrontIdentifier = v7;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [+[ICMutableLocalStoreAccountProperties allocWithZone:](ICMutableLocalStoreAccountProperties init];
  if (v5)
  {
    [(ICLocalStoreAccountProperties *)self _copyLocalStoreAccountPropertiesToOtherInstance:v5 withZone:zone];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else if ([(ICLocalStoreAccountProperties *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    storefrontIdentifier = self->_storefrontIdentifier;
    v6 = equalCopy->_storefrontIdentifier;
    v7 = storefrontIdentifier;
    v8 = v7;
    if (v7 == v6)
    {
      v9 = 1;
    }

    else
    {
      v9 = [(NSString *)v7 isEqual:v6];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

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
  v58 = __ROR8__(v14 + v13, 32);
  v60 = v16 ^ __ROR8__(v15, 43);
  v17 = v16 ^ v11;
  v56 = (v14 + v13) ^ __ROR8__(v13, 47);

  v18 = self->_storefrontIdentifier;
  v19 = [(NSString *)v18 hash];
  v20 = (v17 + v56) ^ __ROR8__(v56, 51);
  v21 = v58 + (v60 ^ v19);
  v22 = __ROR8__(v60 ^ v19, 48);
  v23 = (v21 ^ v22) + __ROR8__(v17 + v56, 32);
  v24 = v23 ^ __ROR8__(v21 ^ v22, 43);
  v25 = v21 + v20;
  v59 = __ROR8__(v25, 32);
  v61 = v24;
  v55 = v23 ^ v19;
  v57 = v25 ^ __ROR8__(v20, 47);

  v26 = (v55 + v57) ^ __ROR8__(v57, 51);
  v27 = v59 + (v61 ^ 0x1000000000000000);
  v28 = __ROR8__(v61 ^ 0x1000000000000000, 48);
  v29 = (v27 ^ v28) + __ROR8__(v55 + v57, 32);
  v30 = v29 ^ __ROR8__(v27 ^ v28, 43);
  v31 = v27 + v26;
  v32 = v31 ^ __ROR8__(v26, 47);
  v33 = (v29 ^ 0x1000000000000000) + v32;
  v34 = v33 ^ __ROR8__(v32, 51);
  v35 = (__ROR8__(v31, 32) ^ 0xFFLL) + v30;
  v36 = __ROR8__(v30, 48);
  v37 = __ROR8__(v33, 32) + (v35 ^ v36);
  v38 = v37 ^ __ROR8__(v35 ^ v36, 43);
  v39 = v34 + v35;
  v40 = v39 ^ __ROR8__(v34, 47);
  v41 = v40 + v37;
  v42 = v41 ^ __ROR8__(v40, 51);
  v43 = __ROR8__(v39, 32) + v38;
  v44 = __ROR8__(v38, 48);
  v45 = __ROR8__(v41, 32) + (v43 ^ v44);
  v46 = v45 ^ __ROR8__(v43 ^ v44, 43);
  v47 = v42 + v43;
  v48 = v47 ^ __ROR8__(v42, 47);
  v49 = v48 + v45;
  v50 = v49 ^ __ROR8__(v48, 51);
  v51 = __ROR8__(v47, 32) + v46;
  v52 = __ROR8__(v46, 48);
  v53 = __ROR8__(v49, 32) + (v51 ^ v52);
  return (v50 + v51) ^ __ROR8__(v50, 47) ^ v53 ^ __ROR8__(v50 + v51, 32) ^ v53 ^ __ROR8__(v51 ^ v52, 43);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  if ([(NSString *)self->_storefrontIdentifier length])
  {
    [v6 appendFormat:@"; storefrontIdentifier = %@", self->_storefrontIdentifier];
  }

  [v6 appendString:@">"];

  return v6;
}

@end