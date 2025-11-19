@interface RBSProcessExitContext
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (RBSProcessExitContext)initWithCoder:(id)a3;
- (RBSProcessExitContext)initWithRBSXPCCoder:(id)a3;
- (RBSProcessExitStatus)status;
- (id)_initWithNamespace:(uint64_t)a3 code:(int)a4 wait4Status:;
- (id)_initWithStatus:(int)a3 legacyCode:(void *)a4 timestamp:(void *)a5 context:;
- (id)copyWithStatus:(id)a3;
- (id)copyWithTerminationContext:(id)a3;
- (id)copyWithTimestamp:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSProcessExitContext

- (NSString)description
{
  type = self->_type;
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [objc_opt_class() description];
  v6 = v5;
  if (type == 1)
  {
    v9 = [v4 initWithFormat:@"<%@| voluntary>", v5];
  }

  else
  {
    if (type == 2)
    {
      v7 = [(RBSProcessExitStatus *)self->_status description];
      v8 = [v4 initWithFormat:@"<%@| specific, status:%@>", v6, v7];

      goto LABEL_7;
    }

    v9 = [v4 initWithFormat:@"<%@| unknown>", v5];
  }

  v8 = v9;
LABEL_7:

  return v8;
}

- (RBSProcessExitStatus)status
{
  if ([(RBSProcessExitStatus *)self->_status isValid])
  {
    status = self->_status;
  }

  else
  {
    status = 0;
  }

  return status;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_15;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class() || self->_legacyCode != v4->_legacyCode || self->_type != v4->_type)
  {
    goto LABEL_14;
  }

  status = self->_status;
  v7 = v4->_status;
  if (status != v7)
  {
    v8 = 0;
    if (!status || !v7)
    {
      goto LABEL_16;
    }

    if (![(RBSProcessExitStatus *)status isEqual:?])
    {
      goto LABEL_14;
    }
  }

  if (!RBSXPCEqualDates(self->_timestamp, v4->_timestamp))
  {
LABEL_14:
    v8 = 0;
    goto LABEL_16;
  }

  terminationContext = self->_terminationContext;
  v10 = v4->_terminationContext;
  if (terminationContext == v10)
  {
LABEL_15:
    v8 = 1;
    goto LABEL_16;
  }

  v8 = 0;
  if (terminationContext && v10)
  {
    v8 = [(RBSTerminateContext *)terminationContext isEqual:?];
  }

LABEL_16:

  return v8;
}

- (NSString)debugDescription
{
  type = self->_type;
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [objc_opt_class() description];
  v6 = v5;
  if (type == 1)
  {
    v12 = @", terminationContext";
    terminationContext = self->_terminationContext;
    if (!terminationContext)
    {
      v12 = &stru_1F01CD8F0;
      terminationContext = &stru_1F01CD8F0;
    }

    v14 = [v4 initWithFormat:@"<%@| voluntary%@%@>", v5, v12, terminationContext];
    goto LABEL_12;
  }

  if (type != 2)
  {
    v15 = @", terminationContext";
    v16 = self->_terminationContext;
    if (!v16)
    {
      v15 = &stru_1F01CD8F0;
      v16 = &stru_1F01CD8F0;
    }

    v14 = [v4 initWithFormat:@"<%@| unknown%@%@>", v5, v15, v16];
LABEL_12:
    v11 = v14;
    goto LABEL_13;
  }

  v7 = [(RBSProcessExitStatus *)self->_status description];
  v8 = v7;
  v9 = @" terminationContext";
  v10 = self->_terminationContext;
  if (!v10)
  {
    v9 = &stru_1F01CD8F0;
    v10 = &stru_1F01CD8F0;
  }

  v11 = [v4 initWithFormat:@"<%@| specific, status:%@%@%@>", v6, v7, v9, v10];

LABEL_13:

  return v11;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInt64:type forKey:@"_type"];
  [v5 encodeObject:self->_status forKey:@"_status"];
  [v5 encodeObject:self->_timestamp forKey:@"_timestamp"];
  [v5 encodeObject:self->_terminationContext forKey:@"_terminationContext"];
  [v5 encodeInt64:self->_legacyCode forKey:@"_legacyCode"];
}

