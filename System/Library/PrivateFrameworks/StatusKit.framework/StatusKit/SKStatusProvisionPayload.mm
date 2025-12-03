@interface SKStatusProvisionPayload
+ (id)logger;
- (SKStatusProvisionPayload)initWithCoder:(id)coder;
- (SKStatusProvisionPayload)initWithStatusPayload:(id)payload validFrom:(id)from validUntil:(id)until;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKStatusProvisionPayload

- (SKStatusProvisionPayload)initWithStatusPayload:(id)payload validFrom:(id)from validUntil:(id)until
{
  payloadCopy = payload;
  fromCopy = from;
  untilCopy = until;
  v18.receiver = self;
  v18.super_class = SKStatusProvisionPayload;
  v12 = [(SKStatusProvisionPayload *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_statusPayload, payload);
    objc_storeStrong(&v13->_validFrom, from);
    objc_storeStrong(&v13->_validUntil, until);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v13->_identifier;
    v13->_identifier = uUIDString;
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

- (void)encodeWithCoder:(id)coder
{
  statusPayload = self->_statusPayload;
  coderCopy = coder;
  [coderCopy encodeObject:statusPayload forKey:@"payload"];
  [coderCopy encodeObject:self->_validFrom forKey:@"valid-from"];
  [coderCopy encodeObject:self->_validUntil forKey:@"valid-until"];
  [coderCopy encodeObject:self->_encryptedStatusPayload forKey:@"encrypted-payload"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_decryptionKey forKey:@"key"];
  [coderCopy encodeObject:self->_initializationVector forKey:@"initialization-vector"];
  [coderCopy encodeObject:self->_commitmentSalt forKey:@"commitment-salt"];
}

- (SKStatusProvisionPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"valid-from"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"valid-until"];
  v8 = [(SKStatusProvisionPayload *)self initWithStatusPayload:v5 validFrom:v6 validUntil:v7];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encrypted-payload"];
  [(SKStatusProvisionPayload *)v8 setEncryptedStatusPayload:v9];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  [(SKStatusProvisionPayload *)v8 setIdentifier:v10];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  [(SKStatusProvisionPayload *)v8 setDecryptionKey:v11];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"initialization-vector"];
  [(SKStatusProvisionPayload *)v8 setInitializationVector:v12];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"commitment-salt"];

  [(SKStatusProvisionPayload *)v8 setCommitmentSalt:v13];
  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(SKStatusProvisionPayload *)self identifier];
  statusPayload = [(SKStatusProvisionPayload *)self statusPayload];
  validFrom = [(SKStatusProvisionPayload *)self validFrom];
  validUntil = [(SKStatusProvisionPayload *)self validUntil];
  decryptionKey = [(SKStatusProvisionPayload *)self decryptionKey];
  v10 = @"YES";
  if (!decryptionKey)
  {
    v10 = @"NO";
  }

  v11 = [v3 stringWithFormat:@"<%@: %p identifier = %@; payload = %@; validFrom = %@; validUntil = %@; hasKey = %@;", v4, self, identifier, statusPayload, validFrom, validUntil, v10];;

  return v11;
}

@end