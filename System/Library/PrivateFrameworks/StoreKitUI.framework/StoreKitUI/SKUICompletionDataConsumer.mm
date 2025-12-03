@interface SKUICompletionDataConsumer
- (id)objectForData:(id)data response:(id)response error:(id *)error;
@end

@implementation SKUICompletionDataConsumer

- (id)objectForData:(id)data response:(id)response error:(id *)error
{
  dataCopy = data;
  responseCopy = response;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICompletionDataConsumer objectForData:response:error:];
  }

  if ([responseCopy statusCode] != 200)
  {
    if (error)
    {
      [(SKUICompletionDataConsumer *)self _invalidResponseError];
      *error = v13 = 0;
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  if (!dataCopy)
  {
LABEL_13:
    v13 = 0;
    goto LABEL_20;
  }

  v16 = 0;
  v10 = [MEMORY[0x277CCAC58] propertyListWithData:dataCopy options:0 format:0 error:&v16];
  v11 = v16;
  v12 = v11;
  if (!v10 || v11)
  {
    if (error)
    {
      v14 = v11;
      v13 = 0;
      *error = v12;
      goto LABEL_19;
    }

LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      [(SKUICompletionDataConsumer *)self _invalidResponseError];
      *error = v13 = 0;
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