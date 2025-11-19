@interface NSPConnectionInfo
+ (BOOL)shouldResolveForFallbackReason:(int64_t)a3;
+ (id)getFallbackReasonDescription:(int64_t)a3;
+ (int)fallbackReasonToErrno:(int64_t)a3;
- (NSPConnectionInfo)initWithCoder:(id)a3;
- (id)copyDictionary;
- (id)timingIntervalAtIndex:(unint64_t)a3 forKey:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setFallbackReason:(int64_t)a3;
@end

@implementation NSPConnectionInfo

- (NSPConnectionInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = NSPConnectionInfo;
  v5 = [(NSPConnectionInfo *)&v25 init];
  if (v5)
  {
    v5->_pathType = [v4 decodeIntegerForKey:@"pathType"];
    v5->_fallbackReason = [v4 decodeIntegerForKey:@"fallbackReason"];
    v5->_fallbackReasonCategory = [v4 decodeIntegerForKey:@"fallbackCategory"];
    [v4 decodeDoubleForKey:@"fallbackDelay"];
    v5->_fallbackDelay = v6;
    v5->_edgeType = [v4 decodeIntegerForKey:@"edgeType"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"edgeAddress"];
    edgeAddress = v5->_edgeAddress;
    v5->_edgeAddress = v7;

    v5->_isMultipath = [v4 decodeBoolForKey:@"isMultipath"];
    v5->_multipathSubflowCount = [v4 decodeIntegerForKey:@"multipathSubflowCountKey"];
    v5->_multipathConnectedSubflowCount = [v4 decodeIntegerForKey:@"multipathConnectedSubflowCountKey"];
    v5->_multipathPrimarySubflowInterfaceIndex = [v4 decodeIntegerForKey:@"multipathPrimarySubflowInterfaceIndex"];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v9, v10, objc_opt_class(), 0];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"multipathSubflowSwitchCounts"];
    multipathSubflowSwitchCounts = v5->_multipathSubflowSwitchCounts;
    v5->_multipathSubflowSwitchCounts = v12;

    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [NSSet setWithObjects:v14, v15, objc_opt_class(), 0];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"TCPInfo"];
    TCPInfo = v5->_TCPInfo;
    v5->_TCPInfo = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstTxByteTimeStamp"];
    firstTxByteTimeStamp = v5->_firstTxByteTimeStamp;
    v5->_firstTxByteTimeStamp = v19;

    [v4 decodeDoubleForKey:@"firstTxByteDelay"];
    v5->_firstTxByteDelay = v21;
    [v4 decodeDoubleForKey:@"connectionDelay"];
    v5->_connectionDelay = v22;
    v5->_TFOSucceeded = [v4 decodeBoolForKey:@"TFOSucceeded"];
    v5->_IPType = [v4 decodeIntegerForKey:@"IPType"];
    v5->_interfaceType = [v4 decodeIntegerForKey:@"interfaceType"];
    [v4 decodeDoubleForKey:@"timeIntervalSinceLastUsage"];
    v5->_timeIntervalSinceLastUsage = v23;
    v5->_timeToFirstByte = [v4 decodeIntegerForKey:@"timeToFirstByte"];
    v5->_tunnelConnectionError = [v4 decodeIntegerForKey:@"tunnelConnectionError"];
    v5->_isTFOProbeSucceeded = [v4 decodeBoolForKey:@"isTFOProbeSucceeded"];
    v5->_initialBytesLeftOver = [v4 decodeIntegerForKey:@"initialBytesLeftOver"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeInteger:-[NSPConnectionInfo pathType](self forKey:{"pathType"), @"pathType"}];
  [v8 encodeInteger:-[NSPConnectionInfo fallbackReason](self forKey:{"fallbackReason"), @"fallbackReason"}];
  [v8 encodeInteger:-[NSPConnectionInfo fallbackReasonCategory](self forKey:{"fallbackReasonCategory"), @"fallbackCategory"}];
  [(NSPConnectionInfo *)self fallbackDelay];
  [v8 encodeDouble:@"fallbackDelay" forKey:?];
  [v8 encodeInteger:-[NSPConnectionInfo edgeType](self forKey:{"edgeType"), @"edgeType"}];
  v4 = [(NSPConnectionInfo *)self edgeAddress];
  [v8 encodeObject:v4 forKey:@"edgeAddress"];

  [v8 encodeBool:-[NSPConnectionInfo isMultipath](self forKey:{"isMultipath"), @"isMultipath"}];
  [v8 encodeInteger:-[NSPConnectionInfo multipathSubflowCount](self forKey:{"multipathSubflowCount"), @"multipathSubflowCountKey"}];
  [v8 encodeInteger:-[NSPConnectionInfo multipathConnectedSubflowCount](self forKey:{"multipathConnectedSubflowCount"), @"multipathConnectedSubflowCountKey"}];
  [v8 encodeInteger:-[NSPConnectionInfo multipathPrimarySubflowInterfaceIndex](self forKey:{"multipathPrimarySubflowInterfaceIndex"), @"multipathPrimarySubflowInterfaceIndex"}];
  v5 = [(NSPConnectionInfo *)self multipathSubflowSwitchCounts];
  [v8 encodeObject:v5 forKey:@"multipathSubflowSwitchCounts"];

  v6 = [(NSPConnectionInfo *)self TCPInfo];
  [v8 encodeObject:v6 forKey:@"TCPInfo"];

  v7 = [(NSPConnectionInfo *)self firstTxByteTimeStamp];
  [v8 encodeObject:v7 forKey:@"firstTxByteTimeStamp"];

  [(NSPConnectionInfo *)self firstTxByteDelay];
  [v8 encodeDouble:@"firstTxByteDelay" forKey:?];
  [(NSPConnectionInfo *)self connectionDelay];
  [v8 encodeDouble:@"connectionDelay" forKey:?];
  [v8 encodeBool:-[NSPConnectionInfo TFOSucceeded](self forKey:{"TFOSucceeded"), @"TFOSucceeded"}];
  [v8 encodeInteger:-[NSPConnectionInfo IPType](self forKey:{"IPType"), @"IPType"}];
  [v8 encodeInteger:-[NSPConnectionInfo interfaceType](self forKey:{"interfaceType"), @"interfaceType"}];
  [(NSPConnectionInfo *)self timeIntervalSinceLastUsage];
  [v8 encodeDouble:@"timeIntervalSinceLastUsage" forKey:?];
  [(NSPConnectionInfo *)self timeToFirstByte];
  [v8 encodeDouble:@"timeToFirstByte" forKey:?];
  [v8 encodeInteger:-[NSPConnectionInfo tunnelConnectionError](self forKey:{"tunnelConnectionError"), @"tunnelConnectionError"}];
  [v8 encodeBool:-[NSPConnectionInfo isTFOProbeSucceeded](self forKey:{"isTFOProbeSucceeded"), @"isTFOProbeSucceeded"}];
  [v8 encodeInteger:-[NSPConnectionInfo initialBytesLeftOver](self forKey:{"initialBytesLeftOver"), @"initialBytesLeftOver"}];
}

