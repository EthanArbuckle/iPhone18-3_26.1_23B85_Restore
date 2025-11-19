@interface STSAnalyticsLogger
+ (id)sharedCALogger;
- (STSAnalyticsLogger)init;
- (void)_postISODailyStatisticsEvent:(unsigned int)a3 postedFrom:(unsigned int)a4 errorCode:(int64_t)a5;
- (void)_postISOHandoverEvent:(id)a3 prepOnly:(BOOL)a4;
- (void)_postISOTransactionEvent:(id)a3 prepOnly:(BOOL)a4;
- (void)postISOBTStatusEvent:(id)a3;
- (void)postISOHandoverEvent:(id)a3 prepOnly:(BOOL)a4;
- (void)postISOTransactionEvent:(id)a3 prepOnly:(BOOL)a4;
@end

@implementation STSAnalyticsLogger

+ (id)sharedCALogger
{
  if (qword_100069BE0 != -1)
  {
    dispatch_once(&qword_100069BE0, &stru_100058D68);
  }

  v3 = qword_100069BD8;

  return v3;
}

- (STSAnalyticsLogger)init
{
  v8.receiver = self;
  v8.super_class = STSAnalyticsLogger;
  v2 = [(STSAnalyticsLogger *)&v8 init];
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

- (void)_postISOTransactionEvent:(id)a3 prepOnly:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    v8 = [v6 objectForKeyedSubscript:@"transactionStartEventTime"];
    if (v8)
    {
      v9 = v8;
      v10 = [v7 objectForKeyedSubscript:@"transactionStartEventTime"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v12 = [v7 objectForKeyedSubscript:@"transactionStartEventTime"];
        v13 = qword_100069BC8;
        qword_100069BC8 = v12;
      }
    }

    v14 = [v7 objectForKeyedSubscript:@"transportType"];
    if (v14)
    {
      v15 = v14;
      v16 = [v7 objectForKeyedSubscript:@"transportType"];
      objc_opt_class();
      v17 = objc_opt_isKindOfClass();

      if (v17)
      {
        v18 = [v7 objectForKeyedSubscript:@"transportType"];
        v19 = off_1000693B0;
        off_1000693B0 = v18;
      }
    }

    v20 = [v7 objectForKeyedSubscript:@"credentialType"];
    if (v20)
    {
      v21 = v20;
      v22 = [v7 objectForKeyedSubscript:@"credentialType"];
      objc_opt_class();
      v23 = objc_opt_isKindOfClass();

      if (v23)
      {
        v24 = [v7 objectForKeyedSubscript:@"credentialType"];
        v25 = off_1000693B8;
        off_1000693B8 = v24;
      }
    }

    v26 = [v7 objectForKeyedSubscript:@"responseSize"];
    if (v26)
    {
      v27 = v26;
      v28 = [v7 objectForKeyedSubscript:@"responseSize"];
      objc_opt_class();
      v29 = objc_opt_isKindOfClass();

      if (v29)
      {
        v30 = [v7 objectForKeyedSubscript:@"responseSize"];
        v31 = off_1000693C0;
        off_1000693C0 = v30;
      }
    }

    v32 = [v7 objectForKeyedSubscript:@"btCentral"];
    if (v32)
    {
      v33 = v32;
      v34 = [v7 objectForKeyedSubscript:@"btCentral"];
      objc_opt_class();
      v35 = objc_opt_isKindOfClass();

      if (v35)
      {
        v36 = [v7 objectForKeyedSubscript:@"btCentral"];
        LOBYTE(word_1000693A8) = [v36 BOOLValue];
      }
    }

    v37 = [v7 objectForKeyedSubscript:@"btL2Cap"];
    if (v37)
    {
      v38 = v37;
      v39 = [v7 objectForKeyedSubscript:@"btL2Cap"];
      objc_opt_class();
      v40 = objc_opt_isKindOfClass();

      if (v40)
      {
        v41 = [v7 objectForKeyedSubscript:@"btL2Cap"];
        HIBYTE(word_1000693A8) = [v41 BOOLValue];
      }
    }

    v42 = &off_10005F5C8;
  }

  else
  {
    v43 = +[NSUUID UUID];
    v44 = [v43 UUIDString];

    v48 = qword_100069BC8;
    if (!qword_100069BC8)
    {
      sub_100024938(OS_LOG_TYPE_INFO, 0, "[STSAnalyticsLogger _postISOTransactionEvent:prepOnly:]", 139, @"Missing startEvent time", v45, v46, v47, v80);
    }

    v49 = [v7 objectForKeyedSubscript:@"transactionEndEventTime"];
    if (v49 && (v53 = v49, [v7 objectForKeyedSubscript:@"transactionEndEventTime"], v54 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v55 = objc_opt_isKindOfClass(), v54, v53, v48) && (v55 & 1) != 0)
    {
      v56 = [v7 objectForKeyedSubscript:@"transactionEndEventTime"];
      v57 = 1;
    }

    else
    {
      sub_100024938(OS_LOG_TYPE_INFO, 0, "[STSAnalyticsLogger _postISOTransactionEvent:prepOnly:]", 147, @"Missing dictionary element %@", v50, v51, v52, @"transactionEndEventTime");
      v57 = 0;
      v56 = 0;
    }

    v58 = [v7 objectForKeyedSubscript:@"errorCode"];
    if (v58 && (v62 = v58, [v7 objectForKeyedSubscript:@"errorCode"], v63 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v64 = v57 & objc_opt_isKindOfClass(), v63, v62, v64 == 1))
    {
      v42 = [v7 objectForKeyedSubscript:@"errorCode"];
    }

    else
    {
      sub_100024938(OS_LOG_TYPE_INFO, 0, "[STSAnalyticsLogger _postISOTransactionEvent:prepOnly:]", 154, @"Missing dictionary element %@", v59, v60, v61, @"errorCode");
      v42 = &off_10005F5C8;
    }

    if ([off_1000693C0 integerValue] < 1)
    {
      v65 = 0;
    }

    else if ([off_1000693C0 integerValue] >= 50000)
    {
      if ([off_1000693C0 integerValue] >= 100000)
      {
        if ([off_1000693C0 integerValue] >= 150000)
        {
          v65 = 0xFFFFFFFFLL;
        }

        else
        {
          v65 = 150;
        }
      }

      else
      {
        v65 = 100;
      }
    }

    else
    {
      v65 = 50;
    }

    if (v57)
    {
      [v56 timeIntervalSinceDate:qword_100069BC8];
      v67 = v66;
      sub_100024938(OS_LOG_TYPE_DEFAULT, 0, "[STSAnalyticsLogger _postISOTransactionEvent:prepOnly:]", 172, @"Transaction totalDuration = %lu", v68, v69, v70, v66);
      v82[0] = @"transactionUUID";
      v82[1] = @"transportType";
      v83[0] = v44;
      v83[1] = off_1000693B0;
      v82[2] = @"credentialType";
      v82[3] = @"errorCode";
      v83[2] = off_1000693B8;
      v83[3] = v42;
      v82[4] = @"responseSize";
      v71 = [NSNumber numberWithUnsignedInt:v65];
      v83[4] = v71;
      v82[5] = @"totalDurationSecDim";
      v72 = [NSNumber numberWithUnsignedLong:v67];
      v83[5] = v72;
      v82[6] = @"btCentral";
      v73 = [NSNumber numberWithBool:word_1000693A8];
      v83[6] = v73;
      v82[7] = @"btL2Cap";
      v74 = [NSNumber numberWithBool:HIBYTE(word_1000693A8)];
      v83[7] = v74;
      [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:8];
      v81 = v56;
      v76 = v75 = v44;

      [CALogger postCAEventFor:@"com.apple.sts.iso18013TransactionEvent" eventInput:v76];
      -[STSAnalyticsLogger _postISODailyStatisticsEvent:postedFrom:errorCode:](self, "_postISODailyStatisticsEvent:postedFrom:errorCode:", [off_1000693B0 integerValue], 1, objc_msgSend(v42, "integerValue"));

      v44 = v75;
      v56 = v81;
    }

    v77 = qword_100069BC8;
    qword_100069BC8 = 0;

    v78 = off_1000693B0;
    off_1000693B0 = &off_10005F598;

    v79 = off_1000693C0;
    off_1000693C0 = &off_10005F5C8;

    word_1000693A8 = 257;
  }
}

