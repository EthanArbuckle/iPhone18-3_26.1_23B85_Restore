@interface TLAttentionAwarenessEffectAudioTapContext
- (BOOL)isEqual:(id)a3;
- (TLAttentionAwarenessEffectAudioTapContext)init;
- (id)description;
@end

@implementation TLAttentionAwarenessEffectAudioTapContext

- (TLAttentionAwarenessEffectAudioTapContext)init
{
  v6.receiver = self;
  v6.super_class = TLAttentionAwarenessEffectAudioTapContext;
  v2 = [(TLAttentionAwarenessEffectAudioTapContext *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    identifier = v2->_identifier;
    v2->_identifier = v3;
  }

  return v2;
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
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSUUID *)self->_identifier isEqual:v4->_identifier];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  v7 = [(NSUUID *)self->_identifier UUIDString];
  [v6 appendFormat:@"; identifier = %@", v7];

  [v6 appendString:@">"];

  return v6;
}

@end