- (id)copyDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [[NSNumber alloc] initWithInteger:{-[NSPConnectionInfo pathType](self, "pathType")}];
  [v3 setObject:v4 forKeyedSubscript:@"pathType"];

  v5 = [[NSNumber alloc] initWithInteger:{-[NSPConnectionInfo fallbackReason](self, "fallbackReason")}];
  [v3 setObject:v5 forKeyedSubscript:@"fallbackReason"];

  v6 = [[NSNumber alloc] initWithInteger:{-[NSPConnectionInfo fallbackReasonCategory](self, "fallbackReasonCategory")}];
  [v3 setObject:v6 forKeyedSubscript:@"fallbackCategory"];

  v7 = [NSNumber alloc];
  [(NSPConnectionInfo *)self fallbackDelay];
  v8 = [v7 initWithDouble:?];
  [v3 setObject:v8 forKeyedSubscript:@"fallbackDelay"];

  v9 = [(NSPConnectionInfo *)self edgeAddress];

  if (v9)
  {
    v10 = [[NSNumber alloc] initWithInteger:{-[NSPConnectionInfo edgeType](self, "edgeType")}];
    [v3 setObject:v10 forKeyedSubscript:@"edgeType"];

    v11 = [(NSPConnectionInfo *)self edgeAddress];
    [v3 setObject:v11 forKeyedSubscript:@"edgeAddress"];
  }

  if ([(NSPConnectionInfo *)self isMultipath])
  {
    v12 = [[NSNumber alloc] initWithBool:{-[NSPConnectionInfo isMultipath](self, "isMultipath")}];
    [v3 setObject:v12 forKeyedSubscript:@"isMultipath"];

    v13 = [[NSNumber alloc] initWithUnsignedInteger:{-[NSPConnectionInfo multipathSubflowCount](self, "multipathSubflowCount")}];
    [v3 setObject:v13 forKeyedSubscript:@"multipathSubflowCountKey"];

    v14 = [[NSNumber alloc] initWithUnsignedInteger:{-[NSPConnectionInfo multipathConnectedSubflowCount](self, "multipathConnectedSubflowCount")}];
    [v3 setObject:v14 forKeyedSubscript:@"multipathConnectedSubflowCountKey"];

    v15 = [[NSNumber alloc] initWithUnsignedInteger:{-[NSPConnectionInfo multipathPrimarySubflowInterfaceIndex](self, "multipathPrimarySubflowInterfaceIndex")}];
    [v3 setObject:v15 forKeyedSubscript:@"multipathPrimarySubflowInterfaceIndex"];

    v16 = [(NSPConnectionInfo *)self multipathSubflowSwitchCounts];
    v17 = [v16 count];

    if (v17)
    {
      v18 = [(NSPConnectionInfo *)self multipathSubflowSwitchCounts];
      [v3 setObject:v18 forKeyedSubscript:@"multipathSubflowSwitchCounts"];
    }
  }

  v19 = [(NSPConnectionInfo *)self TCPInfo];
  v20 = [v19 count];

  if (v20)
  {
    v57 = self;
    v58 = v3;
    v21 = [(NSPConnectionInfo *)self TCPInfo];
    v22 = [v21 mutableCopy];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v23 = v22;
    v24 = [v23 countByEnumeratingWithState:&v59 objects:v63 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v60;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v60 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v59 + 1) + 8 * i);
          v29 = [v23 objectForKeyedSubscript:v28];
          if ([v29 length] == &stru_1A8)
          {
            v30 = [v29 bytes];
            v31 = objc_alloc_init(NSMutableDictionary);
            v32 = [[NSNumber alloc] initWithUnsignedLongLong:*(v30 + 100)];
            [v31 setObject:v32 forKeyedSubscript:@"rxPackets"];

            v33 = [[NSNumber alloc] initWithUnsignedLongLong:*(v30 + 108)];
            [v31 setObject:v33 forKeyedSubscript:@"rxBytes"];

            v34 = [[NSNumber alloc] initWithUnsignedLongLong:*(v30 + 68)];
            [v31 setObject:v34 forKeyedSubscript:@"txPackets"];

            v35 = [[NSNumber alloc] initWithUnsignedLongLong:*(v30 + 76)];
            [v31 setObject:v35 forKeyedSubscript:@"txBytes"];

            v36 = [[NSNumber alloc] initWithUnsignedLongLong:*(v30 + 84)];
            [v31 setObject:v36 forKeyedSubscript:@"retransmitBytes"];

            v37 = [[NSNumber alloc] initWithUnsignedLongLong:*(v30 + 284)];
            [v31 setObject:v37 forKeyedSubscript:@"retransmitPackets"];

            v38 = [[NSDictionary alloc] initWithDictionary:v31];
            [v23 setObject:v38 forKeyedSubscript:v28];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v59 objects:v63 count:16];
      }

      while (v25);
    }

    v39 = [[NSDictionary alloc] initWithDictionary:v23];
    v3 = v58;
    [v58 setObject:v39 forKeyedSubscript:@"TCPInfo"];

    self = v57;
  }

  v40 = [[NSNumber alloc] initWithInteger:{-[NSPConnectionInfo interfaceType](self, "interfaceType")}];
  [v3 setObject:v40 forKeyedSubscript:@"interfaceType"];

  v41 = [[NSNumber alloc] initWithBool:{-[NSPConnectionInfo isTFOProbeSucceeded](self, "isTFOProbeSucceeded")}];
  [v3 setObject:v41 forKeyedSubscript:@"isTFOProbeSucceeded"];

  v42 = [[NSNumber alloc] initWithInteger:{-[NSPConnectionInfo tunnelConnectionError](self, "tunnelConnectionError")}];
  [v3 setObject:v42 forKeyedSubscript:@"tunnelConnectionError"];

  if ([(NSPConnectionInfo *)self pathType]== &dword_0 + 1)
  {
    v43 = [NSNumber alloc];
    [(NSPConnectionInfo *)self firstTxByteDelay];
    v44 = [v43 initWithDouble:?];
    [v3 setObject:v44 forKeyedSubscript:@"firstTxByteDelay"];

    v45 = [NSNumber alloc];
    [(NSPConnectionInfo *)self connectionDelay];
    v46 = [v45 initWithDouble:?];
    [v3 setObject:v46 forKeyedSubscript:@"connectionDelay"];

    v47 = [[NSNumber alloc] initWithBool:{-[NSPConnectionInfo TFOSucceeded](self, "TFOSucceeded")}];
    [v3 setObject:v47 forKeyedSubscript:@"TFOSucceeded"];

    v48 = [[NSNumber alloc] initWithInteger:{-[NSPConnectionInfo IPType](self, "IPType")}];
    [v3 setObject:v48 forKeyedSubscript:@"IPType"];

    v49 = [[NSNumber alloc] initWithUnsignedInteger:{-[NSPConnectionInfo minimumRTT](self, "minimumRTT")}];
    [v3 setObject:v49 forKeyedSubscript:@"minimumRTT"];

    v50 = [NSNumber alloc];
    [(NSPConnectionInfo *)self timeIntervalSinceLastUsage];
    v51 = [v50 initWithDouble:?];
    [v3 setObject:v51 forKeyedSubscript:@"timeIntervalSinceLastUsage"];

    v52 = [NSNumber alloc];
    [(NSPConnectionInfo *)self timeToFirstByte];
    v53 = [v52 initWithDouble:?];
    [v3 setObject:v53 forKeyedSubscript:@"timeToFirstByte"];

    v54 = [[NSNumber alloc] initWithUnsignedInteger:{-[NSPConnectionInfo initialBytesLeftOver](self, "initialBytesLeftOver")}];
    [v3 setObject:v54 forKeyedSubscript:@"initialBytesLeftOver"];
  }

  v55 = [[NSDictionary alloc] initWithDictionary:v3];

  return v55;
}

