@interface RBSAssertionIdentifier
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (RBSAssertionIdentifier)init;
- (RBSAssertionIdentifier)initWithRBSXPCCoder:(id)a3;
- (id)_initWithServerPid:(uint64_t)a3 clientPid:(unint64_t)a4 count:;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSAssertionIdentifier

- (NSString)description
{
  v2 = self;
  objc_sync_enter(v2);
  desc = v2->_desc;
  if (!desc)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d-%d-%llu", v2->_serverPid, v2->_clientPid, v2->_count];
    v5 = v2->_desc;
    v2->_desc = v4;

    desc = v2->_desc;
  }

  v6 = desc;
  objc_sync_exit(v2);

  return v6;
}

- (RBSAssertionIdentifier)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"RBSAssertionIdentifier.m" lineNumber:36 description:@"-init is not allowed on RBSAssertionIdentifier"];

  return 0;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  serverPid = self->_serverPid;
  v5 = a3;
  [v5 encodeInt64:serverPid forKey:@"serverPid"];
  [v5 encodeInt64:self->_clientPid forKey:@"clientPid"];
  [v5 encodeInt64:self->_count forKey:@"count"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4 && (v6 = objc_opt_class(), v6 == objc_opt_class()) && self->_serverPid == v5->_serverPid && self->_clientPid == v5->_clientPid && self->_count == v5->_count;
  }

  return v7;
}

- (id)_initWithServerPid:(uint64_t)a3 clientPid:(unint64_t)a4 count:
{
  if (!a1 || (a2 >= 1 ? (v7 = __OFSUB__(a3, 1), v6 = a3 - 1 < 0) : (v7 = 0, v6 = 1), v6 ^ v7))
  {
    v8 = 0;
  }

  else
  {
    v13.receiver = a1;
    v13.super_class = RBSAssertionIdentifier;
    v10 = objc_msgSendSuper2(&v13, sel_init);
    if (v10)
    {
      v10[6] = a2;
      v10[7] = a3;
      *(v10 + 4) = a4;
      v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a4 ^ (a4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a4 ^ (a4 >> 30))) >> 27));
      *(v10 + 2) = (a2 | (a3 << 32)) ^ (v11 >> 31) ^ v11;
    }

    a1 = v10;
    v8 = a1;
  }

  return v8;
}

- (RBSAssertionIdentifier)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"serverPid"];
  v6 = [v4 decodeInt64ForKey:@"clientPid"];
  v7 = [v4 decodeInt64ForKey:@"count"];

  return [(RBSAssertionIdentifier *)self _initWithServerPid:v5 clientPid:v6 count:v7];
}

@end