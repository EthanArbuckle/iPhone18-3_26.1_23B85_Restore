@interface SUCoreScanParam
- (SUCoreScanParam)init;
- (SUCoreScanParam)initWithCoder:(id)a3;
- (SUCoreScanParam)initWithDescriptor:(id)a3 withFallbackDescriptor:(id)a4;
- (SUCoreScanParam)initWithMajorPrimaryDescriptor:(id)a3 majorSecondaryDescriptor:(id)a4 minorPrimaryDescriptor:(id)a5 minorSecondaryDescriptor:(id)a6;
- (SUCoreScanParam)initWithNote:(id)a3;
- (SUCoreScanParam)initWithResult:(int64_t)a3 withError:(id)a4;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUCoreScanParam

- (SUCoreScanParam)init
{
  v15.receiver = self;
  v15.super_class = SUCoreScanParam;
  v2 = [(SUCoreScanParam *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_type = 0;
    error = v2->_error;
    v2->_resultCode = 0;
    v2->_error = 0;

    descriptor = v3->_descriptor;
    v3->_descriptor = 0;

    fallbackDescriptor = v3->_fallbackDescriptor;
    v3->_fallbackDescriptor = 0;

    majorPrimaryDescriptor = v3->_majorPrimaryDescriptor;
    v3->_majorPrimaryDescriptor = 0;

    majorSecondaryDescriptor = v3->_majorSecondaryDescriptor;
    v3->_majorSecondaryDescriptor = 0;

    minorPrimaryDescriptor = v3->_minorPrimaryDescriptor;
    v3->_minorPrimaryDescriptor = 0;

    minorSecondaryDescriptor = v3->_minorSecondaryDescriptor;
    v3->_minorSecondaryDescriptor = 0;

    note = v3->_note;
    v3->_note = 0;

    v12 = objc_opt_new();
    additionalInfo = v3->_additionalInfo;
    v3->_additionalInfo = v12;
  }

  return v3;
}

- (SUCoreScanParam)initWithResult:(int64_t)a3 withError:(id)a4
{
  v7 = a4;
  v8 = [(SUCoreScanParam *)self init];
  v9 = v8;
  if (v8)
  {
    v8->_type = 1;
    v8->_resultCode = a3;
    objc_storeStrong(&v8->_error, a4);
  }

  return v9;
}

- (SUCoreScanParam)initWithDescriptor:(id)a3 withFallbackDescriptor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(SUCoreScanParam *)self init];
  v10 = v9;
  if (v9)
  {
    v9->_type = 2;
    objc_storeStrong(&v9->_descriptor, a3);
    objc_storeStrong(&v10->_fallbackDescriptor, a4);
  }

  return v10;
}

- (SUCoreScanParam)initWithMajorPrimaryDescriptor:(id)a3 majorSecondaryDescriptor:(id)a4 minorPrimaryDescriptor:(id)a5 minorSecondaryDescriptor:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(SUCoreScanParam *)self init];
  v16 = v15;
  if (v15)
  {
    v15->_type = 3;
    objc_storeStrong(&v15->_majorPrimaryDescriptor, a3);
    objc_storeStrong(&v16->_majorSecondaryDescriptor, a4);
    objc_storeStrong(&v16->_minorPrimaryDescriptor, a5);
    objc_storeStrong(&v16->_minorSecondaryDescriptor, a6);
  }

  return v16;
}

- (SUCoreScanParam)initWithNote:(id)a3
{
  v5 = a3;
  v6 = [(SUCoreScanParam *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 4;
    objc_storeStrong(&v6->_note, a3);
  }

  return v7;
}

- (SUCoreScanParam)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = SUCoreScanParam;
  v5 = [(SUCoreScanParam *)&v27 init];
  if (v5)
  {
    v5->_resultCode = [v4 decodeInt64ForKey:@"resultCode"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    v7 = [MEMORY[0x277D643F8] sharedCore];
    v8 = [v7 buildError:v5->_resultCode underlying:0 description:v6];
    error = v5->_error;
    v5->_error = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"descriptor"];
    descriptor = v5->_descriptor;
    v5->_descriptor = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fallbackDescriptor"];
    fallbackDescriptor = v5->_fallbackDescriptor;
    v5->_fallbackDescriptor = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"majorPrimaryDescriptor"];
    majorPrimaryDescriptor = v5->_majorPrimaryDescriptor;
    v5->_majorPrimaryDescriptor = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"majorSecondaryDescriptor"];
    majorSecondaryDescriptor = v5->_majorSecondaryDescriptor;
    v5->_majorSecondaryDescriptor = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minorPrimaryDescriptor"];
    minorPrimaryDescriptor = v5->_minorPrimaryDescriptor;
    v5->_minorPrimaryDescriptor = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minorSecondaryDescriptor"];
    minorSecondaryDescriptor = v5->_minorSecondaryDescriptor;
    v5->_minorSecondaryDescriptor = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"note"];
    note = v5->_note;
    v5->_note = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"additionalInfo"];
    additionalInfo = v5->_additionalInfo;
    v5->_additionalInfo = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[SUCoreScanParam resultCode](self forKey:{"resultCode"), @"resultCode"}];
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = [(SUCoreScanParam *)self error];
  v15 = [v5 initWithFormat:@"%@", v6];

  [v4 encodeObject:v15 forKey:@"error"];
  v7 = [(SUCoreScanParam *)self descriptor];
  [v4 encodeObject:v7 forKey:@"descriptor"];

  v8 = [(SUCoreScanParam *)self fallbackDescriptor];
  [v4 encodeObject:v8 forKey:@"fallbackDescriptor"];

  v9 = [(SUCoreScanParam *)self majorPrimaryDescriptor];
  [v4 encodeObject:v9 forKey:@"majorPrimaryDescriptor"];

  v10 = [(SUCoreScanParam *)self majorSecondaryDescriptor];
  [v4 encodeObject:v10 forKey:@"majorSecondaryDescriptor"];

  v11 = [(SUCoreScanParam *)self minorPrimaryDescriptor];
  [v4 encodeObject:v11 forKey:@"minorPrimaryDescriptor"];

  v12 = [(SUCoreScanParam *)self minorSecondaryDescriptor];
  [v4 encodeObject:v12 forKey:@"minorSecondaryDescriptor"];

  v13 = [(SUCoreScanParam *)self note];
  [v4 encodeObject:v13 forKey:@"note"];

  v14 = [(SUCoreScanParam *)self additionalInfo];
  [v4 encodeObject:v14 forKey:@"additionalInfo"];
}

