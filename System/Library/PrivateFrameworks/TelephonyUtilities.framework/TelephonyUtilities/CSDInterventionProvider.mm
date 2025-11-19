@interface CSDInterventionProvider
- (BOOL)interventionRequiredFor:(id)a3 callType:(unint64_t)a4;
@end

@implementation CSDInterventionProvider

- (BOOL)interventionRequiredFor:(id)a3 callType:(unint64_t)a4
{
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v6 = [SCAnalysisHistory willNeedInterventionForOutgoingCallToParticipants:v5 callType:a4 error:0];
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (v6)
      {
        v8 = @"YES";
      }

      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sensitive analysis results: %@", &v10, 0xCu);
    }
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "The selector for sensisitve content analysis does not exist. Not triggering intervention", &v10, 2u);
    }

    LOBYTE(v6) = 0;
  }

  return v6;
}

@end