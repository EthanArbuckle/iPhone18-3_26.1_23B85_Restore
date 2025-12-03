@interface TUConversationVirtualParticipant
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConversationVirtualParticipant:(id)participant;
- (TUConversationVirtualParticipant)initWithCoder:(id)coder;
- (TUConversationVirtualParticipant)initWithIdentifier:(unint64_t)identifier pluginName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUConversationVirtualParticipant

- (TUConversationVirtualParticipant)initWithIdentifier:(unint64_t)identifier pluginName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = TUConversationVirtualParticipant;
  v8 = [(TUConversationVirtualParticipant *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_identifier = identifier;
    objc_storeStrong(&v8->_pluginName, name);
  }

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" identifier=%llu", -[TUConversationVirtualParticipant identifier](self, "identifier")];
  pluginName = [(TUConversationVirtualParticipant *)self pluginName];
  [v3 appendFormat:@" pluginName=%@", pluginName];

  [v3 appendString:@">"];
  v5 = [v3 copy];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationVirtualParticipant *)self isEqualToConversationVirtualParticipant:equalCopy];

  return v5;
}

- (BOOL)isEqualToConversationVirtualParticipant:(id)participant
{
  participantCopy = participant;
  identifier = [(TUConversationVirtualParticipant *)self identifier];
  if (identifier == [participantCopy identifier])
  {
    pluginName = [(TUConversationVirtualParticipant *)self pluginName];
    pluginName2 = [participantCopy pluginName];
    v8 = [pluginName isEqualToString:pluginName2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(TUConversationVirtualParticipant *)self identifier];
  pluginName = [(TUConversationVirtualParticipant *)self pluginName];
  v5 = [pluginName hash];

  return v5 ^ identifier;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = [(TUConversationVirtualParticipant *)self identifier];
  pluginName = [(TUConversationVirtualParticipant *)self pluginName];
  v7 = [v4 initWithIdentifier:identifier pluginName:pluginName];

  return v7;
}

- (TUConversationVirtualParticipant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_identifier);
  v6 = [coderCopy decodeInt64ForKey:v5];

  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_pluginName);
  v9 = [coderCopy decodeObjectOfClass:v7 forKey:v8];

  v10 = [(TUConversationVirtualParticipant *)self initWithIdentifier:v6 pluginName:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(TUConversationVirtualParticipant *)self identifier];
  v6 = NSStringFromSelector(sel_identifier);
  [coderCopy encodeInt64:identifier forKey:v6];

  pluginName = [(TUConversationVirtualParticipant *)self pluginName];
  v7 = NSStringFromSelector(sel_pluginName);
  [coderCopy encodeObject:pluginName forKey:v7];
}

@end