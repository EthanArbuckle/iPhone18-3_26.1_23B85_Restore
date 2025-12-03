@interface KTURI
- (KTURI)initWithIDSURL:(id)l application:(id)application;
- (NSString)redactedDescription;
@end

@implementation KTURI

- (KTURI)initWithIDSURL:(id)l application:(id)application
{
  lCopy = l;
  applicationCopy = application;
  v13.receiver = self;
  v13.super_class = KTURI;
  v8 = [(KTURI *)&v13 init];
  if (v8)
  {
    v9 = [TransparencyApplication addApplicationPrefixForIdentifier:applicationCopy uri:lCopy];
    ktURI = v8->_ktURI;
    v8->_ktURI = v9;

    v11 = v8;
  }

  return v8;
}

- (NSString)redactedDescription
{
  ktURIVRF = [(KTURI *)self ktURIVRF];

  if (ktURIVRF)
  {
    ktURIVRF2 = [(KTURI *)self ktURIVRF];
    kt_hexString = [ktURIVRF2 base64EncodedStringWithOptions:0];
  }

  else
  {
    v6 = +[TransparencyAnalytics hasInternalDiagnostics];
    ktURI = [(KTURI *)self ktURI];
    ktURIVRF2 = ktURI;
    if (v6)
    {
      goto LABEL_6;
    }

    v8 = [ktURI dataUsingEncoding:4];
    kt_sha256 = [v8 kt_sha256];
    kt_hexString = [kt_sha256 kt_hexString];
  }

  ktURIVRF2 = kt_hexString;
LABEL_6:

  return ktURIVRF2;
}

@end