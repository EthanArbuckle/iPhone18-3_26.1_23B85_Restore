@interface BMStoreEvent
- (double)sr_eventTimestamp;
@end

@implementation BMStoreEvent

- (double)sr_eventTimestamp
{
  [(BMStoreEvent *)self eventBody];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_2:

    [(BMStoreEvent *)self timestamp];
    return result;
  }

  [(BMStoreEvent *)self eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = [(BMStoreEvent *)self eventBody];
  if (isKindOfClass)
  {
    v6 = [v5 timestamp];
LABEL_11:

    [v6 timeIntervalSinceReferenceDate];
    return result;
  }

  objc_opt_class();
  v7 = objc_opt_isKindOfClass();
  v8 = [(BMStoreEvent *)self eventBody];
  if (v7)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  v9 = objc_opt_isKindOfClass();
  v10 = [(BMStoreEvent *)self eventBody];
  if (v9)
  {
    v6 = [v10 startDate];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_2;
  }

  [(BMStoreEvent *)self eventBody];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_2;
  }

  [(BMStoreEvent *)self eventBody];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_2;
  }

  [(BMStoreEvent *)self eventBody];
  objc_opt_class();
  v11 = objc_opt_isKindOfClass();
  v8 = [(BMStoreEvent *)self eventBody];
  if (v11 & 1) != 0 || (objc_opt_class(), v12 = objc_opt_isKindOfClass(), v8 = [(BMStoreEvent *)self eventBody], (v12))
  {
LABEL_8:
    v6 = [v8 absoluteTimestamp];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_2;
  }

  if (qword_10002B2B0 != -1)
  {
    dispatch_once(&qword_10002B2B0, &stru_100024CE0);
  }

  v13 = qword_10002B2B8;
  if (os_log_type_enabled(qword_10002B2B8, OS_LOG_TYPE_ERROR))
  {
    v14 = objc_opt_class();
    v15 = 138412290;
    v16 = NSStringFromClass(v14);
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Got event with unknown type: %@", &v15, 0xCu);
  }

  return NAN;
}

@end