@interface BMEventSession
- (double)sr_eventTimestamp;
- (id)sr_data;
@end

@implementation BMEventSession

- (double)sr_eventTimestamp
{
  if ([-[BMEventSession events](self "events")])
  {
    v3 = [-[BMEventSession events](self "events")];

    [v3 sr_eventTimestamp];
  }

  else
  {
    if (qword_10002B270 != -1)
    {
      dispatch_once(&qword_10002B270, &stru_100024AB0);
    }

    v5 = qword_10002B278;
    if (os_log_type_enabled(qword_10002B278, OS_LOG_TYPE_FAULT))
    {
      v6 = 138412290;
      selfCopy = self;
      _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Event session is empty, impossible to get timestamp: %@", &v6, 0xCu);
    }

    return NAN;
  }

  return result;
}

- (id)sr_data
{
  if ([-[BMEventSession events](self "events")])
  {
    v3 = [-[BMEventSession events](self "events")];

    return [v3 eventBody];
  }

  else
  {
    if (qword_10002B270 != -1)
    {
      dispatch_once(&qword_10002B270, &stru_100024AB0);
    }

    v5 = qword_10002B278;
    if (os_log_type_enabled(qword_10002B278, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      selfCopy = self;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Event session is empty, impossible to get data: %@", &v6, 0xCu);
    }

    return 0;
  }
}

@end