@interface TPSContextualContentStatusEvent
- (TPSContextualContentStatusEvent)initWithCoder:(id)coder;
- (TPSContextualContentStatusEvent)initWithDictionary:(id)dictionary;
- (TPSContextualContentStatusEvent)initWithEventIdentifier:(id)identifier contentIdentifier:(id)contentIdentifier statusType:(int64_t)type status:(int64_t)status;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
- (void)updateStatusTypeIfOutOfBound;
@end

@implementation TPSContextualContentStatusEvent

- (TPSContextualContentStatusEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = TPSContextualContentStatusEvent;
  v5 = [(TPSContextualEvent *)&v9 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v5->_statusType = [dictionaryCopy TPSSafeUIntegerForKey:@"statusType"];
    [(TPSContextualContentStatusEvent *)v5 updateStatusTypeIfOutOfBound];
    v6 = [dictionaryCopy TPSSafeStringForKey:@"contentID"];
    contentID = v5->_contentID;
    v5->_contentID = v6;
  }

  return v5;
}

- (TPSContextualContentStatusEvent)initWithEventIdentifier:(id)identifier contentIdentifier:(id)contentIdentifier statusType:(int64_t)type status:(int64_t)status
{
  contentIdentifierCopy = contentIdentifier;
  v11 = [TPSContextualEvent eventDictionaryForIdentifier:identifier type:2 status:status];
  v12 = [v11 mutableCopy];

  [v12 setObject:contentIdentifierCopy forKeyedSubscript:@"contentID"];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [v12 setObject:v13 forKeyedSubscript:@"statusType"];

  v14 = [(TPSContextualContentStatusEvent *)self initWithDictionary:v12];
  return v14;
}

- (TPSContextualContentStatusEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TPSContextualContentStatusEvent;
  v5 = [(TPSContextualEvent *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_statusType = [coderCopy decodeIntegerForKey:@"statusType"];
    [(TPSContextualContentStatusEvent *)v5 updateStatusTypeIfOutOfBound];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentID"];
    contentID = v5->_contentID;
    v5->_contentID = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TPSContextualContentStatusEvent;
  coderCopy = coder;
  [(TPSContextualEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_statusType forKey:{@"statusType", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_contentID forKey:@"contentID"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = TPSContextualContentStatusEvent;
  v4 = [(TPSContextualEvent *)&v6 copyWithZone:zone];
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