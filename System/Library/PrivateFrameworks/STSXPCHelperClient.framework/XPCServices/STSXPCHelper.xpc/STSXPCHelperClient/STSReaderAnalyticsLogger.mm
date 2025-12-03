@interface STSReaderAnalyticsLogger
+ (id)sharedCALogger;
- (STSReaderAnalyticsLogger)init;
- (void)_postReaderTransactionEvent:(id)event prepOnly:(BOOL)only;
- (void)postReaderSessionEvent:(id)event;
- (void)postReaderTransactionEvent:(id)event prepOnly:(BOOL)only;
@end

@implementation STSReaderAnalyticsLogger

+ (id)sharedCALogger
{
  if (qword_100069BA0 != -1)
  {
    dispatch_once(&qword_100069BA0, &stru_100058C60);
  }

  v3 = qword_100069B98;

  return v3;
}

- (STSReaderAnalyticsLogger)init
{
  v8.receiver = self;
  v8.super_class = STSReaderAnalyticsLogger;
  v2 = [(STSReaderAnalyticsLogger *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);
    v5 = dispatch_queue_create("com.apple.sts.analyticsLogger", v4);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

- (void)_postReaderTransactionEvent:(id)event prepOnly:(BOOL)only
{
  onlyCopy = only;
  eventCopy = event;
  v6 = eventCopy;
  if (onlyCopy)
  {
    v7 = [eventCopy objectForKeyedSubscript:@"transactionStartEventTime"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [v6 objectForKeyedSubscript:@"transactionStartEventTime"];
      v10 = qword_100069BA8;
      qword_100069BA8 = v9;
    }

    v11 = [v6 objectForKeyedSubscript:@"engagementType"];
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();

    if (v12)
    {
      v13 = [v6 objectForKeyedSubscript:@"engagementType"];
      v14 = off_100069378[0];
      off_100069378[0] = v13;
    }

    v15 = [v6 objectForKeyedSubscript:@"supportedtedReaderBTRoles"];
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();

    if (v16)
    {
      v17 = [v6 objectForKeyedSubscript:@"supportedtedReaderBTRoles"];
      v18 = off_100069380[0];
      off_100069380[0] = v17;
    }

    v19 = [v6 objectForKeyedSubscript:@"responseSize"];
    objc_opt_class();
    v20 = objc_opt_isKindOfClass();

    if (v20)
    {
      v21 = [v6 objectForKeyedSubscript:@"responseSize"];
      v22 = off_100069390[0];
      off_100069390[0] = v21;
    }

    v23 = [v6 objectForKeyedSubscript:@"requestSize"];
    objc_opt_class();
    v24 = objc_opt_isKindOfClass();

    if (v24)
    {
      v25 = [v6 objectForKeyedSubscript:@"requestSize"];
      v26 = off_100069388[0];
      off_100069388[0] = v25;
    }

    v27 = [v6 objectForKeyedSubscript:@"handoverResponseSize"];
    objc_opt_class();
    v28 = objc_opt_isKindOfClass();

    if (v28)
    {
      v29 = [v6 objectForKeyedSubscript:@"handoverResponseSize"];
      v30 = off_1000693A0;
      off_1000693A0 = v29;
    }

    v31 = [v6 objectForKeyedSubscript:@"handoverRequestSize"];
    objc_opt_class();
    v32 = objc_opt_isKindOfClass();

    if (v32)
    {
      v33 = [v6 objectForKeyedSubscript:@"handoverRequestSize"];
      v34 = off_100069398[0];
      off_100069398[0] = v33;
    }

    v35 = [v6 objectForKeyedSubscript:@"handoverStartEventTime"];
    objc_opt_class();
    v36 = objc_opt_isKindOfClass();

    if (v36)
    {
      v37 = [v6 objectForKeyedSubscript:@"handoverStartEventTime"];
      v38 = qword_100069BB0;
      qword_100069BB0 = v37;
    }

    v39 = [v6 objectForKeyedSubscript:@"handoverEndEventTime"];
    objc_opt_class();
    v40 = objc_opt_isKindOfClass();

    if (v40)
    {
      v41 = [v6 objectForKeyedSubscript:@"handoverEndEventTime"];
      v42 = qword_100069BB8;
      qword_100069BB8 = v41;
    }

    v43 = [v6 objectForKeyedSubscript:@"altCarrierStartEventTime"];
    objc_opt_class();
    v44 = objc_opt_isKindOfClass();

    if (v44)
    {
      v45 = [v6 objectForKeyedSubscript:@"altCarrierStartEventTime"];
      v46 = qword_100069BC0;
      qword_100069BC0 = v45;
    }

    v47 = &off_10005F550;
  }

  else
  {
    v48 = +[NSUUID UUID];
    uUIDString = [v48 UUIDString];

    v53 = qword_100069BA8;
    if (!qword_100069BA8)
    {
      sub_100024938(OS_LOG_TYPE_INFO, 0, "[STSReaderAnalyticsLogger _postReaderTransactionEvent:prepOnly:]", 146, @"Missing startEvent time", v50, v51, v52, v92);
    }

    v54 = [v6 objectForKeyedSubscript:@"transactionEndEventTime"];
    objc_opt_class();
    v55 = (v53 != 0) & objc_opt_isKindOfClass();

    if (v55 == 1)
    {
      v59 = [v6 objectForKeyedSubscript:@"transactionEndEventTime"];
    }

    else
    {
      sub_100024938(OS_LOG_TYPE_INFO, 0, "[STSReaderAnalyticsLogger _postReaderTransactionEvent:prepOnly:]", 153, @"Missing dictionary element %@", v56, v57, v58, @"transactionEndEventTime");
      v59 = 0;
    }

    v60 = [v6 objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    v61 = v55 & objc_opt_isKindOfClass();

    if (v61 == 1)
    {
      v47 = [v6 objectForKeyedSubscript:@"errorCode"];
    }

    else
    {
      sub_100024938(OS_LOG_TYPE_INFO, 0, "[STSReaderAnalyticsLogger _postReaderTransactionEvent:prepOnly:]", 159, @"Missing dictionary element %@", v62, v63, v64, @"errorCode");
      v47 = &off_10005F550;
    }

    if (v55)
    {
      [v59 timeIntervalSinceDate:qword_100069BA8];
      v66 = v65;
      v67 = 0;
      v68 = qword_100069BB8;
      v94 = v59;
      if (qword_100069BB0 && qword_100069BB8)
      {
        [qword_100069BB8 timeIntervalSinceDate:?];
        v67 = (v69 * 1000.0);
        v68 = qword_100069BB8;
      }

      v70 = 0;
      if (qword_100069BC0 && v68)
      {
        [v94 timeIntervalSinceDate:?];
        v70 = (v71 * 1000.0);
      }

      v97[0] = @"transactionUUID";
      v97[1] = @"engagementType";
      v93 = uUIDString;
      v98[0] = uUIDString;
      v98[1] = off_100069378[0];
      v97[2] = @"supportedtedReaderBTRoles";
      v97[3] = @"errorCode";
      v98[2] = off_100069380[0];
      v98[3] = v47;
      v97[4] = @"totalDurationSec";
      v72 = [NSNumber numberWithLong:v66];
      v98[4] = v72;
      v97[5] = @"engagementDurationMSec";
      v73 = [NSNumber numberWithLong:v67];
      v98[5] = v73;
      v97[6] = @"altCarrierTransactionDurationMSecs";
      v74 = [NSNumber numberWithLong:v70];
      v98[6] = v74;
      v98[7] = off_100069390[0];
      v97[7] = @"responseSize";
      v97[8] = @"requestSize";
      v98[8] = off_100069388[0];
      v98[9] = off_100069398[0];
      v97[9] = @"handoverRequestSize";
      v97[10] = @"handoverResponseSize";
      v98[10] = off_1000693A0;
      v75 = [NSDictionary dictionaryWithObjects:v98 forKeys:v97 count:11];

      [CALogger postCAEventFor:@"com.apple.sts.readerISO18013TransactionEvent" eventInput:v75];
      v95[0] = @"totalNFCEngagementTransactions";
      if ([off_100069378[0] intValue] == 1)
      {
        v76 = &off_10005F580;
      }

      else
      {
        v76 = &off_10005F550;
      }

      v96[0] = v76;
      v95[1] = @"totalQRCodeEngagementTransactions";
      if ([off_100069378[0] intValue] == 2)
      {
        v77 = &off_10005F580;
      }

      else
      {
        v77 = &off_10005F550;
      }

      v96[1] = v77;
      v95[2] = @"totalSuccessfulNFCEngagementTransactions";
      intValue = [off_100069378[0] intValue];
      v79 = &off_10005F550;
      if (intValue == 1)
      {
        if ([v47 intValue])
        {
          v79 = &off_10005F550;
        }

        else
        {
          v79 = &off_10005F580;
        }
      }

      v96[2] = v79;
      v95[3] = @"totalSuccessfulQRCodeEngagementTransactions";
      v80 = &off_10005F550;
      if ([off_100069378[0] intValue] == 2 && !objc_msgSend(v47, "intValue"))
      {
        v80 = &off_10005F580;
      }

      v96[3] = v80;
      v81 = [NSDictionary dictionaryWithObjects:v96 forKeys:v95 count:4];
      [CALogger postCAEventFor:@"com.apple.sts.dailyReaderISO18013Statistics" eventInput:v81];

      uUIDString = v93;
      v59 = v94;
    }

    v82 = qword_100069BA8;
    qword_100069BA8 = 0;

    v83 = qword_100069BB0;
    qword_100069BB0 = 0;

    v84 = qword_100069BB8;
    qword_100069BB8 = 0;

    v85 = qword_100069BC0;
    qword_100069BC0 = 0;

    v86 = off_100069378[0];
    off_100069378[0] = &off_10005F568;

    v87 = off_100069388[0];
    off_100069388[0] = &off_10005F550;

    v88 = off_100069390[0];
    off_100069390[0] = &off_10005F550;

    v89 = off_100069398[0];
    off_100069398[0] = &off_10005F550;

    v90 = off_1000693A0;
    off_1000693A0 = &off_10005F550;

    v91 = off_100069380[0];
    off_100069380[0] = &off_10005F568;
  }
}

- (void)postReaderTransactionEvent:(id)event prepOnly:(BOOL)only
{
  eventCopy = event;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000108B0;
  block[3] = &unk_100058C88;
  block[4] = self;
  v10 = eventCopy;
  onlyCopy = only;
  v8 = eventCopy;
  dispatch_async(queue, block);
}

- (void)postReaderSessionEvent:(id)event
{
  eventCopy = event;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100010958;
  v7[3] = &unk_100058CB0;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(queue, v7);
}

@end