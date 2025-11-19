@interface SKStatusProvisionPayload
+ (id)logger;
- (SKStatusProvisionPayload)initWithCoder:(id)a3;
- (SKStatusProvisionPayload)initWithStatusPayload:(id)a3 validFrom:(id)a4 validUntil:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKStatusProvisionPayload

- (SKStatusProvisionPayload)initWithStatusPayload:(id)a3 validFrom:(id)a4 validUntil:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = SKStatusProvisionPayload;
  v12 = [(SKStatusProvisionPayload *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_statusPayload, a3);
    objc_storeStrong(&v13->_validFrom, a4);
    objc_storeStrong(&v13->_validUntil, a5);
    v14 = [MEMORY[0x277CCAD78] UUID];
    v15 = [v14 UUIDString];
    identifier = v13->_identifier;
    v13->_identifier = v15;
  }

  return v13;
}

+ (id)logger
{
  if (logger_onceToken_6 != -1)
  {
    +[SKStatusProvisionPayload logger];
  }

  v3 = logger__logger_6;

  return v3;
}

uint64_t __34__SKStatusProvisionPayload_logger__block_invoke()
{
  logger__logger_6 = os_log_create("com.apple.StatusKit", "SKStatusProvisionPayload");

  return MEMORY[0x2821F96F8]();
}

- (void)encodeWithCoder:(id)a3
{
  statusPayload = self->_statusPayload;
  v5 = a3;
  [v5 encodeObject:statusPayload forKey:@"payload"];
  [v5 encodeObject:self->_validFrom forKey:@"valid-from"];
  [v5 encodeObject:self->_validUntil forKey:@"valid-until"];
  [v5 encodeObject:self->_encryptedStatusPayload forKey:@"encrypted-payload"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_decryptionKey forKey:@"key"];
  [v5 encodeObject:self->_initializationVector forKey:@"initialization-vector"];
  [v5 encodeObject:self->_commitmentSalt forKey:@"commitment-salt"];
}

- (SKStatusProvisionPayload)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"valid-from"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"valid-until"];
  v8 = [(SKStatusProvisionPayload *)self initWithStatusPayload:v5 validFrom:v6 validUntil:v7];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encrypted-payload"];
  [(SKStatusProvisionPayload *)v8 setEncryptedStatusPayload:v9];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  [(SKStatusProvisionPayload *)v8 setIdentifier:v10];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  [(SKStatusProvisionPayload *)v8 setDecryptionKey:v11];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"initialization-vector"];
  [(SKStatusProvisionPayload *)v8 setInitializationVector:v12];

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"commitment-salt"];

  [(SKStatusProvisionPayload *)v8 setCommitmentSalt:v13];
  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SKStatusProvisionPayload *)self identifier];
  v6 = [(SKStatusProvisionPayload *)self statusPayload];
  v7 = [(SKStatusProvisionPayload *)self validFrom];
  v8 = [(SKStatusProvisionPayload *)self validUntil];
  v9 = [(SKStatusProvisionPayload *)self decryptionKey];
  v10 = @"YES";
  if (!v9)
  {
    v10 = @"NO";
  }

  v11 = [v3 stringWithFormat:@"<%@: %p identifier = %@; payload = %@; validFrom = %@; validUntil = %@; hasKey = %@;", v4, self, v5, v6, v7, v8, v10];;

  return v11;
}

@end