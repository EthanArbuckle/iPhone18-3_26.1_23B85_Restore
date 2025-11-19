@interface ICStoreDialogResponseHandlerConfiguration
- (BOOL)isEqual:(id)a3;
- (ICStoreDialogResponseHandlerConfiguration)init;
- (ICStoreDialogResponseHandlerConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICStoreDialogResponseHandlerConfiguration

- (ICStoreDialogResponseHandlerConfiguration)init
{
  v3.receiver = self;
  v3.super_class = ICStoreDialogResponseHandlerConfiguration;
  result = [(ICStoreDialogResponseHandlerConfiguration *)&v3 init];
  if (result)
  {
    *&result->_allowsHandlingNonAuthenticationDialogs = 1;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  allowsHandlingNonAuthenticationDialogs = self->_allowsHandlingNonAuthenticationDialogs;
  v5 = a3;
  [v5 encodeBool:allowsHandlingNonAuthenticationDialogs forKey:@"allowsHandlingNonAuthenticationDialogs"];
  [v5 encodeBool:self->_shouldRecordLastAuthenticationDialogResponseTime forKey:@"shouldRecordLastAuthenticationDialogResponseTime"];
}

- (ICStoreDialogResponseHandlerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ICStoreDialogResponseHandlerConfiguration;
  v5 = [(ICStoreDialogResponseHandlerConfiguration *)&v7 init];
  if (v5)
  {
    v5->_allowsHandlingNonAuthenticationDialogs = [v4 decodeBoolForKey:@"allowsHandlingNonAuthenticationDialogs"];
    v5->_shouldRecordLastAuthenticationDialogResponseTime = [v4 decodeBoolForKey:@"shouldRecordLastAuthenticationDialogResponseTime"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(objc_opt_class());
  if (result)
  {
    *(result + 8) = self->_allowsHandlingNonAuthenticationDialogs;
    *(result + 9) = self->_shouldRecordLastAuthenticationDialogResponseTime;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = self == v4 || [(ICStoreDialogResponseHandlerConfiguration *)v4 isMemberOfClass:objc_opt_class()]&& self->_allowsHandlingNonAuthenticationDialogs == v4->_allowsHandlingNonAuthenticationDialogs && self->_shouldRecordLastAuthenticationDialogResponseTime == v4->_shouldRecordLastAuthenticationDialogResponseTime;

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
  v17 = v14 + v13;
  v57 = __ROR8__(v17, 32);
  v59 = v16 ^ __ROR8__(v15, 43);
  v54 = v16 ^ v11;
  v55 = v17 ^ __ROR8__(v13, 47);

  v18 = self->_allowsHandlingNonAuthenticationDialogs | (self->_shouldRecordLastAuthenticationDialogResponseTime << 32);
  v19 = (v54 + v55) ^ __ROR8__(v55, 51);
  v20 = v57 + (v59 ^ v18);
  v21 = __ROR8__(v59 ^ v18, 48);
  v22 = (v20 ^ v21) + __ROR8__(v54 + v55, 32);
  v23 = v22 ^ __ROR8__(v20 ^ v21, 43);
  v24 = v20 + v19;
  v58 = __ROR8__(v24, 32);
  v60 = v23;
  v56 = v24 ^ __ROR8__(v19, 47);
  v25 = ((v22 ^ v18) + v56) ^ __ROR8__(v56, 51);
  v26 = v58 + (v23 ^ 0x1000000000000000);
  v27 = __ROR8__(v60 ^ 0x1000000000000000, 48);
  v28 = (v26 ^ v27) + __ROR8__((v22 ^ v18) + v56, 32);
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

@end