@interface TUConversationReport
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConversationReport:(id)report;
- (TUConversationReport)init;
- (TUConversationReport)initWithCoder:(id)coder;
- (TUConversationReport)initWithConversationID:(id)d padding:(id)padding timebase:(id)timebase;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (unint64_t)hashForParticipantIdentifier:(unint64_t)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUConversationReport

- (TUConversationReport)init
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUID2 = [MEMORY[0x1E696AFB0] UUID];
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = [(TUConversationReport *)self initWithConversationID:uUID padding:uUID2 timebase:v5];

  return v6;
}

- (TUConversationReport)initWithConversationID:(id)d padding:(id)padding timebase:(id)timebase
{
  dCopy = d;
  paddingCopy = padding;
  timebaseCopy = timebase;
  v17.receiver = self;
  v17.super_class = TUConversationReport;
  v12 = [(TUConversationReport *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_timebase, timebase);
    objc_storeStrong(&v13->_conversationID, d);
    if (paddingCopy)
    {
      uUID = paddingCopy;
    }

    else
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
    }

    paddingForHashedValue = v13->_paddingForHashedValue;
    v13->_paddingForHashedValue = uUID;
  }

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  timebase = [(TUConversationReport *)self timebase];
  [v3 appendFormat:@" timebase=%@", timebase];

  conversationID = [(TUConversationReport *)self conversationID];
  [v3 appendFormat:@" conversationID=%@", conversationID];

  paddingForHashedValue = [(TUConversationReport *)self paddingForHashedValue];
  [v3 appendFormat:@" paddingForHashedValue=%@", paddingForHashedValue];

  [v3 appendString:@">"];
  v7 = [v3 copy];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationReport *)self isEqualToConversationReport:equalCopy];

  return v5;
}

- (BOOL)isEqualToConversationReport:(id)report
{
  reportCopy = report;
  conversationID = [(TUConversationReport *)self conversationID];
  conversationID2 = [reportCopy conversationID];
  if ([conversationID isEqual:conversationID2])
  {
    timebase = [(TUConversationReport *)self timebase];
    timebase2 = [reportCopy timebase];
    if ([timebase isEqualToDate:timebase2])
    {
      paddingForHashedValue = [(TUConversationReport *)self paddingForHashedValue];
      paddingForHashedValue2 = [reportCopy paddingForHashedValue];
      v11 = [paddingForHashedValue isEqual:paddingForHashedValue2];
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
  conversationID = [(TUConversationReport *)self conversationID];
  v4 = [conversationID hash];
  timebase = [(TUConversationReport *)self timebase];
  v6 = [timebase hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  conversationID = [(TUConversationReport *)self conversationID];
  paddingForHashedValue = [(TUConversationReport *)self paddingForHashedValue];
  timebase = [(TUConversationReport *)self timebase];
  v8 = [v4 initWithConversationID:conversationID padding:paddingForHashedValue timebase:timebase];

  return v8;
}

- (TUConversationReport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_conversationID);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_paddingForHashedValue);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];
  v11 = v10;
  if (v10)
  {
    uUID = v10;
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
  }

  v13 = uUID;

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_timebase);
  v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];

  v17 = [(TUConversationReport *)self initWithConversationID:v7 padding:v13 timebase:v16];
  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  conversationID = [(TUConversationReport *)self conversationID];
  v6 = NSStringFromSelector(sel_conversationID);
  [coderCopy encodeObject:conversationID forKey:v6];

  paddingForHashedValue = [(TUConversationReport *)self paddingForHashedValue];
  v8 = NSStringFromSelector(sel_paddingForHashedValue);
  [coderCopy encodeObject:paddingForHashedValue forKey:v8];

  timebase = [(TUConversationReport *)self timebase];
  v9 = NSStringFromSelector(sel_timebase);
  [coderCopy encodeObject:timebase forKey:v9];
}

- (unint64_t)hashForParticipantIdentifier:(unint64_t)identifier
{
  v8[2] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v8[1] = 0;
  paddingForHashedValue = [(TUConversationReport *)self paddingForHashedValue];
  [paddingForHashedValue getUUIDBytes:v8];

  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:v8 length:16];
  v5 = IDSIDAliasHashUInt64();

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

@end