- (void)_postISOHandoverEvent:(id)a3 prepOnly:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    if (!qword_100069BD0)
    {
      v57 = [v6 objectForKeyedSubscript:@"handoverStartEventTime"];
      if (v57)
      {
        v58 = v57;
        v59 = [v7 objectForKeyedSubscript:@"handoverStartEventTime"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v61 = [v7 objectForKeyedSubscript:@"handoverStartEventTime"];
          v62 = qword_100069BD0;
          qword_100069BD0 = v61;
        }
      }
    }

    v8 = [v7 objectForKeyedSubscript:@"readerRequestedTransport"];
    if (v8)
    {
      v9 = v8;
      v10 = [v7 objectForKeyedSubscript:@"readerRequestedTransport"];
      objc_opt_class();
      v11 = objc_opt_isKindOfClass();

      if (v11)
      {
        v12 = [v7 objectForKeyedSubscript:@"readerRequestedTransport"];
        v13 = off_1000693C8;
        off_1000693C8 = v12;
      }
    }

    v14 = [v7 objectForKeyedSubscript:@"processHandoverEventTime"];
    if (v14)
    {
      v15 = v14;
      v16 = [v7 objectForKeyedSubscript:@"processHandoverEventTime"];
      objc_opt_class();
      v17 = objc_opt_isKindOfClass();

      if (v17)
      {
        v18 = [v7 objectForKeyedSubscript:@"processHandoverEventTime"];
        v19 = v18;
        if (qword_100069BD0)
        {
          [v18 timeIntervalSinceDate:?];
          sub_100024938(OS_LOG_TYPE_DEFAULT, 0, "[STSAnalyticsLogger _postISOHandoverEvent:prepOnly:]", 237, @"totalDurationBeforeHandoverEntered in ms = %lu", v21, v22, v23, (v20 * 1000.0));
        }

        else
        {
          objc_storeStrong(&qword_100069BD0, v18);
        }
      }
    }

    v63 = [v7 objectForKeyedSubscript:@"transportSelected"];
    if (v63)
    {
      v64 = v63;
      v65 = [v7 objectForKeyedSubscript:@"transportSelected"];
      objc_opt_class();
      v66 = objc_opt_isKindOfClass();

      if (v66)
      {
        v67 = [v7 objectForKeyedSubscript:@"transportSelected"];
        v68 = off_1000693D0;
        off_1000693D0 = v67;
      }
    }

    v69 = [v7 objectForKeyedSubscript:@"errorCode"];
    if (v69)
    {
      v70 = v69;
      v71 = [v7 objectForKeyedSubscript:@"errorCode"];
      objc_opt_class();
      v72 = objc_opt_isKindOfClass();

      if (v72)
      {
        v73 = [v7 objectForKeyedSubscript:@"errorCode"];
        v74 = off_1000693D8;
        off_1000693D8 = v73;
      }
    }
  }

  else
  {
    v76 = self;
    v24 = +[NSUUID UUID];
    v25 = [v24 UUIDString];

    v29 = qword_100069BD0;
    if (!qword_100069BD0)
    {
      sub_100024938(OS_LOG_TYPE_INFO, 0, "[STSAnalyticsLogger _postISOHandoverEvent:prepOnly:]", 261, @"Missing startEvent time", v26, v27, v28, v75);
    }

    v30 = [v7 objectForKeyedSubscript:@"handoverEndEventTime"];
    if (v30 && (v34 = v30, [v7 objectForKeyedSubscript:@"handoverEndEventTime"], v35 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v36 = objc_opt_isKindOfClass(), v35, v34, v29) && (v36 & 1) != 0)
    {
      v37 = [v7 objectForKeyedSubscript:@"handoverEndEventTime"];
      LODWORD(v29) = 1;
    }

    else
    {
      if (v29)
      {
        sub_100024938(OS_LOG_TYPE_INFO, 0, "[STSAnalyticsLogger _postISOHandoverEvent:prepOnly:]", 269, @"Missing dictionary element %@", v31, v32, v33, @"handoverEndEventTime");
        LODWORD(v29) = 0;
      }

      v37 = 0;
    }

    v38 = [v7 objectForKeyedSubscript:@"errorCode"];
    if (v38)
    {
      v39 = v38;
      v40 = [v7 objectForKeyedSubscript:@"errorCode"];
      objc_opt_class();
      v41 = objc_opt_isKindOfClass();

      if (v41)
      {
        v42 = [v7 objectForKeyedSubscript:@"errorCode"];
        v43 = off_1000693D8;
        off_1000693D8 = v42;
      }
    }

    if (v29)
    {
      [v37 timeIntervalSinceDate:qword_100069BD0];
      v45 = (v44 * 1000.0);
      sub_100024938(OS_LOG_TYPE_DEFAULT, 0, "[STSAnalyticsLogger _postISOHandoverEvent:prepOnly:]", 281, @"Handover totalDurationMs = %lu", v46, v47, v48, v45);
      v78 = v25;
      v77[0] = @"transactionUUID";
      v77[1] = @"readerRequestedTransport";
      v79 = *&off_1000693C8;
      v77[2] = @"transportSelected";
      v77[3] = @"errorCode";
      v80 = off_1000693D8;
      v77[4] = @"totalDurationMsec";
      v49 = [NSNumber numberWithUnsignedInteger:v45];
      v81 = v49;
      v77[5] = @"totalDurationMsecDim";
      v50 = [NSNumber numberWithUnsignedInteger:v45];
      v82 = v50;
      v51 = [NSDictionary dictionaryWithObjects:&v78 forKeys:v77 count:6];

      [CALogger postCAEventFor:@"com.apple.sts.handoverEvent" eventInput:v51];
      if ([off_1000693D8 integerValue])
      {
        if ([off_1000693D0 integerValue] == 1)
        {
          v52 = 1;
        }

        else
        {
          v52 = 2;
        }

        -[STSAnalyticsLogger _postISODailyStatisticsEvent:postedFrom:errorCode:](v76, "_postISODailyStatisticsEvent:postedFrom:errorCode:", v52, 0, [off_1000693D8 integerValue]);
      }
    }

    v53 = qword_100069BD0;
    qword_100069BD0 = 0;

    v54 = off_1000693C8;
    off_1000693C8 = &off_10005F5C8;

    v55 = off_1000693D0;
    off_1000693D0 = &off_10005F5E0;

    v56 = off_1000693D8;
    off_1000693D8 = &off_10005F5C8;
  }
}

