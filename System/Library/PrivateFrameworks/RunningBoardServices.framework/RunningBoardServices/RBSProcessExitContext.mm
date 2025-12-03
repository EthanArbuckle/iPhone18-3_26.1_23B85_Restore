@interface RBSProcessExitContext
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (NSString)description;
- (RBSProcessExitContext)initWithCoder:(id)coder;
- (RBSProcessExitContext)initWithRBSXPCCoder:(id)coder;
- (RBSProcessExitStatus)status;
- (id)_initWithNamespace:(uint64_t)namespace code:(int)code wait4Status:;
- (id)_initWithStatus:(int)status legacyCode:(void *)code timestamp:(void *)timestamp context:;
- (id)copyWithStatus:(id)status;
- (id)copyWithTerminationContext:(id)context;
- (id)copyWithTimestamp:(id)timestamp;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithRBSXPCCoder:(id)coder;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_15;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class() || self->_legacyCode != equalCopy->_legacyCode || self->_type != equalCopy->_type)
  {
    goto LABEL_14;
  }

  status = self->_status;
  v7 = equalCopy->_status;
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

  if (!RBSXPCEqualDates(self->_timestamp, equalCopy->_timestamp))
  {
LABEL_14:
    v8 = 0;
    goto LABEL_16;
  }

  terminationContext = self->_terminationContext;
  v10 = equalCopy->_terminationContext;
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

    terminationContext = [v4 initWithFormat:@"<%@| voluntary%@%@>", v5, v12, terminationContext];
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

    terminationContext = [v4 initWithFormat:@"<%@| unknown%@%@>", v5, v15, v16];
LABEL_12:
    v11 = terminationContext;
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

- (void)encodeWithRBSXPCCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInt64:type forKey:@"_type"];
  [coderCopy encodeObject:self->_status forKey:@"_status"];
  [coderCopy encodeObject:self->_timestamp forKey:@"_timestamp"];
  [coderCopy encodeObject:self->_terminationContext forKey:@"_terminationContext"];
  [coderCopy encodeInt64:self->_legacyCode forKey:@"_legacyCode"];
}

- (RBSProcessExitContext)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = RBSProcessExitContext;
  v5 = [(RBSProcessExitContext *)&v13 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeInt64ForKey:@"_type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_status"];
    status = v5->_status;
    v5->_status = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_terminationContext"];
    terminationContext = v5->_terminationContext;
    v5->_terminationContext = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v10;

    v5->_legacyCode = [coderCopy decodeInt64ForKey:@"_legacyCode"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInt64:type forKey:@"_type"];
  [coderCopy encodeObject:self->_timestamp forKey:@"_timestamp"];
  [coderCopy encodeObject:self->_status forKey:@"_status"];
  [coderCopy encodeInt32:self->_legacyCode forKey:@"_legacyCode"];
}

- (RBSProcessExitContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = RBSProcessExitContext;
  v5 = [(RBSProcessExitContext *)&v11 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeInt64ForKey:@"_type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_status"];
    status = v5->_status;
    v5->_status = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v8;

    v5->_legacyCode = [coderCopy decodeInt32ForKey:@"_legacyCode"];
  }

  return v5;
}

- (id)_initWithStatus:(int)status legacyCode:(void *)code timestamp:(void *)timestamp context:
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = a2;
  codeCopy = code;
  timestampCopy = timestamp;
  if (self)
  {
    v18.receiver = self;
    v18.super_class = RBSProcessExitContext;
    self = objc_msgSendSuper2(&v18, sel_init);
    if (self)
    {
      if (![v9 domain])
      {
        code = [v9 code];
        if (status)
        {
          if (!code && (status & 0x7F) != 0 && (status & 0x7F) != 0x7F)
          {
            v14 = rbs_process_log();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              statusCopy = status;
              _os_log_impl(&dword_18E8AD000, v14, OS_LOG_TYPE_DEFAULT, "Modern status reporting system failed (signal detected), translating $d into 2,%d", buf, 8u);
            }

            0x7F = [RBSProcessExitStatus statusWithDomain:2 code:status & 0x7F];

            v9 = 0x7F;
          }
        }
      }

      objc_storeStrong(self + 4, v9);
      if ([self[4] isValid])
      {
        v12 = 2;
      }

      else
      {
        if (![self[4] _isVoluntary])
        {
          self[3] = 0;
          goto LABEL_17;
        }

        v12 = 1;
      }

      self[3] = v12;
LABEL_17:
      *(self + 2) = status;
      objc_storeStrong(self + 2, code);
      objc_storeStrong(self + 5, timestamp);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return self;
}

- (id)copyWithStatus:(id)status
{
  statusCopy = status;
  v5 = [[RBSProcessExitContext alloc] _initWithStatus:statusCopy legacyCode:0 timestamp:self->_timestamp context:self->_terminationContext];

  return v5;
}

- (id)copyWithTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v5 = [[RBSProcessExitContext alloc] _initWithStatus:self->_legacyCode legacyCode:timestampCopy timestamp:self->_terminationContext context:?];

  return v5;
}

- (id)copyWithTerminationContext:(id)context
{
  contextCopy = context;
  v5 = [[RBSProcessExitContext alloc] _initWithStatus:self->_legacyCode legacyCode:self->_timestamp timestamp:contextCopy context:?];

  return v5;
}

- (id)_initWithNamespace:(uint64_t)namespace code:(int)code wait4Status:
{
  if (!self)
  {
    return 0;
  }

  v6 = [RBSProcessExitStatus statusWithDomain:a2 code:namespace];
  date = [MEMORY[0x1E695DF00] date];
  v8 = [(RBSProcessExitContext *)self _initWithStatus:v6 legacyCode:code timestamp:date context:0];

  return v8;
}

@end