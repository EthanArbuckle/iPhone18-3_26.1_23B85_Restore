@interface NSPConnectionInfo
+ (BOOL)shouldResolveForFallbackReason:(int64_t)reason;
+ (id)getFallbackReasonDescription:(int64_t)description;
+ (int)fallbackReasonToErrno:(int64_t)errno;
- (NSPConnectionInfo)initWithCoder:(id)coder;
- (id)copyDictionary;
- (id)timingIntervalAtIndex:(unint64_t)index forKey:(id)key;
- (void)encodeWithCoder:(id)coder;
- (void)setFallbackReason:(int64_t)reason;
@end

@implementation NSPConnectionInfo

- (NSPConnectionInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = NSPConnectionInfo;
  v5 = [(NSPConnectionInfo *)&v25 init];
  if (v5)
  {
    v5->_pathType = [coderCopy decodeIntegerForKey:@"pathType"];
    v5->_fallbackReason = [coderCopy decodeIntegerForKey:@"fallbackReason"];
    v5->_fallbackReasonCategory = [coderCopy decodeIntegerForKey:@"fallbackCategory"];
    [coderCopy decodeDoubleForKey:@"fallbackDelay"];
    v5->_fallbackDelay = v6;
    v5->_edgeType = [coderCopy decodeIntegerForKey:@"edgeType"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"edgeAddress"];
    edgeAddress = v5->_edgeAddress;
    v5->_edgeAddress = v7;

    v5->_isMultipath = [coderCopy decodeBoolForKey:@"isMultipath"];
    v5->_multipathSubflowCount = [coderCopy decodeIntegerForKey:@"multipathSubflowCountKey"];
    v5->_multipathConnectedSubflowCount = [coderCopy decodeIntegerForKey:@"multipathConnectedSubflowCountKey"];
    v5->_multipathPrimarySubflowInterfaceIndex = [coderCopy decodeIntegerForKey:@"multipathPrimarySubflowInterfaceIndex"];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v9, v10, objc_opt_class(), 0];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"multipathSubflowSwitchCounts"];
    multipathSubflowSwitchCounts = v5->_multipathSubflowSwitchCounts;
    v5->_multipathSubflowSwitchCounts = v12;

    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [NSSet setWithObjects:v14, v15, objc_opt_class(), 0];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"TCPInfo"];
    TCPInfo = v5->_TCPInfo;
    v5->_TCPInfo = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstTxByteTimeStamp"];
    firstTxByteTimeStamp = v5->_firstTxByteTimeStamp;
    v5->_firstTxByteTimeStamp = v19;

    [coderCopy decodeDoubleForKey:@"firstTxByteDelay"];
    v5->_firstTxByteDelay = v21;
    [coderCopy decodeDoubleForKey:@"connectionDelay"];
    v5->_connectionDelay = v22;
    v5->_TFOSucceeded = [coderCopy decodeBoolForKey:@"TFOSucceeded"];
    v5->_IPType = [coderCopy decodeIntegerForKey:@"IPType"];
    v5->_interfaceType = [coderCopy decodeIntegerForKey:@"interfaceType"];
    [coderCopy decodeDoubleForKey:@"timeIntervalSinceLastUsage"];
    v5->_timeIntervalSinceLastUsage = v23;
    v5->_timeToFirstByte = [coderCopy decodeIntegerForKey:@"timeToFirstByte"];
    v5->_tunnelConnectionError = [coderCopy decodeIntegerForKey:@"tunnelConnectionError"];
    v5->_isTFOProbeSucceeded = [coderCopy decodeBoolForKey:@"isTFOProbeSucceeded"];
    v5->_initialBytesLeftOver = [coderCopy decodeIntegerForKey:@"initialBytesLeftOver"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[NSPConnectionInfo pathType](self forKey:{"pathType"), @"pathType"}];
  [coderCopy encodeInteger:-[NSPConnectionInfo fallbackReason](self forKey:{"fallbackReason"), @"fallbackReason"}];
  [coderCopy encodeInteger:-[NSPConnectionInfo fallbackReasonCategory](self forKey:{"fallbackReasonCategory"), @"fallbackCategory"}];
  [(NSPConnectionInfo *)self fallbackDelay];
  [coderCopy encodeDouble:@"fallbackDelay" forKey:?];
  [coderCopy encodeInteger:-[NSPConnectionInfo edgeType](self forKey:{"edgeType"), @"edgeType"}];
  edgeAddress = [(NSPConnectionInfo *)self edgeAddress];
  [coderCopy encodeObject:edgeAddress forKey:@"edgeAddress"];

  [coderCopy encodeBool:-[NSPConnectionInfo isMultipath](self forKey:{"isMultipath"), @"isMultipath"}];
  [coderCopy encodeInteger:-[NSPConnectionInfo multipathSubflowCount](self forKey:{"multipathSubflowCount"), @"multipathSubflowCountKey"}];
  [coderCopy encodeInteger:-[NSPConnectionInfo multipathConnectedSubflowCount](self forKey:{"multipathConnectedSubflowCount"), @"multipathConnectedSubflowCountKey"}];
  [coderCopy encodeInteger:-[NSPConnectionInfo multipathPrimarySubflowInterfaceIndex](self forKey:{"multipathPrimarySubflowInterfaceIndex"), @"multipathPrimarySubflowInterfaceIndex"}];
  multipathSubflowSwitchCounts = [(NSPConnectionInfo *)self multipathSubflowSwitchCounts];
  [coderCopy encodeObject:multipathSubflowSwitchCounts forKey:@"multipathSubflowSwitchCounts"];

  tCPInfo = [(NSPConnectionInfo *)self TCPInfo];
  [coderCopy encodeObject:tCPInfo forKey:@"TCPInfo"];

  firstTxByteTimeStamp = [(NSPConnectionInfo *)self firstTxByteTimeStamp];
  [coderCopy encodeObject:firstTxByteTimeStamp forKey:@"firstTxByteTimeStamp"];

  [(NSPConnectionInfo *)self firstTxByteDelay];
  [coderCopy encodeDouble:@"firstTxByteDelay" forKey:?];
  [(NSPConnectionInfo *)self connectionDelay];
  [coderCopy encodeDouble:@"connectionDelay" forKey:?];
  [coderCopy encodeBool:-[NSPConnectionInfo TFOSucceeded](self forKey:{"TFOSucceeded"), @"TFOSucceeded"}];
  [coderCopy encodeInteger:-[NSPConnectionInfo IPType](self forKey:{"IPType"), @"IPType"}];
  [coderCopy encodeInteger:-[NSPConnectionInfo interfaceType](self forKey:{"interfaceType"), @"interfaceType"}];
  [(NSPConnectionInfo *)self timeIntervalSinceLastUsage];
  [coderCopy encodeDouble:@"timeIntervalSinceLastUsage" forKey:?];
  [(NSPConnectionInfo *)self timeToFirstByte];
  [coderCopy encodeDouble:@"timeToFirstByte" forKey:?];
  [coderCopy encodeInteger:-[NSPConnectionInfo tunnelConnectionError](self forKey:{"tunnelConnectionError"), @"tunnelConnectionError"}];
  [coderCopy encodeBool:-[NSPConnectionInfo isTFOProbeSucceeded](self forKey:{"isTFOProbeSucceeded"), @"isTFOProbeSucceeded"}];
  [coderCopy encodeInteger:-[NSPConnectionInfo initialBytesLeftOver](self forKey:{"initialBytesLeftOver"), @"initialBytesLeftOver"}];
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

  edgeAddress = [(NSPConnectionInfo *)self edgeAddress];

  if (edgeAddress)
  {
    v10 = [[NSNumber alloc] initWithInteger:{-[NSPConnectionInfo edgeType](self, "edgeType")}];
    [v3 setObject:v10 forKeyedSubscript:@"edgeType"];

    edgeAddress2 = [(NSPConnectionInfo *)self edgeAddress];
    [v3 setObject:edgeAddress2 forKeyedSubscript:@"edgeAddress"];
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

    multipathSubflowSwitchCounts = [(NSPConnectionInfo *)self multipathSubflowSwitchCounts];
    v17 = [multipathSubflowSwitchCounts count];

    if (v17)
    {
      multipathSubflowSwitchCounts2 = [(NSPConnectionInfo *)self multipathSubflowSwitchCounts];
      [v3 setObject:multipathSubflowSwitchCounts2 forKeyedSubscript:@"multipathSubflowSwitchCounts"];
    }
  }

  tCPInfo = [(NSPConnectionInfo *)self TCPInfo];
  v20 = [tCPInfo count];

  if (v20)
  {
    selfCopy = self;
    v58 = v3;
    tCPInfo2 = [(NSPConnectionInfo *)self TCPInfo];
    v22 = [tCPInfo2 mutableCopy];

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
            bytes = [v29 bytes];
            v31 = objc_alloc_init(NSMutableDictionary);
            v32 = [[NSNumber alloc] initWithUnsignedLongLong:*(bytes + 100)];
            [v31 setObject:v32 forKeyedSubscript:@"rxPackets"];

            v33 = [[NSNumber alloc] initWithUnsignedLongLong:*(bytes + 108)];
            [v31 setObject:v33 forKeyedSubscript:@"rxBytes"];

            v34 = [[NSNumber alloc] initWithUnsignedLongLong:*(bytes + 68)];
            [v31 setObject:v34 forKeyedSubscript:@"txPackets"];

            v35 = [[NSNumber alloc] initWithUnsignedLongLong:*(bytes + 76)];
            [v31 setObject:v35 forKeyedSubscript:@"txBytes"];

            v36 = [[NSNumber alloc] initWithUnsignedLongLong:*(bytes + 84)];
            [v31 setObject:v36 forKeyedSubscript:@"retransmitBytes"];

            v37 = [[NSNumber alloc] initWithUnsignedLongLong:*(bytes + 284)];
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

    self = selfCopy;
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

+ (id)getFallbackReasonDescription:(int64_t)description
{
  if (description > 0x2D)
  {
    return 0;
  }

  else
  {
    return *(&off_145D0 + description);
  }
}

+ (int)fallbackReasonToErrno:(int64_t)errno
{
  if ((errno - 1) > 0x2C)
  {
    return 0;
  }

  else
  {
    return *&::errno[4 * errno - 4];
  }
}

- (void)setFallbackReason:(int64_t)reason
{
  self->_fallbackReason = reason;
  if ((reason - 1) <= 0x2C)
  {
    self->_fallbackReasonCategory = qword_11E00[reason - 1];
  }
}

+ (BOOL)shouldResolveForFallbackReason:(int64_t)reason
{
  result = [NSPConnectionInfo shouldMoveToNextEdgeForFallbackReason:?];
  if (reason == 4)
  {
    return 1;
  }

  return result;
}

- (id)timingIntervalAtIndex:(unint64_t)index forKey:(id)key
{
  keyCopy = key;
  timingIntervals = [(NSPConnectionInfo *)self timingIntervals];
  v8 = [timingIntervals count];

  if (v8 <= index)
  {
    v11 = 0;
  }

  else
  {
    timingIntervals2 = [(NSPConnectionInfo *)self timingIntervals];
    v10 = [timingIntervals2 objectAtIndexedSubscript:index];

    v11 = [v10 objectForKeyedSubscript:keyCopy];
  }

  return v11;
}

@end