+ (id)getFallbackReasonDescription:(int64_t)a3
{
  if (a3 > 0x2D)
  {
    return 0;
  }

  else
  {
    return *(&off_145D0 + a3);
  }
}

+ (int)fallbackReasonToErrno:(int64_t)a3
{
  if ((a3 - 1) > 0x2C)
  {
    return 0;
  }

  else
  {
    return *&::a3[4 * a3 - 4];
  }
}

- (void)setFallbackReason:(int64_t)a3
{
  self->_fallbackReason = a3;
  if ((a3 - 1) <= 0x2C)
  {
    self->_fallbackReasonCategory = qword_11E00[a3 - 1];
  }
}

+ (BOOL)shouldResolveForFallbackReason:(int64_t)a3
{
  result = [NSPConnectionInfo shouldMoveToNextEdgeForFallbackReason:?];
  if (a3 == 4)
  {
    return 1;
  }

  return result;
}

- (id)timingIntervalAtIndex:(unint64_t)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [(NSPConnectionInfo *)self timingIntervals];
  v8 = [v7 count];

  if (v8 <= a3)
  {
    v11 = 0;
  }

  else
  {
    v9 = [(NSPConnectionInfo *)self timingIntervals];
    v10 = [v9 objectAtIndexedSubscript:a3];

    v11 = [v10 objectForKeyedSubscript:v6];
  }

  return v11;
}

@end