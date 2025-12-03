@interface PKSharingMessageExtensionRelayServerMessage
- (NSString)description;
- (NSURL)phoneMailboxURL;
- (NSURL)watchMailboxURL;
- (PKSharingMessageExtensionRelayServerLocalProperties)localProperties;
- (PKSharingMessageExtensionRelayServerMessage)init;
- (id)_initWithCommonMessage:(id)message url:(id)url;
- (id)_messageDataURLWithData:(id)data;
- (id)_messageDataWithDataURL:(id)l;
- (id)urlRepresentation;
- (unint64_t)status;
- (void)setLocalProperties:(id)properties;
- (void)setMailboxURLS:(id)s;
- (void)setStatus:(unint64_t)status;
@end

@implementation PKSharingMessageExtensionRelayServerMessage

- (PKSharingMessageExtensionRelayServerMessage)init
{
  v8.receiver = self;
  v8.super_class = PKSharingMessageExtensionRelayServerMessage;
  v2 = [(PKSharingMessageExtensionCommonMessage *)&v8 init];
  if (v2)
  {
    v3 = PKSharingUseCommonIMessageExtensionPayloadFormat();
    v4 = PKLogFacilityTypeGetObject();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        *v7 = 0;
        _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "iMessage Extension: Using common imessage extension payload format.", v7, 2u);
      }

      v2->_useLegacyMessageFormat = 0;
      [(PKSharingMessageExtensionCommonMessage *)v2 setMessageType:@"pkrelayservermessage"];
    }

    else
    {
      if (v5)
      {
        *v7 = 0;
        _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "iMessage Extension: Using legacy imessage extension payload format.", v7, 2u);
      }
    }
  }

  return v2;
}

