@interface PKSharingMessageExtensionCommonMessage
+ (id)_messageDataWithDataURL:(id)l prefix:(id)prefix;
+ (id)messageTypeFromURL:(id)l;
- (NSString)description;
- (NSURL)actionURL;
- (PKSharingMessageExtensionCommonMessage)initWithURL:(id)l;
- (UIImage)thumbnail;
- (id)_initWithCommonMessage:(id)message url:(id)url;
- (id)_messageDataURLWithData:(id)data prefix:(id)prefix;
- (id)urlRepresentation;
- (void)setActionURL:(id)l;
- (void)setThumbnail:(id)thumbnail;
@end

@implementation PKSharingMessageExtensionCommonMessage

- (PKSharingMessageExtensionCommonMessage)initWithURL:(id)l
{
  lCopy = l;
  v5 = [PKSharingMessageExtensionCommonMessage _messageDataWithDataURL:lCopy prefix:@"data:application/vnd.apple.pksimbase64, "];;
  if (!v5)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v6 = [objc_alloc(MEMORY[0x1E69B9098]) initWithData:v5];
  messageType = [v6 messageType];
  v8 = messageType;
  if (!messageType)
  {
    selfCopy = 0;
LABEL_19:

    goto LABEL_20;
  }

  v9 = messageType;
  v10 = @"pkrelayservermessage";
  v11 = v10;
  if (v9 == v10)
  {
    v13 = off_1E8006410;
LABEL_17:

    goto LABEL_18;
  }

  if (v10)
  {
    v12 = [(__CFString *)v9 isEqualToString:v10];

    if (v12)
    {
      v13 = off_1E8006410;
LABEL_18:
      selfCopy = [objc_alloc(*v13) _initWithCommonMessage:v6 url:lCopy];
      goto LABEL_19;
    }
  }

  else
  {
  }

  v15 = v9;
  v16 = @"pkflightsharemessage";
  v11 = v16;
  if (v15 == v16)
  {
    v13 = off_1E8005160;
    goto LABEL_17;
  }

  if (v16)
  {
    v17 = [(__CFString *)v15 isEqualToString:v16];

    if (v17)
    {
      v13 = off_1E8005160;
      goto LABEL_18;
    }
  }

  else
  {
  }

LABEL_8:
  self = [(PKSharingMessageExtensionCommonMessage *)self _initWithCommonMessage:v6 url:lCopy];
  selfCopy = self;
LABEL_20:

  return selfCopy;
}

- (id)_initWithCommonMessage:(id)message url:(id)url
{
  messageCopy = message;
  v16.receiver = self;
  v16.super_class = PKSharingMessageExtensionCommonMessage;
  v7 = [(PKSharingMessageExtensionCommonMessage *)&v16 init];
  p_isa = &v7->super.isa;
  if (v7)
  {
    objc_storeStrong(&v7->_message, message);
    if (!p_isa[1])
    {
      v9 = objc_alloc_init(MEMORY[0x1E69B9098]);
      v10 = p_isa[1];
      p_isa[1] = v9;

      [p_isa[1] setVersion:1];
      [p_isa[1] setStatus:6];
      v11 = objc_alloc_init(MEMORY[0x1E69B85A8]);
      [v11 setIdentifier:@"identifier"];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      [v11 setSharingSessionIdentifier:uUID];

      [v11 setPairedReaderIdentifier:@"pairedReaderIdentifier"];
      [v11 setSupportedRadioTechnologies:0];
      [v11 setPartnerIdentifier:@"partnerIdentifier"];
      [v11 setBrandIdentifier:@"brandIdentifier"];
      [v11 setForWatch:1];
      v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:0];
      hexEncoding = [v13 hexEncoding];
      [p_isa[1] setWatchInvitation:hexEncoding];
    }
  }

  return p_isa;
}

- (id)urlRepresentation
{
  data = [(PKProtobufCommonSharingMessage *)self->_message data];
  v4 = [(PKSharingMessageExtensionCommonMessage *)self _messageDataURLWithData:data prefix:@"data:application/vnd.apple.pksimbase64, "];;

  return v4;
}

+ (id)messageTypeFromURL:(id)l
{
  v3 = [PKSharingMessageExtensionCommonMessage _messageDataWithDataURL:l prefix:@"data:application/vnd.apple.pksimbase64, "];;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69B90A0]) initWithData:v3];
    messageType = [v4 messageType];
  }

  else
  {
    messageType = 0;
  }

  return messageType;
}

- (UIImage)thumbnail
{
  thumbnailImage = [(PKProtobufCommonSharingMessage *)self->_message thumbnailImage];
  v3 = thumbnailImage;
  if (thumbnailImage && (v4 = PKCreateCGImage(thumbnailImage)) != 0)
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

- (void)setThumbnail:(id)thumbnail
{
  message = self->_message;
  v4 = UIImagePNGRepresentation(thumbnail);
  [(PKProtobufCommonSharingMessage *)message setThumbnailImage:v4];
}

- (NSURL)actionURL
{
  actionURL = [(PKProtobufCommonSharingMessage *)self->_message actionURL];
  if (actionURL)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:actionURL];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setActionURL:(id)l
{
  message = self->_message;
  absoluteString = [l absoluteString];
  [(PKProtobufCommonSharingMessage *)message setActionURL:absoluteString];
}

- (id)_messageDataURLWithData:(id)data prefix:(id)prefix
{
  prefixCopy = prefix;
  if (data)
  {
    v6 = [data base64EncodedStringWithOptions:0];
    if (v6)
    {
      v7 = [prefixCopy stringByAppendingString:v6];
      v8 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_messageDataWithDataURL:(id)l prefix:(id)prefix
{
  prefixCopy = prefix;
  if (!l)
  {
    v10 = 0;
    goto LABEL_10;
  }

  lCopy = l;
  absoluteString = [lCopy absoluteString];
  scheme = [lCopy scheme];

  if ([scheme isEqualToString:@"data"])
  {
    v9 = [absoluteString hasPrefix:prefixCopy];

    if (!v9)
    {
      v10 = 0;
      goto LABEL_9;
    }

    scheme = [absoluteString substringFromIndex:{objc_msgSend(prefixCopy, "length")}];
    v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:scheme options:1];
  }

  else
  {
    v10 = 0;
  }

LABEL_9:
LABEL_10:

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  title = [(PKSharingMessageExtensionCommonMessage *)self title];
  [v6 appendFormat:@"title: '%@'; ", title];

  subtitle = [(PKSharingMessageExtensionCommonMessage *)self subtitle];
  [v6 appendFormat:@"subtitle: '%@'; ", subtitle];

  [v6 appendFormat:@">"];
  v9 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v9;
}

@end