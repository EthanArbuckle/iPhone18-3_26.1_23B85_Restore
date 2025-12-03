@interface PKSubcredentialInvitationMessage
- (NSString)description;
- (PKAppletSubcredentialSharingInvitation)phoneInvitation;
- (PKAppletSubcredentialSharingInvitation)watchInvitation;
- (PKSubcredentialInvitationMessage)initWithURL:(id)l;
- (UIImage)passThumbnailImage;
- (id)_subcredentialInvitationMessageDataURLWithData:(id)data;
- (id)_subcredentialInvitationMessageDataWithDataURL:(id)l;
- (id)urlRepresentation;
- (unint64_t)status;
- (void)setPassThumbnailImage:(id)image;
- (void)setPhoneInvitation:(id)invitation;
- (void)setStatus:(unint64_t)status;
- (void)setWatchInvitation:(id)invitation;
@end

@implementation PKSubcredentialInvitationMessage

- (PKSubcredentialInvitationMessage)initWithURL:(id)l
{
  lCopy = l;
  v14.receiver = self;
  v14.super_class = PKSubcredentialInvitationMessage;
  v5 = [(PKSubcredentialInvitationMessage *)&v14 init];
  v6 = v5;
  if (v5)
  {
    if (lCopy)
    {
      v7 = [(PKSubcredentialInvitationMessage *)v5 _subcredentialInvitationMessageDataWithDataURL:lCopy];
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
  data = [(PKProtobufSubcredentialInvitationMessage *)self->_protoMessage data];
  v4 = [(PKSubcredentialInvitationMessage *)self _subcredentialInvitationMessageDataURLWithData:data];

  return v4;
}

- (PKAppletSubcredentialSharingInvitation)phoneInvitation
{
  phoneInvitation = [(PKProtobufSubcredentialInvitationMessage *)self->_protoMessage phoneInvitation];
  pk_decodeHexadecimal = [phoneInvitation pk_decodeHexadecimal];

  v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:pk_decodeHexadecimal error:0];

  return v4;
}

- (PKAppletSubcredentialSharingInvitation)watchInvitation
{
  watchInvitation = [(PKProtobufSubcredentialInvitationMessage *)self->_protoMessage watchInvitation];
  pk_decodeHexadecimal = [watchInvitation pk_decodeHexadecimal];

  v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:pk_decodeHexadecimal error:0];

  return v4;
}

- (unint64_t)status
{
  status = [(PKProtobufSubcredentialInvitationMessage *)self->_protoMessage status];
  if (status > 5)
  {
    return 0;
  }

  else
  {
    return qword_1BE116828[status];
  }
}

- (UIImage)passThumbnailImage
{
  passThumbnailImage = [(PKProtobufSubcredentialInvitationMessage *)self->_protoMessage passThumbnailImage];
  v3 = passThumbnailImage;
  if (passThumbnailImage && (v4 = PKCreateCGImage(passThumbnailImage)) != 0)
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

- (void)setPhoneInvitation:(id)invitation
{
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:invitation requiringSecureCoding:1 error:0];
  hexEncoding = [v5 hexEncoding];
  [(PKProtobufSubcredentialInvitationMessage *)self->_protoMessage setPhoneInvitation:hexEncoding];
}

- (void)setWatchInvitation:(id)invitation
{
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:invitation requiringSecureCoding:1 error:0];
  hexEncoding = [v5 hexEncoding];
  [(PKProtobufSubcredentialInvitationMessage *)self->_protoMessage setWatchInvitation:hexEncoding];
}

- (void)setStatus:(unint64_t)status
{
  if (status > 9)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_1BE116858[status];
  }

  [(PKProtobufSubcredentialInvitationMessage *)self->_protoMessage setStatus:v3];
}

- (void)setPassThumbnailImage:(id)image
{
  protoMessage = self->_protoMessage;
  v4 = UIImagePNGRepresentation(image);
  [(PKProtobufSubcredentialInvitationMessage *)protoMessage setPassThumbnailImage:v4];
}

- (id)_subcredentialInvitationMessageDataURLWithData:(id)data
{
  if (data)
  {
    v3 = [data base64EncodedStringWithOptions:0];
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

- (id)_subcredentialInvitationMessageDataWithDataURL:(id)l
{
  if (!l)
  {
    v7 = 0;
    goto LABEL_10;
  }

  lCopy = l;
  absoluteString = [lCopy absoluteString];
  scheme = [lCopy scheme];

  if ([scheme isEqualToString:@"data"])
  {
    v6 = [absoluteString hasPrefix:PKSubcredentialInvitationMessageAbsoluteDataURLPrefix];

    if (!v6)
    {
      v7 = 0;
      goto LABEL_9;
    }

    scheme = [absoluteString substringFromIndex:{objc_msgSend(PKSubcredentialInvitationMessageAbsoluteDataURLPrefix, "length")}];
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:scheme options:1];
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
  phoneInvitation = [(PKSubcredentialInvitationMessage *)self phoneInvitation];
  identifier = [phoneInvitation identifier];
  watchInvitation = [(PKSubcredentialInvitationMessage *)self watchInvitation];
  identifier2 = [watchInvitation identifier];
  [(PKSubcredentialInvitationMessage *)self status];
  v9 = PKShareStatusToString();
  v10 = [v3 stringWithFormat:@"<%@: %p> phoneIdentifier: %@, watchIdentifier: %@, status: %@", v4, self, identifier, identifier2, v9];

  return v10;
}

@end