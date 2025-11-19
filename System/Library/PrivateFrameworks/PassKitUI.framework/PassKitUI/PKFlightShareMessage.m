@interface PKFlightShareMessage
- (PKColor)backgroundColor;
- (PKColor)foregroundColor;
- (PKFlight)flight;
- (PKFlightShareMessage)init;
- (UIImage)logoImage;
- (id)_flightShareMessageDataURLWithData:(id)a3;
- (id)_flightShareMessageDataWithDataURL:(id)a3;
- (id)_initWithCommonMessage:(id)a3 url:(id)a4;
- (id)urlRepresentation;
- (void)setBackgroundColor:(id)a3;
- (void)setFlight:(id)a3;
- (void)setForegroundColor:(id)a3;
- (void)setLogoImage:(id)a3;
@end

@implementation PKFlightShareMessage

- (PKFlightShareMessage)init
{
  v5.receiver = self;
  v5.super_class = PKFlightShareMessage;
  v2 = [(PKSharingMessageExtensionCommonMessage *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PKSharingMessageExtensionCommonMessage *)v2 setMessageType:@"pkflightsharemessage"];
  }

  return v3;
}

- (id)_initWithCommonMessage:(id)a3 url:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = PKFlightShareMessage;
  v7 = [(PKSharingMessageExtensionCommonMessage *)&v16 _initWithCommonMessage:a3 url:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 messageData];
    if (v9 || ([v8 _flightShareMessageDataWithDataURL:v6], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = v9;
      v11 = [objc_alloc(MEMORY[0x1E69B90A8]) initWithData:v9];
      v12 = v8[3];
      v8[3] = v11;
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x1E69B90A8]);
      v15 = v8[3];
      v8[3] = v14;

      [v8[3] setVersion:1];
    }
  }

  return v8;
}

- (id)urlRepresentation
{
  v3 = [(PKProtobufFlightShareMessage *)self->_protoMessage data];
  [(PKSharingMessageExtensionCommonMessage *)self setMessageData:v3];

  v6.receiver = self;
  v6.super_class = PKFlightShareMessage;
  v4 = [(PKSharingMessageExtensionCommonMessage *)&v6 urlRepresentation];

  return v4;
}

- (PKFlight)flight
{
  v2 = [(PKProtobufFlightShareMessage *)self->_protoMessage flightDataString];
  v3 = [v2 pk_decodeHexadecimal];

  v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];

  return v4;
}

- (void)setFlight:(id)a3
{
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  v4 = [v5 hexEncoding];
  [(PKProtobufFlightShareMessage *)self->_protoMessage setFlightDataString:v4];
}

- (UIImage)logoImage
{
  v2 = [(PKProtobufFlightShareMessage *)self->_protoMessage logoImage];
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

- (void)setLogoImage:(id)a3
{
  protoMessage = self->_protoMessage;
  v4 = UIImagePNGRepresentation(a3);
  [(PKProtobufFlightShareMessage *)protoMessage setLogoImage:v4];
}

- (PKColor)foregroundColor
{
  v2 = [(PKProtobufFlightShareMessage *)self->_protoMessage foregroundColor];
  if (v2)
  {
    v3 = [MEMORY[0x1E69B8710] colorFromString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setForegroundColor:(id)a3
{
  protoMessage = self->_protoMessage;
  v4 = [a3 string];
  [(PKProtobufFlightShareMessage *)protoMessage setForegroundColor:v4];
}

- (PKColor)backgroundColor
{
  v2 = [(PKProtobufFlightShareMessage *)self->_protoMessage backgroundColor];
  if (v2)
  {
    v3 = [MEMORY[0x1E69B8710] colorFromString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setBackgroundColor:(id)a3
{
  protoMessage = self->_protoMessage;
  v4 = [a3 string];
  [(PKProtobufFlightShareMessage *)protoMessage setBackgroundColor:v4];
}

- (id)_flightShareMessageDataURLWithData:(id)a3
{
  if (a3)
  {
    v3 = [a3 base64EncodedStringWithOptions:0];
    if (v3)
    {
      v4 = [PKFlightShareMessageAbsoluteDataURLPrefix stringByAppendingString:v3];
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

- (id)_flightShareMessageDataWithDataURL:(id)a3
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
    v6 = [v4 hasPrefix:PKFlightShareMessageAbsoluteDataURLPrefix];

    if (!v6)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v5 = [v4 substringFromIndex:{objc_msgSend(PKFlightShareMessageAbsoluteDataURLPrefix, "length")}];
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