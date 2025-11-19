@interface OKActionCustom
+ (id)customActionWithName:(id)a3;
+ (void)setupJavascriptContext:(id)a3;
- (OKActionCustom)init;
- (OKActionCustom)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation OKActionCustom

+ (id)customActionWithName:(id)a3
{
  v4 = objc_alloc_init(OKActionCustom);
  v4->_name = [a3 copy];

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

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = OKActionCustom;
  [(OKAction *)&v7 encodeWithCoder:?];
  name = self->_name;
  if (name)
  {
    [a3 encodeObject:name forKey:@"name"];
  }

  attributes = self->_attributes;
  if (attributes)
  {
    [a3 encodeObject:attributes forKey:@"attributes"];
  }
}

- (OKActionCustom)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = OKActionCustom;
  v4 = [(OKAction *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_name = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v4->_attributes = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"attributes"];
  }

  return v4;
}

+ (void)setupJavascriptContext:(id)a3
{
  v4 = objc_opt_class();

  [a3 setObject:v4 forKeyedSubscript:@"OKActionCustom"];
}

@end