@interface _UIImageSymbolReplaceTransition
+ (id)transition;
- (BOOL)isEqual:(id)equal;
- (_UIImageSymbolReplaceTransition)initWithCoder:(id)coder;
- (id)_nsSymbolContentTransitionRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIImageSymbolReplaceTransition

+ (id)transition
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS____UIImageSymbolReplaceTransition;
  v2 = objc_msgSendSuper2(&v4, sel_transition);
  *(v2 + 24) = 0;
  *(v2 + 16) = 1;

  return v2;
}

- (id)_nsSymbolContentTransitionRepresentation
{
  style = self->_style;
  if (style == 3)
  {
    replaceOffUpTransition = [MEMORY[0x1E6982288] replaceOffUpTransition];
  }

  else
  {
    if (style == 2)
    {
      [MEMORY[0x1E6982288] replaceUpUpTransition];
    }

    else
    {
      [MEMORY[0x1E6982288] replaceDownUpTransition];
    }
    replaceOffUpTransition = ;
  }

  v5 = replaceOffUpTransition;
  if ([(_UIImageSymbolReplaceTransition *)self byLayer])
  {
    [v5 transitionWithByLayer];
  }

  else
  {
    [v5 transitionWithWholeSymbol];
  }
  v6 = ;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = _UIImageSymbolReplaceTransition;
  v5 = [(_UIImageSymbolTransition *)&v7 isEqual:equalCopy]&& self->_style == equalCopy[3] && self->_byLayer == *(equalCopy + 16);

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _UIImageSymbolReplaceTransition;
  return self->_style ^ [(_UIImageSymbolTransition *)&v3 hash];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = _UIImageSymbolReplaceTransition;
  result = [(_UIImageSymbolTransition *)&v5 copyWithZone:zone];
  *(result + 3) = self->_style;
  *(result + 16) = self->_byLayer;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  style = self->_style;
  coderCopy = coder;
  [coderCopy encodeInteger:style forKey:@"style"];
  [coderCopy encodeBool:self->_byLayer forKey:@"byLayer"];
}

- (_UIImageSymbolReplaceTransition)initWithCoder:(id)coder
{
  coderCopy = coder;
  effect = [objc_opt_class() effect];

  if (effect)
  {
    effect->_style = [coderCopy decodeIntegerForKey:@"style"];
    effect->_byLayer = [coderCopy decodeBoolForKey:@"byLayer"];
  }

  return effect;
}

@end