@interface DATestQueueEntry
+ (id)queueEntryWithAttributes:(id)attributes parameters:(id)parameters completion:(id)completion;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTestQueueEntry:(id)entry;
- (DATestQueueEntry)initWithAttributes:(id)attributes parameters:(id)parameters completion:(id)completion;
- (unint64_t)hash;
@end

@implementation DATestQueueEntry

+ (id)queueEntryWithAttributes:(id)attributes parameters:(id)parameters completion:(id)completion
{
  completionCopy = completion;
  parametersCopy = parameters;
  attributesCopy = attributes;
  v11 = [[self alloc] initWithAttributes:attributesCopy parameters:parametersCopy completion:completionCopy];

  return v11;
}

- (DATestQueueEntry)initWithAttributes:(id)attributes parameters:(id)parameters completion:(id)completion
{
  attributesCopy = attributes;
  parametersCopy = parameters;
  completionCopy = completion;
  v17.receiver = self;
  v17.super_class = DATestQueueEntry;
  v12 = [(DATestQueueEntry *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_attributes, attributes);
    objc_storeStrong(&v13->_parameters, parameters);
    v14 = objc_retainBlock(completionCopy);
    completion = v13->_completion;
    v13->_completion = v14;
  }

  return v13;
}

- (unint64_t)hash
{
  attributes = [(DATestQueueEntry *)self attributes];
  identifier = [attributes identifier];
  v4 = [identifier hash];

  return v4;
}

- (BOOL)isEqualToTestQueueEntry:(id)entry
{
  entryCopy = entry;
  attributes = [(DATestQueueEntry *)self attributes];
  identifier = [attributes identifier];
  attributes2 = [entryCopy attributes];

  identifier2 = [attributes2 identifier];
  v9 = [identifier isEqual:identifier2];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = self == equalCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(DATestQueueEntry *)self isEqualToTestQueueEntry:equalCopy];
  }

  return v5;
}

@end