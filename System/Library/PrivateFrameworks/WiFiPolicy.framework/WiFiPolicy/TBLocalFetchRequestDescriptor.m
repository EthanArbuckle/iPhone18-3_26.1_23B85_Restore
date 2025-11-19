@interface TBLocalFetchRequestDescriptor
- (TBLocalFetchRequestDescriptor)initWithFetchRequest:(id)a3;
@end

@implementation TBLocalFetchRequestDescriptor

- (TBLocalFetchRequestDescriptor)initWithFetchRequest:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TBLocalFetchRequestDescriptor;
  v5 = [(TBLocalFetchRequestDescriptor *)&v8 init];
  fetchRequest = v5->_fetchRequest;
  v5->_fetchRequest = v4;

  return v5;
}

@end