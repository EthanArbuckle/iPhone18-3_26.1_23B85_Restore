@interface TPSContextualContentStatusEvent
- (TPSContextualContentStatusEvent)initWithCoder:(id)a3;
- (TPSContextualContentStatusEvent)initWithDictionary:(id)a3;
- (TPSContextualContentStatusEvent)initWithEventIdentifier:(id)a3 contentIdentifier:(id)a4 statusType:(int64_t)a5 status:(int64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
- (void)updateStatusTypeIfOutOfBound;
@end

@implementation TPSContextualContentStatusEvent

- (TPSContextualContentStatusEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TPSContextualContentStatusEvent;
  v5 = [(TPSContextualEvent *)&v9 initWithDictionary:v4];
  if (v5)
  {
    v5->_statusType = [v4 TPSSafeUIntegerForKey:@"statusType"];
    [(TPSContextualContentStatusEvent *)v5 updateStatusTypeIfOutOfBound];
    v6 = [v4 TPSSafeStringForKey:@"contentID"];
    contentID = v5->_contentID;
    v5->_contentID = v6;
  }

  return v5;
}

- (TPSContextualContentStatusEvent)initWithEventIdentifier:(id)a3 contentIdentifier:(id)a4 statusType:(int64_t)a5 status:(int64_t)a6
{
  v10 = a4;
  v11 = [TPSContextualEvent eventDictionaryForIdentifier:a3 type:2 status:a6];
  v12 = [v11 mutableCopy];

  [v12 setObject:v10 forKeyedSubscript:@"contentID"];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  [v12 setObject:v13 forKeyedSubscript:@"statusType"];

  v14 = [(TPSContextualContentStatusEvent *)self initWithDictionary:v12];
  return v14;
}

- (TPSContextualContentStatusEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TPSContextualContentStatusEvent;
  v5 = [(TPSContextualEvent *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_statusType = [v4 decodeIntegerForKey:@"statusType"];
    [(TPSContextualContentStatusEvent *)v5 updateStatusTypeIfOutOfBound];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentID"];
    contentID = v5->_contentID;
    v5->_contentID = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSContextualContentStatusEvent;
  v4 = a3;
  [(TPSContextualEvent *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_statusType forKey:{@"statusType", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_contentID forKey:@"contentID"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = TPSContextualContentStatusEvent;
  v4 = [(TPSContextualEvent *)&v6 copyWithZone:a3];
  [v4 setStatusType:self->_statusType];
  [v4 setContentID:self->_contentID];
  return v4;
}

- (void)updateStatusTypeIfOutOfBound
{
  if (self->_statusType >= 0xAuLL)
  {
    self->_statusType = 6;
  }
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v7.receiver = self;
  v7.super_class = TPSContextualContentStatusEvent;
  v4 = [(TPSContextualEvent *)&v7 debugDescription];
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@"%@ = %ld\n", @"statusType", self->_statusType];
  [v5 appendFormat:@"%@ = %@\n", @"contentID", self->_contentID];

  return v5;
}

@end