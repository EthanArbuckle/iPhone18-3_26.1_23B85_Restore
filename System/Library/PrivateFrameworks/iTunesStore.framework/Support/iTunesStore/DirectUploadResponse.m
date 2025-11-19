@interface DirectUploadResponse
- (DirectUploadResponse)initWithURLResponse:(id)a3 data:(id)a4;
@end

@implementation DirectUploadResponse

- (DirectUploadResponse)initWithURLResponse:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v36.receiver = self;
  v36.super_class = DirectUploadResponse;
  v8 = [(DirectUploadResponse *)&v36 init];
  if (v8)
  {
    v9 = [v6 statusCode];
    v10 = +[SSVURLProtocolConsumer consumer];
    v11 = [v10 objectForData:v7 response:v6 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v9;
      v12 = v11;
      v13 = [v12 objectForKey:@"responses"];
      objc_opt_class();
      v34 = v13;
      if (objc_opt_isKindOfClass())
      {
        v14 = [v13 firstObject];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;

          v12 = v15;
        }
      }

      v16 = [v12 objectForKey:@"token"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v16 copy];
      }

      else
      {
        v17 = 0;
      }

      v35 = v11;
      v20 = [v12 objectForKey:@"tokenType"];

      objc_opt_class();
      v21 = v10;
      if (objc_opt_isKindOfClass())
      {
        v19 = [v20 copy];
      }

      else
      {
        v19 = 0;
      }

      v22 = [v12 objectForKey:@"statusCode"];

      if (objc_opt_respondsToSelector())
      {
        v33 = [v22 integerValue];
      }

      v23 = [v12 objectForKey:@"localizedMessage"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v23 copy];
      }

      else
      {
        v18 = 0;
      }

      v10 = v21;

      v11 = v35;
      if (v17)
      {
        assetToken = v8->_assetToken;
        v8->_assetToken = v17;
        p_isa = v17;

        objc_storeStrong(&v8->_assetTokenType, v19);
LABEL_27:

        goto LABEL_28;
      }

      v9 = v33;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    if (v9 == 403)
    {
      p_isa = SSError();
      v26 = [NSNumber numberWithInteger:403];
      v27 = SSErrorBySettingUserInfoValue();
      error = v8->_error;
      v8->_error = v27;
    }

    else
    {
      v29 = SSError();
      if (v9 >= 400)
      {
        v30 = [NSNumber numberWithInteger:v9];
        v31 = SSErrorBySettingUserInfoValue();

        v29 = v31;
      }

      p_isa = &v8->_error->super.isa;
      v8->_error = v29;
    }

    goto LABEL_27;
  }

LABEL_28:

  return v8;
}

@end