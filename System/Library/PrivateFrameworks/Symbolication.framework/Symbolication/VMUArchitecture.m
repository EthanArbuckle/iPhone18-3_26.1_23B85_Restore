@interface VMUArchitecture
+ (void)initialize;
- (BOOL)is64Bit;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToArchitecture:(id)a3;
- (BOOL)isLittleEndian;
- (BOOL)matchesArchitecture:(id)a3;
- (VMUArchitecture)initWithCoder:(id)a3;
- (VMUArchitecture)initWithCpuType:(int)a3 cpuSubtype:(int)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VMUArchitecture

+ (void)initialize
{
  if (!currentArchitecture)
  {
    v2 = MEMORY[0x1C695E740](a1, a2);
    v20 = 0u;
    v21 = 0u;
    *host_info_out = 0u;
    host_info_outCnt = 12;
    if (!host_info(v2, 1, host_info_out, &host_info_outCnt))
    {
      v3 = [VMUArchitecture alloc];
      v4 = [(VMUArchitecture *)v3 initWithCpuType:host_info_out[3] cpuSubtype:v20];
      v5 = currentArchitecture;
      currentArchitecture = v4;
    }

    mach_port_deallocate(*MEMORY[0x1E69E9A60], v2);
    v6 = [[VMUArchitecture alloc] initWithCpuType:18 cpuSubtype:0];
    v7 = ppc32Architecture;
    ppc32Architecture = v6;

    v8 = [[VMUArchitecture alloc] initWithCpuType:16777234 cpuSubtype:0];
    v9 = ppc64Architecture;
    ppc64Architecture = v8;

    v10 = [[VMUArchitecture alloc] initWithCpuType:7 cpuSubtype:3];
    v11 = x86_32Architecture;
    x86_32Architecture = v10;

    v12 = [[VMUArchitecture alloc] initWithCpuType:16777223 cpuSubtype:3];
    v13 = x86_64Architecture;
    x86_64Architecture = v12;

    v14 = [[VMUArchitecture alloc] initWithCpuType:12 cpuSubtype:0];
    v15 = armArchitecture;
    armArchitecture = v14;

    v16 = [[VMUArchitecture alloc] initWithCpuType:0xFFFFFFFFLL cpuSubtype:0];
    v17 = anyArchitecture;
    anyArchitecture = v16;
  }
}

- (VMUArchitecture)initWithCpuType:(int)a3 cpuSubtype:(int)a4
{
  v7.receiver = self;
  v7.super_class = VMUArchitecture;
  result = [(VMUArchitecture *)&v7 init];
  if (result)
  {
    result->_cpuType = a3;
    result->_cpuSubtype = a4;
  }

  return result;
}

- (VMUArchitecture)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VMUArchitecture;
  v5 = [(VMUArchitecture *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [v4 decodeValueOfObjCType:"i" at:&v5->_cpuType size:4];
    [v4 decodeValueOfObjCType:"i" at:&v6->_cpuSubtype size:4];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeValueOfObjCType:"i" at:&self->_cpuType];
  [v4 encodeValueOfObjCType:"i" at:&self->_cpuSubtype];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [VMUArchitecture allocWithZone:a3];
  cpuType = self->_cpuType;
  cpuSubtype = self->_cpuSubtype;

  return [(VMUArchitecture *)v4 initWithCpuType:cpuType cpuSubtype:cpuSubtype];
}

- (BOOL)isLittleEndian
{
  cpuType = self->_cpuType;
  v3 = cpuType & 0xFFFFFF;
  if ((cpuType & 0xFFFFFF) == 7)
  {
    return 1;
  }

  if (v3 != 18)
  {
    if (v3 != 12)
    {
      v5 = MEMORY[0x1E695DF30];
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot answer isLittleEndian for cpuType is %d cpuSubtype is %d", cpuType, self->_cpuSubtype, 0];
      v7 = [v5 exceptionWithName:@"VMUArchitecture unhandled cpuType" reason:v6 userInfo:0];
      v8 = v7;

      objc_exception_throw(v7);
    }

    return 1;
  }

  return 0;
}

- (BOOL)is64Bit
{
  cpuType = self->_cpuType;
  if ((cpuType & 0xFF000000) == 0)
  {
    return 0;
  }

  if ((cpuType & 0xFF000000) != 0x1000000)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot answer is64Bit for cpuType is %d cpuSubtype is %d", cpuType, self->_cpuSubtype, 0];
    v6 = [v4 exceptionWithName:@"VMUArchitecture unhandled cpuType" reason:v5 userInfo:0];
    v7 = v6;

    objc_exception_throw(v6);
  }

  return 1;
}

- (BOOL)isEqualToArchitecture:(id)a3
{
  v4 = a3;
  cpuType = self->_cpuType;
  if (cpuType == [v4 cpuType])
  {
    cpuSubtype = self->_cpuSubtype;
    v7 = cpuSubtype == [v4 cpuSubtype];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(VMUArchitecture *)self isEqualToArchitecture:v4];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = VMUArchitecture;
    v5 = [(VMUArchitecture *)&v8 isEqual:v4];
  }

  v6 = v5;

  return v6;
}

- (BOOL)matchesArchitecture:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_cpuType == -1 || [v4 cpuType] == -1)
  {
    goto LABEL_14;
  }

  cpuType = self->_cpuType;
  if (cpuType == [v5 cpuType])
  {
    v7 = self->_cpuType & 0xFFFFFF;
    if (v7 == 18 || v7 == 12)
    {
      if ((self->_cpuSubtype & 0xFFFFFF) == 0 || ([v5 cpuSubtype] & 0xFFFFFF) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (v7 == 7 && ((self->_cpuSubtype & 0xFFFFFF) == 3 || ([v5 cpuSubtype] & 0xFFFFFF) == 3))
    {
LABEL_14:
      v8 = 1;
      goto LABEL_15;
    }

    cpuSubtype = self->_cpuSubtype;
    v8 = cpuSubtype == [v5 cpuSubtype];
  }

  else
  {
    v8 = 0;
  }

LABEL_15:

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  cpuType = self->_cpuType;
  cpuSubtype = self->_cpuSubtype;
  if ([(VMUArchitecture *)self is32Bit])
  {
    v6 = @"32b";
  }

  else
  {
    v6 = @"64b";
  }

  v7 = [(VMUArchitecture *)self isBigEndian];
  v8 = @"LittleEndian";
  if (v7)
  {
    v8 = @"BigEndian";
  }

  return [v3 stringWithFormat:@"<VMUArchitecture: %p> 0x%x, 0x%x %@ - %@", self, cpuType, cpuSubtype, v6, v8, 0];
}

@end