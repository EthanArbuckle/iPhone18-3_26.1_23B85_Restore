@interface MetricsLogger
+ (id)_friendlyStringForResultFailureType:(unint64_t)a3;
- (MetricsLogger)init;
- (void)recordImageCaptioningResultWithClientIdentifier:(id)a3 success:(BOOL)a4 failureType:(unint64_t)a5 confidence:(float)a6;
@end

@implementation MetricsLogger

- (void)recordImageCaptioningResultWithClientIdentifier:(id)a3 success:(BOOL)a4 failureType:(unint64_t)a5 confidence:(float)a6
{
  v8 = a4;
  v10 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    if (v8)
    {
      v13 = @"succeeded";
    }

    else
    {
      v13 = @"failed";
    }

    v14 = [objc_opt_class() _friendlyStringForResultFailureType:a5];
    *buf = 138413058;
    v21 = v10;
    v22 = 2112;
    v23 = v13;
    v24 = 2112;
    v25 = v14;
    v26 = 2048;
    v27 = a6;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Recording image captioning result CoreAnalytics event for: %@, success: %@, failureType: %@, captionConfidence: %f", buf, 0x2Au);
  }

  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000089D8;
  block[3] = &unk_100014078;
  v19 = v8;
  v16 = v10;
  v17 = a5;
  v18 = a6;
  v12 = v10;
  dispatch_async(analyticsSynchronizationQueue, block);
}

- (MetricsLogger)init
{
  v8.receiver = self;
  v8.super_class = MetricsLogger;
  v2 = [(MetricsLogger *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.SmartReplies.ImageCaptioningAnalytics", v3);
    analyticsSynchronizationQueue = v2->_analyticsSynchronizationQueue;
    v2->_analyticsSynchronizationQueue = v4;

    v6 = v2;
  }

  return v2;
}

+ (id)_friendlyStringForResultFailureType:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    return @"none";
  }

  else
  {
    return *(&off_100014098 + a3 - 1);
  }
}

@end