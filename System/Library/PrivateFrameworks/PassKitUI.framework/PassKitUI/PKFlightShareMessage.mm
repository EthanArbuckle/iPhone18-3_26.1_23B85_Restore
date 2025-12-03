@interface PKFlightShareMessage
- (PKColor)backgroundColor;
- (PKColor)foregroundColor;
- (PKFlight)flight;
- (PKFlightShareMessage)init;
- (UIImage)logoImage;
- (id)_flightShareMessageDataURLWithData:(id)data;
- (id)_flightShareMessageDataWithDataURL:(id)l;
- (id)_initWithCommonMessage:(id)message url:(id)url;
- (id)urlRepresentation;
- (void)setBackgroundColor:(id)color;
- (void)setFlight:(id)flight;
- (void)setForegroundColor:(id)color;
- (void)setLogoImage:(id)image;
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

- (id)_initWithCommonMessage:(id)message url:(id)url
{
  urlCopy = url;
  v16.receiver = self;
  v16.super_class = PKFlightShareMessage;
  v7 = [(PKSharingMessageExtensionCommonMessage *)&v16 _initWithCommonMessage:message url:urlCopy];
  v8 = v7;
  if (v7)
  {
    messageData = [v7 messageData];
    if (messageData || ([v8 _flightShareMessageDataWithDataURL:urlCopy], (messageData = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = messageData;
      v11 = [objc_alloc(MEMORY[0x1E69B90A8]) initWithData:messageData];
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
  data = [(PKProtobufFlightShareMessage *)self->_protoMessage data];
  [(PKSharingMessageExtensionCommonMessage *)self setMessageData:data];

  v6.receiver = self;
  v6.super_class = PKFlightShareMessage;
  urlRepresentation = [(PKSharingMessageExtensionCommonMessage *)&v6 urlRepresentation];

  return urlRepresentation;
}

- (PKFlight)flight
{
  flightDataString = [(PKProtobufFlightShareMessage *)self->_protoMessage flightDataString];
  pk_decodeHexadecimal = [flightDataString pk_decodeHexadecimal];

  v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:pk_decodeHexadecimal error:0];

  return v4;
}

- (void)setFlight:(id)flight
{
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:flight requiringSecureCoding:1 error:0];
  hexEncoding = [v5 hexEncoding];
  [(PKProtobufFlightShareMessage *)self->_protoMessage setFlightDataString:hexEncoding];
}

- (UIImage)logoImage
{
  logoImage = [(PKProtobufFlightShareMessage *)self->_protoMessage logoImage];
  v3 = logoImage;
  if (logoImage && (v4 = PKCreateCGImage(logoImage)) != 0)
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

- (void)setLogoImage:(id)image
{
  protoMessage = self->_protoMessage;
  v4 = UIImagePNGRepresentation(image);
  [(PKProtobufFlightShareMessage *)protoMessage setLogoImage:v4];
}

- (PKColor)foregroundColor
{
  foregroundColor = [(PKProtobufFlightShareMessage *)self->_protoMessage foregroundColor];
  if (foregroundColor)
  {
    v3 = [MEMORY[0x1E69B8710] colorFromString:foregroundColor];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setForegroundColor:(id)color
{
  protoMessage = self->_protoMessage;
  string = [color string];
  [(PKProtobufFlightShareMessage *)protoMessage setForegroundColor:string];
}

- (PKColor)backgroundColor
{
  backgroundColor = [(PKProtobufFlightShareMessage *)self->_protoMessage backgroundColor];
  if (backgroundColor)
  {
    v3 = [MEMORY[0x1E69B8710] colorFromString:backgroundColor];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setBackgroundColor:(id)color
{
  protoMessage = self->_protoMessage;
  string = [color string];
  [(PKProtobufFlightShareMessage *)protoMessage setBackgroundColor:string];
}

- (id)_flightShareMessageDataURLWithData:(id)data
{
  if (data)
  {
    v3 = [data base64EncodedStringWithOptions:0];
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

- (id)_flightShareMessageDataWithDataURL:(id)l
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
    v6 = [absoluteString hasPrefix:PKFlightShareMessageAbsoluteDataURLPrefix];

    if (!v6)
    {
      v7 = 0;
      goto LABEL_9;
    }

    scheme = [absoluteString substringFromIndex:{objc_msgSend(PKFlightShareMessageAbsoluteDataURLPrefix, "length")}];
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

@end