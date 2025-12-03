@interface PGUpNextMemoriesAggregator
- (BOOL)addUpNextMemory:(id)memory debugInfo:(id *)info;
- (PGUpNextMemoriesAggregator)initWithLowercaseTitles:(id)titles keyAssetLocalIdentifiers:(id)identifiers gateOnUserFeedback:(BOOL)feedback loggingConnection:(id)connection;
@end

@implementation PGUpNextMemoriesAggregator

- (BOOL)addUpNextMemory:(id)memory debugInfo:(id *)info
{
  v27 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  memory = [memoryCopy memory];
  title = [memoryCopy title];
  lowercaseString = [title lowercaseString];
  subtitle = [memoryCopy subtitle];
  keyAssetLocalIdentifier = [memoryCopy keyAssetLocalIdentifier];
  memoryLocalIdentifier = [memoryCopy memoryLocalIdentifier];
  v11 = [memoryLocalIdentifier substringToIndex:8];

  v12 = [title stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2843F5C58];
  v21 = subtitle;
  v24 = [subtitle stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2843F5C58];
  v13 = [keyAssetLocalIdentifier substringToIndex:8];
  if ([(NSMutableSet *)self->_lowercaseTitles containsObject:lowercaseString])
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Same title, skip memory: %@\n\t%@ - %@\n\tkeyAsset: %@", v11, v12, v24, v13];
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v14;
LABEL_10:
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[UpNext] %@", buf, 0xCu);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (!keyAssetLocalIdentifier)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"No key asset found for memory: %@\n\t%@ - %@"], v11, v12, v24);
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v14;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if ([(NSMutableSet *)self->_keyAssetLocalIdentifiers containsObject:keyAssetLocalIdentifier])
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Conflicting key asset for memory: %@\n\t%@ - %@\n\tkeyAsset: %@", v11, v12, v24, v13];
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v14;
      goto LABEL_10;
    }

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  if (self->_gateOnUserFeedback && [memoryCopy isBlockedByUserFeedback])
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"UserFeedbackScore below threshold, skip memory: %@\n\t%@ - %@\n\tkeyAsset: %@", v11, v12, v24, v13];
    loggingConnection = self->_loggingConnection;
    if (!os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    *buf = 138412290;
    v26 = v14;
    goto LABEL_10;
  }

  [(NSMutableSet *)self->_keyAssetLocalIdentifiers addObject:keyAssetLocalIdentifier];
  [(NSMutableSet *)self->_lowercaseTitles addObject:lowercaseString];
  [(NSMutableArray *)self->_acceptedMemories addObject:memory];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Accepted memory: %@\n\t%@ - %@\n\tkeyAsset: %@"], v11, v12, v24, v13);
  v20 = self->_loggingConnection;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = v14;
    _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "[UpNext] %@", buf, 0xCu);
  }

  v16 = 1;
LABEL_12:
  v17 = v14;
  if (info)
  {
    v17 = v14;
    *info = v17;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (PGUpNextMemoriesAggregator)initWithLowercaseTitles:(id)titles keyAssetLocalIdentifiers:(id)identifiers gateOnUserFeedback:(BOOL)feedback loggingConnection:(id)connection
{
  titlesCopy = titles;
  identifiersCopy = identifiers;
  connectionCopy = connection;
  v22.receiver = self;
  v22.super_class = PGUpNextMemoriesAggregator;
  v13 = [(PGUpNextMemoriesAggregator *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_gateOnUserFeedback = feedback;
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    acceptedMemories = v14->_acceptedMemories;
    v14->_acceptedMemories = v15;

    v17 = [titlesCopy mutableCopy];
    lowercaseTitles = v14->_lowercaseTitles;
    v14->_lowercaseTitles = v17;

    v19 = [identifiersCopy mutableCopy];
    keyAssetLocalIdentifiers = v14->_keyAssetLocalIdentifiers;
    v14->_keyAssetLocalIdentifiers = v19;

    objc_storeStrong(&v14->_loggingConnection, connection);
  }

  return v14;
}

@end