@interface ipp_request_t
- (id)_descriptionLeader;
- (id)opString;
- (ipp_request_t)init;
- (void)_setupNewRequest;
@end

@implementation ipp_request_t

- (ipp_request_t)init
{
  v3.receiver = self;
  v3.super_class = ipp_request_t;
  return [(ipp_t *)&v3 init];
}

- (void)_setupNewRequest
{
  self->super._request_id = atomic_fetch_add(&dword_1000C79C0, 1u);
  [(ipp_t *)self _addString:1 valueTag:71 name:@"attributes-charset" lang:0 value:@"utf-8"];
  v3 = +[NSLocale currentLocale];
  v4 = [v3 objectForKey:NSLocaleLanguageCode];

  [(ipp_t *)self _addString:1 valueTag:72 name:@"attributes-natural-language" lang:0 value:v4];
}

- (id)opString
{
  op_or_status = [(ipp_t *)self op_or_status];
  if (op_or_status <= 8)
  {
    if (op_or_status <= 4)
    {
      if (op_or_status == 2)
      {
        v4 = @"IPP_OP_PRINT_JOB";
        goto LABEL_24;
      }

      if (op_or_status == 4)
      {
        v4 = @"IPP_OP_VALIDATE_JOB";
        goto LABEL_24;
      }
    }

    else
    {
      switch(op_or_status)
      {
        case 5:
          v4 = @"IPP_OP_CREATE_JOB";
          goto LABEL_24;
        case 6:
          v4 = @"IPP_OP_SEND_DOCUMENT";
          goto LABEL_24;
        case 8:
          v4 = @"IPP_OP_CANCEL_JOB";
          goto LABEL_24;
      }
    }

LABEL_23:
    v4 = [NSString stringWithFormat:@"ipp-op-unknown (%d)", [(ipp_t *)self op_or_status]];
    goto LABEL_24;
  }

  if (op_or_status > 10)
  {
    switch(op_or_status)
    {
      case 11:
        v4 = @"IPP_OP_GET_PRINTER_ATTRIBUTES";
        goto LABEL_24;
      case 60:
        v4 = @"IPP_OP_IDENTIFY_PRINTER";
        goto LABEL_24;
      case 79:
        v4 = @"IPP_OP_GET_PRINTERS";
        goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (op_or_status == 9)
  {
    v4 = @"IPP_OP_GET_JOB_ATTRIBUTES";
  }

  else
  {
    v4 = @"IPP_OP_GET_JOBS";
  }

LABEL_24:

  return v4;
}

- (id)_descriptionLeader
{
  request_id = self->super._request_id;
  op_or_status = [(ipp_t *)self op_or_status];
  opString = [(ipp_request_t *)self opString];
  v6 = [NSString stringWithFormat:@"<ID#%d(%d - %@)>", request_id, op_or_status, opString];

  return v6;
}

@end