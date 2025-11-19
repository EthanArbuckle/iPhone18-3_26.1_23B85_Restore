@interface PK_ipp_request_t
- (PK_ipp_request_t)init;
- (PK_ipp_request_t)initWithOp:(unsigned __int16)a3;
- (id)_descriptionLeader;
- (id)opString;
- (void)_setupNewRequest;
@end

@implementation PK_ipp_request_t

- (PK_ipp_request_t)init
{
  v3.receiver = self;
  v3.super_class = PK_ipp_request_t;
  return [(PK_ipp_t *)&v3 init];
}

- (PK_ipp_request_t)initWithOp:(unsigned __int16)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = PK_ipp_request_t;
  v4 = [(PK_ipp_t *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(PK_ipp_t *)v4 setOp_or_status:v3];
    [(PK_ipp_request_t *)v5 _setupNewRequest];
  }

  return v5;
}

- (void)_setupNewRequest
{
  self->super._request_id = atomic_fetch_add([PK_ipp_request_t _setupNewRequest]::sRequest_id, 1u);
  [(PK_ipp_t *)self _addString:1 valueTag:71 name:@"attributes-charset" lang:0 value:@"utf-8"];
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [v3 objectForKey:*MEMORY[0x277CBE6C8]];

  [(PK_ipp_t *)self _addString:1 valueTag:72 name:@"attributes-natural-language" lang:0 value:v4];
}

- (id)opString
{
  v3 = [(PK_ipp_t *)self op_or_status];
  if (v3 <= 8)
  {
    if (v3 <= 4)
    {
      if (v3 == 2)
      {
        v4 = @"IPP_OP_PRINT_JOB";
        goto LABEL_24;
      }

      if (v3 == 4)
      {
        v4 = @"IPP_OP_VALIDATE_JOB";
        goto LABEL_24;
      }
    }

    else
    {
      switch(v3)
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
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"ipp-op-unknown (%d)", -[PK_ipp_t op_or_status](self, "op_or_status")];
    goto LABEL_24;
  }

  if (v3 > 10)
  {
    switch(v3)
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

  if (v3 == 9)
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
  v3 = MEMORY[0x277CCACA8];
  request_id = self->super._request_id;
  v5 = [(PK_ipp_t *)self op_or_status];
  v6 = [(PK_ipp_request_t *)self opString];
  v7 = [v3 stringWithFormat:@"<ID#%d(%d - %@)>", request_id, v5, v6];

  return v7;
}

@end