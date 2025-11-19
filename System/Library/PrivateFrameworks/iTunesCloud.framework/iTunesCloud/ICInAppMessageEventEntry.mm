@interface ICInAppMessageEventEntry
- (ICInAppMessageEventEntry)initWithCoder:(id)a3;
- (ICInAppMessageEventEntry)initWithMessageIdentifier:(id)a3 params:(id)a4;
- (ICInAppMessageEventEntry)initWithMessageIdentifier:(id)a3 params:(id)a4 eventIdentifier:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICInAppMessageEventEntry

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(NSString *)self->_messageIdentifier copyWithZone:?];
  v6 = [(NSString *)self->_eventIdentifier copyWithZone:a3];
  v7 = [(NSDictionary *)self->_params copyWithZone:a3];
  v8 = [[ICInAppMessageEventEntry allocWithZone:?]params:"initWithMessageIdentifier:params:eventIdentifier:" eventIdentifier:v5, v7, v6];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  messageIdentifier = self->_messageIdentifier;
  v5 = a3;
  [v5 encodeObject:messageIdentifier forKey:@"messageID"];
  [v5 encodeObject:self->_params forKey:@"params"];
  [v5 encodeObject:self->_eventIdentifier forKey:@"eventID"];
}

- (ICInAppMessageEventEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"messageID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"params"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventID"];

  v8 = [(ICInAppMessageEventEntry *)self initWithMessageIdentifier:v5 params:v6 eventIdentifier:v7];
  return v8;
}

- (ICInAppMessageEventEntry)initWithMessageIdentifier:(id)a3 params:(id)a4 eventIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = ICInAppMessageEventEntry;
  v11 = [(ICInAppMessageEventEntry *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    messageIdentifier = v11->_messageIdentifier;
    v11->_messageIdentifier = v12;

    v14 = [v9 copy];
    params = v11->_params;
    v11->_params = v14;

    v16 = [v10 copy];
    eventIdentifier = v11->_eventIdentifier;
    v11->_eventIdentifier = v16;
  }

  return v11;
}

- (ICInAppMessageEventEntry)initWithMessageIdentifier:(id)a3 params:(id)a4
{
  v6 = MEMORY[0x1E696AFB0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 UUID];
  v10 = [v9 UUIDString];
  v11 = [(ICInAppMessageEventEntry *)self initWithMessageIdentifier:v8 params:v7 eventIdentifier:v10];

  return v11;
}

@end