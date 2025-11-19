@interface UISymbolContentTransition
+ (UISymbolContentTransition)transitionWithContentTransition:(id)a3;
+ (UISymbolContentTransition)transitionWithContentTransition:(id)a3 options:(id)a4;
- (BOOL)isEqual:(id)a3;
- (UISymbolContentTransition)initWithCoder:(id)a3;
- (id)_initWithContentTransition:(id)a3 options:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UISymbolContentTransition

+ (UISymbolContentTransition)transitionWithContentTransition:(id)a3
{
  v4 = MEMORY[0x1E6982278];
  v5 = a3;
  v6 = [v4 options];
  v7 = [a1 transitionWithContentTransition:v5 options:v6];

  return v7;
}

+ (UISymbolContentTransition)transitionWithContentTransition:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] _initWithContentTransition:v7 options:v6];

  return v8;
}

- (id)_initWithContentTransition:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = UISymbolContentTransition;
  v8 = [(UISymbolContentTransition *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    contentTransition = v8->_contentTransition;
    v8->_contentTransition = v9;

    if (v7)
    {
      v11 = [v7 copy];
    }

    else
    {
      v11 = [MEMORY[0x1E6982278] options];
    }

    options = v8->_options;
    v8->_options = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  contentTransition = self->_contentTransition;
  v5 = a3;
  [v5 encodeObject:contentTransition forKey:@"ContentTransition"];
  [v5 encodeObject:self->_options forKey:@"Options"];
}

- (UISymbolContentTransition)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = UISymbolContentTransition;
  v5 = [(UISymbolContentTransition *)&v13 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"ContentTransition"];
    contentTransition = v5->_contentTransition;
    v5->_contentTransition = v7;

    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"Options"];
    options = v5->_options;
    v5->_options = v10;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      contentTransition = v7->_contentTransition;
      v9 = self->_contentTransition;
      v10 = contentTransition;
      v11 = v10;
      if (v9 == v10)
      {
      }

      else
      {
        LOBYTE(v12) = 0;
        if (!v9 || !v10)
        {
LABEL_16:

LABEL_17:
          goto LABEL_18;
        }

        v12 = [(NSSymbolContentTransition *)v9 isEqual:v10];

        if (!v12)
        {
          goto LABEL_17;
        }
      }

      options = self->_options;
      v14 = v7->_options;
      v9 = options;
      v15 = v14;
      v11 = v15;
      if (v9 == v15)
      {
        LOBYTE(v12) = 1;
      }

      else
      {
        LOBYTE(v12) = 0;
        if (v9 && v15)
        {
          LOBYTE(v12) = [(NSSymbolContentTransition *)v9 isEqual:v15];
        }
      }

      goto LABEL_16;
    }

    LOBYTE(v12) = 0;
  }

LABEL_18:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UISymbolContentTransition alloc];
  contentTransition = self->_contentTransition;
  options = self->_options;

  return [(UISymbolContentTransition *)v4 _initWithContentTransition:contentTransition options:options];
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_contentTransition withName:@"contentTransition"];
  v5 = [v3 appendObject:self->_options withName:@"options"];
  v6 = [v3 build];

  return v6;
}

@end