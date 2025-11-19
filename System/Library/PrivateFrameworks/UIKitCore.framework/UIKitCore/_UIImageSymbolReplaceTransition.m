@interface _UIImageSymbolReplaceTransition
+ (id)transition;
- (BOOL)isEqual:(id)a3;
- (_UIImageSymbolReplaceTransition)initWithCoder:(id)a3;
- (id)_nsSymbolContentTransitionRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIImageSymbolReplaceTransition

+ (id)transition
{
  v4.receiver = a1;
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
    v4 = [MEMORY[0x1E6982288] replaceOffUpTransition];
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
    v4 = ;
  }

  v5 = v4;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIImageSymbolReplaceTransition;
  v5 = [(_UIImageSymbolTransition *)&v7 isEqual:v4]&& self->_style == v4[3] && self->_byLayer == *(v4 + 16);

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _UIImageSymbolReplaceTransition;
  return self->_style ^ [(_UIImageSymbolTransition *)&v3 hash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = _UIImageSymbolReplaceTransition;
  result = [(_UIImageSymbolTransition *)&v5 copyWithZone:a3];
  *(result + 3) = self->_style;
  *(result + 16) = self->_byLayer;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  style = self->_style;
  v5 = a3;
  [v5 encodeInteger:style forKey:@"style"];
  [v5 encodeBool:self->_byLayer forKey:@"byLayer"];
}

- (_UIImageSymbolReplaceTransition)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() effect];

  if (v5)
  {
    v5->_style = [v4 decodeIntegerForKey:@"style"];
    v5->_byLayer = [v4 decodeBoolForKey:@"byLayer"];
  }

  return v5;
}

@end