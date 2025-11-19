@interface MOContextFeedback
- (BOOL)isEqual:(id)a3;
- (MOContextFeedback)initWithCoder:(id)a3;
- (MOContextFeedback)initWithContextIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOContextFeedback

- (MOContextFeedback)initWithContextIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MOContextFeedback;
  v6 = [(MOContextFeedback *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contextIdentifier, a3);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  contextIdentifier = self->_contextIdentifier;
  v5 = a3;
  [v5 encodeObject:contextIdentifier forKey:@"contextIdentifier"];
  [v5 encodeObject:self->_contextFetchedTimestamp forKey:@"contextFetchedTimestamp"];
  [v5 encodeObject:self->_contextStringFeedback forKey:@"contextStringFeedback"];
}

- (MOContextFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contextIdentifier"];
  v6 = [(MOContextFeedback *)self initWithContextIdentifier:v5];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contextFetchedTimestamp"];
    contextFetchedTimestamp = v6->_contextFetchedTimestamp;
    v6->_contextFetchedTimestamp = v7;

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"contextStringFeedback"];
    contextStringFeedback = v6->_contextStringFeedback;
    v6->_contextStringFeedback = v12;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()];
  contextIdentifier = self->_contextIdentifier;
  v7 = [v4 contextIdentifier];

  LOBYTE(contextIdentifier) = [(NSUUID *)contextIdentifier isEqual:v7];
  return v5 & contextIdentifier;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MOContextFeedback *)self contextIdentifier];
  v5 = [(MOContextFeedback *)self contextFetchedTimestamp];
  v6 = [(MOContextFeedback *)self contextStringFeedback];
  v7 = [v6 description];
  v8 = [v3 stringWithFormat:@"contextIdentifier, %@, contextFetchedTimestamp, %@, contextStringFeedback, %@", v4, v5, v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MOContextFeedback alloc];
  v5 = [(MOContextFeedback *)self contextIdentifier];
  v6 = [(MOContextFeedback *)v4 initWithContextIdentifier:v5];

  v7 = [(MOContextFeedback *)self contextFetchedTimestamp];
  [(MOContextFeedback *)v6 setContextFetchedTimestamp:v7];

  v8 = [(MOContextFeedback *)self contextStringFeedback];
  [(MOContextFeedback *)v6 setContextStringFeedback:v8];

  return v6;
}

@end