@interface RBSAssertionIdentifier
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (RBSAssertionIdentifier)init;
- (RBSAssertionIdentifier)initWithRBSXPCCoder:(id)coder;
- (id)_initWithServerPid:(uint64_t)pid clientPid:(unint64_t)clientPid count:;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSAssertionIdentifier

- (NSString)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  desc = selfCopy->_desc;
  if (!desc)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d-%d-%llu", selfCopy->_serverPid, selfCopy->_clientPid, selfCopy->_count];
    v5 = selfCopy->_desc;
    selfCopy->_desc = v4;

    desc = selfCopy->_desc;
  }

  v6 = desc;
  objc_sync_exit(selfCopy);

  return v6;
}

- (RBSAssertionIdentifier)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"RBSAssertionIdentifier.m" lineNumber:36 description:@"-init is not allowed on RBSAssertionIdentifier"];

  return 0;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  serverPid = self->_serverPid;
  coderCopy = coder;
  [coderCopy encodeInt64:serverPid forKey:@"serverPid"];
  [coderCopy encodeInt64:self->_clientPid forKey:@"clientPid"];
  [coderCopy encodeInt64:self->_count forKey:@"count"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    v7 = equalCopy && (v6 = objc_opt_class(), v6 == objc_opt_class()) && self->_serverPid == v5->_serverPid && self->_clientPid == v5->_clientPid && self->_count == v5->_count;
  }

  return v7;
}

- (id)_initWithServerPid:(uint64_t)pid clientPid:(unint64_t)clientPid count:
{
  if (!self || (a2 >= 1 ? (v7 = __OFSUB__(pid, 1), v6 = pid - 1 < 0) : (v7 = 0, v6 = 1), v6 ^ v7))
  {
    selfCopy = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = RBSAssertionIdentifier;
    v10 = objc_msgSendSuper2(&v13, sel_init);
    if (v10)
    {
      v10[6] = a2;
      v10[7] = pid;
      *(v10 + 4) = clientPid;
      v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (clientPid ^ (clientPid >> 30))) ^ ((0xBF58476D1CE4E5B9 * (clientPid ^ (clientPid >> 30))) >> 27));
      *(v10 + 2) = (a2 | (pid << 32)) ^ (v11 >> 31) ^ v11;
    }

    self = v10;
    selfCopy = self;
  }

  return selfCopy;
}

- (RBSAssertionIdentifier)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"serverPid"];
  v6 = [coderCopy decodeInt64ForKey:@"clientPid"];
  v7 = [coderCopy decodeInt64ForKey:@"count"];

  return [(RBSAssertionIdentifier *)self _initWithServerPid:v5 clientPid:v6 count:v7];
}

@end