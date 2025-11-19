@interface boringssl_concrete_boringssl_ctx
- (void)dealloc;
@end

@implementation boringssl_concrete_boringssl_ctx

- (void)dealloc
{
  peer_trust_ref = self->peer_trust_ref;
  if (peer_trust_ref)
  {
    CFRelease(peer_trust_ref);
  }

  self->peer_trust_ref = 0;
  peer_public_key = self->peer_public_key;
  if (peer_public_key)
  {
    CFRelease(peer_public_key);
  }

  self->peer_public_key = 0;
  peer_cert_chain = self->peer_cert_chain;
  if (peer_cert_chain)
  {
    CFRelease(peer_cert_chain);
  }

  self->peer_cert_chain = 0;
  server_raw_public_key_certificates = self->server_raw_public_key_certificates;
  if (server_raw_public_key_certificates)
  {
    CFRelease(server_raw_public_key_certificates);
  }

  self->server_raw_public_key_certificates = 0;
  client_raw_public_key_certificates = self->client_raw_public_key_certificates;
  if (client_raw_public_key_certificates)
  {
    CFRelease(client_raw_public_key_certificates);
  }

  self->client_raw_public_key_certificates = 0;
  subject_name = self->subject_name;
  if (subject_name)
  {
    free(subject_name);
    self->subject_name = 0;
  }

  experiment_identifier = self->experiment_identifier;
  if (experiment_identifier)
  {
    free(experiment_identifier);
    self->experiment_identifier = 0;
  }

  ciphersuite_configuration_string = self->ciphersuite_configuration_string;
  if (ciphersuite_configuration_string)
  {
    free(ciphersuite_configuration_string);
    self->ciphersuite_configuration_string = 0;
  }

  if (self->ssl_session)
  {
    boringssl_session_destroy(self->legacy_context);
    self->ssl_session = 0;
  }

  if (self->ssl_ctx)
  {
    boringssl_context_ssl_context_destroy(self->legacy_context);
    self->ssl_ctx = 0;
  }

  objc_storeWeak(&self->boringssl_handle, 0);
  free(self->legacy_context);
  self->legacy_context = 0;
  v11.receiver = self;
  v11.super_class = boringssl_concrete_boringssl_ctx;
  [(boringssl_concrete_boringssl_ctx *)&v11 dealloc];
}

@end