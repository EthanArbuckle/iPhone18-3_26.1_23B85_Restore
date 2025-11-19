@interface SPFeedbackProxy
+ (void)initialize;
- (BOOL)clientID:(id)a3 supportsFeedbackListener:(id)a4;
- (SPFeedbackProxy)init;
- (void)_sendFeedbackType:(int64_t)a3 feedback:(id)a4 feedbackData:(id)a5 queryId:(unint64_t)a6 clientID:(id)a7;
- (void)sendCustomFeedback:(id)a3 clientID:(id)a4;
- (void)sendFeedbackType:(int64_t)a3 feedback:(id)a4 queryId:(unint64_t)a5 clientID:(id)a6;
- (void)sendFeedbackType:(int64_t)a3 feedbackData:(id)a4 queryId:(unint64_t)a5 clientID:(id)a6;
@end

@implementation SPFeedbackProxy

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == a1)
  {
    v4 = objc_alloc_init(SPFeedbackProxy);
    v5 = qword_1000A88F8;
    qword_1000A88F8 = v4;

    if (qword_1000A8618 != -1)
    {
      sub_100063620();
    }
  }
}

- (SPFeedbackProxy)init
{
  v6.receiver = self;
  v6.super_class = SPFeedbackProxy;
  v2 = [(SPFeedbackProxy *)&v6 init];
  if (v2)
  {
    v3 = +[SPFeedbackSender feedbackQueue];
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)_sendFeedbackType:(int64_t)a3 feedback:(id)a4 feedbackData:(id)a5 queryId:(unint64_t)a6 clientID:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = os_transaction_create();
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100058874;
  block[3] = &unk_100093BD0;
  v22 = v12;
  v23 = v13;
  v24 = self;
  v25 = v14;
  v27 = a3;
  v28 = a6;
  v26 = v15;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  dispatch_async(queue, block);
}

- (BOOL)clientID:(id)a3 supportsFeedbackListener:(id)a4
{
  v5 = a4;
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v8 = objc_opt_isKindOfClass();

  LODWORD(v5) = [v6 isEqualToString:@"com.apple.PeopleViewService"];
  return v5 & ~v8 & 1 | (((v5 | isKindOfClass) & 1) == 0);
}

- (void)sendFeedbackType:(int64_t)a3 feedback:(id)a4 queryId:(unint64_t)a5 clientID:(id)a6
{
  v10 = a4;
  v11 = a6;
  if ((a3 - 1) > 0x1A || !v10)
  {
    v16 = SPLogForSPLogCategoryFeedback();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100063810();
    }

    goto LABEL_11;
  }

  v12 = qword_1000A8708[a3];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = SPLogForSPLogCategoryFeedback();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100063880(a3, v10);
    }

LABEL_11:

    goto LABEL_12;
  }

  v13 = SPLogForSPLogCategoryDefault();
  v14 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v13, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    v15 = qword_1000A87F0[a3];
    v17 = 136315138;
    v18 = v15;
    _os_log_impl(&_mh_execute_header, v13, ((v14 & 1) == 0), "send feedback (%s)", &v17, 0xCu);
  }

  [(SPFeedbackProxy *)self _sendFeedbackType:a3 feedback:v10 feedbackData:0 queryId:a5 clientID:v11];
LABEL_12:
}

- (void)sendFeedbackType:(int64_t)a3 feedbackData:(id)a4 queryId:(unint64_t)a5 clientID:(id)a6
{
  v10 = a4;
  v11 = a6;
  if ((a3 - 1) <= 0x1A && v10)
  {
    v12 = SPLogForSPLogCategoryDefault();
    v13 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v12, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      v14 = qword_1000A87F0[a3];
      v16 = 136315138;
      v17 = v14;
      _os_log_impl(&_mh_execute_header, v12, ((v13 & 1) == 0), "send feedbackData (%s)", &v16, 0xCu);
    }

    [(SPFeedbackProxy *)self _sendFeedbackType:a3 feedback:0 feedbackData:v10 queryId:a5 clientID:v11];
  }

  else
  {
    v15 = SPLogForSPLogCategoryFeedback();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10006391C();
    }
  }
}

- (void)sendCustomFeedback:(id)a3 clientID:(id)a4
{
  v6 = a4;
  v7 = a3;
  -[SPFeedbackProxy sendFeedbackType:feedback:queryId:clientID:](self, "sendFeedbackType:feedback:queryId:clientID:", 11, v7, [v7 queryId], v6);
}

@end