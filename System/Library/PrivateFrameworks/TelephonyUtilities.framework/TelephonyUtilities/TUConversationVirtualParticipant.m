@interface TUConversationVirtualParticipant
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConversationVirtualParticipant:(id)a3;
- (TUConversationVirtualParticipant)initWithCoder:(id)a3;
- (TUConversationVirtualParticipant)initWithIdentifier:(unint64_t)a3 pluginName:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUConversationVirtualParticipant

- (TUConversationVirtualParticipant)initWithIdentifier:(unint64_t)a3 pluginName:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TUConversationVirtualParticipant;
  v8 = [(TUConversationVirtualParticipant *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_identifier = a3;
    objc_storeStrong(&v8->_pluginName, a4);
  }

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" identifier=%llu", -[TUConversationVirtualParticipant identifier](self, "identifier")];
  v4 = [(TUConversationVirtualParticipant *)self pluginName];
  [v3 appendFormat:@" pluginName=%@", v4];

  [v3 appendString:@">"];
  v5 = [v3 copy];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationVirtualParticipant *)self isEqualToConversationVirtualParticipant:v4];

  return v5;
}

- (BOOL)isEqualToConversationVirtualParticipant:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationVirtualParticipant *)self identifier];
  if (v5 == [v4 identifier])
  {
    v6 = [(TUConversationVirtualParticipant *)self pluginName];
    v7 = [v4 pluginName];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(TUConversationVirtualParticipant *)self identifier];
  v4 = [(TUConversationVirtualParticipant *)self pluginName];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(TUConversationVirtualParticipant *)self identifier];
  v6 = [(TUConversationVirtualParticipant *)self pluginName];
  v7 = [v4 initWithIdentifier:v5 pluginName:v6];

  return v7;
}

- (TUConversationVirtualParticipant)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_identifier);
  v6 = [v4 decodeInt64ForKey:v5];

  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_pluginName);
  v9 = [v4 decodeObjectOfClass:v7 forKey:v8];

  v10 = [(TUConversationVirtualParticipant *)self initWithIdentifier:v6 pluginName:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationVirtualParticipant *)self identifier];
  v6 = NSStringFromSelector(sel_identifier);
  [v4 encodeInt64:v5 forKey:v6];

  v8 = [(TUConversationVirtualParticipant *)self pluginName];
  v7 = NSStringFromSelector(sel_pluginName);
  [v4 encodeObject:v8 forKey:v7];
}

@end