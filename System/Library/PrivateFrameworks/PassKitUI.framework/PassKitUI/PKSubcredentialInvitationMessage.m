@interface PKSubcredentialInvitationMessage
- (NSString)description;
- (PKAppletSubcredentialSharingInvitation)phoneInvitation;
- (PKAppletSubcredentialSharingInvitation)watchInvitation;
- (PKSubcredentialInvitationMessage)initWithURL:(id)a3;
- (UIImage)passThumbnailImage;
- (id)_subcredentialInvitationMessageDataURLWithData:(id)a3;
- (id)_subcredentialInvitationMessageDataWithDataURL:(id)a3;
- (id)urlRepresentation;
- (unint64_t)status;
- (void)setPassThumbnailImage:(id)a3;
- (void)setPhoneInvitation:(id)a3;
- (void)setStatus:(unint64_t)a3;
- (void)setWatchInvitation:(id)a3;
@end

@implementation PKSubcredentialInvitationMessage

- (PKSubcredentialInvitationMessage)initWithURL:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKSubcredentialInvitationMessage;
  v5 = [(PKSubcredentialInvitationMessage *)&v14 init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v7 = [(PKSubcredentialInvitationMessage *)v5 _subcredentialInvitationMessageDataWithDataURL:v4];
      if (v7)
      {
        v8 = v7;
        v9 = [objc_alloc(MEMORY[0x1E69B90C8]) initWithData:v7];
        protoMessage = v6->_protoMessage;
        v6->_protoMessage = v9;
      }
    }

    if (!v6->_protoMessage)
    {
      v11 = objc_alloc_init(MEMORY[0x1E69B90C8]);
      v12 = v6->_protoMessage;
      v6->_protoMessage = v11;

      [(PKProtobufSubcredentialInvitationMessage *)v6->_protoMessage setVersion:1];
    }
  }

  return v6;
}

- (id)urlRepresentation
{
  v3 = [(PKProtobufSubcredentialInvitationMessage *)self->_protoMessage data];
  v4 = [(PKSubcredentialInvitationMessage *)self _subcredentialInvitationMessageDataURLWithData:v3];

  return v4;
}

- (PKAppletSubcredentialSharingInvitation)phoneInvitation
{
  v2 = [(PKProtobufSubcredentialInvitationMessage *)self->_protoMessage phoneInvitation];
  v3 = [v2 pk_decodeHexadecimal];

  v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];

  return v4;
}

- (PKAppletSubcredentialSharingInvitation)watchInvitation
{
  v2 = [(PKProtobufSubcredentialInvitationMessage *)self->_protoMessage watchInvitation];
  v3 = [v2 pk_decodeHexadecimal];

  v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];

  return v4;
}

- (unint64_t)status
{
  v2 = [(PKProtobufSubcredentialInvitationMessage *)self->_protoMessage status];
  if (v2 > 5)
  {
    return 0;
  }

  else
  {
    return qword_1BE116828[v2];
  }
}

- (UIImage)passThumbnailImage
{
  v2 = [(PKProtobufSubcredentialInvitationMessage *)self->_protoMessage passThumbnailImage];
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

- (void)setPhoneInvitation:(id)a3
{
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  v4 = [v5 hexEncoding];
  [(PKProtobufSubcredentialInvitationMessage *)self->_protoMessage setPhoneInvitation:v4];
}

- (void)setWatchInvitation:(id)a3
{
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  v4 = [v5 hexEncoding];
  [(PKProtobufSubcredentialInvitationMessage *)self->_protoMessage setWatchInvitation:v4];
}

- (void)setStatus:(unint64_t)a3
{
  if (a3 > 9)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_1BE116858[a3];
  }

  [(PKProtobufSubcredentialInvitationMessage *)self->_protoMessage setStatus:v3];
}

- (void)setPassThumbnailImage:(id)a3
{
  protoMessage = self->_protoMessage;
  v4 = UIImagePNGRepresentation(a3);
  [(PKProtobufSubcredentialInvitationMessage *)protoMessage setPassThumbnailImage:v4];
}

- (id)_subcredentialInvitationMessageDataURLWithData:(id)a3
{
  if (a3)
  {
    v3 = [a3 base64EncodedStringWithOptions:0];
    if (v3)
    {
      v4 = [PKSubcredentialInvitationMessageAbsoluteDataURLPrefix stringByAppendingString:v3];
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

- (id)_subcredentialInvitationMessageDataWithDataURL:(id)a3
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
    v6 = [v4 hasPrefix:PKSubcredentialInvitationMessageAbsoluteDataURLPrefix];

    if (!v6)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v5 = [v4 substringFromIndex:{objc_msgSend(PKSubcredentialInvitationMessageAbsoluteDataURLPrefix, "length")}];
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

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PKSubcredentialInvitationMessage *)self phoneInvitation];
  v6 = [v5 identifier];
  v7 = [(PKSubcredentialInvitationMessage *)self watchInvitation];
  v8 = [v7 identifier];
  [(PKSubcredentialInvitationMessage *)self status];
  v9 = PKShareStatusToString();
  v10 = [v3 stringWithFormat:@"<%@: %p> phoneIdentifier: %@, watchIdentifier: %@, status: %@", v4, self, v6, v8, v9];

  return v10;
}

@end