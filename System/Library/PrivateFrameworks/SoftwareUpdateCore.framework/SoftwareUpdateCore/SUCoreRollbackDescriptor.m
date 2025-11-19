@interface SUCoreRollbackDescriptor
- (SUCoreRollbackDescriptor)init;
- (SUCoreRollbackDescriptor)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUCoreRollbackDescriptor

- (SUCoreRollbackDescriptor)init
{
  v22.receiver = self;
  v22.super_class = SUCoreRollbackDescriptor;
  v2 = [(SUCoreRollbackDescriptor *)&v22 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D64418] sharedDevice];
    v4 = [v3 splatCryptex1RestoreVersion];
    restoreVersion = v2->_restoreVersion;
    v2->_restoreVersion = v4;

    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277D64418] sharedDevice];
    v8 = [v7 splatCryptex1ProductVersion];
    v9 = [MEMORY[0x277D64418] sharedDevice];
    v10 = [v9 splatCryptex1ProductVersionExtra];
    v11 = [v6 stringWithFormat:@"%@ %@", v8, v10];
    productVersion = v2->_productVersion;
    v2->_productVersion = v11;

    v13 = [MEMORY[0x277D64418] sharedDevice];
    v14 = [v13 splatCryptex1BuildVersion];
    productBuildVersion = v2->_productBuildVersion;
    v2->_productBuildVersion = v14;

    v16 = [MEMORY[0x277D64418] sharedDevice];
    v17 = [v16 splatCryptex1ReleaseType];
    releaseType = v2->_releaseType;
    v2->_releaseType = v17;

    v19 = [MEMORY[0x277D64418] sharedDevice];
    v2->_rollbackEligible = [v19 hasEligibleRollback];

    rollbackDate = v2->_rollbackDate;
    v2->_rollbackDate = 0;
  }

  return v2;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(SUCoreRollbackDescriptor *)self restoreVersion];
  v5 = [(SUCoreRollbackDescriptor *)self productVersion];
  v6 = [(SUCoreRollbackDescriptor *)self productBuildVersion];
  v7 = [(SUCoreRollbackDescriptor *)self releaseType];
  if ([(SUCoreRollbackDescriptor *)self rollbackEligible])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [(SUCoreRollbackDescriptor *)self rollbackDate];
  v10 = [v3 initWithFormat:@"restoreVersion:%@ productVersion:%@ producBuildVersion:%@ releaseType:%@ rollbackEligible:%@ rollbackDate:%@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (SUCoreRollbackDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SUCoreRollbackDescriptor;
  v5 = [(SUCoreRollbackDescriptor *)&v12 init];
  if (v5)
  {
    -[SUCoreRollbackDescriptor setRollbackEligible:](v5, "setRollbackEligible:", [v4 decodeBoolForKey:@"rollbackEligible"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"restoreVersion"];
    [(SUCoreRollbackDescriptor *)v5 setRestoreVersion:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productVersion"];
    [(SUCoreRollbackDescriptor *)v5 setProductVersion:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productBuildVersion"];
    [(SUCoreRollbackDescriptor *)v5 setProductBuildVersion:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"releaseType"];
    [(SUCoreRollbackDescriptor *)v5 setReleaseType:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rollbackDate"];
    [(SUCoreRollbackDescriptor *)v5 setRollbackDate:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[SUCoreRollbackDescriptor rollbackEligible](self forKey:{"rollbackEligible"), @"rollbackEligible"}];
  v5 = [(SUCoreRollbackDescriptor *)self restoreVersion];
  [v4 encodeObject:v5 forKey:@"restoreVersion"];

  v6 = [(SUCoreRollbackDescriptor *)self productVersion];
  [v4 encodeObject:v6 forKey:@"productVersion"];

  v7 = [(SUCoreRollbackDescriptor *)self productBuildVersion];
  [v4 encodeObject:v7 forKey:@"productBuildVersion"];

  v8 = [(SUCoreRollbackDescriptor *)self releaseType];
  [v4 encodeObject:v8 forKey:@"releaseType"];

  v9 = [(SUCoreRollbackDescriptor *)self rollbackDate];
  [v4 encodeObject:v9 forKey:@"rollbackDate"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[SUCoreRollbackDescriptor allocWithZone:](SUCoreRollbackDescriptor init];
  [(SUCoreRollbackDescriptor *)v5 setRollbackEligible:[(SUCoreRollbackDescriptor *)self rollbackEligible]];
  v6 = [(SUCoreRollbackDescriptor *)self restoreVersion];
  v7 = [v6 copyWithZone:a3];
  [(SUCoreRollbackDescriptor *)v5 setRestoreVersion:v7];

  v8 = [(SUCoreRollbackDescriptor *)self productVersion];
  v9 = [v8 copyWithZone:a3];
  [(SUCoreRollbackDescriptor *)v5 setProductVersion:v9];

  v10 = [(SUCoreRollbackDescriptor *)self productBuildVersion];
  v11 = [v10 copyWithZone:a3];
  [(SUCoreRollbackDescriptor *)v5 setProductBuildVersion:v11];

  v12 = [(SUCoreRollbackDescriptor *)self releaseType];
  v13 = [v12 copyWithZone:a3];
  [(SUCoreRollbackDescriptor *)v5 setReleaseType:v13];

  v14 = [(SUCoreRollbackDescriptor *)self rollbackDate];
  v15 = [v14 copyWithZone:a3];
  [(SUCoreRollbackDescriptor *)v5 setRollbackDate:v15];

  return v5;
}

@end