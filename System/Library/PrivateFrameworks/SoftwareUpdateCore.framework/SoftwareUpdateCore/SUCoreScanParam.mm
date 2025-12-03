@interface SUCoreScanParam
- (SUCoreScanParam)init;
- (SUCoreScanParam)initWithCoder:(id)coder;
- (SUCoreScanParam)initWithDescriptor:(id)descriptor withFallbackDescriptor:(id)fallbackDescriptor;
- (SUCoreScanParam)initWithMajorPrimaryDescriptor:(id)descriptor majorSecondaryDescriptor:(id)secondaryDescriptor minorPrimaryDescriptor:(id)primaryDescriptor minorSecondaryDescriptor:(id)minorSecondaryDescriptor;
- (SUCoreScanParam)initWithNote:(id)note;
- (SUCoreScanParam)initWithResult:(int64_t)result withError:(id)error;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
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

- (SUCoreScanParam)initWithResult:(int64_t)result withError:(id)error
{
  errorCopy = error;
  v8 = [(SUCoreScanParam *)self init];
  v9 = v8;
  if (v8)
  {
    v8->_type = 1;
    v8->_resultCode = result;
    objc_storeStrong(&v8->_error, error);
  }

  return v9;
}

- (SUCoreScanParam)initWithDescriptor:(id)descriptor withFallbackDescriptor:(id)fallbackDescriptor
{
  descriptorCopy = descriptor;
  fallbackDescriptorCopy = fallbackDescriptor;
  v9 = [(SUCoreScanParam *)self init];
  v10 = v9;
  if (v9)
  {
    v9->_type = 2;
    objc_storeStrong(&v9->_descriptor, descriptor);
    objc_storeStrong(&v10->_fallbackDescriptor, fallbackDescriptor);
  }

  return v10;
}

- (SUCoreScanParam)initWithMajorPrimaryDescriptor:(id)descriptor majorSecondaryDescriptor:(id)secondaryDescriptor minorPrimaryDescriptor:(id)primaryDescriptor minorSecondaryDescriptor:(id)minorSecondaryDescriptor
{
  descriptorCopy = descriptor;
  secondaryDescriptorCopy = secondaryDescriptor;
  primaryDescriptorCopy = primaryDescriptor;
  minorSecondaryDescriptorCopy = minorSecondaryDescriptor;
  v15 = [(SUCoreScanParam *)self init];
  v16 = v15;
  if (v15)
  {
    v15->_type = 3;
    objc_storeStrong(&v15->_majorPrimaryDescriptor, descriptor);
    objc_storeStrong(&v16->_majorSecondaryDescriptor, secondaryDescriptor);
    objc_storeStrong(&v16->_minorPrimaryDescriptor, primaryDescriptor);
    objc_storeStrong(&v16->_minorSecondaryDescriptor, minorSecondaryDescriptor);
  }

  return v16;
}

