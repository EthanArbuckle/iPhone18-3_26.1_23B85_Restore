@interface CSDAggregateDictionaryReporter
- (CSDAggregateDictionaryReporter)init;
- (void)reportingController:(id)a3 relayMessageReceived:(id)a4 fromPairedDevice:(BOOL)a5;
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

- (void)reportingController:(id)a3 relayMessageReceived:(id)a4 fromPairedDevice:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  if (v5)
  {
    v22 = v7;
    [v7 messageSendTime];
    v7 = v22;
    if (v8 != 0.0)
    {
      v9 = +[NSDate date];
      [v9 timeIntervalSince1970];
      v11 = v10;

      [v22 messageSendTime];
      v13 = v12;
      v14 = TUBundleIdentifierCallServicesDaemon;
      v15 = [v22 typeString];
      [v22 messageSendTime];
      v17 = [NSMutableString stringWithFormat:@"%@.%@.%f", v14, v15, v16];

      v18 = [v22 uniqueProxyIdentifier];

      if (v18)
      {
        v19 = [v22 uniqueProxyIdentifier];
        [v17 appendFormat:@".%@", v19];
      }

      v20 = [(CSDAggregateDictionaryReporter *)self block];

      if (v20)
      {
        v21 = [(CSDAggregateDictionaryReporter *)self block];
        (v21)[2](v21, v17, v11 - v13);
      }

      v7 = v22;
    }
  }
}

@end