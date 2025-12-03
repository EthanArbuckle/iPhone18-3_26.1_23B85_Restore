@interface ICURLResponseAuthenticationProvider
+ (id)defaultProvider;
- (BOOL)isEqual:(id)equal;
- (ICURLResponseAuthenticationProvider)initWithCoder:(id)coder;
- (ICURLResponseAuthenticationProvider)initWithUserInteractionLevel:(int64_t)level;
- (unint64_t)hash;
@end

@implementation ICURLResponseAuthenticationProvider

+ (id)defaultProvider
{
  v2 = [objc_alloc(objc_opt_class()) initWithUserInteractionLevel:0];

  return v2;
}

- (ICURLResponseAuthenticationProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = ICURLResponseAuthenticationProvider;
  v5 = [(ICURLResponseAuthenticationProvider *)&v7 init];
  if (v5)
  {
    v5->_interactionLevel = [coderCopy decodeIntegerForKey:@"interactionLevel"];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else if ([(ICURLResponseAuthenticationProvider *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = self->_interactionLevel == equalCopy->_interactionLevel;
  }

  else
  {
    v5 = 0;
  }

  return v5;
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
  v57 = __ROR8__(v14 + v13, 32);
  v58 = v16 ^ __ROR8__(v15, 43);
  v17 = v16 ^ v11;
  v55 = (v14 + v13) ^ __ROR8__(v13, 47);

  v18 = (v17 + v55) ^ __ROR8__(v55, 51);
  interactionLevel = self->_interactionLevel;
  v20 = v57 + (v58 ^ interactionLevel);
  v21 = __ROR8__(v58 ^ interactionLevel, 48);
  v22 = (v20 ^ v21) + __ROR8__(v17 + v55, 32);
  v23 = v22 ^ __ROR8__(v20 ^ v21, 43);
  v24 = v20 + v18;
  v59 = v23;
  v54 = v22 ^ interactionLevel;
  v56 = v24 ^ __ROR8__(v18, 47);
  v25 = ((v22 ^ interactionLevel) + v56) ^ __ROR8__(v56, 51);
  v26 = __ROR8__(v24, 32) + (v59 ^ 0x1000000000000000);
  v27 = __ROR8__(v59 ^ 0x1000000000000000, 48);
  v28 = (v26 ^ v27) + __ROR8__(v54 + v56, 32);
  v29 = v28 ^ __ROR8__(v26 ^ v27, 43);
  v30 = v26 + v25;
  v31 = v30 ^ __ROR8__(v25, 47);
  v32 = (v28 ^ 0x1000000000000000) + v31;
  v33 = v32 ^ __ROR8__(v31, 51);
  v34 = (__ROR8__(v30, 32) ^ 0xFFLL) + v29;
  v35 = __ROR8__(v29, 48);
  v36 = __ROR8__(v32, 32) + (v34 ^ v35);
  v37 = v36 ^ __ROR8__(v34 ^ v35, 43);
  v38 = v33 + v34;
  v39 = v38 ^ __ROR8__(v33, 47);
  v40 = v39 + v36;
  v41 = v40 ^ __ROR8__(v39, 51);
  v42 = __ROR8__(v38, 32) + v37;
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
  return (v49 + v50) ^ __ROR8__(v49, 47) ^ v52 ^ __ROR8__(v49 + v50, 32) ^ v52 ^ __ROR8__(v50 ^ v51, 43);
}

- (ICURLResponseAuthenticationProvider)initWithUserInteractionLevel:(int64_t)level
{
  result = [(ICURLResponseAuthenticationProvider *)self init];
  if (result)
  {
    result->_interactionLevel = level;
  }

  return result;
}

@end