- (SUCoreScanParam)initWithNote:(id)note
{
  noteCopy = note;
  v6 = [(SUCoreScanParam *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 4;
    objc_storeStrong(&v6->_note, note);
  }

  return v7;
}

- (SUCoreScanParam)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = SUCoreScanParam;
  v5 = [(SUCoreScanParam *)&v27 init];
  if (v5)
  {
    v5->_resultCode = [coderCopy decodeInt64ForKey:@"resultCode"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v8 = [mEMORY[0x277D643F8] buildError:v5->_resultCode underlying:0 description:v6];
    error = v5->_error;
    v5->_error = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"descriptor"];
    descriptor = v5->_descriptor;
    v5->_descriptor = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fallbackDescriptor"];
    fallbackDescriptor = v5->_fallbackDescriptor;
    v5->_fallbackDescriptor = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"majorPrimaryDescriptor"];
    majorPrimaryDescriptor = v5->_majorPrimaryDescriptor;
    v5->_majorPrimaryDescriptor = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"majorSecondaryDescriptor"];
    majorSecondaryDescriptor = v5->_majorSecondaryDescriptor;
    v5->_majorSecondaryDescriptor = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minorPrimaryDescriptor"];
    minorPrimaryDescriptor = v5->_minorPrimaryDescriptor;
    v5->_minorPrimaryDescriptor = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minorSecondaryDescriptor"];
    minorSecondaryDescriptor = v5->_minorSecondaryDescriptor;
    v5->_minorSecondaryDescriptor = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"note"];
    note = v5->_note;
    v5->_note = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"additionalInfo"];
    additionalInfo = v5->_additionalInfo;
    v5->_additionalInfo = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[SUCoreScanParam resultCode](self forKey:{"resultCode"), @"resultCode"}];
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  error = [(SUCoreScanParam *)self error];
  v15 = [v5 initWithFormat:@"%@", error];

  [coderCopy encodeObject:v15 forKey:@"error"];
  descriptor = [(SUCoreScanParam *)self descriptor];
  [coderCopy encodeObject:descriptor forKey:@"descriptor"];

  fallbackDescriptor = [(SUCoreScanParam *)self fallbackDescriptor];
  [coderCopy encodeObject:fallbackDescriptor forKey:@"fallbackDescriptor"];

  majorPrimaryDescriptor = [(SUCoreScanParam *)self majorPrimaryDescriptor];
  [coderCopy encodeObject:majorPrimaryDescriptor forKey:@"majorPrimaryDescriptor"];

  majorSecondaryDescriptor = [(SUCoreScanParam *)self majorSecondaryDescriptor];
  [coderCopy encodeObject:majorSecondaryDescriptor forKey:@"majorSecondaryDescriptor"];

  minorPrimaryDescriptor = [(SUCoreScanParam *)self minorPrimaryDescriptor];
  [coderCopy encodeObject:minorPrimaryDescriptor forKey:@"minorPrimaryDescriptor"];

  minorSecondaryDescriptor = [(SUCoreScanParam *)self minorSecondaryDescriptor];
  [coderCopy encodeObject:minorSecondaryDescriptor forKey:@"minorSecondaryDescriptor"];

  note = [(SUCoreScanParam *)self note];
  [coderCopy encodeObject:note forKey:@"note"];

  additionalInfo = [(SUCoreScanParam *)self additionalInfo];
  [coderCopy encodeObject:additionalInfo forKey:@"additionalInfo"];
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
      resultCode = [(SUCoreScanParam *)self resultCode];
      error = [(SUCoreScanParam *)self error];
      additionalInfo = [(SUCoreScanParam *)self additionalInfo];
      v11 = [v5 initWithFormat:@"\n[>>>\n                   resultCode: %ld\n                        error: %@\n               additionalInfo: %@\n<<<]", resultCode, error, additionalInfo];

      goto LABEL_13;
    }

    if (type == 2)
    {
      descriptor = [(SUCoreScanParam *)self descriptor];
      summary = [descriptor summary];
      fallbackDescriptor = [(SUCoreScanParam *)self fallbackDescriptor];
      summary2 = [fallbackDescriptor summary];
      additionalInfo2 = [(SUCoreScanParam *)self additionalInfo];
      v11 = [v5 initWithFormat:@"\n[>>>\n                   descriptor: %@\n           fallbackDescriptor: %@\n               additionalInfo: %@\n<<<]", summary, summary2, additionalInfo2];

LABEL_11:
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (type == 3)
  {
    descriptor = [(SUCoreScanParam *)self majorPrimaryDescriptor];
    summary = [descriptor summary];
    fallbackDescriptor = [(SUCoreScanParam *)self majorSecondaryDescriptor];
    summary2 = [fallbackDescriptor summary];
    minorPrimaryDescriptor = [(SUCoreScanParam *)self minorPrimaryDescriptor];
    summary3 = [minorPrimaryDescriptor summary];
    minorSecondaryDescriptor = [(SUCoreScanParam *)self minorSecondaryDescriptor];
    summary4 = [minorSecondaryDescriptor summary];
    additionalInfo3 = [(SUCoreScanParam *)self additionalInfo];
    v11 = [v5 initWithFormat:@"\n[>>>\n       majorPrimaryDescriptor: %@\n     majorSecondaryDescriptor: %@\n       minorPrimaryDescriptor: %@\n     minorSecondaryDescriptor: %@\n               additionalInfo: %@\n<<<]", summary, summary2, summary3, summary4, additionalInfo3];

    goto LABEL_11;
  }

  if (type != 4)
  {
LABEL_8:
    v11 = [v4 initWithFormat:@"\n[>>>\n        NO_INFO: %d\n<<<]", self->_type];
    goto LABEL_13;
  }

  descriptor = [(SUCoreScanParam *)self note];
  additionalInfo4 = [(SUCoreScanParam *)self additionalInfo];
  v11 = [v5 initWithFormat:@"\n[>>>\n          note: %@\nadditionalInfo: %@\n<<<]", descriptor, additionalInfo4];

LABEL_12:
LABEL_13:

  return v11;
}

