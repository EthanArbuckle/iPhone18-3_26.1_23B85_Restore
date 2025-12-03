@interface RBSMachPortTaskNameRight
+ (id)portForSelf;
+ (id)taskNameForPID:(int)d;
- (RBSMachPortTaskNameRight)init;
- (RBSMachPortTaskNameRight)initWithCoder:(id)coder;
- (RBSMachPortTaskNameRight)initWithRBSXPCCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initWithPID:(void *)d;
- (uint64_t)_initWithPID:(void *)d port:(void *)port auditToken:;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSMachPortTaskNameRight

- (void)dealloc
{
  [(RBSMachPortTaskNameRight *)self invalidate];
  v3.receiver = self;
  v3.super_class = RBSMachPortTaskNameRight;
  [(RBSMachPortTaskNameRight *)&v3 dealloc];
}

- (RBSMachPortTaskNameRight)init
{
  v3 = getpid();

  return [(RBSMachPortTaskNameRight *)self initWithPID:v3];
}

- (id)initWithPID:(void *)d
{
  dCopy = 0;
  if (!d || a2 < 1)
  {
    goto LABEL_15;
  }

  if (!_RBSSandboxCanGetMachTaskName(a2))
  {
    goto LABEL_10;
  }

  tn = 0;
  v5 = MEMORY[0x1E69E9A60];
  if (task_name_for_pid(*MEMORY[0x1E69E9A60], a2, &tn))
  {
    if (RBSPIDExists(a2))
    {
      v6 = task_name_for_pid(*v5, a2, &tn);
      if (v6)
      {
        v7 = v6;
        v8 = rbs_general_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [RBSMachPortTaskNameRight initWithPID:v7];
        }

        goto LABEL_10;
      }

      goto LABEL_11;
    }

LABEL_10:
    dCopy = 0;
    goto LABEL_15;
  }

LABEL_11:
  *&v9 = -1;
  *(&v9 + 1) = -1;
  *task_info_out = v9;
  v19 = v9;
  task_info_outCnt = 8;
  v10 = task_info(tn, 0xFu, task_info_out, &task_info_outCnt);
  if (v10)
  {
    v11 = v10;
    v12 = rbs_general_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [RBSMachPortTaskNameRight initWithPID:v11];
    }

    dCopy = 0;
    tn = 0;
  }

  else
  {
    v16[0] = *task_info_out;
    v16[1] = v19;
    v14 = [RBSAuditToken tokenFromAuditToken:v16];
    v15 = [RBSMachPort portConsumingRightForPort:tn];
    [(RBSMachPortTaskNameRight *)d _initWithPID:a2 port:v15 auditToken:v14];
    dCopy = d;
  }

LABEL_15:

  return dCopy;
}

+ (id)taskNameForPID:(int)d
{
  if (d < 1)
  {
    v6 = 0;
  }

  else
  {
    if (_RBSSandboxCanGetMachTaskName(d))
    {
      v6 = [(RBSMachPortTaskNameRight *)[self alloc] initWithPID:d];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)portForSelf
{
  v2 = getpid();

  return [RBSMachPortTaskNameRight taskNameForPID:v2];
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  pid = self->_pid;
  coderCopy = coder;
  [coderCopy encodeInt64:pid forKey:@"_pid"];
  [coderCopy encodeObject:self->_auditToken forKey:@"_auditToken"];
  [coderCopy encodeObject:self->_port forKey:@"_port"];
}

- (RBSMachPortTaskNameRight)initWithCoder:(id)coder
{
  coderCopy = coder;
  self->_pid = [coderCopy decodeIntForKey:@"_pid"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_auditToken"];
  auditToken = self->_auditToken;
  self->_auditToken = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_port"];

  port = self->_port;
  self->_port = v7;

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  pid = self->_pid;
  coderCopy = coder;
  [coderCopy encodeInt:pid forKey:@"_pid"];
  [coderCopy encodeObject:self->_auditToken forKey:@"_auditToken"];
  [coderCopy encodeObject:self->_port forKey:@"_port"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [(RBSMachPort *)self->_port copyWithZone:?];
  if (v5)
  {
    v6 = [RBSMachPortTaskNameRight allocWithZone:zone];
    [(RBSMachPortTaskNameRight *)v6 _initWithPID:v5 port:self->_auditToken auditToken:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)_initWithPID:(void *)d port:(void *)port auditToken:
{
  dCopy = d;
  portCopy = port;
  if (self)
  {
    objc_storeStrong((self + 8), d);
    *(self + 16) = a2;
    objc_storeStrong((self + 24), port);
    selfCopy = self;
  }

  return self;
}

- (RBSMachPortTaskNameRight)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"_pid"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_auditToken"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_port"];

  [(RBSMachPortTaskNameRight *)self _initWithPID:v5 port:v7 auditToken:v6];
  return self;
}

- (void)initWithPID:(mach_error_t)a1 .cold.1(mach_error_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  mach_error_string(a1);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_2(&dword_18E8AD000, v1, v2, "Unable to obtain a task name port right for pid %i: %{public}s (0x%x)", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)initWithPID:(mach_error_t)a1 .cold.2(mach_error_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  mach_error_string(a1);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_2(&dword_18E8AD000, v1, v2, "Unable to obtain an audit token for pid %i: %{public}s (0x%x)", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

@end