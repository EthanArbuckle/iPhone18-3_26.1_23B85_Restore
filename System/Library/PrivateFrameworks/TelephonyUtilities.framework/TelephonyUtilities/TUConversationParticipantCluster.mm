@interface TUConversationParticipantCluster
+ (id)UUIDFromURLComponents:(id)components namePrefix:(id)prefix;
+ (id)participantClusterFromURLComponents:(id)components namePrefix:(id)prefix;
+ (id)queryItemName:(id)name prefix:(id)prefix;
+ (int64_t)typeFromURLComponents:(id)components namePrefix:(id)prefix;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToParticipantCluster:(id)cluster;
- (TUConversationParticipantCluster)initWithCoder:(id)coder;
- (TUConversationParticipantCluster)initWithUUID:(id)d type:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)queryItemsWithNamePrefix:(id)prefix;
- (id)typeQueryItemWithNamePrefix:(id)prefix;
- (id)uuidQueryItemWithNamePrefix:(id)prefix;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUConversationParticipantCluster

- (TUConversationParticipantCluster)initWithUUID:(id)d type:(int64_t)type
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = TUConversationParticipantCluster;
  v8 = [(TUConversationParticipantCluster *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_UUID, d);
    v9->_type = type;
  }

  return v9;
}

- (TUConversationParticipantCluster)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_UUID);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];
  v8 = NSStringFromSelector(sel_type);
  v9 = [coderCopy decodeIntegerForKey:v8];

  v10 = [(TUConversationParticipantCluster *)self initWithUUID:v7 type:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(TUConversationParticipantCluster *)self UUID];
  v6 = NSStringFromSelector(sel_UUID);
  [coderCopy encodeObject:uUID forKey:v6];

  type = [(TUConversationParticipantCluster *)self type];
  v8 = NSStringFromSelector(sel_type);
  [coderCopy encodeInteger:type forKey:v8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TUConversationParticipantCluster allocWithZone:zone];
  uUID = [(TUConversationParticipantCluster *)self UUID];
  v6 = [(TUConversationParticipantCluster *)v4 initWithUUID:uUID type:[(TUConversationParticipantCluster *)self type]];

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  uUID = [(TUConversationParticipantCluster *)self UUID];
  [v3 appendFormat:@" UUID=%@", uUID];

  [v3 appendFormat:@" type=%zd", -[TUConversationParticipantCluster type](self, "type")];
  [v3 appendString:@">"];
  v5 = [v3 copy];

  return v5;
}

- (unint64_t)hash
{
  uUID = [(TUConversationParticipantCluster *)self UUID];
  v4 = [uUID hash];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[TUConversationParticipantCluster type](self, "type")}];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationParticipantCluster *)self isEqualToParticipantCluster:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToParticipantCluster:(id)cluster
{
  clusterCopy = cluster;
  uUID = [(TUConversationParticipantCluster *)self UUID];
  uUID2 = [clusterCopy UUID];
  if ([uUID isEqual:uUID2])
  {
    type = [(TUConversationParticipantCluster *)self type];
    v8 = type == [clusterCopy type];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)participantClusterFromURLComponents:(id)components namePrefix:(id)prefix
{
  componentsCopy = components;
  prefixCopy = prefix;
  v8 = [self UUIDFromURLComponents:componentsCopy namePrefix:prefixCopy];
  if (v8)
  {
    v9 = -[TUConversationParticipantCluster initWithUUID:type:]([TUConversationParticipantCluster alloc], "initWithUUID:type:", v8, [self typeFromURLComponents:componentsCopy namePrefix:prefixCopy]);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)UUIDFromURLComponents:(id)components namePrefix:(id)prefix
{
  prefixCopy = prefix;
  componentsCopy = components;
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_UUID);
  v9 = [v7 queryItemName:v8 prefix:prefixCopy];

  v10 = [componentsCopy firstQueryItemWithName:v9];

  value = [v10 value];

  if (value)
  {
    v12 = objc_alloc(MEMORY[0x1E696AFB0]);
    value2 = [v10 value];
    value = [v12 initWithUUIDString:value2];
  }

  return value;
}

+ (id)queryItemName:(id)name prefix:(id)prefix
{
  nameCopy = name;
  v6 = nameCopy;
  if (prefix)
  {
    nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", prefix, nameCopy];
  }

  else
  {
    nameCopy = nameCopy;
  }

  v8 = nameCopy;

  return v8;
}

+ (int64_t)typeFromURLComponents:(id)components namePrefix:(id)prefix
{
  prefixCopy = prefix;
  componentsCopy = components;
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_type);
  v9 = [v7 queryItemName:v8 prefix:prefixCopy];

  v10 = [componentsCopy firstQueryItemWithName:v9];

  if (v10)
  {
    value = [v10 value];
    integerValue = [value integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (id)queryItemsWithNamePrefix:(id)prefix
{
  v10[2] = *MEMORY[0x1E69E9840];
  prefixCopy = prefix;
  v5 = [(TUConversationParticipantCluster *)self uuidQueryItemWithNamePrefix:prefixCopy];
  v10[0] = v5;
  v6 = [(TUConversationParticipantCluster *)self typeQueryItemWithNamePrefix:prefixCopy];

  v10[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)uuidQueryItemWithNamePrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_UUID);
  v7 = [v5 queryItemName:v6 prefix:prefixCopy];

  v8 = objc_alloc(MEMORY[0x1E696AF60]);
  uUID = [(TUConversationParticipantCluster *)self UUID];
  uUIDString = [uUID UUIDString];
  v11 = [v8 initWithName:v7 value:uUIDString];

  return v11;
}

- (id)typeQueryItemWithNamePrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_type);
  v7 = [v5 queryItemName:v6 prefix:prefixCopy];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", -[TUConversationParticipantCluster type](self, "type")];
  v9 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:v7 value:v8];

  return v9;
}

@end