- (id)summary
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"resultCode:%ld", -[SUCoreScanParam resultCode](self, "resultCode")];
  error = [(SUCoreScanParam *)self error];

  if (error)
  {
    error2 = [(SUCoreScanParam *)self error];
    v6 = [error2 description];
    v7 = [v3 stringByAppendingFormat:@", errorDesc:%@", v6];

    v3 = v7;
  }

  descriptor = [(SUCoreScanParam *)self descriptor];
  if (descriptor)
  {

LABEL_6:
    descriptor2 = [(SUCoreScanParam *)self descriptor];
    summary = [descriptor2 summary];
    fallbackDescriptor = [(SUCoreScanParam *)self fallbackDescriptor];
    summary2 = [fallbackDescriptor summary];
    v14 = [v3 stringByAppendingFormat:@", descriptor:%@, fallbackDescriptor:%@", summary, summary2];

    v3 = v14;
    goto LABEL_7;
  }

  fallbackDescriptor2 = [(SUCoreScanParam *)self fallbackDescriptor];

  if (fallbackDescriptor2)
  {
    goto LABEL_6;
  }

LABEL_7:
  majorPrimaryDescriptor = [(SUCoreScanParam *)self majorPrimaryDescriptor];
  if (majorPrimaryDescriptor || ([(SUCoreScanParam *)self majorSecondaryDescriptor], (majorPrimaryDescriptor = objc_claimAutoreleasedReturnValue()) != 0) || ([(SUCoreScanParam *)self minorPrimaryDescriptor], (majorPrimaryDescriptor = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_11:
    majorPrimaryDescriptor2 = [(SUCoreScanParam *)self majorPrimaryDescriptor];
    summary3 = [majorPrimaryDescriptor2 summary];
    majorSecondaryDescriptor = [(SUCoreScanParam *)self majorSecondaryDescriptor];
    summary4 = [majorSecondaryDescriptor summary];
    minorPrimaryDescriptor = [(SUCoreScanParam *)self minorPrimaryDescriptor];
    summary5 = [minorPrimaryDescriptor summary];
    minorSecondaryDescriptor = [(SUCoreScanParam *)self minorSecondaryDescriptor];
    summary6 = [minorSecondaryDescriptor summary];
    v24 = [v3 stringByAppendingFormat:@", majorPrimaryDescriptor:%@, majorSecondaryDescriptor:%@, minorPrimaryDescriptor:%@, minorSecondaryDescriptor:%@", summary3, summary4, summary5, summary6];

    v3 = v24;
    goto LABEL_12;
  }

  minorSecondaryDescriptor2 = [(SUCoreScanParam *)self minorSecondaryDescriptor];

  if (minorSecondaryDescriptor2)
  {
    goto LABEL_11;
  }

LABEL_12:

  return v3;
}

@end