- (void)_postISODailyStatisticsEvent:(unsigned int)a3 postedFrom:(unsigned int)a4 errorCode:(int64_t)a5
{
  v8 = objc_opt_new();
  v9 = v8;
  v14 = v8;
  if (a4)
  {
    [v8 setObject:&off_10005F5F8 forKeyedSubscript:@"totalISO18013TxAttempted"];
    if (a5)
    {
      v10 = &off_10005F5C8;
    }

    else
    {
      v10 = &off_10005F5F8;
    }

    [v14 setObject:v10 forKeyedSubscript:@"totalSuccessfulISO18013"];
    v9 = v14;
  }

  if (a3 == 2)
  {
    v11 = @"totalSuccessfulBtHandovers";
    v12 = @"totalBtHandoversAttempted";
    goto LABEL_10;
  }

  if (a3 == 1)
  {
    v11 = @"totalSuccessfulWiFiHandovers";
    v12 = @"totalWiFiHandoversAttempted";
LABEL_10:
    [v9 setObject:&off_10005F5F8 forKeyedSubscript:v12];
    if (a5)
    {
      v13 = &off_10005F5C8;
    }

    else
    {
      v13 = &off_10005F5F8;
    }

    [v14 setObject:v13 forKeyedSubscript:v11];
    v9 = v14;
  }

  [CALogger postCAEventFor:@"com.apple.sts.dailyISO18013Statistics" eventInput:v9];
}

- (void)postISOHandoverEvent:(id)a3 prepOnly:(BOOL)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000139C8;
  block[3] = &unk_100058C88;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)postISOTransactionEvent:(id)a3 prepOnly:(BOOL)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013A80;
  block[3] = &unk_100058C88;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)postISOBTStatusEvent:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100013B28;
  v7[3] = &unk_100058CB0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

@end