@interface DisconnectionStateStatistics
- (BOOL)isMergeableWithDisconnectionStateStatistics:(id)a3;
- (DisconnectionStateStatistics)initWithCoder:(id)a3;
- (DisconnectionStateStatistics)initWithDaysOfWeek:(id)a3 periodId:(unint64_t)a4 forNetworkStateRecord:(id)a5;
- (id)description;
- (void)calculateAverageLength;
- (void)encodeWithCoder:(id)a3;
- (void)mergeDisconnectionStateStatistics:(id)a3;
@end

@implementation DisconnectionStateStatistics

- (DisconnectionStateStatistics)initWithDaysOfWeek:(id)a3 periodId:(unint64_t)a4 forNetworkStateRecord:(id)a5
{
  v9 = a3;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = DisconnectionStateStatistics;
  v11 = [(DisconnectionStateStatistics *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_daysOfWeek, a3);
    v12->_periodId = a4;
    v13 = [v10 stateBeginningNetworkId];
    disconnectedFromNetworkId = v12->_disconnectedFromNetworkId;
    v12->_disconnectedFromNetworkId = v13;

    v15 = [v10 stateEndingNetworkId];
    connectToNetworkId = v12->_connectToNetworkId;
    v12->_connectToNetworkId = v15;

    v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v10, 0}];
    networkStateRecords = v12->_networkStateRecords;
    v12->_networkStateRecords = v17;

    v12->_averageDisconnectionLength = 0;
  }

  return v12;
}

- (DisconnectionStateStatistics)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = DisconnectionStateStatistics;
  v5 = [(DisconnectionStateStatistics *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"daysOfWeek"];
    daysOfWeek = v5->_daysOfWeek;
    v5->_daysOfWeek = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"periodId"];
    v5->_periodId = [v11 unsignedIntegerValue];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"disconnectedFrom"];
    disconnectedFromNetworkId = v5->_disconnectedFromNetworkId;
    v5->_disconnectedFromNetworkId = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"connectTo"];
    connectToNetworkId = v5->_connectToNetworkId;
    v5->_connectToNetworkId = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"networkStateRecords"];
    networkStateRecords = v5->_networkStateRecords;
    v5->_networkStateRecords = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"averageDisconnectionLength"];
    v5->_averageDisconnectionLength = [v21 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DisconnectionStateStatistics *)self daysOfWeek];
  [v4 encodeObject:v5 forKey:@"daysOfWeek"];

  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{-[DisconnectionStateStatistics periodId](self, "periodId")}];
  [v4 encodeObject:v6 forKey:@"periodId"];

  v7 = [(DisconnectionStateStatistics *)self disconnectedFromNetworkId];
  [v4 encodeObject:v7 forKey:@"disconnectedFrom"];

  v8 = [(DisconnectionStateStatistics *)self connectToNetworkId];
  [v4 encodeObject:v8 forKey:@"connectTo"];

  v9 = [(DisconnectionStateStatistics *)self networkStateRecords];
  [v4 encodeObject:v9 forKey:@"networkStateRecords"];

  v10 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{-[DisconnectionStateStatistics averageDisconnectionLength](self, "averageDisconnectionLength")}];
  [v4 encodeObject:v10 forKey:@"averageDisconnectionLength"];
}

- (BOOL)isMergeableWithDisconnectionStateStatistics:(id)a3
{
  v4 = a3;
  v5 = [(DisconnectionStateStatistics *)self daysOfWeek];
  v6 = [v4 daysOfWeek];
  if ([v5 isEqualToSet:v6] && (v7 = -[DisconnectionStateStatistics periodId](self, "periodId"), v7 == objc_msgSend(v4, "periodId")))
  {
    v8 = [(DisconnectionStateStatistics *)self disconnectedFromNetworkId];
    v9 = [v4 disconnectedFromNetworkId];
    if ([v8 isEqualToString:v9])
    {
      v10 = [(DisconnectionStateStatistics *)self connectToNetworkId];
      v11 = [v4 connectToNetworkId];
      v12 = [v10 isEqualToString:v11];
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
  v4 = [(DisconnectionStateStatistics *)self daysOfWeek];
  v5 = [v4 allObjects];
  v6 = [v5 componentsJoinedByString:{@", "}];
  v7 = [(DisconnectionStateStatistics *)self periodId];
  v8 = [(DisconnectionStateStatistics *)self disconnectedFromNetworkId];
  v9 = [(DisconnectionStateStatistics *)self connectToNetworkId];
  v10 = [(DisconnectionStateStatistics *)self averageDisconnectionLength];
  v11 = [(DisconnectionStateStatistics *)self networkStateRecords];
  v12 = [v11 componentsJoinedByString:@" "];;
  v13 = [v3 stringWithFormat:@"{daysOfWeek= [%@], period=%ld, disconnected from=%@, connect to=%@, average length = %ld, records = [%@]}", v6, v7, v8, v9, v10, v12];

  return v13;
}

- (void)mergeDisconnectionStateStatistics:(id)a3
{
  networkStateRecords = self->_networkStateRecords;
  v4 = [a3 networkStateRecords];
  [(NSMutableArray *)networkStateRecords addObjectsFromArray:v4];
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