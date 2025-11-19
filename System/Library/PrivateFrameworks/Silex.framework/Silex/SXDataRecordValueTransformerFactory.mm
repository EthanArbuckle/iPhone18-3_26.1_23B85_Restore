@interface SXDataRecordValueTransformerFactory
- (SXDataRecordValueTransformerFactory)initWithDOMObjectProvider:(id)a3;
- (id)recordValueTransformerForDataDescriptor:(id)a3;
@end

@implementation SXDataRecordValueTransformerFactory

- (SXDataRecordValueTransformerFactory)initWithDOMObjectProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXDataRecordValueTransformerFactory;
  v6 = [(SXDataRecordValueTransformerFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_DOMObjectProvider, a3);
  }

  return v7;
}

- (id)recordValueTransformerForDataDescriptor:(id)a3
{
  v4 = [a3 dataType];
  v5 = 0;
  if (v4 <= 3)
  {
    if ((v4 - 1) >= 2)
    {
      if (v4 != 3)
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

  switch(v4)
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
      v8 = [(SXDataRecordValueTransformerFactory *)self DOMObjectProvider];
      v5 = [(SXImageRecordValueTransformer *)v7 initWithDOMObjectProvider:v8];

      break;
  }

LABEL_13:

  return v5;
}

@end