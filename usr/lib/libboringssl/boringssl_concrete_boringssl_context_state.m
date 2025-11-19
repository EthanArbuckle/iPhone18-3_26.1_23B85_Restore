@interface boringssl_concrete_boringssl_context_state
- (void)dealloc;
@end

@implementation boringssl_concrete_boringssl_context_state

- (void)dealloc
{
  SSL_CTX_free(self->ssl_ctx);
  v3.receiver = self;
  v3.super_class = boringssl_concrete_boringssl_context_state;
  [(boringssl_concrete_boringssl_context_state *)&v3 dealloc];
}

@end