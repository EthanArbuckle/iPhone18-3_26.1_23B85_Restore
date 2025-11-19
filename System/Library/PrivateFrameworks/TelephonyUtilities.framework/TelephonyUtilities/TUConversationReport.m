@interface TUConversationReport
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConversationReport:(id)a3;
- (TUConversationReport)init;
- (TUConversationReport)initWithCoder:(id)a3;
- (TUConversationReport)initWithConversationID:(id)a3 padding:(id)a4 timebase:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (unint64_t)hashForParticipantIdentifier:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUConversationReport

- (TUConversationReport)init
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [MEMORY[0x1E696AFB0] UUID];
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = [(TUConversationReport *)self initWithConversationID:v3 padding:v4 timebase:v5];

  return v6;
}

- (TUConversationReport)initWithConversationID:(id)a3 padding:(id)a4 timebase:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = TUConversationReport;
  v12 = [(TUConversationReport *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_timebase, a5);
    objc_storeStrong(&v13->_conversationID, a3);
    if (v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = [MEMORY[0x1E696AFB0] UUID];
    }

    paddingForHashedValue = v13->_paddingForHashedValue;
    v13->_paddingForHashedValue = v14;
  }

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUConversationReport *)self timebase];
  [v3 appendFormat:@" timebase=%@", v4];

  v5 = [(TUConversationReport *)self conversationID];
  [v3 appendFormat:@" conversationID=%@", v5];

  v6 = [(TUConversationReport *)self paddingForHashedValue];
  [v3 appendFormat:@" paddingForHashedValue=%@", v6];

  [v3 appendString:@">"];
  v7 = [v3 copy];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationReport *)self isEqualToConversationReport:v4];

  return v5;
}

- (BOOL)isEqualToConversationReport:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationReport *)self conversationID];
  v6 = [v4 conversationID];
  if ([v5 isEqual:v6])
  {
    v7 = [(TUConversationReport *)self timebase];
    v8 = [v4 timebase];
    if ([v7 isEqualToDate:v8])
    {
      v9 = [(TUConversationReport *)self paddingForHashedValue];
      v10 = [v4 paddingForHashedValue];
      v11 = [v9 isEqual:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(TUConversationReport *)self conversationID];
  v4 = [v3 hash];
  v5 = [(TUConversationReport *)self timebase];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(TUConversationReport *)self conversationID];
  v6 = [(TUConversationReport *)self paddingForHashedValue];
  v7 = [(TUConversationReport *)self timebase];
  v8 = [v4 initWithConversationID:v5 padding:v6 timebase:v7];

  return v8;
}

- (TUConversationReport)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_conversationID);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_paddingForHashedValue);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [MEMORY[0x1E696AFB0] UUID];
  }

  v13 = v12;

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_timebase);
  v16 = [v4 decodeObjectOfClass:v14 forKey:v15];

  v17 = [(TUConversationReport *)self initWithConversationID:v7 padding:v13 timebase:v16];
  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationReport *)self conversationID];
  v6 = NSStringFromSelector(sel_conversationID);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(TUConversationReport *)self paddingForHashedValue];
  v8 = NSStringFromSelector(sel_paddingForHashedValue);
  [v4 encodeObject:v7 forKey:v8];

  v10 = [(TUConversationReport *)self timebase];
  v9 = NSStringFromSelector(sel_timebase);
  [v4 encodeObject:v10 forKey:v9];
}

- (unint64_t)hashForParticipantIdentifier:(unint64_t)a3
{
  v8[2] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v8[1] = 0;
  v3 = [(TUConversationReport *)self paddingForHashedValue];
  [v3 getUUIDBytes:v8];

  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:v8 length:16];
  v5 = IDSIDAliasHashUInt64();

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

@end