- (id)description
{
  type = self->_type;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = v4;
  if (type <= 2)
  {
    if (type == 1)
    {
      v13 = [(SUCoreScanParam *)self resultCode];
      v14 = [(SUCoreScanParam *)self error];
      v15 = [(SUCoreScanParam *)self additionalInfo];
      v11 = [v5 initWithFormat:@"\n[>>>\n                   resultCode: %ld\n                        error: %@\n               additionalInfo: %@\n<<<]", v13, v14, v15];

      goto LABEL_13;
    }

    if (type == 2)
    {
      v6 = [(SUCoreScanParam *)self descriptor];
      v7 = [v6 summary];
      v8 = [(SUCoreScanParam *)self fallbackDescriptor];
      v9 = [v8 summary];
      v10 = [(SUCoreScanParam *)self additionalInfo];
      v11 = [v5 initWithFormat:@"\n[>>>\n                   descriptor: %@\n           fallbackDescriptor: %@\n               additionalInfo: %@\n<<<]", v7, v9, v10];

LABEL_11:
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (type == 3)
  {
    v6 = [(SUCoreScanParam *)self majorPrimaryDescriptor];
    v7 = [v6 summary];
    v8 = [(SUCoreScanParam *)self majorSecondaryDescriptor];
    v9 = [v8 summary];
    v16 = [(SUCoreScanParam *)self minorPrimaryDescriptor];
    v17 = [v16 summary];
    v18 = [(SUCoreScanParam *)self minorSecondaryDescriptor];
    v19 = [v18 summary];
    v20 = [(SUCoreScanParam *)self additionalInfo];
    v11 = [v5 initWithFormat:@"\n[>>>\n       majorPrimaryDescriptor: %@\n     majorSecondaryDescriptor: %@\n       minorPrimaryDescriptor: %@\n     minorSecondaryDescriptor: %@\n               additionalInfo: %@\n<<<]", v7, v9, v17, v19, v20];

    goto LABEL_11;
  }

  if (type != 4)
  {
LABEL_8:
    v11 = [v4 initWithFormat:@"\n[>>>\n        NO_INFO: %d\n<<<]", self->_type];
    goto LABEL_13;
  }

  v6 = [(SUCoreScanParam *)self note];
  v12 = [(SUCoreScanParam *)self additionalInfo];
  v11 = [v5 initWithFormat:@"\n[>>>\n          note: %@\nadditionalInfo: %@\n<<<]", v6, v12];

LABEL_12:
LABEL_13:

  return v11;
}

- (id)summary
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"resultCode:%ld", -[SUCoreScanParam resultCode](self, "resultCode")];
  v4 = [(SUCoreScanParam *)self error];

  if (v4)
  {
    v5 = [(SUCoreScanParam *)self error];
    v6 = [v5 description];
    v7 = [v3 stringByAppendingFormat:@", errorDesc:%@", v6];

    v3 = v7;
  }

  v8 = [(SUCoreScanParam *)self descriptor];
  if (v8)
  {

LABEL_6:
    v10 = [(SUCoreScanParam *)self descriptor];
    v11 = [v10 summary];
    v12 = [(SUCoreScanParam *)self fallbackDescriptor];
    v13 = [v12 summary];
    v14 = [v3 stringByAppendingFormat:@", descriptor:%@, fallbackDescriptor:%@", v11, v13];

    v3 = v14;
    goto LABEL_7;
  }

  v9 = [(SUCoreScanParam *)self fallbackDescriptor];

  if (v9)
  {
    goto LABEL_6;
  }

LABEL_7:
  v15 = [(SUCoreScanParam *)self majorPrimaryDescriptor];
  if (v15 || ([(SUCoreScanParam *)self majorSecondaryDescriptor], (v15 = objc_claimAutoreleasedReturnValue()) != 0) || ([(SUCoreScanParam *)self minorPrimaryDescriptor], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_11:
    v16 = [(SUCoreScanParam *)self majorPrimaryDescriptor];
    v17 = [v16 summary];
    v18 = [(SUCoreScanParam *)self majorSecondaryDescriptor];
    v19 = [v18 summary];
    v20 = [(SUCoreScanParam *)self minorPrimaryDescriptor];
    v21 = [v20 summary];
    v22 = [(SUCoreScanParam *)self minorSecondaryDescriptor];
    v23 = [v22 summary];
    v24 = [v3 stringByAppendingFormat:@", majorPrimaryDescriptor:%@, majorSecondaryDescriptor:%@, minorPrimaryDescriptor:%@, minorSecondaryDescriptor:%@", v17, v19, v21, v23];

    v3 = v24;
    goto LABEL_12;
  }

  v26 = [(SUCoreScanParam *)self minorSecondaryDescriptor];

  if (v26)
  {
    goto LABEL_11;
  }

LABEL_12:

  return v3;
}

@end