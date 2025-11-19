@interface INAccountEventDetailsResponse
- (BOOL)showAlert;
- (INAccountEventDetailsResponse)initWithHTTPResponse:(id)a3 data:(id)a4;
- (id)_parseURLFromAlertParameterWithName:(id)a3;
@end

@implementation INAccountEventDetailsResponse

- (INAccountEventDetailsResponse)initWithHTTPResponse:(id)a3 data:(id)a4
{
  v7 = a4;
  v20.receiver = self;
  v20.super_class = INAccountEventDetailsResponse;
  v8 = [(INAccountEventDetailsResponse *)&v20 initWithHTTPResponse:a3 data:v7 bodyIsPlist:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_responseData, a4);
    if (v7)
    {
      v19 = 0;
      v10 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v19];
      v11 = v19;
      responseParameters = v9->_responseParameters;
      v9->_responseParameters = v10;

      if (v11)
      {
        v13 = _INLogSystem();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10003674C(v7, v11, v13);
        }
      }

      v14 = [(NSDictionary *)v9->_responseParameters objectForKeyedSubscript:@"alert"];
      alertParameters = v9->_alertParameters;
      v9->_alertParameters = v14;

      if (v9->_alertParameters)
      {
        goto LABEL_14;
      }

      v16 = _INLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "No alert parameters in server response!", v18, 2u);
      }
    }

    else
    {
      v16 = _INLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100036810(v16);
      }

      v11 = 0;
    }

LABEL_14:
  }

  return v9;
}

- (BOOL)showAlert
{
  v2 = [(NSDictionary *)self->_responseParameters objectForKey:@"showMessage"];
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100036854(v2, v3);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v2 isEqualToString:@"true"];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_9;
    }

    v4 = [v2 BOOLValue];
  }

  v5 = v4;
LABEL_9:

  return v5;
}

- (id)_parseURLFromAlertParameterWithName:(id)a3
{
  v3 = [(NSDictionary *)self->_alertParameters objectForKey:a3];
  if ([v3 length])
  {
    v4 = [NSURL URLWithString:v3];
    if (!v4)
    {
      v5 = _INLogSystem();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000368CC(v3, v5);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end