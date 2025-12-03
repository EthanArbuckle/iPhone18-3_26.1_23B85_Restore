@interface SUCoreRollbackDescriptor
- (SUCoreRollbackDescriptor)init;
- (SUCoreRollbackDescriptor)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUCoreRollbackDescriptor

- (SUCoreRollbackDescriptor)init
{
  v22.receiver = self;
  v22.super_class = SUCoreRollbackDescriptor;
  v2 = [(SUCoreRollbackDescriptor *)&v22 init];
  if (v2)
  {
    mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
    splatCryptex1RestoreVersion = [mEMORY[0x277D64418] splatCryptex1RestoreVersion];
    restoreVersion = v2->_restoreVersion;
    v2->_restoreVersion = splatCryptex1RestoreVersion;

    v6 = MEMORY[0x277CCACA8];
    mEMORY[0x277D64418]2 = [MEMORY[0x277D64418] sharedDevice];
    splatCryptex1ProductVersion = [mEMORY[0x277D64418]2 splatCryptex1ProductVersion];
    mEMORY[0x277D64418]3 = [MEMORY[0x277D64418] sharedDevice];
    splatCryptex1ProductVersionExtra = [mEMORY[0x277D64418]3 splatCryptex1ProductVersionExtra];
    v11 = [v6 stringWithFormat:@"%@ %@", splatCryptex1ProductVersion, splatCryptex1ProductVersionExtra];
    productVersion = v2->_productVersion;
    v2->_productVersion = v11;

    mEMORY[0x277D64418]4 = [MEMORY[0x277D64418] sharedDevice];
    splatCryptex1BuildVersion = [mEMORY[0x277D64418]4 splatCryptex1BuildVersion];
    productBuildVersion = v2->_productBuildVersion;
    v2->_productBuildVersion = splatCryptex1BuildVersion;

    mEMORY[0x277D64418]5 = [MEMORY[0x277D64418] sharedDevice];
    splatCryptex1ReleaseType = [mEMORY[0x277D64418]5 splatCryptex1ReleaseType];
    releaseType = v2->_releaseType;
    v2->_releaseType = splatCryptex1ReleaseType;

    mEMORY[0x277D64418]6 = [MEMORY[0x277D64418] sharedDevice];
    v2->_rollbackEligible = [mEMORY[0x277D64418]6 hasEligibleRollback];

    rollbackDate = v2->_rollbackDate;
    v2->_rollbackDate = 0;
  }

  return v2;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  restoreVersion = [(SUCoreRollbackDescriptor *)self restoreVersion];
  productVersion = [(SUCoreRollbackDescriptor *)self productVersion];
  productBuildVersion = [(SUCoreRollbackDescriptor *)self productBuildVersion];
  releaseType = [(SUCoreRollbackDescriptor *)self releaseType];
  if ([(SUCoreRollbackDescriptor *)self rollbackEligible])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  rollbackDate = [(SUCoreRollbackDescriptor *)self rollbackDate];
  v10 = [v3 initWithFormat:@"restoreVersion:%@ productVersion:%@ producBuildVersion:%@ releaseType:%@ rollbackEligible:%@ rollbackDate:%@", restoreVersion, productVersion, productBuildVersion, releaseType, v8, rollbackDate];

  return v10;
}

- (SUCoreRollbackDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = SUCoreRollbackDescriptor;
  v5 = [(SUCoreRollbackDescriptor *)&v12 init];
  if (v5)
  {
    -[SUCoreRollbackDescriptor setRollbackEligible:](v5, "setRollbackEligible:", [coderCopy decodeBoolForKey:@"rollbackEligible"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"restoreVersion"];
    [(SUCoreRollbackDescriptor *)v5 setRestoreVersion:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productVersion"];
    [(SUCoreRollbackDescriptor *)v5 setProductVersion:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productBuildVersion"];
    [(SUCoreRollbackDescriptor *)v5 setProductBuildVersion:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"releaseType"];
    [(SUCoreRollbackDescriptor *)v5 setReleaseType:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rollbackDate"];
    [(SUCoreRollbackDescriptor *)v5 setRollbackDate:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[SUCoreRollbackDescriptor rollbackEligible](self forKey:{"rollbackEligible"), @"rollbackEligible"}];
  restoreVersion = [(SUCoreRollbackDescriptor *)self restoreVersion];
  [coderCopy encodeObject:restoreVersion forKey:@"restoreVersion"];

  productVersion = [(SUCoreRollbackDescriptor *)self productVersion];
  [coderCopy encodeObject:productVersion forKey:@"productVersion"];

  productBuildVersion = [(SUCoreRollbackDescriptor *)self productBuildVersion];
  [coderCopy encodeObject:productBuildVersion forKey:@"productBuildVersion"];

  releaseType = [(SUCoreRollbackDescriptor *)self releaseType];
  [coderCopy encodeObject:releaseType forKey:@"releaseType"];

  rollbackDate = [(SUCoreRollbackDescriptor *)self rollbackDate];
  [coderCopy encodeObject:rollbackDate forKey:@"rollbackDate"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[SUCoreRollbackDescriptor allocWithZone:](SUCoreRollbackDescriptor init];
  [(SUCoreRollbackDescriptor *)v5 setRollbackEligible:[(SUCoreRollbackDescriptor *)self rollbackEligible]];
  restoreVersion = [(SUCoreRollbackDescriptor *)self restoreVersion];
  v7 = [restoreVersion copyWithZone:zone];
  [(SUCoreRollbackDescriptor *)v5 setRestoreVersion:v7];

  productVersion = [(SUCoreRollbackDescriptor *)self productVersion];
  v9 = [productVersion copyWithZone:zone];
  [(SUCoreRollbackDescriptor *)v5 setProductVersion:v9];

  productBuildVersion = [(SUCoreRollbackDescriptor *)self productBuildVersion];
  v11 = [productBuildVersion copyWithZone:zone];
  [(SUCoreRollbackDescriptor *)v5 setProductBuildVersion:v11];

  releaseType = [(SUCoreRollbackDescriptor *)self releaseType];
  v13 = [releaseType copyWithZone:zone];
  [(SUCoreRollbackDescriptor *)v5 setReleaseType:v13];

  rollbackDate = [(SUCoreRollbackDescriptor *)self rollbackDate];
  v15 = [rollbackDate copyWithZone:zone];
  [(SUCoreRollbackDescriptor *)v5 setRollbackDate:v15];

  return v5;
}

@end