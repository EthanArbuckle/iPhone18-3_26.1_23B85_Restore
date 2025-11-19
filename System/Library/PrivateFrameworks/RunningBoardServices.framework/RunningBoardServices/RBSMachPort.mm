@interface RBSMachPort
+ (id)portConsumingRightForPort:(unsigned int)a3;
+ (id)portForPort:(unsigned int)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isUsable;
- (RBSMachPort)initWithCoder:(id)a3;
- (RBSMachPort)initWithRBSXPCCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unsigned)port;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithRBSXPCCoder:(id)a3;
- (void)invalidate;
@end

@implementation RBSMachPort

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  port = self->_port;
  if (port)
  {
    if (mach_port_deallocate(*MEMORY[0x1E69E9A60], port))
    {
      v4 = rbs_general_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [(RBSMachPort *)v4 invalidate:v5];
      }
    }

    self->_port = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  [(RBSMachPort *)self invalidate];
  v3.receiver = self;
  v3.super_class = RBSMachPort;
  [(RBSMachPort *)&v3 dealloc];
}

- (unsigned)port
{
  if (self->_port + 1 >= 2)
  {
    return self->_port;
  }

  else
  {
    return 0;
  }
}

+ (id)portForPort:(unsigned int)a3
{
  if (mach_port_insert_right(*MEMORY[0x1E69E9A60], a3, a3, 0x13u))
  {
    v4 = rbs_general_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(RBSMachPort *)v4 portForPort:v5, v6, v7, v8, v9, v10, v11];
    }

    v12 = 0;
  }

  else
  {
    [(RBSMachPort *)a3 portForPort:?];
    v12 = v14;
  }

  return v12;
}

- (BOOL)isUsable
{
  port = self->_port;
  if (port - 1 > 0xFFFFFFFD)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    return (RBSMachPortType(port) >> 16) & 1;
  }

  return v3;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  port = self->_port;
  v5 = xpc_mach_send_create();
  if (v5)
  {
    [v6 encodeXPCObject:v5 forKey:@"_port"];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (RBSMachPort)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69E9EC0];
  v5 = [a3 decodeXPCObjectOfType:MEMORY[0x1E69E9EC0] forKey:@"_port"];
  v6 = v5;
  if (v5 && MEMORY[0x193AD5A20](v5) == v4)
  {
    [(RBSMachPort *)v6 initWithCoder:&v9];
    self = v9;
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  port = self->_port;
  if (port - 1 <= 0xFFFFFFFD && (RBSMachPortType(port) & 0x10000) != 0)
  {
    v5 = self->_port;
    v6 = xpc_mach_send_create();
    if (v6)
    {
      [v7 encodeXPCObject:v6 forKey:@"_port"];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)copyWithZone:(_NSZone *)a3
{
  os_unfair_lock_lock(&self->_lock);
  v4 = [RBSMachPort portForPort:self->_port];
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(RBSMachPort *)self port];
      v6 = v5 == [(RBSMachPort *)v4 port];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)portConsumingRightForPort:(unsigned int)a3
{
  v4 = [RBSMachPort alloc];
  if (v4)
  {
    v6.receiver = v4;
    v6.super_class = RBSMachPort;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    if (v4)
    {
      v4->_port = a3;
      v4->_lock._os_unfair_lock_opaque = 0;
    }
  }

  return v4;
}

- (RBSMachPort)initWithRBSXPCCoder:(id)a3
{
  v4 = [a3 decodeXPCObjectOfType:MEMORY[0x1E69E9EC0] forKey:@"_port"];
  if (v4)
  {
    v5 = xpc_mach_send_copy_right();
    if (!self)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
    if (!self)
    {
      goto LABEL_7;
    }
  }

  v8.receiver = self;
  v8.super_class = RBSMachPort;
  v6 = [(RBSMachPort *)&v8 init];
  self = v6;
  if (v6)
  {
    v6->_port = v5;
    v6->_lock._os_unfair_lock_opaque = 0;
  }

LABEL_7:

  return self;
}

+ (RBSMachPort)portForPort:(unsigned int)a1 .cold.2(unsigned int a1, RBSMachPort **a2)
{
  result = [RBSMachPort alloc];
  if (result)
  {
    v5.receiver = result;
    v5.super_class = RBSMachPort;
    result = objc_msgSendSuper2(&v5, sel_init);
    if (result)
    {
      result->_port = a1;
      result->_lock._os_unfair_lock_opaque = 0;
    }
  }

  *a2 = result;
  return result;
}

- (_DWORD)initWithCoder:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v5 = xpc_mach_send_copy_right();
  if (a2)
  {
    v6 = v5;
    v9.receiver = a2;
    v9.super_class = RBSMachPort;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    if (v7)
    {
      v7[2] = v6;
      v7[3] = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;

  return v7;
}

@end