@interface TBLocalFetchRequestDescriptor
- (TBLocalFetchRequestDescriptor)initWithFetchRequest:(id)request;
@end

@implementation TBLocalFetchRequestDescriptor

- (TBLocalFetchRequestDescriptor)initWithFetchRequest:(id)request
{
  requestCopy = request;
  v8.receiver = self;
  v8.super_class = TBLocalFetchRequestDescriptor;
  v5 = [(TBLocalFetchRequestDescriptor *)&v8 init];
  fetchRequest = v5->_fetchRequest;
  v5->_fetchRequest = requestCopy;

  return v5;
}

@end