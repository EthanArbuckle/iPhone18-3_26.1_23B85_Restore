@interface TUConversationParticipantCluster
+ (id)UUIDFromURLComponents:(id)a3 namePrefix:(id)a4;
+ (id)participantClusterFromURLComponents:(id)a3 namePrefix:(id)a4;
+ (id)queryItemName:(id)a3 prefix:(id)a4;
+ (int64_t)typeFromURLComponents:(id)a3 namePrefix:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToParticipantCluster:(id)a3;
- (TUConversationParticipantCluster)initWithCoder:(id)a3;
- (TUConversationParticipantCluster)initWithUUID:(id)a3 type:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)queryItemsWithNamePrefix:(id)a3;
- (id)typeQueryItemWithNamePrefix:(id)a3;
- (id)uuidQueryItemWithNamePrefix:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUConversationParticipantCluster

- (TUConversationParticipantCluster)initWithUUID:(id)a3 type:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TUConversationParticipantCluster;
  v8 = [(TUConversationParticipantCluster *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_UUID, a3);
    v9->_type = a4;
  }

  return v9;
}

- (TUConversationParticipantCluster)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_UUID);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];
  v8 = NSStringFromSelector(sel_type);
  v9 = [v4 decodeIntegerForKey:v8];

  v10 = [(TUConversationParticipantCluster *)self initWithUUID:v7 type:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationParticipantCluster *)self UUID];
  v6 = NSStringFromSelector(sel_UUID);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(TUConversationParticipantCluster *)self type];
  v8 = NSStringFromSelector(sel_type);
  [v4 encodeInteger:v7 forKey:v8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TUConversationParticipantCluster allocWithZone:a3];
  v5 = [(TUConversationParticipantCluster *)self UUID];
  v6 = [(TUConversationParticipantCluster *)v4 initWithUUID:v5 type:[(TUConversationParticipantCluster *)self type]];

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUConversationParticipantCluster *)self UUID];
  [v3 appendFormat:@" UUID=%@", v4];

  [v3 appendFormat:@" type=%zd", -[TUConversationParticipantCluster type](self, "type")];
  [v3 appendString:@">"];
  v5 = [v3 copy];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(TUConversationParticipantCluster *)self UUID];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[TUConversationParticipantCluster type](self, "type")}];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationParticipantCluster *)self isEqualToParticipantCluster:v4];
  }

  return v5;
}

- (BOOL)isEqualToParticipantCluster:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationParticipantCluster *)self UUID];
  v6 = [v4 UUID];
  if ([v5 isEqual:v6])
  {
    v7 = [(TUConversationParticipantCluster *)self type];
    v8 = v7 == [v4 type];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)participantClusterFromURLComponents:(id)a3 namePrefix:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 UUIDFromURLComponents:v6 namePrefix:v7];
  if (v8)
  {
    v9 = -[TUConversationParticipantCluster initWithUUID:type:]([TUConversationParticipantCluster alloc], "initWithUUID:type:", v8, [a1 typeFromURLComponents:v6 namePrefix:v7]);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)UUIDFromURLComponents:(id)a3 namePrefix:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_UUID);
  v9 = [v7 queryItemName:v8 prefix:v5];

  v10 = [v6 firstQueryItemWithName:v9];

  v11 = [v10 value];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x1E696AFB0]);
    v13 = [v10 value];
    v11 = [v12 initWithUUIDString:v13];
  }

  return v11;
}

+ (id)queryItemName:(id)a3 prefix:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", a4, v5];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

+ (int64_t)typeFromURLComponents:(id)a3 namePrefix:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_type);
  v9 = [v7 queryItemName:v8 prefix:v5];

  v10 = [v6 firstQueryItemWithName:v9];

  if (v10)
  {
    v11 = [v10 value];
    v12 = [v11 integerValue];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)queryItemsWithNamePrefix:(id)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TUConversationParticipantCluster *)self uuidQueryItemWithNamePrefix:v4];
  v10[0] = v5;
  v6 = [(TUConversationParticipantCluster *)self typeQueryItemWithNamePrefix:v4];

  v10[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)uuidQueryItemWithNamePrefix:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_UUID);
  v7 = [v5 queryItemName:v6 prefix:v4];

  v8 = objc_alloc(MEMORY[0x1E696AF60]);
  v9 = [(TUConversationParticipantCluster *)self UUID];
  v10 = [v9 UUIDString];
  v11 = [v8 initWithName:v7 value:v10];

  return v11;
}

- (id)typeQueryItemWithNamePrefix:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_type);
  v7 = [v5 queryItemName:v6 prefix:v4];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", -[TUConversationParticipantCluster type](self, "type")];
  v9 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:v7 value:v8];

  return v9;
}

@end