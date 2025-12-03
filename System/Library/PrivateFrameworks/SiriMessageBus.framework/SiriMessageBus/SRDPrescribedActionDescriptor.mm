@interface SRDPrescribedActionDescriptor
- (SRDPrescribedActionDescriptor)initWithToolID:(id)d parametersData:(id)data additionalContentData:(id)contentData actionTraceID:(id)iD;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRDPrescribedActionDescriptor

- (SRDPrescribedActionDescriptor)initWithToolID:(id)d parametersData:(id)data additionalContentData:(id)contentData actionTraceID:(id)iD
{
  v9 = sub_2237B5E2C();
  v11 = v10;
  if (data)
  {
    contentDataCopy = contentData;
    iDCopy = iD;
    dataCopy = data;
    data = sub_2237B408C();
    v16 = v15;

    if (contentData)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    v19 = 0xF000000000000000;
    if (iD)
    {
      goto LABEL_4;
    }

LABEL_7:
    v20 = 0;
    v22 = 0;
    return sub_22377CA54(v9, v11, data, v16, v17, v19, v20, v22);
  }

  contentDataCopy2 = contentData;
  iDCopy2 = iD;
  v16 = 0xF000000000000000;
  if (!contentData)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17 = sub_2237B408C();
  v19 = v18;

  if (!iD)
  {
    goto LABEL_7;
  }

LABEL_4:
  v20 = sub_2237B5E2C();
  v22 = v21;

  return sub_22377CA54(v9, v11, data, v16, v17, v19, v20, v22);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_22377CC98();
}

@end