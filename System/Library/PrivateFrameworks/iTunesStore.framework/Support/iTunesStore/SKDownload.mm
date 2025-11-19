@interface SKDownload
- (BOOL)isEqual:(id)a3;
- (SKDownload)init;
- (SKDownload)initWithXPCEncoding:(id)a3;
- (SKPaymentTransaction)transaction;
- (id)copyXPCEncoding;
- (void)_applyChangeset:(id)a3;
- (void)_setContentIdentifier:(id)a3;
- (void)_setContentLength:(id)a3;
- (void)_setContentURL:(id)a3;
- (void)_setDownloadID:(id)a3;
- (void)_setError:(id)a3;
- (void)_setTransaction:(id)a3;
- (void)_setVersion:(id)a3;
@end

@implementation SKDownload

- (SKDownload)init
{
  v6.receiver = self;
  v6.super_class = SKDownload;
  v2 = [(SKDownload *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SKDownloadInternal);
    internal = v2->_internal;
    v2->_internal = v3;

    *(v2->_internal + 7) = SKDownloadTimeRemainingUnknown;
  }

  return v2;
}

- (SKPaymentTransaction)transaction
{
  WeakRetained = objc_loadWeakRetained(self->_internal + 10);

  return WeakRetained;
}

- (void)_applyChangeset:(id)a3
{
  v10 = a3;
  v4 = [v10 contentLength];
  if (v4)
  {
    [(SKDownload *)self _setContentLength:v4];
  }

  v5 = [v10 contentURL];

  if (v5)
  {
    [(SKDownload *)self _setContentURL:v5];
  }

  v6 = [v10 downloadState];

  if (v6)
  {
    -[SKDownload _setDownloadState:](self, "_setDownloadState:", [v6 integerValue]);
  }

  v7 = [v10 error];

  if (v7)
  {
    [(SKDownload *)self _setError:v7];
  }

  v8 = [v10 progress];

  if (v8)
  {
    [v8 floatValue];
    [(SKDownload *)self _setProgress:?];
  }

  v9 = [v10 timeRemaining];

  if (v9)
  {
    [v9 doubleValue];
    [(SKDownload *)self _setTimeRemaining:?];
  }
}

- (void)_setDownloadID:(id)a3
{
  *(self->_internal + 1) = [a3 copy];

  _objc_release_x1();
}

- (void)_setContentIdentifier:(id)a3
{
  *(self->_internal + 2) = [a3 copy];

  _objc_release_x1();
}

- (void)_setContentLength:(id)a3
{
  objc_storeStrong(self->_internal + 8, a3);
  v4 = a3;
}

- (void)_setContentURL:(id)a3
{
  *(self->_internal + 6) = [a3 copy];

  _objc_release_x1();
}

- (void)_setError:(id)a3
{
  *(self->_internal + 5) = [a3 copy];

  _objc_release_x1();
}

- (void)_setTransaction:(id)a3
{
  internal = self->_internal;
  v5 = a3;
  objc_storeWeak(internal + 10, v5);
  v7 = [v5 payment];

  v6 = [v7 productIdentifier];
  [(SKDownload *)self _setContentIdentifier:v6];
}

- (void)_setVersion:(id)a3
{
  *(self->_internal + 9) = [a3 copy];

  _objc_release_x1();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SKDownload *)self _downloadID];
    v7 = [v5 _downloadID];
    if ([v6 isEqual:v7])
    {
      v8 = [(SKDownload *)self contentIdentifier];
      v9 = [v5 contentIdentifier];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (SKDownload)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    v6 = [(SKDownload *)self init];
    if (!v6)
    {
      goto LABEL_5;
    }

    v8 = [NSNumber numberWithLongLong:xpc_dictionary_get_int64(v5, "0")];
    internal = v6->_internal;
    v10 = internal[8];
    internal[8] = v8;

    objc_opt_class();
    v11 = sub_10018E3FC(v5, "2");
    v12 = v6->_internal;
    v13 = v12[1];
    v12[1] = v11;

    *(v6->_internal + 3) = xpc_dictionary_get_int64(v5, "3");
    v14 = xpc_dictionary_get_double(v5, "5");
    *(v6->_internal + 8) = v14;
    objc_opt_class();
    v15 = sub_10018E3FC(v5, "7");
    v16 = v6->_internal;
    v17 = v16[9];
    v16[9] = v15;

    v18 = xpc_dictionary_get_value(v5, "6");
    self = v18;
    if (v18 && xpc_get_type(v18) == &_xpc_type_double)
    {
      value = xpc_double_get_value(self);
    }

    else
    {
      value = SKDownloadTimeRemainingUnknown;
    }

    *(v6->_internal + 7) = value;
    objc_opt_class();
    v20 = sub_10018E3FC(v5, "1");
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v22 = [[NSURL alloc] initWithString:v20];
    }

    else
    {
      v22 = 0;
    }

    objc_storeStrong(v6->_internal + 6, v22);
    if (isKindOfClass)
    {
    }

    objc_opt_class();
    v23 = sub_10018E3FC(v5, "4");

    if (v23)
    {
      v24 = sub_10018DAD8(v23);
      v25 = v6->_internal;
      v26 = v25[5];
      v25[5] = v24;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_5:
  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "0", [*(self->_internal + 8) longLongValue]);
  sub_10018E448(v3, "1", [*(self->_internal + 6) absoluteString]);
  sub_10018E448(v3, "2", *(self->_internal + 1));
  xpc_dictionary_set_int64(v3, "3", *(self->_internal + 3));
  v4 = sub_10018D55C(*(self->_internal + 5));
  sub_10018E448(v3, "4", v4);
  xpc_dictionary_set_double(v3, "5", *(self->_internal + 8));
  xpc_dictionary_set_double(v3, "6", *(self->_internal + 7));
  sub_10018E448(v3, "7", *(self->_internal + 9));
  return v3;
}

@end