@interface UARPiCloudContainer
- (BOOL)isCHIPContainer;
- (BOOL)requiresPrefForSigningBeta;
- (CKServerChangeToken)databaseChangeToken;
- (NSData)verificationCertificate;
- (UARPiCloudContainer)initWithContainerID:(id)a3;
- (id)publicKey;
- (void)createContainerWithIdentifier:(id)a3;
- (void)processVerificationCertificateRecord:(id)a3;
- (void)setDatabaseChangeToken:(id)a3;
- (void)setPublicKey:(id)a3;
- (void)setUpdatedRecords:(id)a3;
- (void)setUpdatedZones:(id)a3;
- (void)setVerificationCertificate:(id)a3;
@end

@implementation UARPiCloudContainer

- (UARPiCloudContainer)initWithContainerID:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = UARPiCloudContainer;
  v5 = [(UARPiCloudContainer *)&v17 init];
  v6 = v5;
  if (v5)
  {
    [(UARPiCloudContainer *)v5 createContainerWithIdentifier:v4];
    if (!v6->_container)
    {
      v15 = 0;
      goto LABEL_6;
    }

    v7 = [v4 copy];
    containerID = v6->_containerID;
    v6->_containerID = v7;

    v9 = [(CKContainer *)v6->_container publicCloudDatabase];
    database = v6->_database;
    v6->_database = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    updatedZones = v6->_updatedZones;
    v6->_updatedZones = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    updatedRecords = v6->_updatedRecords;
    v6->_updatedRecords = v13;
  }

  v15 = v6;
LABEL_6:

  return v15;
}

- (void)createContainerWithIdentifier:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CFPreferencesGetAppBooleanValue(@"developmentEnvironment", @"com.apple.UARPiCloud", 0) != 0;
  if ([v4 containsString:@"com.apple.chip"])
  {
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/Library/Managed Preferences/mobile/com.apple.UARPiCloud.plist"];
    v15 = 0;
    v7 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v6 error:&v15];
    v8 = v15;
    if (v7)
    {
      v9 = [v7 objectForKey:@"developmentEnvironment"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [v9 BOOLValue];
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "[UARPiCloudContainer createContainerWithIdentifier:]";
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_2701F5000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Failed to read managedPrefs at %@ error %@", buf, 0x20u);
    }
  }

  if (v5)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = [objc_alloc(MEMORY[0x277CBC228]) initWithContainerIdentifier:v4 environment:v10];
  v12 = [objc_alloc(MEMORY[0x277CBC210]) initWithContainerID:v11];
  container = self->_container;
  self->_container = v12;

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setUpdatedZones:(id)a3
{
  v4 = [a3 mutableCopy];
  updatedZones = self->_updatedZones;
  self->_updatedZones = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setUpdatedRecords:(id)a3
{
  v4 = [a3 mutableCopy];
  updatedRecords = self->_updatedRecords;
  self->_updatedRecords = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setDatabaseChangeToken:(id)a3
{
  v4 = a3;
  if (![(UARPiCloudContainer *)self isCHIPContainer]&& v4)
  {
    v9 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v9];
    v6 = v9;
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", self->_containerID, @"Database"];
    saveEntryForKey(v5, v7);
  }

  databaseChangeToken = self->_databaseChangeToken;
  self->_databaseChangeToken = v4;
}

- (CKServerChangeToken)databaseChangeToken
{
  if (![(UARPiCloudContainer *)self isCHIPContainer])
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", self->_containerID, @"Database"];
    v4 = v3;
    if (!self->_databaseChangeToken)
    {
      v5 = getEntryForKey(v3);
      if (v5)
      {
        v6 = v5;
        v12 = 0;
        v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v12];
        v8 = v12;
        databaseChangeToken = self->_databaseChangeToken;
        self->_databaseChangeToken = v7;
      }
    }
  }

  v10 = self->_databaseChangeToken;

  return v10;
}

- (void)setVerificationCertificate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", self->_containerID, @"VerificationCertificate"];
    saveEntryForKey(v4, v5);
  }

  verificationCertificate = self->_verificationCertificate;
  self->_verificationCertificate = v4;
}

- (void)setPublicKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", self->_containerID, @"PublicKey"];
    saveEntryForKey(v4, v5);
  }

  publicKey = self->_publicKey;
  self->_publicKey = v4;
}

- (NSData)verificationCertificate
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", self->_containerID, @"VerificationCertificate"];
  v4 = v3;
  verificationCertificate = self->_verificationCertificate;
  if (!verificationCertificate)
  {
    v6 = getEntryForKey(v3);
    v7 = self->_verificationCertificate;
    self->_verificationCertificate = v6;

    verificationCertificate = self->_verificationCertificate;
  }

  v8 = verificationCertificate;

  return verificationCertificate;
}

- (id)publicKey
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", self->_containerID, @"PublicKey"];
  v4 = v3;
  publicKey = self->_publicKey;
  if (!publicKey)
  {
    v6 = getEntryForKey(v3);
    v7 = self->_publicKey;
    self->_publicKey = v6;

    publicKey = self->_publicKey;
  }

  v8 = publicKey;

  return publicKey;
}

- (BOOL)requiresPrefForSigningBeta
{
  if ([(NSString *)self->_containerID isEqualToString:@"com.apple.uarp.uat"]|| [(NSString *)self->_containerID isEqualToString:@"com.apple.uarp.staging.uat"]|| [(NSString *)self->_containerID isEqualToString:@"com.apple.uarp.beta"]|| [(NSString *)self->_containerID isEqualToString:@"com.apple.uarp.staging.beta"]|| [(NSString *)self->_containerID isEqualToString:@"com.apple.uarp.staging"])
  {
    return 1;
  }

  containerID = self->_containerID;

  return [(NSString *)containerID isEqualToString:@"com.apple.chip.staging"];
}

- (BOOL)isCHIPContainer
{
  if ([(NSString *)self->_containerID isEqualToString:@"com.apple.chip"])
  {
    return 1;
  }

  containerID = self->_containerID;

  return [(NSString *)containerID isEqualToString:@"com.apple.chip.staging"];
}

- (void)processVerificationCertificateRecord:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(UARPiCloudContainer *)self isCHIPContainer])
  {
    v5 = [v4 objectForKey:@"certificate"];
    if (v5)
    {
      v6 = v5;
      v7 = MEMORY[0x277CCAAA0];
      v8 = [v5 dataUsingEncoding:4];
      v13 = 0;
      v9 = [v7 JSONObjectWithData:v8 options:0 error:&v13];
      v10 = v13;
      verificationCertificates = self->_verificationCertificates;
      self->_verificationCertificates = v9;

      if (v10 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v10;
        _os_log_impl(&dword_2701F5000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to create _verificationCertificates with error: %@", buf, 0xCu);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end