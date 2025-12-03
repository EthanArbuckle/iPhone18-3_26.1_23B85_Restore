@interface DisconnectionStateStatistics
- (BOOL)isMergeableWithDisconnectionStateStatistics:(id)statistics;
- (DisconnectionStateStatistics)initWithCoder:(id)coder;
- (DisconnectionStateStatistics)initWithDaysOfWeek:(id)week periodId:(unint64_t)id forNetworkStateRecord:(id)record;
- (id)description;
- (void)calculateAverageLength;
- (void)encodeWithCoder:(id)coder;
- (void)mergeDisconnectionStateStatistics:(id)statistics;
@end

@implementation DisconnectionStateStatistics

- (DisconnectionStateStatistics)initWithDaysOfWeek:(id)week periodId:(unint64_t)id forNetworkStateRecord:(id)record
{
  weekCopy = week;
  recordCopy = record;
  v20.receiver = self;
  v20.super_class = DisconnectionStateStatistics;
  v11 = [(DisconnectionStateStatistics *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_daysOfWeek, week);
    v12->_periodId = id;
    stateBeginningNetworkId = [recordCopy stateBeginningNetworkId];
    disconnectedFromNetworkId = v12->_disconnectedFromNetworkId;
    v12->_disconnectedFromNetworkId = stateBeginningNetworkId;

    stateEndingNetworkId = [recordCopy stateEndingNetworkId];
    connectToNetworkId = v12->_connectToNetworkId;
    v12->_connectToNetworkId = stateEndingNetworkId;

    v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{recordCopy, 0}];
    networkStateRecords = v12->_networkStateRecords;
    v12->_networkStateRecords = v17;

    v12->_averageDisconnectionLength = 0;
  }

  return v12;
}

- (DisconnectionStateStatistics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = DisconnectionStateStatistics;
  v5 = [(DisconnectionStateStatistics *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"daysOfWeek"];
    daysOfWeek = v5->_daysOfWeek;
    v5->_daysOfWeek = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"periodId"];
    v5->_periodId = [v11 unsignedIntegerValue];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"disconnectedFrom"];
    disconnectedFromNetworkId = v5->_disconnectedFromNetworkId;
    v5->_disconnectedFromNetworkId = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"connectTo"];
    connectToNetworkId = v5->_connectToNetworkId;
    v5->_connectToNetworkId = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"networkStateRecords"];
    networkStateRecords = v5->_networkStateRecords;
    v5->_networkStateRecords = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageDisconnectionLength"];
    v5->_averageDisconnectionLength = [v21 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  daysOfWeek = [(DisconnectionStateStatistics *)self daysOfWeek];
  [coderCopy encodeObject:daysOfWeek forKey:@"daysOfWeek"];

  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{-[DisconnectionStateStatistics periodId](self, "periodId")}];
  [coderCopy encodeObject:v6 forKey:@"periodId"];

  disconnectedFromNetworkId = [(DisconnectionStateStatistics *)self disconnectedFromNetworkId];
  [coderCopy encodeObject:disconnectedFromNetworkId forKey:@"disconnectedFrom"];

  connectToNetworkId = [(DisconnectionStateStatistics *)self connectToNetworkId];
  [coderCopy encodeObject:connectToNetworkId forKey:@"connectTo"];

  networkStateRecords = [(DisconnectionStateStatistics *)self networkStateRecords];
  [coderCopy encodeObject:networkStateRecords forKey:@"networkStateRecords"];

  v10 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{-[DisconnectionStateStatistics averageDisconnectionLength](self, "averageDisconnectionLength")}];
  [coderCopy encodeObject:v10 forKey:@"averageDisconnectionLength"];
}

- (BOOL)isMergeableWithDisconnectionStateStatistics:(id)statistics
{
  statisticsCopy = statistics;
  daysOfWeek = [(DisconnectionStateStatistics *)self daysOfWeek];
  daysOfWeek2 = [statisticsCopy daysOfWeek];
  if ([daysOfWeek isEqualToSet:daysOfWeek2] && (v7 = -[DisconnectionStateStatistics periodId](self, "periodId"), v7 == objc_msgSend(statisticsCopy, "periodId")))
  {
    disconnectedFromNetworkId = [(DisconnectionStateStatistics *)self disconnectedFromNetworkId];
    disconnectedFromNetworkId2 = [statisticsCopy disconnectedFromNetworkId];
    if ([disconnectedFromNetworkId isEqualToString:disconnectedFromNetworkId2])
    {
      connectToNetworkId = [(DisconnectionStateStatistics *)self connectToNetworkId];
      connectToNetworkId2 = [statisticsCopy connectToNetworkId];
      v12 = [connectToNetworkId isEqualToString:connectToNetworkId2];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  daysOfWeek = [(DisconnectionStateStatistics *)self daysOfWeek];
  allObjects = [daysOfWeek allObjects];
  v6 = [allObjects componentsJoinedByString:{@", "}];
  periodId = [(DisconnectionStateStatistics *)self periodId];
  disconnectedFromNetworkId = [(DisconnectionStateStatistics *)self disconnectedFromNetworkId];
  connectToNetworkId = [(DisconnectionStateStatistics *)self connectToNetworkId];
  averageDisconnectionLength = [(DisconnectionStateStatistics *)self averageDisconnectionLength];
  networkStateRecords = [(DisconnectionStateStatistics *)self networkStateRecords];
  v12 = [networkStateRecords componentsJoinedByString:@" "];;
  v13 = [v3 stringWithFormat:@"{daysOfWeek= [%@], period=%ld, disconnected from=%@, connect to=%@, average length = %ld, records = [%@]}", v6, periodId, disconnectedFromNetworkId, connectToNetworkId, averageDisconnectionLength, v12];

  return v13;
}

- (void)mergeDisconnectionStateStatistics:(id)statistics
{
  networkStateRecords = self->_networkStateRecords;
  networkStateRecords = [statistics networkStateRecords];
  [(NSMutableArray *)networkStateRecords addObjectsFromArray:networkStateRecords];
}

- (void)calculateAverageLength
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_networkStateRecords count])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = self->_networkStateRecords;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          self->_averageDisconnectionLength += [*(*(&v9 + 1) + 8 * v7++) stateLength];
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    self->_averageDisconnectionLength /= [(NSMutableArray *)self->_networkStateRecords count];
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end