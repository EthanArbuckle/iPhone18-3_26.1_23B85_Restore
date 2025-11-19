@interface KTURI
- (KTURI)initWithIDSURL:(id)a3 application:(id)a4;
- (NSString)redactedDescription;
@end

@implementation KTURI

- (KTURI)initWithIDSURL:(id)a3 application:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = KTURI;
  v8 = [(KTURI *)&v13 init];
  if (v8)
  {
    v9 = [TransparencyApplication addApplicationPrefixForIdentifier:v7 uri:v6];
    ktURI = v8->_ktURI;
    v8->_ktURI = v9;

    v11 = v8;
  }

  return v8;
}

- (NSString)redactedDescription
{
  v3 = [(KTURI *)self ktURIVRF];

  if (v3)
  {
    v4 = [(KTURI *)self ktURIVRF];
    v5 = [v4 base64EncodedStringWithOptions:0];
  }

  else
  {
    v6 = +[TransparencyAnalytics hasInternalDiagnostics];
    v7 = [(KTURI *)self ktURI];
    v4 = v7;
    if (v6)
    {
      goto LABEL_6;
    }

    v8 = [v7 dataUsingEncoding:4];
    v9 = [v8 kt_sha256];
    v5 = [v9 kt_hexString];
  }

  v4 = v5;
LABEL_6:

  return v4;
}

@end