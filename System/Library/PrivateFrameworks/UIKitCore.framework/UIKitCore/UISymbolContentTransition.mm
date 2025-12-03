@interface UISymbolContentTransition
+ (UISymbolContentTransition)transitionWithContentTransition:(id)transition;
+ (UISymbolContentTransition)transitionWithContentTransition:(id)transition options:(id)options;
- (BOOL)isEqual:(id)equal;
- (UISymbolContentTransition)initWithCoder:(id)coder;
- (id)_initWithContentTransition:(id)transition options:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UISymbolContentTransition

+ (UISymbolContentTransition)transitionWithContentTransition:(id)transition
{
  v4 = MEMORY[0x1E6982278];
  transitionCopy = transition;
  options = [v4 options];
  v7 = [self transitionWithContentTransition:transitionCopy options:options];

  return v7;
}

+ (UISymbolContentTransition)transitionWithContentTransition:(id)transition options:(id)options
{
  optionsCopy = options;
  transitionCopy = transition;
  v8 = [[self alloc] _initWithContentTransition:transitionCopy options:optionsCopy];

  return v8;
}

- (id)_initWithContentTransition:(id)transition options:(id)options
{
  transitionCopy = transition;
  optionsCopy = options;
  v14.receiver = self;
  v14.super_class = UISymbolContentTransition;
  v8 = [(UISymbolContentTransition *)&v14 init];
  if (v8)
  {
    v9 = [transitionCopy copy];
    contentTransition = v8->_contentTransition;
    v8->_contentTransition = v9;

    if (optionsCopy)
    {
      options = [optionsCopy copy];
    }

    else
    {
      options = [MEMORY[0x1E6982278] options];
    }

    options = v8->_options;
    v8->_options = options;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  contentTransition = self->_contentTransition;
  coderCopy = coder;
  [coderCopy encodeObject:contentTransition forKey:@"ContentTransition"];
  [coderCopy encodeObject:self->_options forKey:@"Options"];
}

- (UISymbolContentTransition)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = UISymbolContentTransition;
  v5 = [(UISymbolContentTransition *)&v13 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"ContentTransition"];
    contentTransition = v5->_contentTransition;
    v5->_contentTransition = v7;

    v9 = objc_opt_self();
    v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"Options"];
    options = v5->_options;
    v5->_options = v10;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
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

- (id)copyWithZone:(_NSZone *)zone
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
  build = [v3 build];

  return build;
}

@end