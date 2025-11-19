@interface SRDPrescribedActionDescriptor
- (SRDPrescribedActionDescriptor)initWithToolID:(id)a3 parametersData:(id)a4 additionalContentData:(id)a5 actionTraceID:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRDPrescribedActionDescriptor

- (SRDPrescribedActionDescriptor)initWithToolID:(id)a3 parametersData:(id)a4 additionalContentData:(id)a5 actionTraceID:(id)a6
{
  v9 = sub_2237B5E2C();
  v11 = v10;
  if (a4)
  {
    v12 = a5;
    v13 = a6;
    v14 = a4;
    a4 = sub_2237B408C();
    v16 = v15;

    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    v19 = 0xF000000000000000;
    if (a6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v20 = 0;
    v22 = 0;
    return sub_22377CA54(v9, v11, a4, v16, v17, v19, v20, v22);
  }

  v23 = a5;
  v24 = a6;
  v16 = 0xF000000000000000;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17 = sub_2237B408C();
  v19 = v18;

  if (!a6)
  {
    goto LABEL_7;
  }

LABEL_4:
  v20 = sub_2237B5E2C();
  v22 = v21;

  return sub_22377CA54(v9, v11, a4, v16, v17, v19, v20, v22);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22377CC98();
}

@end