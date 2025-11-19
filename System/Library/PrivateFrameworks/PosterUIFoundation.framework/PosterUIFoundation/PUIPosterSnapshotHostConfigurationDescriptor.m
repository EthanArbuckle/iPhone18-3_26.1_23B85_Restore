@interface PUIPosterSnapshotHostConfigurationDescriptor
+ (id)snapshotInProcessHostConfigurationDescriptorWithWorkQueue:(id)a3;
+ (id)snapshotOutOfProcessHostConfigurationDescriptor;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToHostConfigurationDescriptor:(id)a3;
- (NSString)description;
- (PUIPosterSnapshotHostConfigurationDescriptor)initWithBSXPCCoder:(id)a3;
- (PUIPosterSnapshotHostConfigurationDescriptor)initWithCoder:(id)a3;
- (_BYTE)initWithHostWorkQueue:(char)a3 waitUntilReady:(char)a4 inProcessSnapshot:;
- (id)copyWithHostWorkQueue:(id)a3;
- (id)copyWithWaitUntilReady:(BOOL)a3;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PUIPosterSnapshotHostConfigurationDescriptor

+ (id)snapshotOutOfProcessHostConfigurationDescriptor
{
  v2 = [(PUIPosterSnapshotHostConfigurationDescriptor *)[a1 alloc] initWithHostWorkQueue:1 waitUntilReady:0 inProcessSnapshot:?];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4 == self || [(PUIPosterSnapshotHostConfigurationDescriptor *)self isEqualToHostConfigurationDescriptor:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToHostConfigurationDescriptor:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else if (v4 && ([(PUIPosterSnapshotHostConfigurationDescriptor *)v4 hostWorkQueue], v6 = objc_claimAutoreleasedReturnValue(), [(PUIPosterSnapshotHostConfigurationDescriptor *)self hostWorkQueue], v7 = objc_claimAutoreleasedReturnValue(), v8 = BSEqualObjects(), v7, v6, v8) && ([(PUIPosterSnapshotHostConfigurationDescriptor *)v5 inProcessSnapshot], [(PUIPosterSnapshotHostConfigurationDescriptor *)self inProcessSnapshot], BSEqualBools()))
  {
    [(PUIPosterSnapshotHostConfigurationDescriptor *)v5 waitUntilReady];
    [(PUIPosterSnapshotHostConfigurationDescriptor *)self waitUntilReady];
    v9 = BSEqualBools();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendBool:self->_inProcessSnapshot withName:@"inProcessSnapshot"];
  v5 = [v3 appendBool:self->_waitUntilReady withName:@"waitUntilReady"];
  v6 = [v3 build];

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendBool:self->_hostWorkQueue != 0];
  v5 = [v3 appendBool:self->_waitUntilReady];
  v6 = [v3 appendBool:self->_inProcessSnapshot];
  v7 = [v3 hash];

  return v7;
}

- (id)copyWithHostWorkQueue:(id)a3
{
  if (self->_hostWorkQueue == a3)
  {

    return self;
  }

  else
  {
    v6[1] = v3;
    v6[2] = v4;
    [(PUIPosterSnapshotHostConfigurationDescriptor *)a3 copyWithHostWorkQueue:v6];
    return v6[0];
  }
}

- (id)copyWithWaitUntilReady:(BOOL)a3
{
  if (self->_waitUntilReady == a3)
  {

    return self;
  }

  else
  {
    v6 = [PUIPosterSnapshotHostConfigurationDescriptor alloc];
    hostWorkQueue = self->_hostWorkQueue;
    inProcessSnapshot = self->_inProcessSnapshot;

    return [(PUIPosterSnapshotHostConfigurationDescriptor *)v6 initWithHostWorkQueue:a3 waitUntilReady:inProcessSnapshot inProcessSnapshot:?];
  }
}

- (void)encodeWithCoder:(id)a3
{
  waitUntilReady = self->_waitUntilReady;
  v5 = a3;
  [v5 encodeBool:waitUntilReady forKey:@"_waitUntilReady"];
  [v5 encodeBool:self->_inProcessSnapshot forKey:@"_inProcessSnapshot"];
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  inProcessSnapshot = self->_inProcessSnapshot;
  v5 = a3;
  [v5 encodeBool:inProcessSnapshot forKey:@"_inProcessSnapshot"];
  [v5 encodeBool:self->_waitUntilReady forKey:@"_waitUntilReady"];
}

- (_BYTE)initWithHostWorkQueue:(char)a3 waitUntilReady:(char)a4 inProcessSnapshot:
{
  v8 = a2;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = PUIPosterSnapshotHostConfigurationDescriptor;
    v9 = objc_msgSendSuper2(&v11, sel_init);
    a1 = v9;
    if (v9)
    {
      *(v9 + 9) = a4;
      objc_storeStrong(v9 + 2, a2);
      a1[8] = a3;
    }
  }

  return a1;
}

+ (id)snapshotInProcessHostConfigurationDescriptorWithWorkQueue:(id)a3
{
  v4 = a3;
  v5 = [(PUIPosterSnapshotHostConfigurationDescriptor *)[a1 alloc] initWithHostWorkQueue:v4 waitUntilReady:1 inProcessSnapshot:1];

  return v5;
}

- (PUIPosterSnapshotHostConfigurationDescriptor)initWithCoder:(id)a3
{
  v3 = a3;
  [v3 decodeBoolForKey:@"_waitUntilReady"];
  [v3 decodeBoolForKey:@"_inProcessSnapshot"];

  v4 = OUTLINED_FUNCTION_3_1();

  return [(PUIPosterSnapshotHostConfigurationDescriptor *)v4 initWithHostWorkQueue:v5 waitUntilReady:v6 inProcessSnapshot:v7];
}

- (PUIPosterSnapshotHostConfigurationDescriptor)initWithBSXPCCoder:(id)a3
{
  v3 = a3;
  [v3 decodeBoolForKey:@"_waitUntilReady"];
  [v3 decodeBoolForKey:@"_inProcessSnapshot"];

  v4 = OUTLINED_FUNCTION_3_1();

  return [(PUIPosterSnapshotHostConfigurationDescriptor *)v4 initWithHostWorkQueue:v5 waitUntilReady:v6 inProcessSnapshot:v7];
}

- (void)copyWithHostWorkQueue:(void *)a3 .cold.1(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  *a3 = [[PUIPosterSnapshotHostConfigurationDescriptor alloc] initWithHostWorkQueue:v5 waitUntilReady:*(a2 + 8) inProcessSnapshot:*(a2 + 9)];
}

@end