- (RBSProcessExitContext)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = RBSProcessExitContext;
  v5 = [(RBSProcessExitContext *)&v13 init];
  if (v5)
  {
    v5->_type = [v4 decodeInt64ForKey:@"_type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_status"];
    status = v5->_status;
    v5->_status = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_terminationContext"];
    terminationContext = v5->_terminationContext;
    v5->_terminationContext = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v10;

    v5->_legacyCode = [v4 decodeInt64ForKey:@"_legacyCode"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInt64:type forKey:@"_type"];
  [v5 encodeObject:self->_timestamp forKey:@"_timestamp"];
  [v5 encodeObject:self->_status forKey:@"_status"];
  [v5 encodeInt32:self->_legacyCode forKey:@"_legacyCode"];
}

- (RBSProcessExitContext)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RBSProcessExitContext;
  v5 = [(RBSProcessExitContext *)&v11 init];
  if (v5)
  {
    v5->_type = [v4 decodeInt64ForKey:@"_type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_status"];
    status = v5->_status;
    v5->_status = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v8;

    v5->_legacyCode = [v4 decodeInt32ForKey:@"_legacyCode"];
  }

  return v5;
}

- (id)_initWithStatus:(int)a3 legacyCode:(void *)a4 timestamp:(void *)a5 context:
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = RBSProcessExitContext;
    a1 = objc_msgSendSuper2(&v18, sel_init);
    if (a1)
    {
      if (![v9 domain])
      {
        v13 = [v9 code];
        if (a3)
        {
          if (!v13 && (a3 & 0x7F) != 0 && (a3 & 0x7F) != 0x7F)
          {
            v14 = rbs_process_log();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              v20 = a3;
              _os_log_impl(&dword_18E8AD000, v14, OS_LOG_TYPE_DEFAULT, "Modern status reporting system failed (signal detected), translating $d into 2,%d", buf, 8u);
            }

            v15 = [RBSProcessExitStatus statusWithDomain:2 code:a3 & 0x7F];

            v9 = v15;
          }
        }
      }

      objc_storeStrong(a1 + 4, v9);
      if ([a1[4] isValid])
      {
        v12 = 2;
      }

      else
      {
        if (![a1[4] _isVoluntary])
        {
          a1[3] = 0;
          goto LABEL_17;
        }

        v12 = 1;
      }

      a1[3] = v12;
LABEL_17:
      *(a1 + 2) = a3;
      objc_storeStrong(a1 + 2, a4);
      objc_storeStrong(a1 + 5, a5);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return a1;
}

- (id)copyWithStatus:(id)a3
{
  v4 = a3;
  v5 = [[RBSProcessExitContext alloc] _initWithStatus:v4 legacyCode:0 timestamp:self->_timestamp context:self->_terminationContext];

  return v5;
}

- (id)copyWithTimestamp:(id)a3
{
  v4 = a3;
  v5 = [[RBSProcessExitContext alloc] _initWithStatus:self->_legacyCode legacyCode:v4 timestamp:self->_terminationContext context:?];

  return v5;
}

- (id)copyWithTerminationContext:(id)a3
{
  v4 = a3;
  v5 = [[RBSProcessExitContext alloc] _initWithStatus:self->_legacyCode legacyCode:self->_timestamp timestamp:v4 context:?];

  return v5;
}

- (id)_initWithNamespace:(uint64_t)a3 code:(int)a4 wait4Status:
{
  if (!a1)
  {
    return 0;
  }

  v6 = [RBSProcessExitStatus statusWithDomain:a2 code:a3];
  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [(RBSProcessExitContext *)a1 _initWithStatus:v6 legacyCode:a4 timestamp:v7 context:0];

  return v8;
}

@end