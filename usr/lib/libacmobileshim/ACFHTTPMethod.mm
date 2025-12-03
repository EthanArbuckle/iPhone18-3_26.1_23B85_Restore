@interface ACFHTTPMethod
+ (id)method;
+ (id)methodWithName:(id)name headerFields:(id)fields body:(id)body;
+ (id)methodWithName:(id)name headerFields:(id)fields bodyPropertyList:(id)list error:(id *)error;
- (ACFHTTPMethod)init;
- (ACFHTTPMethod)initWithName:(id)name headerFields:(id)fields body:(id)body;
- (void)dealloc;
@end

@implementation ACFHTTPMethod

+ (id)method
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)methodWithName:(id)name headerFields:(id)fields body:(id)body
{
  v5 = [[self alloc] initWithName:name headerFields:fields body:body];

  return v5;
}

+ (id)methodWithName:(id)name headerFields:(id)fields bodyPropertyList:(id)list error:(id *)error
{
  result = [MEMORY[0x29EDBA0C0] dataWithPropertyList:list format:100 options:0 error:error];
  if (result)
  {

    return [self methodWithName:name headerFields:fields body:result];
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ACFHTTPMethod;
  [(ACFHTTPMethod *)&v3 dealloc];
}

- (ACFHTTPMethod)init
{
  v4.receiver = self;
  v4.super_class = ACFHTTPMethod;
  v2 = [(ACFHTTPMethod *)&v4 init];
  if (v2)
  {
    v2->_name = @"POST";
  }

  return v2;
}

- (ACFHTTPMethod)initWithName:(id)name headerFields:(id)fields body:(id)body
{
  v10.receiver = self;
  v10.super_class = ACFHTTPMethod;
  v8 = [(ACFHTTPMethod *)&v10 init];
  if (v8)
  {
    v8->_name = name;
    v8->_headerFields = fields;
    v8->_body = body;
  }

  return v8;
}

@end