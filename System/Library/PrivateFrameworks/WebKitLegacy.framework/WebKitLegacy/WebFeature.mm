@interface WebFeature
- (WebFeature)initWithKey:(id)key preferenceKey:(id)preferenceKey name:(id)name status:(unint64_t)status category:(unint64_t)category details:(id)details defaultValue:(BOOL)value hidden:(BOOL)self0;
- (id)description;
- (void)dealloc;
@end

@implementation WebFeature

- (WebFeature)initWithKey:(id)key preferenceKey:(id)preferenceKey name:(id)name status:(unint64_t)status category:(unint64_t)category details:(id)details defaultValue:(BOOL)value hidden:(BOOL)self0
{
  v18.receiver = self;
  v18.super_class = WebFeature;
  v16 = [(WebFeature *)&v18 init];
  if (v16)
  {
    v16->_key = [key copy];
    v16->_preferenceKey = [preferenceKey copy];
    v16->_name = [name copy];
    v16->_status = status;
    v16->_category = category;
    v16->_details = [details copy];
    v16->_defaultValue = value;
    v16->_hidden = hidden;
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
  name = [(WebFeature *)self name];
  v7 = [(WebFeature *)self key];
  defaultValue = [(WebFeature *)self defaultValue];
  v9 = @"off";
  if (defaultValue)
  {
    v9 = @"on";
  }

  return [v3 stringWithFormat:@"<%@: %p; name = %@; key = %@; defaultValue = %@>", v5, self, name, v7, v9];
}

@end