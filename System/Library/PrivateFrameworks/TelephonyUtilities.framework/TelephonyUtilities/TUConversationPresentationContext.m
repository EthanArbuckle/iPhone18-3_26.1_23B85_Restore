@interface TUConversationPresentationContext
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPresentationContext:(id)a3;
- (TUConversationPresentationContext)init;
- (TUConversationPresentationContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUConversationPresentationContext

- (TUConversationPresentationContext)init
{
  v3.receiver = self;
  v3.super_class = TUConversationPresentationContext;
  result = [(TUConversationPresentationContext *)&v3 init];
  if (result)
  {
    result->_mode = 0;
  }

  return result;
}

- (TUConversationPresentationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TUConversationPresentationContext;
  v5 = [(TUConversationPresentationContext *)&v8 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_mode);
    v5->_mode = [v4 decodeIntegerForKey:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationPresentationContext *)self mode];
  v6 = NSStringFromSelector(sel_mode);
  [v4 encodeInteger:v5 forKey:v6];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setMode:{-[TUConversationPresentationContext mode](self, "mode")}];
  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" mode=%zu", -[TUConversationPresentationContext mode](self, "mode")];
  [v3 appendString:@">"];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationPresentationContext *)self isEqualToPresentationContext:v4];
  }

  return v5;
}

- (BOOL)isEqualToPresentationContext:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationPresentationContext *)self mode];
  v6 = [v4 mode];

  return v5 == v6;
}

@end