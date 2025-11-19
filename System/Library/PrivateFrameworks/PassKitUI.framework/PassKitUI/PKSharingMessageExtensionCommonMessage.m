@interface PKSharingMessageExtensionCommonMessage
+ (id)_messageDataWithDataURL:(id)a3 prefix:(id)a4;
+ (id)messageTypeFromURL:(id)a3;
- (NSString)description;
- (NSURL)actionURL;
- (PKSharingMessageExtensionCommonMessage)initWithURL:(id)a3;
- (UIImage)thumbnail;
- (id)_initWithCommonMessage:(id)a3 url:(id)a4;
- (id)_messageDataURLWithData:(id)a3 prefix:(id)a4;
- (id)urlRepresentation;
- (void)setActionURL:(id)a3;
- (void)setThumbnail:(id)a3;
@end

@implementation PKSharingMessageExtensionCommonMessage

- (PKSharingMessageExtensionCommonMessage)initWithURL:(id)a3
{
  v4 = a3;
  v5 = [PKSharingMessageExtensionCommonMessage _messageDataWithDataURL:v4 prefix:@"data:application/vnd.apple.pksimbase64, "];;
  if (!v5)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v6 = [objc_alloc(MEMORY[0x1E69B9098]) initWithData:v5];
  v7 = [v6 messageType];
  v8 = v7;
  if (!v7)
  {
    v14 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v9 = v7;
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
      v14 = [objc_alloc(*v13) _initWithCommonMessage:v6 url:v4];
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
  self = [(PKSharingMessageExtensionCommonMessage *)self _initWithCommonMessage:v6 url:v4];
  v14 = self;
LABEL_20:

  return v14;
}

- (id)_initWithCommonMessage:(id)a3 url:(id)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = PKSharingMessageExtensionCommonMessage;
  v7 = [(PKSharingMessageExtensionCommonMessage *)&v16 init];
  p_isa = &v7->super.isa;
  if (v7)
  {
    objc_storeStrong(&v7->_message, a3);
    if (!p_isa[1])
    {
      v9 = objc_alloc_init(MEMORY[0x1E69B9098]);
      v10 = p_isa[1];
      p_isa[1] = v9;

      [p_isa[1] setVersion:1];
      [p_isa[1] setStatus:6];
      v11 = objc_alloc_init(MEMORY[0x1E69B85A8]);
      [v11 setIdentifier:@"identifier"];
      v12 = [MEMORY[0x1E696AFB0] UUID];
      [v11 setSharingSessionIdentifier:v12];

      [v11 setPairedReaderIdentifier:@"pairedReaderIdentifier"];
      [v11 setSupportedRadioTechnologies:0];
      [v11 setPartnerIdentifier:@"partnerIdentifier"];
      [v11 setBrandIdentifier:@"brandIdentifier"];
      [v11 setForWatch:1];
      v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:0];
      v14 = [v13 hexEncoding];
      [p_isa[1] setWatchInvitation:v14];
    }
  }

  return p_isa;
}

- (id)urlRepresentation
{
  v3 = [(PKProtobufCommonSharingMessage *)self->_message data];
  v4 = [(PKSharingMessageExtensionCommonMessage *)self _messageDataURLWithData:v3 prefix:@"data:application/vnd.apple.pksimbase64, "];;

  return v4;
}

+ (id)messageTypeFromURL:(id)a3
{
  v3 = [PKSharingMessageExtensionCommonMessage _messageDataWithDataURL:a3 prefix:@"data:application/vnd.apple.pksimbase64, "];;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69B90A0]) initWithData:v3];
    v5 = [v4 messageType];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIImage)thumbnail
{
  v2 = [(PKProtobufCommonSharingMessage *)self->_message thumbnailImage];
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

- (void)setThumbnail:(id)a3
{
  message = self->_message;
  v4 = UIImagePNGRepresentation(a3);
  [(PKProtobufCommonSharingMessage *)message setThumbnailImage:v4];
}

- (NSURL)actionURL
{
  v2 = [(PKProtobufCommonSharingMessage *)self->_message actionURL];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setActionURL:(id)a3
{
  message = self->_message;
  v4 = [a3 absoluteString];
  [(PKProtobufCommonSharingMessage *)message setActionURL:v4];
}

- (id)_messageDataURLWithData:(id)a3 prefix:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = [a3 base64EncodedStringWithOptions:0];
    if (v6)
    {
      v7 = [v5 stringByAppendingString:v6];
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

+ (id)_messageDataWithDataURL:(id)a3 prefix:(id)a4
{
  v5 = a4;
  if (!a3)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v6 = a3;
  v7 = [v6 absoluteString];
  v8 = [v6 scheme];

  if ([v8 isEqualToString:@"data"])
  {
    v9 = [v7 hasPrefix:v5];

    if (!v9)
    {
      v10 = 0;
      goto LABEL_9;
    }

    v8 = [v7 substringFromIndex:{objc_msgSend(v5, "length")}];
    v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8 options:1];
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

  v7 = [(PKSharingMessageExtensionCommonMessage *)self title];
  [v6 appendFormat:@"title: '%@'; ", v7];

  v8 = [(PKSharingMessageExtensionCommonMessage *)self subtitle];
  [v6 appendFormat:@"subtitle: '%@'; ", v8];

  [v6 appendFormat:@">"];
  v9 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v9;
}

@end