@interface SPFeedbackProxy
+ (void)initialize;
- (BOOL)clientID:(id)d supportsFeedbackListener:(id)listener;
- (SPFeedbackProxy)init;
- (void)_sendFeedbackType:(int64_t)type feedback:(id)feedback feedbackData:(id)data queryId:(unint64_t)id clientID:(id)d;
- (void)sendCustomFeedback:(id)feedback clientID:(id)d;
- (void)sendFeedbackType:(int64_t)type feedback:(id)feedback queryId:(unint64_t)id clientID:(id)d;
- (void)sendFeedbackType:(int64_t)type feedbackData:(id)data queryId:(unint64_t)id clientID:(id)d;
@end

@implementation SPFeedbackProxy

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
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

- (void)_sendFeedbackType:(int64_t)type feedback:(id)feedback feedbackData:(id)data queryId:(unint64_t)id clientID:(id)d
{
  feedbackCopy = feedback;
  dataCopy = data;
  dCopy = d;
  v15 = os_transaction_create();
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100058874;
  block[3] = &unk_100093BD0;
  v22 = feedbackCopy;
  v23 = dataCopy;
  selfCopy = self;
  v25 = dCopy;
  typeCopy = type;
  idCopy = id;
  v26 = v15;
  v17 = v15;
  v18 = dCopy;
  v19 = dataCopy;
  v20 = feedbackCopy;
  dispatch_async(queue, block);
}

- (BOOL)clientID:(id)d supportsFeedbackListener:(id)listener
{
  listenerCopy = listener;
  dCopy = d;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v8 = objc_opt_isKindOfClass();

  LODWORD(listenerCopy) = [dCopy isEqualToString:@"com.apple.PeopleViewService"];
  return listenerCopy & ~v8 & 1 | (((listenerCopy | isKindOfClass) & 1) == 0);
}

- (void)sendFeedbackType:(int64_t)type feedback:(id)feedback queryId:(unint64_t)id clientID:(id)d
{
  feedbackCopy = feedback;
  dCopy = d;
  if ((type - 1) > 0x1A || !feedbackCopy)
  {
    v16 = SPLogForSPLogCategoryFeedback();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100063810();
    }

    goto LABEL_11;
  }

  v12 = qword_1000A8708[type];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = SPLogForSPLogCategoryFeedback();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100063880(type, feedbackCopy);
    }

LABEL_11:

    goto LABEL_12;
  }

  v13 = SPLogForSPLogCategoryDefault();
  v14 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v13, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    v15 = qword_1000A87F0[type];
    v17 = 136315138;
    v18 = v15;
    _os_log_impl(&_mh_execute_header, v13, ((v14 & 1) == 0), "send feedback (%s)", &v17, 0xCu);
  }

  [(SPFeedbackProxy *)self _sendFeedbackType:type feedback:feedbackCopy feedbackData:0 queryId:id clientID:dCopy];
LABEL_12:
}

- (void)sendFeedbackType:(int64_t)type feedbackData:(id)data queryId:(unint64_t)id clientID:(id)d
{
  dataCopy = data;
  dCopy = d;
  if ((type - 1) <= 0x1A && dataCopy)
  {
    v12 = SPLogForSPLogCategoryDefault();
    v13 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v12, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      v14 = qword_1000A87F0[type];
      v16 = 136315138;
      v17 = v14;
      _os_log_impl(&_mh_execute_header, v12, ((v13 & 1) == 0), "send feedbackData (%s)", &v16, 0xCu);
    }

    [(SPFeedbackProxy *)self _sendFeedbackType:type feedback:0 feedbackData:dataCopy queryId:id clientID:dCopy];
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

- (void)sendCustomFeedback:(id)feedback clientID:(id)d
{
  dCopy = d;
  feedbackCopy = feedback;
  -[SPFeedbackProxy sendFeedbackType:feedback:queryId:clientID:](self, "sendFeedbackType:feedback:queryId:clientID:", 11, feedbackCopy, [feedbackCopy queryId], dCopy);
}

@end