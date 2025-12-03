@interface CSDAggregateDictionaryReporter
- (CSDAggregateDictionaryReporter)init;
- (void)reportingController:(id)controller relayMessageReceived:(id)received fromPairedDevice:(BOOL)device;
@end

@implementation CSDAggregateDictionaryReporter

- (CSDAggregateDictionaryReporter)init
{
  v6.receiver = self;
  v6.super_class = CSDAggregateDictionaryReporter;
  v2 = [(CSDAggregateDictionaryReporter *)&v6 init];
  v3 = v2;
  if (v2)
  {
    block = v2->_block;
    v2->_block = &stru_10061A0A8;
  }

  return v3;
}

- (void)reportingController:(id)controller relayMessageReceived:(id)received fromPairedDevice:(BOOL)device
{
  deviceCopy = device;
  receivedCopy = received;
  if (deviceCopy)
  {
    v22 = receivedCopy;
    [receivedCopy messageSendTime];
    receivedCopy = v22;
    if (v8 != 0.0)
    {
      v9 = +[NSDate date];
      [v9 timeIntervalSince1970];
      v11 = v10;

      [v22 messageSendTime];
      v13 = v12;
      v14 = TUBundleIdentifierCallServicesDaemon;
      typeString = [v22 typeString];
      [v22 messageSendTime];
      v17 = [NSMutableString stringWithFormat:@"%@.%@.%f", v14, typeString, v16];

      uniqueProxyIdentifier = [v22 uniqueProxyIdentifier];

      if (uniqueProxyIdentifier)
      {
        uniqueProxyIdentifier2 = [v22 uniqueProxyIdentifier];
        [v17 appendFormat:@".%@", uniqueProxyIdentifier2];
      }

      block = [(CSDAggregateDictionaryReporter *)self block];

      if (block)
      {
        block2 = [(CSDAggregateDictionaryReporter *)self block];
        (block2)[2](block2, v17, v11 - v13);
      }

      receivedCopy = v22;
    }
  }
}

@end