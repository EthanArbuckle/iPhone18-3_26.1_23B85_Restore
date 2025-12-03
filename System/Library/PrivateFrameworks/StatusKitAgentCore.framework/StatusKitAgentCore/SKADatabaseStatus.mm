@interface SKADatabaseStatus
+ (id)logger;
- (BOOL)isExpired;
- (SKADatabaseStatus)initWithChannelIdentifier:(id)identifier dateCreated:(id)created datePublished:(id)published dateReceived:(id)received dateExpired:(id)expired rawData:(id)data uniqueIdentifier:(id)uniqueIdentifier;
- (SKADatabaseStatus)initWithCoreDataStatus:(id)status;
- (id)description;
@end

@implementation SKADatabaseStatus

- (SKADatabaseStatus)initWithCoreDataStatus:(id)status
{
  statusCopy = status;
  channelIdentifier = [statusCopy channelIdentifier];
  dateCreated = [statusCopy dateCreated];
  datePublished = [statusCopy datePublished];
  dateReceived = [statusCopy dateReceived];
  dateExpired = [statusCopy dateExpired];
  rawData = [statusCopy rawData];
  uniqueIdentifier = [statusCopy uniqueIdentifier];

  v12 = [(SKADatabaseStatus *)self initWithChannelIdentifier:channelIdentifier dateCreated:dateCreated datePublished:datePublished dateReceived:dateReceived dateExpired:dateExpired rawData:rawData uniqueIdentifier:uniqueIdentifier];
  return v12;
}

- (SKADatabaseStatus)initWithChannelIdentifier:(id)identifier dateCreated:(id)created datePublished:(id)published dateReceived:(id)received dateExpired:(id)expired rawData:(id)data uniqueIdentifier:(id)uniqueIdentifier
{
  identifierCopy = identifier;
  createdCopy = created;
  publishedCopy = published;
  receivedCopy = received;
  expiredCopy = expired;
  dataCopy = data;
  uniqueIdentifierCopy = uniqueIdentifier;
  v36.receiver = self;
  v36.super_class = SKADatabaseStatus;
  v22 = [(SKADatabaseStatus *)&v36 init];
  if (v22)
  {
    v23 = [identifierCopy copy];
    channelIdentifier = v22->_channelIdentifier;
    v22->_channelIdentifier = v23;

    v25 = [createdCopy copy];
    dateCreated = v22->_dateCreated;
    v22->_dateCreated = v25;

    v27 = [publishedCopy copy];
    datePublished = v22->_datePublished;
    v22->_datePublished = v27;

    v29 = [receivedCopy copy];
    dateReceived = v22->_dateReceived;
    v22->_dateReceived = v29;

    v31 = [expiredCopy copy];
    dateExpired = v22->_dateExpired;
    v22->_dateExpired = v31;

    objc_storeStrong(&v22->_rawData, data);
    v33 = [uniqueIdentifierCopy copy];
    uniqueIdentifier = v22->_uniqueIdentifier;
    v22->_uniqueIdentifier = v33;
  }

  return v22;
}

- (BOOL)isExpired
{
  v18 = *MEMORY[0x277D85DE8];
  dateExpired = [(SKADatabaseStatus *)self dateExpired];
  if (dateExpired)
  {
    dateExpired2 = [(SKADatabaseStatus *)self dateExpired];
    [dateExpired2 timeIntervalSince1970];
    v6 = v5;
    v7 = [MEMORY[0x277CBEAA8] now];
    [v7 timeIntervalSince1970];
    v9 = v6 < v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = +[SKADatabaseStatus logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    dateExpired3 = [(SKADatabaseStatus *)self dateExpired];
    v14 = 138412546;
    v15 = dateExpired3;
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&dword_220099000, v10, OS_LOG_TYPE_DEFAULT, "Date expired: %@, isExpired: %d", &v14, 0x12u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  uniqueIdentifier = [(SKADatabaseStatus *)self uniqueIdentifier];
  channelIdentifier = [(SKADatabaseStatus *)self channelIdentifier];
  dateCreated = [(SKADatabaseStatus *)self dateCreated];
  dateExpired = [(SKADatabaseStatus *)self dateExpired];
  v9 = [v3 stringWithFormat:@"<%@: %p uniqueIdentifier = %@; channelIdentifier = %@; dateCreated = %@; dateExpired = %@>;", v4, self, uniqueIdentifier, channelIdentifier, dateCreated, dateExpired];;

  return v9;
}

+ (id)logger
{
  if (logger_onceToken_11 != -1)
  {
    +[SKADatabaseStatus logger];
  }

  v3 = logger__logger_11;

  return v3;
}

uint64_t __27__SKADatabaseStatus_logger__block_invoke()
{
  logger__logger_11 = os_log_create("com.apple.StatusKit", "SKADatabaseStatus");

  return MEMORY[0x2821F96F8]();
}

@end