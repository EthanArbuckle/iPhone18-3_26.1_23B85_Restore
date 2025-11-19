@interface PKShareableCredentialMessage
- (BOOL)isShareAcceptable;
- (NSArray)shareableCredentials;
- (NSString)description;
- (PKShareableCredentialMessage)initWithURL:(id)a3;
- (UIImage)passThumbnailImage;
- (id)_shareableCredentialMessageDataURLWithData:(id)a3;
- (id)_shareableCredentialMessageDataWithDataURL:(id)a3;
- (id)urlRepresentation;
- (void)setPassThumbnailImage:(id)a3;
- (void)setShareableCredentials:(id)a3;
@end

@implementation PKShareableCredentialMessage

- (PKShareableCredentialMessage)initWithURL:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKShareableCredentialMessage;
  v5 = [(PKShareableCredentialMessage *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(PKShareableCredentialMessage *)v5 _shareableCredentialMessageDataWithDataURL:v4];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E69B90C0]) initWithData:v7];
      protoMessage = v6->_protoMessage;
      v6->_protoMessage = v8;
    }

    if (!v6->_protoMessage)
    {
      v10 = objc_alloc_init(MEMORY[0x1E69B90C0]);
      v11 = v6->_protoMessage;
      v6->_protoMessage = v10;

      [(PKProtobufShareableCredentialMessage *)v6->_protoMessage setVersion:1];
    }
  }

  return v6;
}

- (id)urlRepresentation
{
  v3 = [(PKProtobufShareableCredentialMessage *)self->_protoMessage data];
  v4 = [(PKShareableCredentialMessage *)self _shareableCredentialMessageDataURLWithData:v3];

  return v4;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(PKShareableCredentialMessage *)self caption];
  [v3 appendFormat:@"caption: '%@'; ", v4];

  v5 = [(PKShareableCredentialMessage *)self policyIdentifier];
  [v3 appendFormat:@"policy identifier: '%@'; ", v5];

  v6 = [(PKShareableCredentialMessage *)self shareableCredentials];
  [v3 appendFormat:@"credentials: '%@'; ", v6];

  [v3 appendFormat:@">"];
  v7 = [v3 copy];

  return v7;
}

- (NSArray)shareableCredentials
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(PKProtobufShareableCredentialMessage *)self->_protoMessage shareableCredentials];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [objc_alloc(MEMORY[0x1E69B9258]) initWithProtoCredential:*(*(&v12 + 1) + 8 * i)];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (UIImage)passThumbnailImage
{
  v2 = [(PKProtobufShareableCredentialMessage *)self->_protoMessage passThumbnailImage];
  v3 = v2;
  if (v2 && (v4 = PKCreateCGImage(v2)) != 0)
  {
    v5 = v4;
    v6 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v4];
    CGImageRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isShareAcceptable
{
  v3 = [(PKShareableCredentialMessage *)self shareableCredentials];
  v4 = [v3 firstObject];
  v5 = [v4 status];

  return (v5 < 2) & ~self->_isFromMe;
}

- (void)setShareableCredentials:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(PKProtobufShareableCredentialMessage *)self->_protoMessage clearShareableCredentials];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        protoMessage = self->_protoMessage;
        v11 = [*(*(&v12 + 1) + 8 * v9) protoCredential];
        [(PKProtobufShareableCredentialMessage *)protoMessage addShareableCredentials:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)setPassThumbnailImage:(id)a3
{
  protoMessage = self->_protoMessage;
  v4 = UIImagePNGRepresentation(a3);
  [(PKProtobufShareableCredentialMessage *)protoMessage setPassThumbnailImage:v4];
}

- (id)_shareableCredentialMessageDataURLWithData:(id)a3
{
  if (a3)
  {
    v3 = [a3 base64EncodedStringWithOptions:0];
    if (v3)
    {
      v4 = [@"data:application/vnd.apple.pkshareablecredentialbase64 "];;
      v5 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_shareableCredentialMessageDataWithDataURL:(id)a3
{
  if (!a3)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v3 = a3;
  v4 = [v3 absoluteString];
  v5 = [v3 scheme];

  if ([v5 isEqualToString:@"data"])
  {
    v6 = [v4 hasPrefix:{@"data:application/vnd.apple.pkshareablecredential;base64, "}];

    if (!v6)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v5 = [v4 substringFromIndex:{objc_msgSend(@"data:application/vnd.apple.pkshareablecredentialbase64, ", "length")}];;
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v5 options:1];
  }

  else
  {
    v7 = 0;
  }

LABEL_9:
LABEL_10:

  return v7;
}

@end