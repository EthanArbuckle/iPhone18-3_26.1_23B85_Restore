@interface RBSMachEndpoint
- (BOOL)_isCachedPortValid;
- (BOOL)_isEquivalentToEndpoint:(id)a3;
- (NSString)description;
- (OS_xpc_object)endpoint;
- (RBSMachEndpoint)init;
- (RBSMachEndpoint)initWithRBSXPCCoder:(id)a3;
- (id)_copy;
- (id)_initWithName:(id)a3 nonLaunching:(BOOL)a4 port:(id)a5;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSMachEndpoint

- (OS_xpc_object)endpoint
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_hasCheckedEndpoint)
  {
    self->_lock_hasCheckedEndpoint = 1;
    if ([(RBSMachEndpoint *)self _isCachedPortValid])
    {
      port = self->_port;
      if (xpc_mach_send_copy_right() - 1 <= 0xFFFFFFFD)
      {
        bs_from_port = xpc_endpoint_create_bs_from_port();
        getterCache_endpoint = self->_getterCache_endpoint;
        self->_getterCache_endpoint = bs_from_port;
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v6 = self->_getterCache_endpoint;

  return v6;
}

- (BOOL)_isCachedPortValid
{
  port = self->_port;
  right = xpc_mach_send_get_right();
  if (right)
  {
    v5 = self->_port;
    LOBYTE(right) = xpc_mach_send_get_right() != -1;
  }

  return right;
}

- (RBSMachEndpoint)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"RBSMachEndpoint.m" lineNumber:32 description:@"cannot call -init on RBSMachEndpoint"];

  return 0;
}

- (id)_initWithName:(id)a3 nonLaunching:(BOOL)a4 port:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [RBSMachEndpoint _initWithName:a2 nonLaunching:self port:?];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  [RBSMachEndpoint _initWithName:a2 nonLaunching:self port:?];
LABEL_3:
  if (MEMORY[0x193AD5A20](v11) != MEMORY[0x1E69E9EC0])
  {
    [RBSMachEndpoint _initWithName:a2 nonLaunching:self port:v11];
  }

  v17.receiver = self;
  v17.super_class = RBSMachEndpoint;
  v12 = [(RBSMachEndpoint *)&v17 init];
  if (v12)
  {
    v13 = [v9 copy];
    name = v12->_name;
    v12->_name = v13;

    v12->_nonLaunching = a4;
    objc_storeStrong(&v12->_port, a5);
    v12->_lock._os_unfair_lock_opaque = 0;
    getterCache_endpoint = v12->_getterCache_endpoint;
    v12->_getterCache_endpoint = 0;

    v12->_lock_hasCheckedEndpoint = 0;
  }

  return v12;
}

- (id)_copy
{
  port = self->_port;
  xpc_mach_send_get_right();
  v4 = xpc_mach_send_create_with_disposition();
  v5 = [[RBSMachEndpoint alloc] _initWithName:self->_name nonLaunching:self->_nonLaunching port:v4];

  return v5;
}

- (BOOL)_isEquivalentToEndpoint:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v10 = 1;
    goto LABEL_15;
  }

  if (!v4)
  {
    goto LABEL_13;
  }

  v6 = objc_opt_class();
  if (v6 != objc_opt_class())
  {
    goto LABEL_13;
  }

  v7 = objc_opt_class();
  if (v7 != objc_opt_class() || ![(RBSMachEndpoint *)self _isCachedPortValid]|| ![(RBSMachEndpoint *)v5 _isCachedPortValid])
  {
    goto LABEL_13;
  }

  name = self->_name;
  v9 = v5->_name;
  if (name == v9)
  {
LABEL_11:
    if (self->_nonLaunching == v5->_nonLaunching)
    {
      v10 = xpc_equal(self->_port, v5->_port);
      goto LABEL_15;
    }

LABEL_13:
    v10 = 0;
    goto LABEL_15;
  }

  v10 = 0;
  if (name && v9)
  {
    if (![(NSString *)name isEqualToString:?])
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_15:

  return v10;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_name forKey:@"name"];
  if (self->_nonLaunching)
  {
    [v4 encodeBool:1 forKey:@"nonLaunching"];
  }

  [v4 encodeXPCObject:self->_port forKey:@"port"];
}

- (RBSMachEndpoint)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodeBoolForKey:@"nonLaunching"];
  v7 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9EC0] forKey:@"port"];

  v8 = [(RBSMachEndpoint *)self _initWithName:v5 nonLaunching:v6 port:v7];
  return v8;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  name = self->_name;
  if (self->_nonLaunching)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [(RBSMachEndpoint *)self _isCachedPortValid];
  v8 = @"Invalid";
  if (v7)
  {
    v8 = @"YES";
  }

  v9 = [v3 initWithFormat:@"<%@| name:%@ nonLaunching:%@ port:%@>", v4, name, v6, v8];

  return v9;
}

- (void)_initWithName:(uint64_t)a1 nonLaunching:(uint64_t)a2 port:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSMachEndpoint.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"name != nil"}];
}

- (void)_initWithName:(uint64_t)a1 nonLaunching:(uint64_t)a2 port:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSMachEndpoint.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"port != nil"}];
}

- (void)_initWithName:(uint64_t)a1 nonLaunching:(uint64_t)a2 port:(uint64_t)a3 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"RBSMachEndpoint.m" lineNumber:42 description:{@"unexpected port type %@", a3}];
}

@end