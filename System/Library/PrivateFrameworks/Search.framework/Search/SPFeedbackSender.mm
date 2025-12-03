@interface SPFeedbackSender
+ (id)feedbackListeners;
+ (void)_gatherFeedbackListeners;
+ (void)initialize;
+ (void)updateFeedbackListeners;
@end

@implementation SPFeedbackSender

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {
    v4 = dispatch_queue_attr_make_initially_inactive(0);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_BACKGROUND, 0);
    v6 = dispatch_queue_create("feedback queue", v5);
    v7 = qword_1000A88D8;
    qword_1000A88D8 = v6;

    v8 = qword_1000A88D8;

    dispatch_activate(v8);
  }
}

+ (void)_gatherFeedbackListeners
{
  if (qword_1000A88E8 != -1)
  {
    sub_100063634();
  }

  v2 = objc_opt_new();
  v26 = +[SDController datastores];
  [NSSet setWithArray:?];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v36 = 0u;
  v3 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v34;
    do
    {
      v7 = 0;
      v27 = v4;
      do
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v33 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          feedbackListeners = [v8 feedbackListeners];
          v10 = [feedbackListeners countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v30;
            do
            {
              v13 = 0;
              v14 = v5;
              do
              {
                if (*v30 != v12)
                {
                  objc_enumerationMutation(feedbackListeners);
                }

                v5 = [SPFeedbackListenerWrapper wrapperWithFeedbackListener:*(*(&v29 + 1) + 8 * v13)];

                if ([v5 supportedTypes])
                {
                  [v2 addObject:v5];
                }

                v13 = v13 + 1;
                v14 = v5;
              }

              while (v11 != v13);
              v11 = [feedbackListeners countByEnumeratingWithState:&v29 objects:v37 count:16];
            }

            while (v11);
          }

          v4 = v27;
        }

        v7 = v7 + 1;
      }

      while (v7 != v4);
      v4 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  if (qword_1000A88E0)
  {
    v15 = [SPFeedbackListenerWrapper wrapperWithFeedbackListener:?];

    if ([v15 supportedTypes])
    {
      [v2 addObject:v15];
    }
  }

  else
  {
    v15 = v5;
  }

  v16 = +[SDFeedbackInterceptor sharedInstance];
  if (v16)
  {
    v17 = [SPFeedbackListenerWrapper wrapperWithFeedbackListener:v16];

    if ([v17 supportedTypes])
    {
      [v2 addObject:v17];
    }
  }

  else
  {
    v17 = v15;
  }

  v18 = +[SDCoreSpotlightFeedbackHandler sharedInstance];

  if (v18)
  {
    v19 = [SPFeedbackListenerWrapper wrapperWithFeedbackListener:v18];

    if ([v19 supportedTypes])
    {
      [v2 addObject:v19];
    }
  }

  else
  {
    v19 = v17;
  }

  v20 = objc_opt_new();

  if (v20)
  {
    v21 = [SPFeedbackListenerWrapper wrapperWithFeedbackListener:v20];

    if ([v21 supportedTypes])
    {
      [v2 addObject:v21];
    }
  }

  else
  {
    v21 = v19;
  }

  v22 = objc_opt_new();

  if (v22)
  {
    v23 = [SPFeedbackListenerWrapper wrapperWithFeedbackListener:v22];

    if ([v23 supportedTypes])
    {
      [v2 addObject:v23];
    }
  }

  else
  {
    v23 = v21;
  }

  v24 = [v2 copy];
  v25 = qword_1000A8610;
  qword_1000A8610 = v24;
}

+ (void)updateFeedbackListeners
{
  v3 = SPLogForSPLogCategoryDefault();
  v4 = v3;
  if (gSPLogDebugAsDefault)
  {
    v5 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v5 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v3, v5))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "[FEEDBACK-DEBUG] (gatherFeedbackListeners) updateFeedbackListeners called", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100058558;
  block[3] = &unk_1000923B0;
  block[4] = self;
  dispatch_async(qword_1000A88D8, block);
}

+ (id)feedbackListeners
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100058600;
  block[3] = &unk_1000923B0;
  block[4] = self;
  if (qword_1000A88F0 != -1)
  {
    dispatch_once(&qword_1000A88F0, block);
  }

  v2 = qword_1000A8610;

  return v2;
}

@end