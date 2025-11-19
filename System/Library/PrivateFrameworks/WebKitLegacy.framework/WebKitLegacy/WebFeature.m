@interface WebFeature
- (WebFeature)initWithKey:(id)a3 preferenceKey:(id)a4 name:(id)a5 status:(unint64_t)a6 category:(unint64_t)a7 details:(id)a8 defaultValue:(BOOL)a9 hidden:(BOOL)a10;
- (id)description;
- (void)dealloc;
@end

@implementation WebFeature

- (WebFeature)initWithKey:(id)a3 preferenceKey:(id)a4 name:(id)a5 status:(unint64_t)a6 category:(unint64_t)a7 details:(id)a8 defaultValue:(BOOL)a9 hidden:(BOOL)a10
{
  v18.receiver = self;
  v18.super_class = WebFeature;
  v16 = [(WebFeature *)&v18 init];
  if (v16)
  {
    v16->_key = [a3 copy];
    v16->_preferenceKey = [a4 copy];
    v16->_name = [a5 copy];
    v16->_status = a6;
    v16->_category = a7;
    v16->_details = [a8 copy];
    v16->_defaultValue = a9;
    v16->_hidden = a10;
  }

  return v16;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WebFeature;
  [(WebFeature *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WebFeature *)self name];
  v7 = [(WebFeature *)self key];
  v8 = [(WebFeature *)self defaultValue];
  v9 = @"off";
  if (v8)
  {
    v9 = @"on";
  }

  return [v3 stringWithFormat:@"<%@: %p; name = %@; key = %@; defaultValue = %@>", v5, self, v6, v7, v9];
}

@end