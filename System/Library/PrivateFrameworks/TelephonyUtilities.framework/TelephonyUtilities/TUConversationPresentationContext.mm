@interface TUConversationPresentationContext
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPresentationContext:(id)context;
- (TUConversationPresentationContext)init;
- (TUConversationPresentationContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (TUConversationPresentationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = TUConversationPresentationContext;
  v5 = [(TUConversationPresentationContext *)&v8 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_mode);
    v5->_mode = [coderCopy decodeIntegerForKey:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  mode = [(TUConversationPresentationContext *)self mode];
  v6 = NSStringFromSelector(sel_mode);
  [coderCopy encodeInteger:mode forKey:v6];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationPresentationContext *)self isEqualToPresentationContext:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToPresentationContext:(id)context
{
  contextCopy = context;
  mode = [(TUConversationPresentationContext *)self mode];
  mode2 = [contextCopy mode];

  return mode == mode2;
}

@end