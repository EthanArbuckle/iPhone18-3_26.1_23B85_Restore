@interface MOContextFeedback
- (BOOL)isEqual:(id)equal;
- (MOContextFeedback)initWithCoder:(id)coder;
- (MOContextFeedback)initWithContextIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOContextFeedback

- (MOContextFeedback)initWithContextIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = MOContextFeedback;
  v6 = [(MOContextFeedback *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contextIdentifier, identifier);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  contextIdentifier = self->_contextIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:contextIdentifier forKey:@"contextIdentifier"];
  [coderCopy encodeObject:self->_contextFetchedTimestamp forKey:@"contextFetchedTimestamp"];
  [coderCopy encodeObject:self->_contextStringFeedback forKey:@"contextStringFeedback"];
}

- (MOContextFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contextIdentifier"];
  v6 = [(MOContextFeedback *)self initWithContextIdentifier:v5];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contextFetchedTimestamp"];
    contextFetchedTimestamp = v6->_contextFetchedTimestamp;
    v6->_contextFetchedTimestamp = v7;

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"contextStringFeedback"];
    contextStringFeedback = v6->_contextStringFeedback;
    v6->_contextStringFeedback = v12;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()];
  contextIdentifier = self->_contextIdentifier;
  contextIdentifier = [equalCopy contextIdentifier];

  LOBYTE(contextIdentifier) = [(NSUUID *)contextIdentifier isEqual:contextIdentifier];
  return v5 & contextIdentifier;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  contextIdentifier = [(MOContextFeedback *)self contextIdentifier];
  contextFetchedTimestamp = [(MOContextFeedback *)self contextFetchedTimestamp];
  contextStringFeedback = [(MOContextFeedback *)self contextStringFeedback];
  v7 = [contextStringFeedback description];
  v8 = [v3 stringWithFormat:@"contextIdentifier, %@, contextFetchedTimestamp, %@, contextStringFeedback, %@", contextIdentifier, contextFetchedTimestamp, v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MOContextFeedback alloc];
  contextIdentifier = [(MOContextFeedback *)self contextIdentifier];
  v6 = [(MOContextFeedback *)v4 initWithContextIdentifier:contextIdentifier];

  contextFetchedTimestamp = [(MOContextFeedback *)self contextFetchedTimestamp];
  [(MOContextFeedback *)v6 setContextFetchedTimestamp:contextFetchedTimestamp];

  contextStringFeedback = [(MOContextFeedback *)self contextStringFeedback];
  [(MOContextFeedback *)v6 setContextStringFeedback:contextStringFeedback];

  return v6;
}

@end