- (id)_initWithCommonMessage:(id)message url:(id)url
{
  urlCopy = url;
  v20.receiver = self;
  v20.super_class = PKSharingMessageExtensionRelayServerMessage;
  v7 = [(PKSharingMessageExtensionCommonMessage *)&v20 _initWithCommonMessage:message url:urlCopy];
  v8 = v7;
  if (v7)
  {
    messageData = [v7 messageData];
    if (messageData || ([v8 _messageDataWithDataURL:urlCopy], (messageData = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = messageData;
      v11 = [objc_alloc(MEMORY[0x1E69B90B8]) initWithData:messageData];
      v12 = *(v8 + 3);
      *(v8 + 3) = v11;
    }

    else
    {
      v18 = objc_alloc_init(MEMORY[0x1E69B90B8]);
      v19 = *(v8 + 3);
      *(v8 + 3) = v18;

      [*(v8 + 3) setVersion:1];
    }

    messageType = [v8 messageType];
    *(v8 + 32) = messageType == 0;

    if (*(v8 + 32) == 1)
    {
      [v8 setMessageType:@"pkrelayservermessage"];
      thumbnailImage = [*(v8 + 3) thumbnailImage];
      [v8 setRawThumbnailData:thumbnailImage];

      [*(v8 + 3) setThumbnailImage:0];
      title = [*(v8 + 3) title];
      [v8 setTitle:title];

      [*(v8 + 3) setTitle:0];
      subtitle = [*(v8 + 3) subtitle];
      [v8 setSubtitle:subtitle];

      [*(v8 + 3) setSubtitle:0];
    }
  }

  return v8;
}

- (id)urlRepresentation
{
  overrideURL = self->_overrideURL;
  if (overrideURL)
  {
    urlRepresentation = overrideURL;
  }

  else
  {
    useLegacyMessageFormat = self->_useLegacyMessageFormat;
    message = self->_message;
    if (useLegacyMessageFormat)
    {
      v7 = [(PKProtobufRelaySharingMessage *)message copy];
      rawThumbnailData = [(PKSharingMessageExtensionCommonMessage *)self rawThumbnailData];
      [v7 setThumbnailImage:rawThumbnailData];

      title = [(PKSharingMessageExtensionCommonMessage *)self title];
      [v7 setTitle:title];

      subtitle = [(PKSharingMessageExtensionCommonMessage *)self subtitle];
      [v7 setSubtitle:subtitle];

      data = [v7 data];
      v12 = [(PKSharingMessageExtensionRelayServerMessage *)self _messageDataURLWithData:data];

      goto LABEL_7;
    }

    data2 = [(PKProtobufRelaySharingMessage *)message data];
    [(PKSharingMessageExtensionCommonMessage *)self setMessageData:data2];

    v15.receiver = self;
    v15.super_class = PKSharingMessageExtensionRelayServerMessage;
    urlRepresentation = [(PKSharingMessageExtensionCommonMessage *)&v15 urlRepresentation];
  }

  v12 = urlRepresentation;
LABEL_7:

  return v12;
}

- (unint64_t)status
{
  status = [(PKProtobufRelaySharingMessage *)self->_message status];
  v3 = PKShareStatusFromString();

  return v3;
}

- (void)setStatus:(unint64_t)status
{
  message = self->_message;
  v4 = PKShareStatusToString();
  [(PKProtobufRelaySharingMessage *)message setStatus:v4];
}

- (NSURL)phoneMailboxURL
{
  if ([(PKProtobufRelaySharingMessage *)self->_message mailboxURLsCount])
  {
    v3 = MEMORY[0x1E695DFF8];
    v4 = [(PKProtobufRelaySharingMessage *)self->_message mailboxURLsAtIndex:0];
    v5 = [v3 URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSURL)watchMailboxURL
{
  if ([(PKProtobufRelaySharingMessage *)self->_message mailboxURLsCount]< 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = MEMORY[0x1E695DFF8];
    v4 = [(PKProtobufRelaySharingMessage *)self->_message mailboxURLsAtIndex:1];
    v5 = [v3 URLWithString:v4];
  }

  return v5;
}

- (void)setMailboxURLS:(id)s
{
  message = self->_message;
  v5 = [s pk_arrayByApplyingBlock:&__block_literal_global_225];
  v4 = [v5 mutableCopy];
  [(PKProtobufRelaySharingMessage *)message setMailboxURLs:v4];
}

- (PKSharingMessageExtensionRelayServerLocalProperties)localProperties
{
  localData = [(PKProtobufRelaySharingMessage *)self->_message localData];
  if (localData)
  {
    v3 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:localData error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLocalProperties:(id)properties
{
  if (properties)
  {
    v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:properties requiringSecureCoding:1 error:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(PKProtobufRelaySharingMessage *)self->_message setLocalData:v4];
}

- (id)_messageDataURLWithData:(id)data
{
  if (data)
  {
    v3 = [data base64EncodedStringWithOptions:0];
    if (v3)
    {
      v4 = [@"data:application/vnd.apple.pkrelayservermessagebase64 "];;
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

- (id)_messageDataWithDataURL:(id)l
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
    v6 = [absoluteString hasPrefix:{@"data:application/vnd.apple.pkrelayservermessage;base64, "}];

    if (!v6)
    {
      v7 = 0;
      goto LABEL_9;
    }

    scheme = [absoluteString substringFromIndex:{objc_msgSend(@"data:application/vnd.apple.pkrelayservermessagebase64, ", "length")}];;
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
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  title = [(PKSharingMessageExtensionCommonMessage *)self title];
  [v6 appendFormat:@"title: '%@'; ", title];

  subtitle = [(PKSharingMessageExtensionCommonMessage *)self subtitle];
  [v6 appendFormat:@"subtitle: '%@'; ", subtitle];

  [(PKSharingMessageExtensionRelayServerMessage *)self status];
  v9 = PKShareStatusToString();
  [v6 appendFormat:@"status: '%@'; ", v9];

  localProperties = [(PKSharingMessageExtensionRelayServerMessage *)self localProperties];
  [v6 appendFormat:@"localProperties: '%@'; ", localProperties];

  [v6 appendFormat:@">"];
  v11 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v11;
}

@end