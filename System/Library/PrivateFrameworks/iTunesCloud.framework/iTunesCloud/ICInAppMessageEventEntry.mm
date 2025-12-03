@interface ICInAppMessageEventEntry
- (ICInAppMessageEventEntry)initWithCoder:(id)coder;
- (ICInAppMessageEventEntry)initWithMessageIdentifier:(id)identifier params:(id)params;
- (ICInAppMessageEventEntry)initWithMessageIdentifier:(id)identifier params:(id)params eventIdentifier:(id)eventIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICInAppMessageEventEntry

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [(NSString *)self->_messageIdentifier copyWithZone:?];
  v6 = [(NSString *)self->_eventIdentifier copyWithZone:zone];
  v7 = [(NSDictionary *)self->_params copyWithZone:zone];
  v8 = [[ICInAppMessageEventEntry allocWithZone:?]params:"initWithMessageIdentifier:params:eventIdentifier:" eventIdentifier:v5, v7, v6];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  messageIdentifier = self->_messageIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:messageIdentifier forKey:@"messageID"];
  [coderCopy encodeObject:self->_params forKey:@"params"];
  [coderCopy encodeObject:self->_eventIdentifier forKey:@"eventID"];
}

- (ICInAppMessageEventEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"messageID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"params"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventID"];

  v8 = [(ICInAppMessageEventEntry *)self initWithMessageIdentifier:v5 params:v6 eventIdentifier:v7];
  return v8;
}

- (ICInAppMessageEventEntry)initWithMessageIdentifier:(id)identifier params:(id)params eventIdentifier:(id)eventIdentifier
{
  identifierCopy = identifier;
  paramsCopy = params;
  eventIdentifierCopy = eventIdentifier;
  v19.receiver = self;
  v19.super_class = ICInAppMessageEventEntry;
  v11 = [(ICInAppMessageEventEntry *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    messageIdentifier = v11->_messageIdentifier;
    v11->_messageIdentifier = v12;

    v14 = [paramsCopy copy];
    params = v11->_params;
    v11->_params = v14;

    v16 = [eventIdentifierCopy copy];
    eventIdentifier = v11->_eventIdentifier;
    v11->_eventIdentifier = v16;
  }

  return v11;
}

- (ICInAppMessageEventEntry)initWithMessageIdentifier:(id)identifier params:(id)params
{
  v6 = MEMORY[0x1E696AFB0];
  paramsCopy = params;
  identifierCopy = identifier;
  uUID = [v6 UUID];
  uUIDString = [uUID UUIDString];
  v11 = [(ICInAppMessageEventEntry *)self initWithMessageIdentifier:identifierCopy params:paramsCopy eventIdentifier:uUIDString];

  return v11;
}

@end