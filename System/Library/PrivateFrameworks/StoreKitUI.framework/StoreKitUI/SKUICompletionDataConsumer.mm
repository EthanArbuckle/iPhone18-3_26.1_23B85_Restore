@interface SKUICompletionDataConsumer
- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5;
@end

@implementation SKUICompletionDataConsumer

- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICompletionDataConsumer objectForData:response:error:];
  }

  if ([v9 statusCode] != 200)
  {
    if (a5)
    {
      [(SKUICompletionDataConsumer *)self _invalidResponseError];
      *a5 = v13 = 0;
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  if (!v8)
  {
LABEL_13:
    v13 = 0;
    goto LABEL_20;
  }

  v16 = 0;
  v10 = [MEMORY[0x277CCAC58] propertyListWithData:v8 options:0 format:0 error:&v16];
  v11 = v16;
  v12 = v11;
  if (!v10 || v11)
  {
    if (a5)
    {
      v14 = v11;
      v13 = 0;
      *a5 = v12;
      goto LABEL_19;
    }

LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a5)
    {
      [(SKUICompletionDataConsumer *)self _invalidResponseError];
      *a5 = v13 = 0;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v13 = [[SKUICompletionList alloc] initWithCompletionListDictionary:v10];
LABEL_19:

LABEL_20:

  return v13;
}

- (void)objectForData:response:error:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICompletionDataConsumer objectForData:response:error:]";
}

@end