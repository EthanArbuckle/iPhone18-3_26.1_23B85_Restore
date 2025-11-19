@interface ACFHTTPMethod
+ (id)method;
+ (id)methodWithName:(id)a3 headerFields:(id)a4 body:(id)a5;
+ (id)methodWithName:(id)a3 headerFields:(id)a4 bodyPropertyList:(id)a5 error:(id *)a6;
- (ACFHTTPMethod)init;
- (ACFHTTPMethod)initWithName:(id)a3 headerFields:(id)a4 body:(id)a5;
- (void)dealloc;
@end

@implementation ACFHTTPMethod

+ (id)method
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)methodWithName:(id)a3 headerFields:(id)a4 body:(id)a5
{
  v5 = [[a1 alloc] initWithName:a3 headerFields:a4 body:a5];

  return v5;
}

+ (id)methodWithName:(id)a3 headerFields:(id)a4 bodyPropertyList:(id)a5 error:(id *)a6
{
  result = [MEMORY[0x29EDBA0C0] dataWithPropertyList:a5 format:100 options:0 error:a6];
  if (result)
  {

    return [a1 methodWithName:a3 headerFields:a4 body:result];
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

- (ACFHTTPMethod)initWithName:(id)a3 headerFields:(id)a4 body:(id)a5
{
  v10.receiver = self;
  v10.super_class = ACFHTTPMethod;
  v8 = [(ACFHTTPMethod *)&v10 init];
  if (v8)
  {
    v8->_name = a3;
    v8->_headerFields = a4;
    v8->_body = a5;
  }

  return v8;
}

@end