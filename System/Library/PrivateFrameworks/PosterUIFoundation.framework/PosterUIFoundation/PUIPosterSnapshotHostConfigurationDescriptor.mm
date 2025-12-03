@interface PUIPosterSnapshotHostConfigurationDescriptor
+ (id)snapshotInProcessHostConfigurationDescriptorWithWorkQueue:(id)queue;
+ (id)snapshotOutOfProcessHostConfigurationDescriptor;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHostConfigurationDescriptor:(id)descriptor;
- (NSString)description;
- (PUIPosterSnapshotHostConfigurationDescriptor)initWithBSXPCCoder:(id)coder;
- (PUIPosterSnapshotHostConfigurationDescriptor)initWithCoder:(id)coder;
- (_BYTE)initWithHostWorkQueue:(char)queue waitUntilReady:(char)ready inProcessSnapshot:;
- (id)copyWithHostWorkQueue:(id)queue;
- (id)copyWithWaitUntilReady:(BOOL)ready;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUIPosterSnapshotHostConfigurationDescriptor

+ (id)snapshotOutOfProcessHostConfigurationDescriptor
{
  v2 = [(PUIPosterSnapshotHostConfigurationDescriptor *)[self alloc] initWithHostWorkQueue:1 waitUntilReady:0 inProcessSnapshot:?];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    v6 = equalCopy == self || [(PUIPosterSnapshotHostConfigurationDescriptor *)self isEqualToHostConfigurationDescriptor:equalCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToHostConfigurationDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = descriptorCopy;
  if (self == descriptorCopy)
  {
    v9 = 1;
  }

  else if (descriptorCopy && ([(PUIPosterSnapshotHostConfigurationDescriptor *)descriptorCopy hostWorkQueue], v6 = objc_claimAutoreleasedReturnValue(), [(PUIPosterSnapshotHostConfigurationDescriptor *)self hostWorkQueue], v7 = objc_claimAutoreleasedReturnValue(), v8 = BSEqualObjects(), v7, v6, v8) && ([(PUIPosterSnapshotHostConfigurationDescriptor *)v5 inProcessSnapshot], [(PUIPosterSnapshotHostConfigurationDescriptor *)self inProcessSnapshot], BSEqualBools()))
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
  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendBool:self->_hostWorkQueue != 0];
  v5 = [builder appendBool:self->_waitUntilReady];
  v6 = [builder appendBool:self->_inProcessSnapshot];
  v7 = [builder hash];

  return v7;
}

- (id)copyWithHostWorkQueue:(id)queue
{
  if (self->_hostWorkQueue == queue)
  {

    return self;
  }

  else
  {
    v6[1] = v3;
    v6[2] = v4;
    [(PUIPosterSnapshotHostConfigurationDescriptor *)queue copyWithHostWorkQueue:v6];
    return v6[0];
  }
}

- (id)copyWithWaitUntilReady:(BOOL)ready
{
  if (self->_waitUntilReady == ready)
  {

    return self;
  }

  else
  {
    v6 = [PUIPosterSnapshotHostConfigurationDescriptor alloc];
    hostWorkQueue = self->_hostWorkQueue;
    inProcessSnapshot = self->_inProcessSnapshot;

    return [(PUIPosterSnapshotHostConfigurationDescriptor *)v6 initWithHostWorkQueue:ready waitUntilReady:inProcessSnapshot inProcessSnapshot:?];
  }
}

- (void)encodeWithCoder:(id)coder
{
  waitUntilReady = self->_waitUntilReady;
  coderCopy = coder;
  [coderCopy encodeBool:waitUntilReady forKey:@"_waitUntilReady"];
  [coderCopy encodeBool:self->_inProcessSnapshot forKey:@"_inProcessSnapshot"];
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  inProcessSnapshot = self->_inProcessSnapshot;
  coderCopy = coder;
  [coderCopy encodeBool:inProcessSnapshot forKey:@"_inProcessSnapshot"];
  [coderCopy encodeBool:self->_waitUntilReady forKey:@"_waitUntilReady"];
}

- (_BYTE)initWithHostWorkQueue:(char)queue waitUntilReady:(char)ready inProcessSnapshot:
{
  v8 = a2;
  if (self)
  {
    v11.receiver = self;
    v11.super_class = PUIPosterSnapshotHostConfigurationDescriptor;
    v9 = objc_msgSendSuper2(&v11, sel_init);
    self = v9;
    if (v9)
    {
      *(v9 + 9) = ready;
      objc_storeStrong(v9 + 2, a2);
      self[8] = queue;
    }
  }

  return self;
}

+ (id)snapshotInProcessHostConfigurationDescriptorWithWorkQueue:(id)queue
{
  queueCopy = queue;
  v5 = [(PUIPosterSnapshotHostConfigurationDescriptor *)[self alloc] initWithHostWorkQueue:queueCopy waitUntilReady:1 inProcessSnapshot:1];

  return v5;
}

- (PUIPosterSnapshotHostConfigurationDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeBoolForKey:@"_waitUntilReady"];
  [coderCopy decodeBoolForKey:@"_inProcessSnapshot"];

  v4 = OUTLINED_FUNCTION_3_1();

  return [(PUIPosterSnapshotHostConfigurationDescriptor *)v4 initWithHostWorkQueue:v5 waitUntilReady:v6 inProcessSnapshot:v7];
}

- (PUIPosterSnapshotHostConfigurationDescriptor)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeBoolForKey:@"_waitUntilReady"];
  [coderCopy decodeBoolForKey:@"_inProcessSnapshot"];

  v4 = OUTLINED_FUNCTION_3_1();

  return [(PUIPosterSnapshotHostConfigurationDescriptor *)v4 initWithHostWorkQueue:v5 waitUntilReady:v6 inProcessSnapshot:v7];
}

- (void)copyWithHostWorkQueue:(void *)a3 .cold.1(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  *a3 = [[PUIPosterSnapshotHostConfigurationDescriptor alloc] initWithHostWorkQueue:v5 waitUntilReady:*(a2 + 8) inProcessSnapshot:*(a2 + 9)];
}

@end