@interface SXDataRecordValueTransformerFactory
- (SXDataRecordValueTransformerFactory)initWithDOMObjectProvider:(id)provider;
- (id)recordValueTransformerForDataDescriptor:(id)descriptor;
@end

@implementation SXDataRecordValueTransformerFactory

- (SXDataRecordValueTransformerFactory)initWithDOMObjectProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = SXDataRecordValueTransformerFactory;
  v6 = [(SXDataRecordValueTransformerFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_DOMObjectProvider, provider);
  }

  return v7;
}

- (id)recordValueTransformerForDataDescriptor:(id)descriptor
{
  dataType = [descriptor dataType];
  v5 = 0;
  if (dataType <= 3)
  {
    if ((dataType - 1) >= 2)
    {
      if (dataType != 3)
      {
        goto LABEL_13;
      }

      v6 = SXNumberRecordValueTransformer;
    }

    else
    {
      v6 = SXStringRecordValueTransformer;
    }

    goto LABEL_12;
  }

  switch(dataType)
  {
    case 4:
      v6 = SXIntegerRecordValueTransformer;
LABEL_12:
      v5 = objc_alloc_init(v6);
      break;
    case 5:
      v6 = SXFloatRecordValueTransformer;
      goto LABEL_12;
    case 6:
      v7 = [SXImageRecordValueTransformer alloc];
      dOMObjectProvider = [(SXDataRecordValueTransformerFactory *)self DOMObjectProvider];
      v5 = [(SXImageRecordValueTransformer *)v7 initWithDOMObjectProvider:dOMObjectProvider];

      break;
  }

LABEL_13:

  return v5;
}

@end