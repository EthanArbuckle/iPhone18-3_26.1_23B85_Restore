@interface PGUpNextMemoriesAggregator
- (BOOL)addUpNextMemory:(id)a3 debugInfo:(id *)a4;
- (PGUpNextMemoriesAggregator)initWithLowercaseTitles:(id)a3 keyAssetLocalIdentifiers:(id)a4 gateOnUserFeedback:(BOOL)a5 loggingConnection:(id)a6;
@end

@implementation PGUpNextMemoriesAggregator

- (BOOL)addUpNextMemory:(id)a3 debugInfo:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v23 = [v5 memory];
  v6 = [v5 title];
  v7 = [v6 lowercaseString];
  v8 = [v5 subtitle];
  v9 = [v5 keyAssetLocalIdentifier];
  v10 = [v5 memoryLocalIdentifier];
  v11 = [v10 substringToIndex:8];

  v12 = [v6 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2843F5C58];
  v21 = v8;
  v24 = [v8 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2843F5C58];
  v13 = [v9 substringToIndex:8];
  if ([(NSMutableSet *)self->_lowercaseTitles containsObject:v7])
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

  if (!v9)
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

  if ([(NSMutableSet *)self->_keyAssetLocalIdentifiers containsObject:v9])
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

  if (self->_gateOnUserFeedback && [v5 isBlockedByUserFeedback])
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

  [(NSMutableSet *)self->_keyAssetLocalIdentifiers addObject:v9];
  [(NSMutableSet *)self->_lowercaseTitles addObject:v7];
  [(NSMutableArray *)self->_acceptedMemories addObject:v23];
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
  if (a4)
  {
    v17 = v14;
    *a4 = v17;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (PGUpNextMemoriesAggregator)initWithLowercaseTitles:(id)a3 keyAssetLocalIdentifiers:(id)a4 gateOnUserFeedback:(BOOL)a5 loggingConnection:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = PGUpNextMemoriesAggregator;
  v13 = [(PGUpNextMemoriesAggregator *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_gateOnUserFeedback = a5;
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    acceptedMemories = v14->_acceptedMemories;
    v14->_acceptedMemories = v15;

    v17 = [v10 mutableCopy];
    lowercaseTitles = v14->_lowercaseTitles;
    v14->_lowercaseTitles = v17;

    v19 = [v11 mutableCopy];
    keyAssetLocalIdentifiers = v14->_keyAssetLocalIdentifiers;
    v14->_keyAssetLocalIdentifiers = v19;

    objc_storeStrong(&v14->_loggingConnection, a6);
  }

  return v14;
}

@end