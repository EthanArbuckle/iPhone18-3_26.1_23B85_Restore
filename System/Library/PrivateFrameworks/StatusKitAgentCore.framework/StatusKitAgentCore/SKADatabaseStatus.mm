@interface SKADatabaseStatus
+ (id)logger;
- (BOOL)isExpired;
- (SKADatabaseStatus)initWithChannelIdentifier:(id)a3 dateCreated:(id)a4 datePublished:(id)a5 dateReceived:(id)a6 dateExpired:(id)a7 rawData:(id)a8 uniqueIdentifier:(id)a9;
- (SKADatabaseStatus)initWithCoreDataStatus:(id)a3;
- (id)description;
@end

@implementation SKADatabaseStatus

- (SKADatabaseStatus)initWithCoreDataStatus:(id)a3
{
  v4 = a3;
  v5 = [v4 channelIdentifier];
  v6 = [v4 dateCreated];
  v7 = [v4 datePublished];
  v8 = [v4 dateReceived];
  v9 = [v4 dateExpired];
  v10 = [v4 rawData];
  v11 = [v4 uniqueIdentifier];

  v12 = [(SKADatabaseStatus *)self initWithChannelIdentifier:v5 dateCreated:v6 datePublished:v7 dateReceived:v8 dateExpired:v9 rawData:v10 uniqueIdentifier:v11];
  return v12;
}

- (SKADatabaseStatus)initWithChannelIdentifier:(id)a3 dateCreated:(id)a4 datePublished:(id)a5 dateReceived:(id)a6 dateExpired:(id)a7 rawData:(id)a8 uniqueIdentifier:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v36.receiver = self;
  v36.super_class = SKADatabaseStatus;
  v22 = [(SKADatabaseStatus *)&v36 init];
  if (v22)
  {
    v23 = [v15 copy];
    channelIdentifier = v22->_channelIdentifier;
    v22->_channelIdentifier = v23;

    v25 = [v16 copy];
    dateCreated = v22->_dateCreated;
    v22->_dateCreated = v25;

    v27 = [v17 copy];
    datePublished = v22->_datePublished;
    v22->_datePublished = v27;

    v29 = [v18 copy];
    dateReceived = v22->_dateReceived;
    v22->_dateReceived = v29;

    v31 = [v19 copy];
    dateExpired = v22->_dateExpired;
    v22->_dateExpired = v31;

    objc_storeStrong(&v22->_rawData, a8);
    v33 = [v21 copy];
    uniqueIdentifier = v22->_uniqueIdentifier;
    v22->_uniqueIdentifier = v33;
  }

  return v22;
}

- (BOOL)isExpired
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(SKADatabaseStatus *)self dateExpired];
  if (v3)
  {
    v4 = [(SKADatabaseStatus *)self dateExpired];
    [v4 timeIntervalSince1970];
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
    v11 = [(SKADatabaseStatus *)self dateExpired];
    v14 = 138412546;
    v15 = v11;
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
  v5 = [(SKADatabaseStatus *)self uniqueIdentifier];
  v6 = [(SKADatabaseStatus *)self channelIdentifier];
  v7 = [(SKADatabaseStatus *)self dateCreated];
  v8 = [(SKADatabaseStatus *)self dateExpired];
  v9 = [v3 stringWithFormat:@"<%@: %p uniqueIdentifier = %@; channelIdentifier = %@; dateCreated = %@; dateExpired = %@>;", v4, self, v5, v6, v7, v8];;

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