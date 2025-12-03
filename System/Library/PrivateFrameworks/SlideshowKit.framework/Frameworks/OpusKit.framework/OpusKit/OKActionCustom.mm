@interface OKActionCustom
+ (id)customActionWithName:(id)name;
+ (void)setupJavascriptContext:(id)context;
- (OKActionCustom)init;
- (OKActionCustom)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OKActionCustom

+ (id)customActionWithName:(id)name
{
  v4 = objc_alloc_init(OKActionCustom);
  v4->_name = [name copy];

  return v4;
}

- (OKActionCustom)init
{
  v5.receiver = self;
  v5.super_class = OKActionCustom;
  v2 = [(OKAction *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(OKAction *)v2 setIsInstantaneous:1];
  }

  return v3;
}

- (void)dealloc
{
  name = self->_name;
  if (name)
  {

    self->_name = 0;
  }

  attributes = self->_attributes;
  if (attributes)
  {

    self->_attributes = 0;
  }

  v5.receiver = self;
  v5.super_class = OKActionCustom;
  [(OKAction *)&v5 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = OKActionCustom;
  [(OKAction *)&v7 encodeWithCoder:?];
  name = self->_name;
  if (name)
  {
    [coder encodeObject:name forKey:@"name"];
  }

  attributes = self->_attributes;
  if (attributes)
  {
    [coder encodeObject:attributes forKey:@"attributes"];
  }
}

- (OKActionCustom)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = OKActionCustom;
  v4 = [(OKAction *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_name = [coder decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v4->_attributes = [coder decodeObjectOfClass:objc_opt_class() forKey:@"attributes"];
  }

  return v4;
}

+ (void)setupJavascriptContext:(id)context
{
  v4 = objc_opt_class();

  [context setObject:v4 forKeyedSubscript:@"OKActionCustom"];
}

@end